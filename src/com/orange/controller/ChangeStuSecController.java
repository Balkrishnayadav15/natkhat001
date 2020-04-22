package com.orange.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.orange.dao.AdmissionDao;
import com.orange.model.StudentInfo;
import com.orange.util.ResponseUtility;


@WebServlet("/natkhat/admin/changeStudentSec")
public class ChangeStuSecController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter writer = resp.getWriter();
		String franchise = req.getParameter("franchise");
		String type =   req.getParameter("search");
		String key = req.getParameter("key");
		String section = req.getParameter("sectionDropdown");
		String id = req.getParameter("studentId");
		String studentName = req.getParameter("studentName");
		
		AdmissionDao dao = new AdmissionDao(franchise);
		//Update student section 
		int i = dao.updateStudentSection(id,section);
		
		//Dashboard data
		Map<String, Map<String, Integer>> classSectionCount = dao.getClassSectionCount();
		
		List<StudentInfo> allSelStudent = null;
		if("scholarNo".equals(type)){
			allSelStudent = dao.getStudentByScholar(key);
		}else if("name".equals(type)){
			allSelStudent = dao.getStudentByName(key);
		}else if("sClass".equals(type)){
			allSelStudent = dao.getStudentByClass(key);
		}
		req.setAttribute("STUDENT_LIST",allSelStudent);
		req.setAttribute("CLASS_COUNT", classSectionCount);
		req.setAttribute("KEY", key);
		req.setAttribute("TYPE", type);
		if(i>0){
			req.setAttribute("UPDATE_MSG", studentName+" section "+section+ " has been update successfully.");
		}else{
			req.setAttribute("UPDATE_MSG", "Some error while updating section of student. Please contact Admin.");
		}
		
		String adminJsp = "/admissionDeskManageSection.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(req,resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
