package com.orange.controller.attendance;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orange.dao.CalendarDao;
import com.orange.model.attendance.CalendarVo;

@WebServlet("/getAttendance")
public class SetAttendanceController  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String month = getCurrentMonth();
		CalendarDao dao = new CalendarDao();
		List<CalendarVo> calendar = dao.getCalendarByMonth(month);
		
		req.setAttribute("CURR_MON_CALENDAR", calendar);
		
		
	}

	private String getCurrentMonth(){
		String[] monthName = {"January", "February",
				"March", "April", "May", "June", "July",
				"August", "September", "October", "November",
		"December"};

		Calendar cal = Calendar.getInstance();
		String month = monthName[cal.get(Calendar.MONTH)];
		return month;
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
