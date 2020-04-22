package com.orange.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class Student {


	private Long id;
	private String scholarNo;
	private String  name;
	private String dobFigure;
	private String dobWords;
	private String gender;
	private String nationality;
	private String religion;
	private String caste;
	private String category;
	private String bloodGroup;
	private String motherTounge;
	private String adharNo;
	private String sssmiNo;
	private String bankAccNo;
	private String ifscCode;
	private String bankName;
	private String currentSchoolName;
	private String admissionDate;
	private String admissionClass;
	private String admissionSession;
	private String studyMedium;
	private String rte;
	private String lastSchoolName;
	private String lastClassAdmission;
	private String lastSessionAdmission;
	private String lastSessionLeave;
	private String passedClass;
	private String percentage;
	private String lastStudyMedium;
	private Date createdDate;
	private Date dob;
	private String admissionSection;
	
	public String getAdmissionSection() {
		return admissionSection;
	}
	public void setAdmissionSection(String admissionSection) {
		this.admissionSection = admissionSection;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Date getCreatedDate() {
		return createdDate;
	} 
	public void setCreatedDate(Date date) {
		this.createdDate = date;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getDobFigure() {
		return dobFigure;
	}
	public void setDobFigure(String dobFigure) {
		this.dobFigure = dobFigure;
	}
	public String getDobWords() {
		return dobWords;
	}
	public void setDobWords(String dobWords) {
		this.dobWords = dobWords;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getMotherTounge() {
		return motherTounge;
	}
	public void setMotherTounge(String motherTounge) {
		this.motherTounge = motherTounge;
	}
	public String getAdharNo() {
		return adharNo;
	}
	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}
	public String getSssmiNo() {
		return sssmiNo;
	}
	public void setSssmiNo(String sssmiNo) {
		this.sssmiNo = sssmiNo;
	}
	public String getBankAccNo() {
		return bankAccNo;
	}
	public void setBankAccNo(String bankAccNo) {
		this.bankAccNo = bankAccNo;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getCurrentSchoolName() {
		return currentSchoolName;
	}
	public void setCurrentSchoolName(String currentSchoolName) {
		this.currentSchoolName = currentSchoolName;
	}
	public String getAdmissionDate() {
		return admissionDate;
	}
	public void setAdmissionDate(String admissionDate) {
		this.admissionDate = admissionDate;
	}
	public String getAdmissionClass() {
		return admissionClass;
	}
	public void setAdmissionClass(String admissionClass) {
		this.admissionClass = admissionClass;
	}
	public String getAdmissionSession() {
		return admissionSession;
	}
	public void setAdmissionSession(String admissionSession) {
		this.admissionSession = admissionSession;
	}
	public String getStudyMedium() {
		return studyMedium;
	}
	public void setStudyMedium(String studyMedium) {
		this.studyMedium = studyMedium;
	}
	public String getRte() {
		return rte;
	}
	public void setRte(String rte) {
		this.rte = rte;
	}
	public String getLastSchoolName() {
		return lastSchoolName;
	}
	public void setLastSchoolName(String lastSchoolName) {
		this.lastSchoolName = lastSchoolName;
	}
	public String getLastClassAdmission() {
		return lastClassAdmission;
	}
	public void setLastClassAdmission(String lastClassAdmission) {
		this.lastClassAdmission = lastClassAdmission;
	}
	public String getLastSessionAdmission() {
		return lastSessionAdmission;
	}
	public void setLastSessionAdmission(String lastSessionAdmission) {
		this.lastSessionAdmission = lastSessionAdmission;
	}
	public String getLastSessionLeave() {
		return lastSessionLeave;
	}
	public void setLastSessionLeave(String lastSessionLeave) {
		this.lastSessionLeave = lastSessionLeave;
	}
	public String getPassedClass() {
		return passedClass;
	}
	public void setPassedClass(String passedClass) {
		this.passedClass = passedClass;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	public String getLastStudyMedium() {
		return lastStudyMedium;
	}
	public void setLastStudyMedium(String lastStudyMedium) {
		this.lastStudyMedium = lastStudyMedium;
	}

	
}
