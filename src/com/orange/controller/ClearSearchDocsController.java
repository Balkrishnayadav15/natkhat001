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

import com.orange.dao.ClerkDao;
import com.orange.model.StudentInfo;


@WebServlet("/clrkSearchDocs")
public class ClearSearchDocsController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String franchise = req.getParameter("franchise");
		String sClass =   req.getParameter("sClass");
		String sSection = req.getParameter("sSection");
		String bName = req.getParameter("bName");
		String bScholar = req.getParameter("bScholar");

		ClerkDao dao = new ClerkDao(franchise);
		//Dashboard data
		List<StudentInfo> allSelStudent = dao.clerkDocsSearch(sClass, sSection, bName, bScholar);

		req.setAttribute("DOC_LIST_STUDENT", allSelStudent);
		req.setAttribute("CLASS", sClass);
		req.setAttribute("SECTION", sSection);
		req.setAttribute("NAME", bName);
		req.setAttribute("SCHOLAR_NO", bScholar);


		String adminJsp = "/clerkDocumentsPendingSheet.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(req,resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
