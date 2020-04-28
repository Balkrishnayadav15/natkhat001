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
import com.orange.dao.FeesDao;
import com.orange.model.FeesInstallment;
import com.orange.model.StudentInfo;


@WebServlet("/feeTable")
public class FeesTableController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		FeesDao dao = new FeesDao();
		//Fees table data
		List<FeesInstallment> installmentList = dao.getFeesInstallment();

		req.setAttribute("FEES_INSTALL", installmentList);

		String adminJsp = "/feeInstallmentTable.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(req,resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cname = req.getParameter("cname");
		String activity = req.getParameter("activity");
		String first = req.getParameter("first");
		String second = req.getParameter("second");
		String third = req.getParameter("third");
		
		FeesDao dao = new FeesDao();
		int i = dao.updateInstallment(cname, activity, first, second, third);
		
		if(i>0){
			req.setAttribute("SAVE_MSG", "Installment information for class:"+cname+" is updated successfully.");
		}else{
			req.setAttribute("SAVE_MSG", "Installment information for class:"+cname+" is not updated. Please contact Admin.");
		}
		doGet(req, resp);
	}
}
