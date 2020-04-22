package com.orange.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.StudentInfo;
import com.orange.model.TransportDetails;
import com.orange.util.DBUtil;
import com.orange.util.StudentQueryUtil;

public class ClerkDao {

	String dbType = null;
	public ClerkDao(String dbType) {
		this.dbType = dbType;
	}
	public ClerkDao() {
	}
	
	public List<StudentInfo> clerkDocsSearch(String sClass,String sSection,String bName,String bScholar){
		
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String searchParam = " where s.scholarNo = sd.scholarNo ";
		if(null != sClass && !"".equals(sClass)){
			searchParam = searchParam + " and s.admissionClass = '"+sClass+"' ";
			//isFirstCond = true;
		}
		if(null != sSection && !"".equals(sSection)){
			searchParam = searchParam + " and s.admissionSession = '"+sSection+"' ";
		}
		if(null != bName && !"".equals(bName)){
			searchParam = searchParam + " and s.name like '%"+bName+"%'";	
		}
		if(null != bScholar && !"".equals(bScholar)){
			searchParam = searchParam + " and s.scholarNo like '%"+bScholar+"%'";
		}
		searchParam = searchParam + " order by id desc";
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.clrkSearchByDocs + searchParam);
			ResultSet rs = stmt.executeQuery();
			allSelStudent = setClrkStudentsDocs(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	

	private List<StudentInfo> setClrkStudentsDocs(ResultSet rs) throws SQLException{
		List<StudentInfo> allSelStudent = new ArrayList<StudentInfo>();
		while(rs.next()) {
			Student student = new Student();
			Parents parents = new Parents();
			StudentDocs studentDocs = new StudentDocs();
			Guardian guradian = new Guardian();
			TransportDetails tDetails = new TransportDetails();
			
			student.setScholarNo(rs.getString("scholarNo"));
		
			student.setId(rs.getLong("id"));
		
			student.setName(rs.getString("name"));
		
			//student docs
			studentDocs.setAdharCard(null != rs.getString("adharCard")? rs.getString("adharCard") : "No");
			studentDocs.setCasteCertificate(null != rs.getString("casteCertificate")? rs.getString("casteCertificate") : "No");
			studentDocs.setDocsBankAccNo(null != rs.getString("docsBankAccNo")? rs.getString("docsBankAccNo") : "No");
			studentDocs.setDocsBankName(null != rs.getString("docsBankName")? rs.getString("docsBankName") : "No");
			studentDocs.setDocsIfscCode(null != rs.getString("docsIfscCode")? rs.getString("docsIfscCode") : "No");
			studentDocs.setFatherAdhar(null != rs.getString("fatherAdhar")? rs.getString("fatherAdhar") : "No");
			studentDocs.setFatherCaste(null != rs.getString("fatherCaste")? rs.getString("fatherCaste") : "No");
			studentDocs.setLastClass(null != rs.getString("lastClass")? rs.getString("lastClass") : "No");
			studentDocs.setMarkSheet(null != rs.getString("markSheet")? rs.getString("markSheet") : "No");
			studentDocs.setMotherAdhar(null != rs.getString("motherAdhar")? rs.getString("motherAdhar") : "No");
			studentDocs.setScholarNo(null != rs.getString("scholarNo")? rs.getString("scholarNo") : "No");
			studentDocs.setSssmid(null != rs.getString("sssmid")? rs.getString("sssmid") : "No");
			studentDocs.setStudentDob(null != rs.getString("studentDob")? rs.getString("studentDob") : "No");
			studentDocs.setTcIssued(null != rs.getString("tcIssued")? rs.getString("tcIssued") : "No");
			studentDocs.setTcReceived(null != rs.getString("tcReceived")? rs.getString("tcReceived") : "No");
			
			StudentInfo info = new StudentInfo();
			info.setGuradian(guradian);
			info.setParents(parents);
			info.setStudent(student);
			info.settDetails(tDetails);
			info.setStudentDocs(studentDocs);
			allSelStudent.add(info);
		}
		return allSelStudent;
		
	}
	public List<StudentInfo> clerkStuListSearch(String sClass, String sSection, String bName, String bScholar) {
		
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String searchParam = " where s.scholarNo = sd.scholarNo ";
		if(null != sClass && !"".equals(sClass)){
			searchParam = searchParam + " and s.admissionClass = '"+sClass+"' ";
			//isFirstCond = true;
		}
		if(null != sSection && !"".equals(sSection)){
			searchParam = searchParam + " and s.admissionSession = '"+sSection+"' ";
		}
		if(null != bName && !"".equals(bName)){
			searchParam = searchParam + " and s.name like '%"+bName+"%'";	
		}
		if(null != bScholar && !"".equals(bScholar)){
			searchParam = searchParam + " and s.scholarNo like '%"+bScholar+"%'";
		}
		searchParam = searchParam + " order by id desc";
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + searchParam);
		
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	
	private List<StudentInfo> getStudentInfo(ResultSet rs) throws SQLException{
		List<StudentInfo> allSelStudent = new ArrayList<StudentInfo>();
		while(rs.next()) {
			Student student = new Student();
			Parents parents = new Parents();
			StudentDocs studentDocs = new StudentDocs();
			Guardian guradian = new Guardian();
			TransportDetails tDetails = new TransportDetails();
			
			student.setAdharNo(rs.getString("adharNo"));
			student.setAdmissionClass(rs.getString("admissionClass"));
			student.setAdmissionDate(rs.getString("admissionDate"));
			student.setAdmissionSession(rs.getString("admissionSession"));
			student.setBankAccNo(rs.getString("bankAccNo"));
			student.setBankName(rs.getString("bankName"));
			student.setBloodGroup(rs.getString("bloodGroup"));
			student.setCaste(rs.getString("caste"));
			student.setCategory(rs.getString("category"));
			//student.setCreatedDate(rs.getDate("date"));
			student.setCurrentSchoolName(rs.getString("currentSchoolName"));
			student.setDobFigure(rs.getString("dobFigure"));
			student.setDobWords(rs.getString("dobWords"));
			student.setGender(rs.getString("gender"));
			student.setId(rs.getLong("id"));
			student.setIfscCode(rs.getString("ifscCode"));
			student.setLastClassAdmission(rs.getString("lastClassAdmission"));
			student.setLastSchoolName(rs.getString("lastSchoolName"));
			student.setLastSessionAdmission(rs.getString("lastSessionAdmission"));
			student.setLastSessionLeave(rs.getString("lastSessionLeave"));
			student.setLastStudyMedium(rs.getString("lastStudyMedium"));
			student.setMotherTounge(rs.getString("motherTounge"));
			student.setName(rs.getString("name"));
			student.setNationality(rs.getString("nationality"));
			student.setPassedClass(rs.getString("passedClass"));
			student.setPercentage(rs.getString("percentage"));
			student.setReligion(rs.getString("religion"));
			student.setRte(rs.getString("rte"));
			student.setScholarNo(rs.getString("scholarNo"));
			student.setSssmiNo(rs.getString("sssmiNo"));
			student.setStudyMedium(rs.getString("studyMedium"));
			
			//Set parents info
			parents.setFamilysssmid(rs.getString("familysssmid"));
			parents.setFatherAccNo(rs.getString("fatherAccNo"));
			parents.setFatherAdharNo(rs.getString("fatherAdharNo"));
			parents.setFatherAge(rs.getString("fatherAge"));
			parents.setFatherBankName(rs.getString("fatherBankName"));
			parents.setFatherDesignation(rs.getString("fatherDesignation"));
			parents.setFatherIfscCode(rs.getString("fatherIfscCode"));
			parents.setFatherIncome(rs.getString("fatherIncome"));
			parents.setFatherMobNo(rs.getString("fatherMobNo"));
			parents.setFatherName(rs.getString("fatherName"));
			parents.setFatherQualification(rs.getString("fatherQualification"));
			parents.setMontherIncome(rs.getString("montherIncome"));
			parents.setMotherAccNo(rs.getString("motherAccNo"));
			parents.setMotherAdharNo(rs.getString("motherAdharNo"));
			parents.setMotherAge(rs.getString("motherAge"));
			parents.setMotherBankName(rs.getString("motherBankName"));
			parents.setMotherDesignation(rs.getString("motherDesignation"));
			parents.setMotherIfscCode(rs.getString("motherIfscCode"));
			parents.setMotherMobNo(rs.getString("motherMobNo"));
			parents.setMotherName(rs.getString("motherName"));
			parents.setMotherQualification(rs.getString("motherQualification"));
			parents.setResAddress(rs.getString("resAddress"));
			parents.setScholarNo(rs.getString("scholarNo"));
			
			//student docs
			studentDocs.setAdharCard(rs.getString("adharCard"));
			studentDocs.setCasteCertificate(rs.getString("casteCertificate"));
			studentDocs.setDocsBankAccNo(rs.getString("docsBankAccNo"));
			studentDocs.setDocsBankName(rs.getString("docsBankName"));
			studentDocs.setDocsIfscCode(rs.getString("docsIfscCode"));
			studentDocs.setFatherAdhar(rs.getString("fatherAdhar"));
			studentDocs.setFatherCaste(rs.getString("fatherCaste"));
			studentDocs.setLastClass(rs.getString("lastClass"));
			studentDocs.setMarkSheet(rs.getString("markSheet"));
			studentDocs.setMotherAdhar(rs.getString("motherAdhar"));
			studentDocs.setScholarNo(rs.getString("scholarNo"));
			studentDocs.setSssmid(rs.getString("sssmid"));
			studentDocs.setStudentDob(rs.getString("studentDob"));
			studentDocs.setTcIssued(rs.getString("tcIssued"));
			studentDocs.setTcReceived(rs.getString("tcReceived"));
			
			//Guardian
			guradian.setGuardianAdharNo(rs.getString("guardianAdharNo"));
			guradian.setGuardianMobileNo(rs.getString("guardianMobileNo"));
			guradian.setGuardianName(rs.getString("guardianName"));
			guradian.setGuardianresAddress(rs.getString("guardianresAddress"));
			guradian.setParents(rs.getString("parents"));
			guradian.setScholarNo(rs.getString("scholarNo"));
			
			
			//Transport Details
			tDetails.setMode(rs.getString("mode"));
			tDetails.setReceiveParsonStop(rs.getString("receiveParsonStop"));
			tDetails.setReceivePersonSchool(rs.getString("receivePersonSchool"));
			tDetails.setRootName(rs.getString("rootName"));
			tDetails.setScholarNo(rs.getString("scholarNo"));
			tDetails.setStop(rs.getString("stop"));
			
			StudentInfo info = new StudentInfo();
			info.setGuradian(guradian);
			info.setParents(parents);
			info.setStudent(student);
			info.settDetails(tDetails);
			info.setStudentDocs(studentDocs);
			allSelStudent.add(info);
		}
		return allSelStudent;
		
	}
	public List<StudentInfo> clerkboyGirlSearch(String sClass, String sSection, String sGender) {
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String searchParam = " where s.scholarNo = sd.scholarNo ";
		if(null != sClass && !"".equals(sClass)){
			searchParam = searchParam + " and s.admissionClass = '"+sClass+"' ";
			//isFirstCond = true;
		}
		if(null != sSection && !"".equals(sSection)){
			searchParam = searchParam + " and s.admissionSession = '"+sSection+"' ";
		}
		if(null != sGender && !"".equals(sGender)){
			searchParam = searchParam + " and s.gender = '"+sGender+"'";	
		}
		
		searchParam = searchParam + " order by id desc";
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + searchParam);
		
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	public List<StudentInfo> clerkCategorySearch(String sClass, String sSection, String sCategory) {
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String searchParam = " where s.scholarNo = sd.scholarNo ";
		if(null != sClass && !"".equals(sClass)){
			searchParam = searchParam + " and s.admissionClass = '"+sClass+"' ";
			//isFirstCond = true;
		}
		if(null != sSection && !"".equals(sSection)){
			searchParam = searchParam + " and s.admissionSession = '"+sSection+"' ";
		}
		if(null != sCategory && !"".equals(sCategory)){
			searchParam = searchParam + " and s.category = '"+sCategory+"'";	
		}
		
		searchParam = searchParam + " order by id desc";
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + searchParam);
		
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	
	public List<StudentInfo> clerkAgeSearch(String sClass, String sSection, String aOrder) {
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String searchParam = " where s.scholarNo = sd.scholarNo ";
		if(null != sClass && !"".equals(sClass)){
			searchParam = searchParam + " and s.admissionClass = '"+sClass+"' ";
			//isFirstCond = true;
		}
		if(null != sSection && !"".equals(sSection)){
			searchParam = searchParam + " and s.admissionSession = '"+sSection+"' ";
		}
		if(null != aOrder && "Ascending".equals(aOrder)){
			searchParam = searchParam + " order by s.dobFigure asc";	
		}else{
			searchParam = searchParam + " order by s.dobFigure desc";	
		}
		
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + searchParam);
		
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
}