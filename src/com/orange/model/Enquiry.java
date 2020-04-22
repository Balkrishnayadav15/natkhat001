package com.orange.model;

public class Enquiry {

	private String name;
	private String schoolName;
	private String schoolArea;
	
	private String address;
	private String emailid;
	private String mobileNo;
	private long id;
	private String enquiryId;
	private String firmAmount;
	
	
	public Enquiry(){
		
	}
	public Enquiry(long id,String name, String schoolName, String address, String emailid, String mobileNo,
			String enquiryId) {
		super();
		if(name != null) { this.name = name; }else { this.name = "";}
		if(schoolName != null) { this.schoolName = schoolName; }else { this.schoolName = "";}
		if(address != null) { this.address = address; }else { this.address = "";}
		if(emailid != null) { this.emailid = emailid; }else { this.emailid = "";}
		if(mobileNo != null) { this.mobileNo = mobileNo; }else { this.mobileNo = "";}
		if(id != 0) { this.id = id; }else { this.id = 0 ;}
		if(enquiryId != null) { this.enquiryId = enquiryId; }else { this.enquiryId = "";}	
	}
	public String getSchoolArea() {
		return schoolArea;
	}
	public void setSchoolArea(String schoolArea) {
		this.schoolArea = schoolArea;
	}
	public String getFirmAmount() {
		return firmAmount;
	}
	public void setFirmAmount(String firmAmount) {
		this.firmAmount = firmAmount;
	}
	public String getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(String enquiryId) {
		this.enquiryId = enquiryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	
}
