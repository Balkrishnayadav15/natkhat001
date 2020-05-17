package com.orange.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtility {

	public static String ifDateIsOld(String date) throws ParseException{
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat format2 = new SimpleDateFormat("dd/MM/yyyy");
		Date formateChangeDate = format1.parse(date);
		String newFomate= format2.format(formateChangeDate);
		
	    Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(newFomate);  
	    Date todayDate = new Date();
	    
	    if(date1.before(todayDate)){
	    	return "Y";
	    }else{
	    	return "N";
	    }
	}
	
	public static java.sql.Date stringToMySqlDate(String date) throws ParseException{
		 DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
         Date myDate = formatter.parse(date);
         java.sql.Date sqlDate = new java.sql.Date(myDate.getTime());
		
		return sqlDate;
		
	}
	

	public static Date stringToDate(String date) throws ParseException{
		 DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
         Date myDate = formatter.parse(date);
		return myDate;
		
	}
	
	public static String stringDateToString(String date) throws ParseException{
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat userFormatter = new SimpleDateFormat("MM/dd/yyyy");
        Date myDate = userFormatter.parse(date);
		return formatter.format(myDate);
		
	}
	
	public static String stringDateToStringForUI(String date) throws ParseException {
		DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		DateFormat userFormatter = new SimpleDateFormat("MM/dd/yyyy");
        Date myDate = userFormatter.parse(date);
		return formatter.format(myDate);
		
	}
	public static java.sql.Date utilDateToMyDate(Date utilDate){
		java.sql.Date sqlDate = null;
		if(null != utilDate){
			sqlDate = new java.sql.Date(utilDate.getTime());
		}
		return sqlDate;
	}
	
	public static java.sql.Timestamp getCurrentTimestamp(){
		
		long timeNow = Calendar.getInstance().getTimeInMillis();
		java.sql.Timestamp ts = new java.sql.Timestamp(timeNow); ts = new java.sql.Timestamp(timeNow);
		return ts;
	}
	
}
