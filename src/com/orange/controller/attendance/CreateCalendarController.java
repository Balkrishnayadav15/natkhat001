package com.orange.controller.attendance;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orange.dao.CalendarDao;
import com.orange.model.attendance.CalendarVo;
import com.orange.util.DateUtility;

@WebServlet("/createCalendar")
public class CreateCalendarController  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

/*
		String[] monthName = {"January", "February",
				"March", "April", "May", "June", "July",
				"August", "September", "October", "November",
		"December"};

		Calendar cal = Calendar.getInstance();
		String month = monthName[cal.get(Calendar.MONTH)];*/
		try{
		  int year = Integer.parseInt(req.getParameter("year"));
		  List<CalendarVo> calendar = generateCalendar(year);
		  
		  CalendarDao dao = new CalendarDao();
		  dao.saveCalendar(calendar);
		  
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private List<CalendarVo> generateCalendar(int year) throws ParseException{

		List<CalendarVo> calendar = new ArrayList<>();
		
		for(int month =1;month<=12;month++){
			
			int noOfDays = 0;
			
			switch(month){
				case 1:
					noOfDays = getTotalDaysInMonth(year,Calendar.JANUARY);
					break;
				case 2:
					noOfDays = getTotalDaysInMonth(year,Calendar.FEBRUARY);
					break;
				case 3:
					noOfDays = getTotalDaysInMonth(year,Calendar.MARCH);
					break;
				case 4:
					noOfDays = getTotalDaysInMonth(year,Calendar.APRIL);
					break;
				case 5:
					noOfDays = getTotalDaysInMonth(year,Calendar.MAY);
					break;
				case 6:
					noOfDays = getTotalDaysInMonth(year,Calendar.JUNE);
					break;
				case 7:
					noOfDays = getTotalDaysInMonth(year,Calendar.JULY);
					break;
				case 8:
					noOfDays = getTotalDaysInMonth(year,Calendar.AUGUST);
					break;
				case 9:
					noOfDays = getTotalDaysInMonth(year,Calendar.SEPTEMBER);
					break;
				case 10:
					noOfDays = getTotalDaysInMonth(year,Calendar.OCTOBER);
					break;
				case 11:
					noOfDays = getTotalDaysInMonth(year,Calendar.NOVEMBER);
					break;
				case 12:
					noOfDays = getTotalDaysInMonth(year,Calendar.DECEMBER);
					break;
			}
			
			String gDay = "";
			for(long day = 1; day <= noOfDays;day++){
				 String date = day + "/"+ month + "/" + year;
				 gDay = getDayFromDate(date);
				 
				 CalendarVo cvo = new CalendarVo();
				 
				 if("Sunday".equals(gDay)){
					 cvo.setWeenEnd("Y");
				 }else{
					 cvo.setWeenEnd("N");
				 }
				 
				 cvo.setDay(day);
				 cvo.setMonth(new Long(month));
				 cvo.setYear(new Long(year));
				 cvo.setsDay(gDay);
				 cvo.setcDate(DateUtility.stringToMySqlDate(year + "-"+month+"-"+day));
				 calendar.add(cvo);
			}
		}
		
		return calendar;
	}
	
	private int getTotalDaysInMonth(int year, int month){
		Calendar calendar = Calendar.getInstance();
		int date = 1;
		calendar.set(year, month, date);
		int days = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		return days;
	}
	
	private String getDayFromDate(String  input_date) throws ParseException{
		//String ="1/5/2020";
		  SimpleDateFormat format1=new SimpleDateFormat("dd/MM/yyyy");
		  Date dt1=format1.parse(input_date);
		  DateFormat format2=new SimpleDateFormat("EEEE"); 
		  String finalDay=format2.format(dt1);
		  return finalDay;
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
