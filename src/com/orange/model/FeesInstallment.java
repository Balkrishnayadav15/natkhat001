package com.orange.model;

public class FeesInstallment {

	private Long id;
	private String className;
	private Long firstInstall;
	private Long secondInstall;
	private Long thirdInstall;
	private Long activityFees;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Long getFirstInstall() {
		return firstInstall;
	}
	public void setFirstInstall(Long firstInstall) {
		this.firstInstall = firstInstall;
	}
	public Long getSecondInstall() {
		return secondInstall;
	}
	public void setSecondInstall(Long secondInstall) {
		this.secondInstall = secondInstall;
	}
	public Long getThirdInstall() {
		return thirdInstall;
	}
	public void setThirdInstall(Long thirdInstall) {
		this.thirdInstall = thirdInstall;
	}
	public Long getActivityFees() {
		return activityFees;
	}
	public void setActivityFees(Long activityFees) {
		this.activityFees = activityFees;
	}
	
	
}
