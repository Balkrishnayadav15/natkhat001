package com.orange.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


public class Guardian {


	private String scholarNo;
	private String guardianName;
	private String guardianMobileNo;
	private String parents;
	private String guardianresAddress;
	private String guardianAdharNo;
	public String getScholarNo() {
		return scholarNo;
	}
	public void setScholarNo(String scholarNo) {
		this.scholarNo = scholarNo;
	}
	
	public String getParents() {
		return parents;
	}
	public void setParents(String parents) {
		this.parents = parents;
	}
	public String getGuardianName() {
		return guardianName;
	}
	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}
	public String getGuardianMobileNo() {
		return guardianMobileNo;
	}
	public void setGuardianMobileNo(String guardianMobileNo) {
		this.guardianMobileNo = guardianMobileNo;
	}
	public String getGuardianresAddress() {
		return guardianresAddress;
	}
	public void setGuardianresAddress(String guardianresAddress) {
		this.guardianresAddress = guardianresAddress;
	}
	public String getGuardianAdharNo() {
		return guardianAdharNo;
	}
	public void setGuardianAdharNo(String guardianAdharNo) {
		this.guardianAdharNo = guardianAdharNo;
	}
	
	
}
