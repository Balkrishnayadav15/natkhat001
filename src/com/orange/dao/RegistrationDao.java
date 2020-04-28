package com.orange.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.orange.model.User;
import com.orange.util.DBUtil;


public class RegistrationDao {

	String dbType = null;
	public RegistrationDao(String dbType) {
		this.dbType = dbType;
	}
	
	public RegistrationDao() {
		// TODO Auto-generated constructor stub
	}

	public User saveUserDetails(User user, String dbType) {
		
	 	Connection conn=null;
        PreparedStatement stmt=null;
        
        /*Date date = Calendar.getInstance().getTime();  
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
        String todaysDate = dateFormat.format(date);  
       */
        try {
        	conn = DBUtil.getConnection();
            stmt = conn.prepareStatement(generateInsert(user));
            stmt.setString(1, user.getRegisterId());
            stmt.setString(2, user.getName());
            stmt.setString(3, user.getGender());
            stmt.setString(4, user.getEmail());
            stmt.setString(5, user.getMobile());
            stmt.setString(6, user.getAltMobile());
            stmt.setString(7, user.getAdharNo());
            stmt.setString(8, user.getDateOfBirth());
            stmt.setString(9, user.getAddress());
            stmt.setString(10,user.getPincode());
            stmt.setString(11,user.getUserType() );
            stmt.setString(12,user.getJobType() );
            stmt.setString(13,user.getFirmName() );
            stmt.setString(14,user.getFirmAddress());
            stmt.setString(15, user.getFirmContNo());
            stmt.setString(16,user.getFirmEmailId());
            stmt.setString(17,user.getEstablisYear());
            stmt.setString(18,user.getInvestAmt());
            stmt.setString(19,user.getAccountNo());
            stmt.setString(20,user.getIfscCode());
            stmt.setString(21,user.getBankName());
            stmt.setString(22,user.getAffilition_code());
            stmt.setString(23, user.getFranchiseCode());
            
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

private String generateInsert(User user) {
	return "INSERT INTO Registration (regId, username, gender,emailId,mobile,altMobile,adharNo,dob,address,pincode,"
			+ "userType,jobType,firmName,firmAddress,firmContNo,firmAffilCode,firmEmailid,firmEstYear,investAmt,BankNo,IFSCCode,bankName,franchiseCode) " +
            "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
}

public long getNextRegistrationNumber(String type) throws Exception {
	long nextRegNum = 000;
	Connection conn=null;
	PreparedStatement stmt=null;
	String query = "select max(id) from Registration wher userType = ?";
	try {
		conn = DBUtil.getConnection();
		stmt = conn.prepareStatement(query);
		stmt.setString(1, type);
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
}
