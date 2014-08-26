/**
 * Description: <类功能描述-必填> 
 * Copyright:   Copyright (c)2012  
 * Company:     ChunYu 
 * @author: ChenZhao
 * @version: 1.0
 * Create at:   2012-12-21 下午4:22:51  
 *
 * Modification History:  
 * Date         Author      Version     Description  
 * ------------------------------------------------------------------  
 * 2012-12-21   ChenZhao      1.0       如果修改了;必填  
 */
package com.shenglin.dao;

import com.shenglin.support.QueryParams;

import java.util.List;

/**
 * 公共DAO接口<br>
 * 公共接口，包括添加、修改、删除、通过id查询、分页查询、查询总数
 *
 * @param <T> T
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public interface Dao<T> {

	/**
	 * 保存<br>
	 *
	 * @param entity 实体
	 * @return
	 * @see
	 * @since 1.0
	 */
	Integer save(T entity);

	/**
	 * 修改 <br>
	 *
	 * @param entity
	 * @see
	 * @since 1.0
	 */
	void update(T entity);

	/**
	 * 删除<br>
	 *
	 * @param id
	 * @see
	 * @since 1.0
	 */
	void delete(Integer id);

	/**
	 * 批量删除<br>
	 *
	 * @param ids
	 * @see
	 * @since 1.0
	 */
	void deleteByIds(String ids);

	/**
	 * 通过id查询 <br>
	 *
	 * @param id
	 * @return
	 * @see
	 * @since 1.0
	 */
	T getById(Integer id);

	/**
	 * 分页查询 <br>
	 *
	 * @param queryParams
	 * @return
	 * @see
	 * @since 1.0
	 */
	List<T> queryByPage(QueryParams<?> queryParams);

	/**
	 * 获取所有数据 <br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	List<T> queryAll();

	/**
	 * 获取总数 <br>
	 *
	 * @param params
	 * @return
	 * @see
	 * @since 1.0
	 */
	int getTotalCount(Object params);

}
