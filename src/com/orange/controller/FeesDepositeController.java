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
import com.orange.model.FeeDeposite;
import com.orange.model.FeesInstallment;
import com.orange.model.StudentInfo;


@WebServlet("/feeDeposite")
public class FeesDepositeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String key = req.getParameter("key");
		String value = req.getParameter("value");
		FeesDao dao = new FeesDao();
		//Fees table data
		FeeDeposite feeDeposite = null;

		if("scholarNo".equals(key)){
			feeDeposite = dao.getStudentByScholar(value);
		}else if("name".equals(key)){
			feeDeposite = dao.getStudentByName(value);
		}
		req.setAttribute("STUDENT_FEE_INFO", feeDeposite);
		req.setAttribute("KEY", key);
		req.setAttribute("VALUE", value);
		
		String feeDepJsp = "/feeDepositeTable.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(feeDepJsp);
		dispatcher.include(req,resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String amount = req.getParameter("amount");
		String discount = req.getParameter("discount");
		String scholarNo = req.getParameter("scholarNo");
		FeesDao dao = new FeesDao();
		
		
		FeeDeposite feeDeposite = dao.updatePayFee(scholarNo, amount, discount);
		req.setAttribute("STUDENT_FEE_INFO", feeDeposite);
		
		/*if(i>0){
			req.setAttribute("SAVE_MSG", "Installment information for class: is updated successfully.");
		}else{
			req.setAttribute("SAVE_MSG", "Installment information for class:is not updated. Please contact Admin.");
		}
		doGet(req, resp);*/
		
		String jsp = "/feeDepositeTable.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.include(req,resp);
	}


	private FeeDeposite calculateFees(String amount, String discount, String scholarNo) {
		FeeDeposite feeDeposite = null;
		
		return feeDeposite;
	}
	
	
}
