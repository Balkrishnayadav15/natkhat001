package com.orange.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orange.dao.AdmissionDao;
import com.orange.model.FeeDeposite;
import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.TransportDetails;
import com.orange.util.DateUtility;
import com.orange.util.ResponseUtility;

/**
 * Servlet implementation class AunthicateController
 */
@WebServlet("/natkhat/admin/admission")
public class StudAdmissionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudAdmissionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			/*String adminJsp = "/natkhat/natkhat001.jsp";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
			dispatcher.include(request,response);*/
		doPost(request,response);
	}

	/** 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

			Student	student = createStudent(request);
			Parents parents = createParents(request);
			StudentDocs studentDocs = createStudentDocs(request);
			Guardian guradian = createGuardian(request);
			TransportDetails tDetails = createTDetails(request);
			FeeDeposite feeDeposite = new FeeDeposite();//createFeeDeposite(request);
			String franchise = request.getParameter("franchise");

			AdmissionDao dao = new AdmissionDao(franchise);
			boolean isSave = dao.saveStudentInfo(student, tDetails, guradian, studentDocs, parents,franchise,feeDeposite);
			request.setAttribute("ADMIN_SAVED", "YES");

			String adminJsp = "/natkhat/admin/getStudent?franchise=natkhat001";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
			dispatcher.include(request,response);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Student createStudent(HttpServletRequest request) throws ParseException {
		Student student = new Student();
		student.setScholarNo(request.getParameter("scholarNo"));
		student.setName(request.getParameter("name"));
		student.setDob(DateUtility.stringToDate(request.getParameter("dobFigure")));
		student.setDobWords(request.getParameter("dobWords"));
		student.setGender(request.getParameter("gender"));
		student.setNationality(request.getParameter("nationality"));
		student.setReligion(request.getParameter("religion"));
		student.setCaste(request.getParameter("caste"));
		student.setCategory(request.getParameter("category"));
		student.setBloodGroup(request.getParameter("bloodGroup"));
		student.setMotherTounge(request.getParameter("motherTounge"));
		student.setAdharNo(request.getParameter("adharNo"));
		student.setSssmiNo(request.getParameter("sssmidNo"));
		student.setBankAccNo(request.getParameter("bankAccNo"));
		student.setIfscCode(request.getParameter("ifscCode"));
		student.setBankName(request.getParameter("bankName"));
		student.setCurrentSchoolName(request.getParameter("currentSchoolName"));
		student.setAdmissionDate(request.getParameter("admissionDate"));
		student.setAdmissionClass(request.getParameter("admissionClass"));
		student.setAdmissionSession(request.getParameter("admissionSession"));
		student.setStudyMedium(request.getParameter("studyMedium"));
		student.setRte(request.getParameter("rte"));
		student.setLastSchoolName(request.getParameter("lastSchoolName"));
		student.setLastClassAdmission(request.getParameter("lastClassAdmission"));
		student.setLastSessionLeave(request.getParameter("lastSessionLeave"));
		student.setPassedClass(request.getParameter("passedClass"));
		student.setPercentage(request.getParameter("percentage"));
		student.setLastStudyMedium(request.getParameter("lastStudyMedium"));
		student.setCreatedDate(new Date());
		return student;
	}
	private TransportDetails createTDetails(HttpServletRequest request) {
		TransportDetails tDetails = new TransportDetails();
		tDetails.setMode(request.getParameter("mode"));
		tDetails.setReceiveParsonStop(request.getParameter("receiveParsonStop"));
		tDetails.setReceivePersonSchool(request.getParameter("receivePersonSchool"));
		tDetails.setRootName(request.getParameter("rootName"));
		tDetails.setScholarNo(request.getParameter("scholarNo"));
		tDetails.setStop(request.getParameter("stop"));
		
		
		return tDetails;
	}

	private Guardian createGuardian(HttpServletRequest request) {
		Guardian guardian = new Guardian();
		guardian.setGuardianAdharNo(request.getParameter("adharNo"));
		guardian.setGuardianMobileNo(request.getParameter("mobileNo"));
		guardian.setGuardianName(request.getParameter("name"));
		guardian.setParents(request.getParameter("parents"));
		guardian.setGuardianresAddress(request.getParameter("resAddress"));
		guardian.setScholarNo(request.getParameter("scholarNo"));
		
		return guardian;
	}

	private StudentDocs createStudentDocs(HttpServletRequest request) {
		StudentDocs docs = new StudentDocs();
		docs.setAdharCard(request.getParameter("adharCard"));
		docs.setDocsBankAccNo(request.getParameter("bankAccNo"));
		docs.setDocsBankName(request.getParameter("bankName"));
		docs.setCasteCertificate(request.getParameter("casteCertificate"));
		docs.setFatherAdhar(request.getParameter("fatherAdhar"));
		docs.setFatherCaste(request.getParameter("fatherCaste"));
		docs.setDocsIfscCode(request.getParameter("ifscCode"));
		docs.setLastClass(request.getParameter("lastClass"));
		docs.setMarkSheet(request.getParameter("markSheet"));
		docs.setMotherAdhar(request.getParameter("motherAdhar"));
		docs.setScholarNo(request.getParameter("scholarNo"));
		docs.setSssmid(request.getParameter("sssmid"));
		docs.setStudentDob(request.getParameter("studentDob"));
		docs.setTcIssued(request.getParameter("tcIssued"));
		docs.setTcReceived(request.getParameter("tcReceived"));
		return docs;
	}

	private Parents createParents(HttpServletRequest request) {
		
		Parents parent = new Parents();
		parent.setFamilysssmid(request.getParameter("familysssmid"));
		parent.setFatherAccNo(request.getParameter("fatherAccNo"));
		parent.setFatherAdharNo(request.getParameter("fatherAdharNo"));
		parent.setFatherAge(request.getParameter("fatherAge"));
		parent.setFatherBankName(request.getParameter("fatherBankName"));
		parent.setFatherDesignation(request.getParameter("fatherDesignation"));
		parent.setFatherIfscCode(request.getParameter("fatherIfscCode"));
		parent.setFatherIncome(request.getParameter("fatherIncome"));
		parent.setFatherMobNo(request.getParameter("fatherMobNo"));
		parent.setFatherName(request.getParameter("fatherName"));
		parent.setFatherQualification(request.getParameter("fatherQualification"));
		parent.setMontherIncome(request.getParameter("montherIncome"));
		parent.setScholarNo(request.getParameter("scholarNo"));
		parent.setResAddress(request.getParameter("resAddress"));
		parent.setMotherQualification(request.getParameter("motherQualification"));
		parent.setMotherName(request.getParameter("motherName"));
		parent.setMotherMobNo(request.getParameter("motherMobNo"));
		parent.setMotherIfscCode(request.getParameter("motherIfscCode"));
		parent.setMotherDesignation(request.getParameter("motherDesignation"));
		parent.setMotherBankName(request.getParameter("motherBankName"));
		parent.setMotherAdharNo(request.getParameter("motherAdharNo"));
		parent.setMotherAge(request.getParameter("motherAge"));
		parent.setMotherAccNo(request.getParameter("motherAccNo"));
		return parent;
	}
	/*private FeeDeposite createFeeDeposite(HttpServletRequest request) {
		
		FeeDeposite feeDeposite = new FeeDeposite();
		feeDeposite.setScholarNo(request.getParameter("scholarNo"));
		feeDeposite.setName(request.getParameter("name"));
		feeDeposite.setFatherName(request.getParameter("fatherName"));
		feeDeposite.setsClass(request.getParameter("admissionClass"));
		feeDeposite.setMobileNo(request.getParameter("fatherMobNo"));
		
		return feeDeposite;
	}*/
}
