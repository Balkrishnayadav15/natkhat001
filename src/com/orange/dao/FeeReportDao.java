package com.orange.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.orange.model.FeeDeposite;
import com.orange.model.Receipt;
import com.orange.model.report.ClassReport;
import com.orange.model.report.InstallmentReport;
import com.orange.util.DBUtil;
import com.orange.util.DateUtility;
import com.orange.util.FeesQuery;

public class FeeReportDao {

	public InstallmentReport getAllInstallmentDetail(){
		
		InstallmentReport installReport = new InstallmentReport();

		Connection conn=null;
		PreparedStatement stmt=null, receiptStmt = null;
		try {
			conn = DBUtil.getConnection();
			//Total fees installment 
			/*stmt = conn.prepareStatement(FeesQuery.totalFeeInstallAmt);
			
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				installReport.setTotalFirstInstall(rs.getLong("total_f_install"));
				installReport.setTotalSecondInstall(rs.getLong("total_s_install"));
				installReport.setTotalThirdInstall(rs.getLong("total_t_install"));
			}*/
			
			//Total Fees receipt amount
			receiptStmt = conn.prepareStatement(FeesQuery.totalFeeDepositeAmt);
			ResultSet depositeRs = receiptStmt.executeQuery();
			while(depositeRs.next()){
				installReport.setTotalFirstInstall(depositeRs.getLong("first_install"));
				installReport.setTotalSecondInstall(depositeRs.getLong("second_install"));
				installReport.setTotalThirdInstall(depositeRs.getLong("third_install"));
				installReport.setTotalFirstAmount(depositeRs.getLong("f_amount_paid"));
				installReport.setTotalFirstDiscount(depositeRs.getLong("f_discount"));
				installReport.setTotalFirstPending(depositeRs.getLong("f_pending_amt"));
				installReport.setTotalSecondAmount(depositeRs.getLong("s_amount_paid"));
				installReport.setTotalSecondDiscount(depositeRs.getLong("s_discount"));
				installReport.setTotalSecondPending(depositeRs.getLong("s_pending_amt"));
				installReport.setTotalThirdAmount(depositeRs.getLong("t_amount_paid"));
				installReport.setTotalThirdDiscount(depositeRs.getLong("t_discount"));
				installReport.setTotalThirdPending(depositeRs.getLong("t_pending_amt"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				receiptStmt.close();
				//stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
		return installReport;
	}
	
	public Map<String,Object> getClassViseReport(String sClass, String section, String installType){
		
		Map<String,Object> feeCollMap = new HashMap<>();
		List<FeeDeposite> reportList = new ArrayList<>();
		InstallmentReport installReport = new InstallmentReport();
		Connection conn=null;
		PreparedStatement stmt=null, totalStmt = null;
		String getStudentFeeQuery = FeesQuery.getStudentFeeQuery + " where fd.scholarNo = s.scholarNo  and s.admissionClass = ?";
		if(!"All".equals(section)){
			getStudentFeeQuery += " and s.admissionSection = ?";
		}	
		try {
			conn = DBUtil.getConnection();
			//Total fees installment 
			stmt = conn.prepareStatement(getStudentFeeQuery);
			stmt.setString(1, sClass);
			if(!"All".equals(section)){
				stmt.setString(2, section);
			}	
			ResultSet rs = stmt.executeQuery();
			
			reportList = getStudentInfo(rs);
			feeCollMap.put("STUDENT_INFO_LIST", reportList);
			
			String condition = " where fd.scholarNo = s.scholarNo  and s.admissionClass = ? ";
			if(!"All".equals(section)){
				condition += " and s.admissionSection = ?";
			}
			//Total Fees receipt amount
			totalStmt = conn.prepareStatement(FeesQuery.getClassViseTotalQuery +condition );
			totalStmt.setString(1, sClass);
			if(!"All".equals(section)){
				totalStmt.setString(2, section);
			}
			ResultSet depositeRs = totalStmt.executeQuery();
			while(depositeRs.next()){
				installReport.setTotalFirstInstall(depositeRs.getLong("first_install"));
				installReport.setTotalSecondInstall(depositeRs.getLong("second_install"));
				installReport.setTotalThirdInstall(depositeRs.getLong("third_install"));
				installReport.setTotalFirstAmount(depositeRs.getLong("f_amount_paid"));
				installReport.setTotalFirstDiscount(depositeRs.getLong("f_discount"));
				installReport.setTotalFirstPending(depositeRs.getLong("f_pending_amt"));
				installReport.setTotalSecondAmount(depositeRs.getLong("s_amount_paid"));
				installReport.setTotalSecondDiscount(depositeRs.getLong("s_discount"));
				installReport.setTotalSecondPending(depositeRs.getLong("s_pending_amt"));
				installReport.setTotalThirdAmount(depositeRs.getLong("t_amount_paid"));
				installReport.setTotalThirdDiscount(depositeRs.getLong("t_discount"));
				installReport.setTotalThirdPending(depositeRs.getLong("t_pending_amt"));
			}
			feeCollMap.put("TOTAL_INSTALL", installReport);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				totalStmt.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
		
		return feeCollMap;
	}
	
	private List<FeeDeposite>  getStudentInfo(ResultSet rs) throws SQLException{
		List<FeeDeposite> feeDepositeList = new ArrayList<>();
		while(rs.next()) {
			FeeDeposite feeDeposite = new FeeDeposite();
			feeDeposite.setActivityFees(rs.getLong("activity_fee"));
			feeDeposite.setFatherName(rs.getString("fatherName"));
			feeDeposite.setFirstAmount(rs.getLong("f_amount_paid"));
			feeDeposite.setFirstDisocunt(rs.getLong("f_discount"));
			feeDeposite.setFirstInstall(rs.getLong("first_install"));
			feeDeposite.setFirstPendAmt(rs.getLong("f_pending_amt"));
			feeDeposite.setFirstStatus(rs.getString("f_status"));
			feeDeposite.setId(rs.getLong("id"));
			feeDeposite.setMobileNo(rs.getString("fatherMobNo"));
			feeDeposite.setName(rs.getString("name"));
			feeDeposite.setPresentDues(rs.getLong("pres_year_due"));
			feeDeposite.setPreviousrDues(rs.getLong("prev_year_due"));
			feeDeposite.setScholarNo(rs.getString("scholarNo"));
			feeDeposite.setsClass(rs.getString("admissionClass"));
			feeDeposite.setSecondDisocunt(rs.getLong("s_discount"));
			feeDeposite.setSecondInstall(rs.getLong("second_install"));
			feeDeposite.setSecondAmount(rs.getLong("s_amount_paid"));
			feeDeposite.setSecondPendAmt(rs.getLong("s_pending_amt"));
			feeDeposite.setSecondStatus(rs.getString("s_status"));
			feeDeposite.setThirdAmount(rs.getLong("t_amount_paid"));
			feeDeposite.setThirdDisocunt(rs.getLong("t_discount"));
			feeDeposite.setThirdInstall(rs.getLong("third_install"));
			feeDeposite.setThirdPendAmt(rs.getLong("t_pending_amt"));
			feeDeposite.setThirdStatus(rs.getString("t_status"));
			feeDepositeList.add(feeDeposite);
		}
		return feeDepositeList;
	}
	
	public Map<String,List<Receipt>> getReportBetweenDate(String fromDate , String toDate){ 
		
		Map<String,List<Receipt>> dateReportMap = new LinkedHashMap<>();
		Connection conn=null;
		PreparedStatement stmt=null;
		
		try{
			String mySqlFromDate = DateUtility.stringDateToString(fromDate);
			String mySqlToDate = DateUtility.stringDateToString(toDate);
			String reportBetweenDateQuery =FeesQuery.getFeeReceipt + " where fee_pay_date between '"+mySqlFromDate+"' and '"+mySqlToDate+"' order by fee_pay_date asc";
			conn  = DBUtil.getConnection();
			stmt=conn.prepareStatement(reportBetweenDateQuery);
			ResultSet receiptRs = stmt.executeQuery();
			//List<Receipt> receiptList = new ArrayList<>();
			while(receiptRs.next())
			{
				Receipt receipt = new Receipt();
				receipt.setDiscount(receiptRs.getLong("discount"));
				receipt.setfAmount(receiptRs.getLong("f_amount_paid"));
				receipt.setFatherName(receiptRs.getString("father_name"));
				receipt.setfDiscount(receiptRs.getLong("f_discount"));
				receipt.setFirstCheck(receiptRs.getString("first_check"));
				receipt.setfStatus(receiptRs.getString("f_status"));
				receipt.setId(receiptRs.getLong("id"));
				receipt.setMobileNo(receiptRs.getString("mobile_no"));
				receipt.setPayAmount(receiptRs.getLong("pay_amount"));
				receipt.setsAmount(receiptRs.getLong("s_amount_paid"));
				receipt.setScholarNo(receiptRs.getString("scholarNo"));
				receipt.setsClass(receiptRs.getString("class"));
				receipt.setsDiscount(receiptRs.getLong("s_discount"));
				receipt.setSecondCheck(receiptRs.getString("second_check"));
				receipt.setsSection(receiptRs.getString("section"));
				receipt.setsStatus(receiptRs.getString("s_status"));
				receipt.setStudentName(receiptRs.getString("student_name"));
				receipt.settAmount(receiptRs.getLong("t_amount_paid"));
				receipt.settDiscount(receiptRs.getLong("t_discount"));
				receipt.setThirdCheck(receiptRs.getString("third_check"));
				receipt.settStatus(receiptRs.getString("t_status"));
				receipt.setFeesDate(receiptRs.getString("fee_pay_date"));
				//receiptList.add(receipt);
				String date = receiptRs.getString("fee_pay_date");
				if(null != dateReportMap){
					
					if(dateReportMap.containsKey(date)){
						List<Receipt> receiptList = dateReportMap.get(date);
						receiptList.add(receipt);
						dateReportMap.put(date, receiptList);
					}else{
						List<Receipt> receiptList  = new ArrayList<>();
						receiptList.add(receipt);
						dateReportMap.put(date, receiptList);
					}
				}
			}
			
			//dateReportMap = receiptList.stream().collect(Collectors.toMap(Receipt::getFeesDate, receipt -> receipt));
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dateReportMap;
	}

	public Map<String, Long> getTotalDaysReport() { 
		
		Map<String,Long> dateReportMap = new LinkedHashMap<>();
		Connection conn=null;
		PreparedStatement stmt=null;
		
		try{
			
			String reportBetweenDateQuery =FeesQuery.getFeeReceipt ;
			conn  = DBUtil.getConnection();
			stmt=conn.prepareStatement(reportBetweenDateQuery);
			ResultSet receiptRs = stmt.executeQuery();
			//List<Receipt> receiptList = new ArrayList<>();
			while(receiptRs.next())
			{
				
				String date = receiptRs.getString("fee_pay_date");
				if(null != dateReportMap){
					
					if(dateReportMap.containsKey(date)){
						long amount  = dateReportMap.get(date);
						amount += receiptRs.getLong("pay_amount") + receiptRs.getLong("discount");
						dateReportMap.put(date, amount);
					}else{
						long amount  = 0;
						amount += receiptRs.getLong("pay_amount") + receiptRs.getLong("discount");
						dateReportMap.put(date, amount);
					}
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dateReportMap;
	}
	
	
}
