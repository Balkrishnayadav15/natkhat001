package com.orange.model.attendance;

import java.sql.Date;

public class CalendarVo {

	private Long id;
	private Long day;
	private Long month;
	private Long year;
	private String sDay;
	private Date cDate;
	private String event;
	private String eventName;
	private String weenEnd;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getDay() {
		return day;
	}
	public void setDay(Long day) {
		this.day = day;
	}
	public Long getMonth() {
		return month;
	}
	public void setMonth(Long month) {
		this.month = month;
	}
	public Long getYear() {
		return year;
	}
	public void setYear(Long year) {
		this.year = year;
	}
	public String getsDay() {
		return sDay;
	}
	public void setsDay(String sDay) {
		this.sDay = sDay;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getWeenEnd() {
		return weenEnd;
	}
	public void setWeenEnd(String weenEnd) {
		this.weenEnd = weenEnd;
	}
	
	
}
