package com.orange.controller.feereport;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.orange.dao.FeeReportDao;
import com.orange.model.Receipt;
import com.orange.model.report.ClassReport;
import com.orange.util.DateUtility;

@WebServlet("/dateViseCollection")
public class DateViseCollectionController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");
		
		FeeReportDao reportDao = new FeeReportDao();
		Map<String,List<Receipt>> report = reportDao.getReportBetweenDate(fromDate,toDate);
		request.setAttribute("TOTAL_COLLECTION", report);
		try {
			request.setAttribute("fromDate", DateUtility.stringDateToStringForUI(fromDate));
			request.setAttribute("toDate", toDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String adminJsp = "/feeReportDateVise.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(request,response);
	}

	/** 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}
}
