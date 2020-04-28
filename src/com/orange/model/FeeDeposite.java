package com.orange.model;

import java.util.List;

public class FeeDeposite {

	private Long Id;
	private String scholarNo;
	private String name;
	private String sClass;
	private String sSection;
	private String fatherName;
	private String mobileNo;
	private Long previousrDues;
	private Long activityFees;
	private Long firstInstall;
	private Long firstAmount;
	private Long firstDisocunt;
	private Long firstPendAmt;
	private String firstStatus;
	
	private Long secondInstall;
	private Long secondAmount;
	private Long secondDisocunt;
	private Long secondPendAmt;
	private String secondStatus;
	
	private Long thirdInstall;
	private Long thirdAmount;
	private Long thirdDisocunt;
	private Long thirdPendAmt;
	private String thirdStatus;
	
	private Long presentDues;
	private List<Receipt> history;
	
	public String getsSection() {
		return sSection;
	}
	public void setsSection(String sSection) {
		this.sSection = sSection;
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public String getScholarNo() {
		return scholarNo;
	}
	public void setScholarNo(String scholarNo) {
		this.scholarNo = scholarNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public Long getPreviousrDues() {
		return previousrDues;
	}
	public void setPreviousrDues(Long previousrDues) {
		this.previousrDues = previousrDues;
	}
	public Long getActivityFees() {
		return activityFees;
	}
	public void setActivityFees(Long activityFees) {
		this.activityFees = activityFees;
	}
	public Long getFirstInstall() {
		return firstInstall;
	}
	public void setFirstInstall(Long firstInstall) {
		this.firstInstall = firstInstall;
	}
	public Long getFirstAmount() {
		return firstAmount;
	}
	public void setFirstAmount(Long firstAmount) {
		this.firstAmount = firstAmount;
	}
	public Long getFirstDisocunt() {
		return firstDisocunt;
	}
	public void setFirstDisocunt(Long firstDisocunt) {
		this.firstDisocunt = firstDisocunt;
	}
	public Long getFirstPendAmt() {
		return firstPendAmt;
	}
	public void setFirstPendAmt(Long firstPendAmt) {
		this.firstPendAmt = firstPendAmt;
	}
	public String getFirstStatus() {
		return firstStatus;
	}
	public void setFirstStatus(String firstStatus) {
		this.firstStatus = firstStatus;
	}
	public Long getSecondInstall() {
		return secondInstall;
	}
	public void setSecondInstall(Long secondInstall) {
		this.secondInstall = secondInstall;
	}
	public Long getSecondAmount() {
		return secondAmount;
	}
	public void setSecondAmount(Long secondAmount) {
		this.secondAmount = secondAmount;
	}
	public Long getSecondDisocunt() {
		return secondDisocunt;
	}
	public void setSecondDisocunt(Long secondDisocunt) {
		this.secondDisocunt = secondDisocunt;
	}
	public Long getSecondPendAmt() {
		return secondPendAmt;
	}
	public void setSecondPendAmt(Long secondPendAmt) {
		this.secondPendAmt = secondPendAmt;
	}
	public String getSecondStatus() {
		return secondStatus;
	}
	public void setSecondStatus(String secondStatus) {
		this.secondStatus = secondStatus;
	}
	public Long getThirdInstall() {
		return thirdInstall;
	}
	public void setThirdInstall(Long thirdInstall) {
		this.thirdInstall = thirdInstall;
	}
	public Long getThirdAmount() {
		return thirdAmount;
	}
	public void setThirdAmount(Long thirdAmount) {
		this.thirdAmount = thirdAmount;
	}
	public Long getThirdDisocunt() {
		return thirdDisocunt;
	}
	public void setThirdDisocunt(Long thirdDisocunt) {
		this.thirdDisocunt = thirdDisocunt;
	}
	public Long getThirdPendAmt() {
		return thirdPendAmt;
	}
	public void setThirdPendAmt(Long thirdPendAmt) {
		this.thirdPendAmt = thirdPendAmt;
	}
	public String getThirdStatus() {
		return thirdStatus;
	}
	public void setThirdStatus(String thirdStatus) {
		this.thirdStatus = thirdStatus;
	}
	public Long getPresentDues() {
		return presentDues;
	}
	public void setPresentDues(Long presentDues) {
		this.presentDues = presentDues;
	}
	public List<Receipt> getHistory() {
		return history;
	}
	public void setHistory(List<Receipt> history) {
		this.history = history;
	}
	
}
