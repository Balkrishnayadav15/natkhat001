package com.orange.controller.feereport;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orange.dao.FeeReportDao;

@WebServlet("/classViseCollection")
public class ClassViseCollectionController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sClass = request.getParameter("sClass");
		String sSection = request.getParameter("sSection");
		String sInstallment = request.getParameter("sInstallment");
		
		FeeReportDao reportDao = new FeeReportDao();
		Map<String,Object> report = reportDao.getClassViseReport(sClass,sSection,sInstallment);
		request.setAttribute("TOTAL_COLLECTION", report);
		request.setAttribute("sClass", sClass);
		request.setAttribute("sSection", sSection);
		request.setAttribute("sInstallment", sInstallment);
		
		
		String adminJsp = "/classViseCollectionReport.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(request,response);
	}

	/** 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}
}
