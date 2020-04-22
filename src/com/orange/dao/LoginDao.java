package com.orange.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import com.orange.util.DBUtil;

public class LoginDao {

	 public String isValidUser(String userId, String password, String dbType) {
		    Connection conn=null;
	        PreparedStatement stmt=null;
	        //Mysql query
	        String query = "select email_id from adminDetails WHERE email_id=? and password = ?";
	        
	        //Oracle query
            //String query = "select user_type from cspuser where user_id=? and password = ?";
	        try{
	           // 
	           conn = DBUtil.getConnection(dbType);
       		   stmt= conn.prepareStatement(query);

	            stmt.setString(1, userId);
	            stmt.setString(2, password);
	            ResultSet rs = stmt.executeQuery();
	            if(rs.next()) {
	            	return rs.getString("email_id");
				}

	        }catch(Exception e) {
	        	e.printStackTrace();
	        } finally  {
		           try {
					stmt.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	        return null;
	 } 
	 
}
