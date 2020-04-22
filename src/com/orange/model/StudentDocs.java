package com.orange.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

public class StudentDocs {


	private String scholarNo;
	private String studentDob;
	private String adharCard;
	private String sssmid;
	private String casteCertificate;
	private String docsBankAccNo;
	private String docsIfscCode;
	private String docsBankName;
	private String tcReceived;
	private String tcIssued;
	private String markSheet;
	private String lastClass;
	private String fatherAdhar;
	private String motherAdhar;
	private String fatherCaste;
	public String getScholarNo() {
		return scholarNo;
	}
	public void setScholarNo(String scholarNo) {
		this.scholarNo = scholarNo;
	}
	public String getStudentDob() {
		return studentDob;
	}
	public void setStudentDob(String studentDob) {
		if(null == studentDob){
			this.studentDob = "No";
		}
		this.studentDob = studentDob;
	}
	public String getAdharCard() {
		return adharCard;
	}
	public void setAdharCard(String adharCard) {
		if(null == adharCard){
			this.adharCard = "No";
		}
		this.adharCard = adharCard;
	}
	public String getSssmid() {
		return sssmid;
	}
	public void setSssmid(String sssmid) {
		if(null == sssmid){
			this.sssmid = "No";
		}
		this.sssmid = sssmid;
	}
	public String getCasteCertificate() {
		return casteCertificate;
	}
	public void setCasteCertificate(String casteCertificate) {
		if(null == casteCertificate){
			this.casteCertificate = "No";
		}
		this.casteCertificate = casteCertificate;
	}
	
	public String getDocsBankAccNo() {
		return docsBankAccNo;
	}
	public void setDocsBankAccNo(String docsBankAccNo) {
		if(null == docsBankAccNo){
			this.docsBankAccNo = "No";
		}
		this.docsBankAccNo = docsBankAccNo;
	}
	public String getDocsIfscCode() {
		return docsIfscCode;
	}
	public void setDocsIfscCode(String docsIfscCode) {
		if(null == docsIfscCode){
			this.docsIfscCode = "No";
		}
		this.docsIfscCode = docsIfscCode;
	}
	public String getDocsBankName() {
		return docsBankName;
	}
	public void setDocsBankName(String docsBankName) {
		if(null == docsBankName){
			this.docsBankName = "No";
		}
		this.docsBankName = docsBankName;
	}
	public String getTcReceived() {
		return tcReceived;
	}
	public void setTcReceived(String tcReceived) {
		if(null == tcReceived){
			this.tcReceived = "No";
		}
		this.tcReceived = tcReceived;
	}
	public String getTcIssued() {
		return tcIssued;
	}
	public void setTcIssued(String tcIssued) {
		if(null == tcIssued){
			this.tcIssued = "No";
		}
		this.tcIssued = tcIssued;
	}
	public String getMarkSheet() {
		return markSheet;
	}
	public void setMarkSheet(String markSheet) {
		if(null == markSheet){
			this.markSheet = "No";
		}
		this.markSheet = markSheet;
	}
	public String getLastClass() {
		return lastClass;
	}
	public void setLastClass(String lastClass) {
		if(null == lastClass){
			this.lastClass = "No";
		}
		this.lastClass = lastClass;
	}
	public String getFatherAdhar() {
		return fatherAdhar;
	}
	public void setFatherAdhar(String fatherAdhar) {
		if(null == fatherAdhar){
			this.fatherAdhar = "No";
		}
		this.fatherAdhar = fatherAdhar;
	}
	public String getMotherAdhar() {
		return motherAdhar;
	}
	public void setMotherAdhar(String motherAdhar) {
		if(null == motherAdhar){
			this.motherAdhar = "No";
		}
		this.motherAdhar = motherAdhar;
	}
	public String getFatherCaste() {
		return fatherCaste;
	}
	public void setFatherCaste(String fatherCaste) {
		if(null == fatherCaste){
			this.fatherCaste = "No";
		}
		this.fatherCaste = fatherCaste;
	}

	
}
