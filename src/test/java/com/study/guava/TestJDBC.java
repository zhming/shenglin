package com.study.guava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-1
 * Time: 上午8:49
 * To change this template use File | Settings | File Templates.
 */
public class TestJDBC {

    public static void myTest(){
        Connection  conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sldb", "root", "root" );
            String sql = "select * from T_User";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while(rs.next()){
                System.out.println("userid = " + rs.getString("USER_ID"));
            }




        }catch (Exception e){
            e.printStackTrace();
        } finally {
            try{
                if (conn != null) {
                    conn.close();
                }
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }
    }

    public static void main(String[] args){
        myTest();
    }
}
