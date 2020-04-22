package com.orange.util;

public class StudentQueryUtil {

	public static String getAllStudentQuery = "select s.id,  s.scholarNo,  s.name,  s.dobFigure,  s.dobWords,  s.gender, "+
			"s.nationality,  s.religion,  s.caste,  s.category,  s.bloodGroup,  s.motherTounge,"+
			"s.adharNo,  s.sssmiNo,  s.bankAccNo,  s.ifscCode,  s.bankName,"+
			"s.currentSchoolName,  s.admissionDate,  s.admissionClass,  s.admissionSession,"+
			"s.studyMedium,  s.rte,  s.lastSchoolName,  s.lastClassAdmission,"+
			"s.lastSessionAdmission,  s.lastSessionLeave,  s.passedClass,  s.percentage,"+
			"s.lastStudyMedium,  s.createdDate,  g.guardianName,  g.guardianMobileNo,  g.parents,"+
			"g.guardianresAddress,  g.guardianAdharNo,  td.mode,  td.rootName,  td.stop,"+
			"td.receiveParsonStop,  td.receivePersonSchool,  sd.studentDob,  sd.adharCard,  sd.sssmid,"+
			"sd.casteCertificate,  sd.docsBankAccNo, sd.docsIfscCode, sd.docsBankName,  sd.tcReceived,"+
			"sd.tcIssued,  sd.markSheet,  sd.lastClass,  sd.fatherAdhar,  sd.motherAdhar,"+
			"sd.fatherCaste,p.fatherName, p.fatherQualification, p.fatherDesignation, p.fatherAge, p.fatherIncome, p.fatherAdharNo,"
			+ "p.familysssmid, p.fatherMobNo,p.fatherAccNo,p.fatherIfscCode, p.fatherBankName, p.motherName, p.motherQualification,"
			+ "p.motherDesignation, p.motherAge, p.montherIncome, p.motherAdharNo, p.motherMobNo, p.MotherAccNo, p.MotherIfscCode,"
			+ "p.motherBankName, p.resAddress, s.admissionSection "
			+ " from studentInfo s "
			+ "JOIN  parentsDetails p on p.id = s.id "
			+ "JOIN  transportDetails td on td.id = p.id " 
			+ "JOIN  studentDocuments sd on sd.id = td.id "
			+ "JOIN  gurdianDetails g on g.id = sd.id ";
	
	public static String clrkSearchByDocs = "select s.id,  s.scholarNo,  s.name,  sd.studentDob,  sd.adharCard,  sd.sssmid,"+
			"sd.casteCertificate,  sd.docsBankAccNo, sd.docsIfscCode, sd.docsBankName,  sd.tcReceived,"+
			"sd.tcIssued,  sd.markSheet,  sd.lastClass,  sd.fatherAdhar,  sd.motherAdhar,"+
			"sd.fatherCaste "
			+ " from studentInfo s "
			+ "JOIN  studentDocuments sd on sd.id = s.id ";
		
	
	public static String getClassSectoin = "SELECT admissionClass,admissionSection, COUNT(admissionSection) as count from studentInfo group by admissionClass,admissionSection";
	
	public static String getStudentQuery = "select s.id,  s.scholarNo,  s.name,  s.dobFigure,  s.dobWords,  s.gender, "+
			"s.nationality,  s.religion,  s.caste,  s.category,  s.bloodGroup,  s.motherTounge,"+
			"s.adharNo,  s.sssmiNo,  s.bankAccNo,  s.ifscCode,  s.bankName,"+
			"s.currentSchoolName,  s.admissionDate,  s.admissionClass,  s.admissionSession,"+
			"s.studyMedium,  s.rte,  s.lastSchoolName,  s.lastClassAdmission,"+
			"s.lastSessionAdmission,  s.lastSessionLeave,  s.passedClass,  s.percentage,"+
			"s.lastStudyMedium,  s.createdDate from studentInfo s ";
			
	
	public static String getParentsQuery = "select p.fatherName, p.fatherQualification, p.fatherDesignation, p.fatherAge, p.fatherIncome, p.fatherAdharNo,"
			+ "p.familysssmid, p.fatherMobNo,p.fatherAccNo,p.fatherIfscCode, p.fatherBankName, p.motherName, p.motherQualification,"
			+ "p.motherDesignation, p.motherAge, p.montherIncome, p.motherAdharNo, p.motherMobNo, p.MotherAccNo, p.MotherIfscCode,"
			+ "p.motherBankName, p.resAddress "
			+ " from parentsDetails p ";
	
	public static String getGuardianQuery = "select  g.guardianName,  g.guardianMobileNo,  g.parents,"+
			"g.guardianresAddress,  g.guardianAdharNo from gurdianDetails g";
	
	public static String getStudentDocsQuery = "select sd.studentDob,  sd.adharCard,  sd.sssmid,"+
			"sd.casteCertificate,  sd.docsBankAccNo, sd.docsIfscCode, sd.docsBankName,  sd.tcReceived,"+
			"sd.tcIssued,  sd.markSheet,  sd.lastClass,  sd.fatherAdhar,  sd.motherAdhar,"+
			"sd.fatherCaste"
			+ " from  studentDocuments sd ";
	
	public static String getRootQuery = "select  td.mode,  td.rootName,  td.stop,"+
			"td.receiveParsonStop,  td.receivePersonSchool  from transportDetails td" ;
		
}
