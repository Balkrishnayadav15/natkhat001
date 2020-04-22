package com.orange.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.orange.model.Enquiry;
import com.orange.util.DBUtil;



public class EnquiryDao {
    String dbType = null;
    public EnquiryDao() {
	}
    public EnquiryDao(String dbType) {
    	this.dbType = dbType;
    }
	public long getNextEnNumber() throws Exception {
		long nextRegNum = 000;
		Connection conn=null;
        PreparedStatement stmt=null;
        String query = "select max(id) from Enquiry";
        try {
	        	 conn = DBUtil.getConnection(dbType);
	            stmt = conn.prepareStatement(query);
	            ResultSet rs = stmt.executeQuery();
	            while(rs.next()) {
	            	nextRegNum = rs.getLong(1);
				}

        }catch(Exception e) {
        	throw e;
        } finally  {
	           try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
     }
        return nextRegNum+001;
	}
	
	public Enquiry saveEnquiryDetails(Enquiry user) {
		
	 	Connection conn=null;
        PreparedStatement stmt=null;
        
        try {
        	String insertQuery = "insert into Enquiry(enquiryId, username,schoolname,emailid,mobile,schoolArea,firmAmout,status) values(?,?,?,?,?,?,?,?)";
        	conn = DBUtil.getConnection(dbType);
            stmt = conn.prepareStatement(insertQuery);
            stmt.setString(1, user.getEnquiryId());
            stmt.setString(2,user.getName());
            stmt.setString(3, user.getSchoolName());
            stmt.setString(4, user.getEmailid());
            stmt.setString(5, user.getMobileNo());
            stmt.setString(6, user.getSchoolArea());
            stmt.setString(7, user.getFirmAmount());
            stmt.setString(8, "Pending");

          
            int row = stmt.executeUpdate();
            if(row == 1) {
            	return user;
            }
        }catch(Exception e) {
        	e.printStackTrace();
        }finally  {
	           try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
        }
	return null;
}
	public List<Enquiry> getAllEnquires() throws Exception {
		long nextRegNum = 0;
		Connection conn=null;
        PreparedStatement stmt=null;
        List<Enquiry> userList = new ArrayList<Enquiry>();
        Enquiry user = null;
        String query = "select id, username,schoolname,address,emailid,mobile,enquiryId from EnquiryUser where status = 'Pending' order by id asc ";
     
        try  {
        	 conn = DBUtil.getConnection(dbType);
            stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
            	user = new Enquiry(rs.getLong(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
            	userList.add(user);
			}
        }catch(Exception e) {
        	throw e;
        } finally  {
	           try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
     }
        return userList;
	}
}
