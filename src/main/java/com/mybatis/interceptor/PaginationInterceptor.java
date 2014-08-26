package com.mybatis.interceptor;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.reflect.FieldUtils;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.RowBounds;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-22
 * Time: 上午11:07
 * To change this template use File | Settings | File Templates.
 */
@Intercepts(@Signature(type = StatementHandler.class, method = "prepare", args = {Connection.class}))
public class PaginationInterceptor implements Interceptor {
	/**
	 * SQL_SELECT_REGEX 匹配SELECT查询语句
	 */
	private final static String SQL_SELECT_REGEX = "(?is)^\\s*SELECT.*$";

	/**
	 * SQL_COUNT_REGEX  匹配查询总数语句
	 */
	private final static String SQL_COUNT_REGEX = "(?is)^\\s*SELECT\\s+COUNT\\s*\\(\\s*(?:\\*|\\w+)\\s*\\).*$";

	@Override
	public Object intercept(Invocation invocation) throws Throwable {

		StatementHandler target = (StatementHandler) invocation.getTarget();

		BoundSql boundSql = target.getBoundSql();

		String sql = boundSql.getSql();

		if (StringUtils.isBlank(sql)) {
			return invocation.proceed();
		}

		System.out.println("origin sql>>>>>" + sql.replaceAll("\n", ""));

		if (sql.matches(SQL_SELECT_REGEX)
				&& !Pattern.matches(SQL_COUNT_REGEX, sql)) {

			Object obj = FieldUtils.readField(target, "delegate", true);

			//反射获取 Rounds 对象
			RowBounds rowBounds = (RowBounds) FieldUtils.readField(obj, "rowBounds", true);

			//分页参数存在且不为默认值时进行分页查询
			if (rowBounds != null && rowBounds != RowBounds.DEFAULT) {

				FieldUtils.writeField(boundSql, "sql", getPageSql(sql, rowBounds), true);

				System.out.println("new sql >>> " + boundSql.getSql().replaceAll("\n", ""));

				// 一定要还原否则将无法得到下一组数据(第一次的数据被缓存了)
				FieldUtils.writeField(boundSql, "offset", RowBounds.NO_ROW_OFFSET, true);

				FieldUtils.writeField(boundSql, "limit", RowBounds.NO_ROW_LIMIT, true);
			}

		}

		return invocation.proceed();
	}

	@Override
	public Object plugin(Object o) {

		return Plugin.wrap(o, this);
	}

	@Override
	public void setProperties(Properties properties) {
		System.out.println(properties);
	}

	//Oracle
	private String newSql(String oldSql, RowBounds rowBounds) {
		String start = " SELECT * FROM   (SELECT   row_.*, ROWNUM rownum_ FROM ( ";
		String end = " ) row_ WHERE   ROWNUM <= " + rowBounds.getLimit()
				+ ") WHERE   rownum_ > " + rowBounds.getOffset();

		return start + oldSql + end;
	}


	//Mysql
	public String getPageSql(String querySelect, RowBounds rowBounds) {

		String sql = querySelect.replaceAll("[^\\s,]+\\.", "") + " limit " + rowBounds.getOffset() + " ," + rowBounds.getLimit();

		return sql;

	}

	public static void main(String[] args) {
		String SQL_SELECT_REGEX = "^\\s*SELECT.*$";
		String SQL_COUNT_REGEX = "^\\s*SELECT\\s+COUNT\\s*\\(\\s*(?:\\*|\\w+)\\s*\\).*$";
		List<String> tests = new ArrayList<String>();
		tests.add("select count(*) from abc \n\t\t where\n abc");
		tests.add("SELECT   COUNT(*) from abc");
		tests.add(" select count  (*) from abc");
		tests.add("  select count(  *) from abc");
		tests.add("select count( *  ),id   from abc");
		tests.add("select * from abc");
		tests.add("select abc,test,fdas from abc");
		tests.add("select count(adb) from abc");
		tests.add("select count(0) from abc");
		tests.add("select min(count(*)) from abc");
		tests.add("update min(count(*)) from abc");
		tests.add("delete min(count(*)) from abc");
		Pattern p1 = Pattern.compile(SQL_SELECT_REGEX, Pattern.DOTALL
				| Pattern.CASE_INSENSITIVE);
		Pattern p2 = Pattern.compile(SQL_COUNT_REGEX, Pattern.DOTALL
				| Pattern.CASE_INSENSITIVE);
		for (String str : tests) {
			Matcher m1 = p1.matcher(str);
			Matcher m2 = p2.matcher(str);
			System.out.println("匹配字符串: " + str);
			System.out.println("    是select语句? " + m1.matches());
			System.out.println("    是count语句? " + m2.matches());
			System.out.println();
		}
	}
}
