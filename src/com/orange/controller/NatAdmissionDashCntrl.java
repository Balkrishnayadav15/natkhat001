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


@WebServlet("/natkhat/admin/adminDashboard")
public class NatAdmissionDashCntrl extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String franchise = req.getParameter("franchise");
		AdmissionDao dao = new AdmissionDao(franchise);
		Map<String,Object> adminData = dao.getAdminDashBoardData(franchise);
		List<StudentInfo> todayAdmitStuList = dao.getTodaysAdmiStudent();
		adminData.put("TODAY_ADMIT_STUDENT",todayAdmitStuList);
		req.setAttribute("ADMIN_DATA", adminData);
		
		String adminJsp = "/natkhat/admissionDeskForAdmin.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(req,resp);
		// TODO Auto-generated method stub
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
