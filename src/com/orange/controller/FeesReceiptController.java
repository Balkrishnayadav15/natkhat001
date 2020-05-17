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
import com.orange.model.Receipt;
import com.orange.model.StudentInfo;


@WebServlet("/feeReceipt")
public class FeesReceiptController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String receipt = req.getParameter("receiptId");
		long receiptId = 0;
		if(null != receipt){
			receiptId = Long.parseLong(receipt);
		}
		FeesDao dao = new FeesDao();
		
		//Fees Receipt data
		Map<String,Object> receiptMap = dao.getReceiptInfo(receiptId);

		req.setAttribute("FEES_RECEIPT", receiptMap);

		String adminJsp = "/feeReceipt.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(req,resp);
	}
	
	
	
}
