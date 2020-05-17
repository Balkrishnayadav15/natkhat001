package com.orange.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.orange.model.Enquiry;
import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.StudentInfo;
import com.orange.model.TransportDetails;
import com.orange.model.attendance.CalendarVo;
import com.orange.util.DBUtil;
import com.orange.util.StudentQueryUtil;

public class CalendarDao {

	String dbType = null;
	public CalendarDao(String dbType) {
		this.dbType = dbType;
	}
	public CalendarDao() {
	}
	
	public Enquiry saveCalendar(List<CalendarVo> calendar) {
		
	 	Connection conn=null;
        PreparedStatement stmt=null;
        
        try {
        	String insertQuery = "insert into calendar(day, month, year, s_day, c_date, weekend) values(?,?,?,?,?,?)";
        	conn = DBUtil.getConnection();
        	for(CalendarVo cvo:calendar){
            stmt = conn.prepareStatement(insertQuery);
            stmt.setLong(1, cvo.getDay());
            stmt.setLong(2,cvo.getMonth());
            stmt.setLong(3, cvo.getYear());
            stmt.setString(4, cvo.getsDay());
            stmt.setDate(5, cvo.getcDate());
            stmt.setString(6, cvo.getWeenEnd());
            int row = stmt.executeUpdate();
        	}
        	conn.commit();
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
	public List<CalendarVo> getCalendarByMonth(
			String month) {
		// TODO Auto-generated method stub
		return null;
	}
}