package com.orange.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.orange.model.FeeDeposite;
import com.orange.model.FeesInstallment;
import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Receipt;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.StudentInfo;
import com.orange.model.TransportDetails;
import com.orange.util.DBUtil;
import com.orange.util.DateUtility;
import com.orange.util.FeesQuery;
import com.orange.util.StudentQueryUtil;

public class FeesDao {

	public List<FeesInstallment> getFeesInstallment() {
		
		List<FeesInstallment> installmentList = new ArrayList<FeesInstallment>() ;
		Connection conn=null;
		PreparedStatement stmt=null;
		//boolean isFirstCond = false;
		String getFeesInstallQuery = FeesQuery.getFeesInstallQuery;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(getFeesInstallQuery);
		
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				FeesInstallment fees = new FeesInstallment();
				fees.setId(rs.getLong("id"));
				fees.setClassName(rs.getString("class"));
				fees.setActivityFees(rs.getLong("activity_fees"));
				fees.setFirstInstall(rs.getLong("first_inatall"));
				fees.setSecondInstall(rs.getLong("second_inatall"));
				fees.setThirdInstall(rs.getLong("third_inatall"));
				installmentList.add(fees);
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
		return installmentList;
	}

	public int updateInstallment(String cname, String actvity, String first, String second, String third) {
		
		Connection conn=null;
		PreparedStatement stmt=null;
		int rowUpdate = 0;
		String updateInstallmentQuery = FeesQuery.updateInstallmentQuery;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(updateInstallmentQuery);
			stmt.setLong(1, Integer.parseInt(actvity));
			stmt.setLong(2, Integer.parseInt(first));
			stmt.setLong(3, Integer.parseInt(second));
			stmt.setLong(4, Integer.parseInt(third));
			stmt.setString(5, cname);
			
			rowUpdate = stmt.executeUpdate();
			conn.commit();
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
		
		return rowUpdate;
	}

	public FeeDeposite getStudentByScholar(String value) {
		
		FeeDeposite feeDeposite = null ;
		Connection conn=null;
		PreparedStatement stmt=null,receiptStmt=null;;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where s.scholarNo = fd.scholarNo and  fd.scholarNo like ? ");
			stmt.setString(1, "%"+value+"%");
			ResultSet rs = stmt.executeQuery();
			feeDeposite = getStudentInfo(rs);
			
			//Get fee receipt lists
			receiptStmt = getReceiptHistory(feeDeposite.getScholarNo(), feeDeposite, conn);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				receiptStmt.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return feeDeposite;
	
	}

	public FeeDeposite getStudentByName(String value) {
		
		FeeDeposite feeDeposite = null ;
		Connection conn=null;
		PreparedStatement stmt=null,receiptStmt=null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where fd.scholarNo = s.scholarNo  and  s.name like ? ");
			stmt.setString(1, "%"+value+"%");
			ResultSet rs = stmt.executeQuery();
			feeDeposite = getStudentInfo(rs);
			
			//Get fee receipt lists
			receiptStmt = getReceiptHistory(feeDeposite.getScholarNo(), feeDeposite, conn);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				receiptStmt.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return feeDeposite;
	
	}

	private FeeDeposite  getStudentInfo(ResultSet rs) throws SQLException{
		FeeDeposite feeDeposite = new FeeDeposite();
		while(rs.next()) {
			
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
		}
		return feeDeposite;
	}

	public FeeDeposite updatePayFee(String scholarNo, String amount, String discount) {
		
		FeeDeposite feeDeposite = null ;
		Connection conn=null;
		PreparedStatement stmt=null,receiptStmt = null;
		try {
			
			//Calculate Fees
			long receiptId = calculateFees(Long.parseLong(amount), Long.parseLong(discount), scholarNo);
			
			
			conn = DBUtil.getConnection();
			
			//get fee deposited information
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where s.scholarNo = fd.scholarNo and  fd.scholarNo = ? ");
			stmt.setString(1, scholarNo);
			ResultSet rs = stmt.executeQuery();
			feeDeposite = getStudentInfo(rs);
			
			feeDeposite.setLatestReceipt(receiptId);
			
			//Get fee receipt lists
			receiptStmt = getReceiptHistory(scholarNo, feeDeposite, conn);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				receiptStmt.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return feeDeposite;
	
	}

	private PreparedStatement getReceiptHistory(String scholarNo, FeeDeposite feeDeposite, Connection conn)
			throws SQLException {
		PreparedStatement receiptStmt;
		//get all receipt information for student
		receiptStmt = conn.prepareStatement("select id from fee_receipt where scholarNo = ?");
		receiptStmt.setString(1, scholarNo);
		ResultSet receiptRs = receiptStmt.executeQuery();
		List<Long> receiptList = new ArrayList<Long>();
		while(receiptRs.next()){
			receiptList.add(receiptRs.getLong("id"));
		}
		feeDeposite.setReceiptIds(receiptList);
		return receiptStmt;
	}
	
	private FeeDeposite getFeeDeposite(String scholarNo){
		//Get fees information  
		FeeDeposite feeDeposite = null;
		Connection conn=null;
		PreparedStatement stmt=null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where s.scholarNo = fd.scholarNo and  fd.scholarNo = ? ");
			stmt.setString(1, scholarNo);
			ResultSet rs = stmt.executeQuery();
			feeDeposite = getStudentInfo(rs);
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
		return feeDeposite;
	}

	private long calculateFees(long payingAmount, long discount, String scholarNo) throws Exception {
		
		
		FeeDeposite feeDeposite = getFeeDeposite(scholarNo);
		
		//First installment status
		String fStatus = feeDeposite.getFirstStatus();
		//Second installment status
		String sStatus = feeDeposite.getSecondStatus();
		//Third installment status
		String tStatus = feeDeposite.getThirdStatus();
		
		
		//Acutal amount need to pay by student
		long actualAmt = 0;
		//Amount paid by student
		//Amount that is left after current installment completion
		long nextInstallAmt = 0;
				
		
		long firstAmount = 0;
		//Amount which is remained after student pay his amount
		long firstPendingAmt = 0;
		//Status that is going to be updated after fees payment
		//String firstUpdateStatus = null;
		//Discount amount given to student
		long fistDiscount = 0;
		
		long secondAmount = 0;
		//Amount which is remained after student pay his amount
		long secondPendingAmt = 0;
		//Status that is going to be updated after fees payment
		//String secondUpdateStatus = null;
		//Discount amount given to student
		long secondDiscount = 0;
		
		long thirdAmount = 0;
		//Amount which is remained after student pay his amount
		long thirdPendingAmt = 0;
		//Status that is going to be updated after fees payment
		//String thirdUpdateStatus = null;
		//Discount amount given to student
		long thirdDiscount = 0;
		
		//Variables for receipt information
		long rPayAmt = payingAmount;
		long rDiscount = discount;
		long rInstallAmt = 0;
		long rInstallDisc = 0;
		String rInstallStatus = null;
		long receiptId = 0;
		
		if(!FeesQuery.PAID.equals(fStatus)){
			//Calculate actual amount that needs to be taken from student for first installment
			if(FeesQuery.UN_PAID.equals(fStatus)){
				//If stauts is unpaid means there is no fees paid by student so it will consider all extra amount with 1st installment
				actualAmt = feeDeposite.getActivityFees() + feeDeposite.getFirstInstall() + feeDeposite.getPreviousrDues() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					fistDiscount = actualAmt;
					rInstallDisc = fistDiscount;
					actualAmt = 0;
				}else{
					fistDiscount = discount;
					rInstallDisc = fistDiscount;
					actualAmt = actualAmt - fistDiscount;
					discount = 0;
				} 
				
			}else if(FeesQuery.PENDING_STATUS.equals(fStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getFirstPendAmt();
				if(discount > actualAmt){
					discount = discount - actualAmt;
					rInstallDisc = actualAmt;
					fistDiscount = feeDeposite.getFirstDisocunt() + actualAmt;
					actualAmt = 0;
				}else{
					actualAmt = actualAmt - discount;
					rInstallDisc = discount;
					fistDiscount = feeDeposite.getFirstDisocunt() + discount;
					discount = 0;
				} 
			}
			
 			if(payingAmount < actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + payingAmount;
				rInstallAmt = payingAmount;
				firstPendingAmt = actualAmt - payingAmount;
				fStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + payingAmount;
				rInstallAmt = payingAmount;
				firstPendingAmt = 0;
				if(discount > 0){
					fStatus = FeesQuery.PAID;
				}else{
					fStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + actualAmt;
				rInstallAmt = actualAmt;
				firstPendingAmt = 0;
				fStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
				
				
			}
 			rInstallStatus = fStatus;
 			receiptId = updateFirstInstallment(feeDeposite, firstAmount, firstPendingAmt, fStatus, fistDiscount,rPayAmt,rDiscount,rInstallAmt,rInstallDisc,rInstallStatus);
			
		}
			
	
			
		if(!FeesQuery.PAID.equals(sStatus) && FeesQuery.PAID.equals(fStatus) ){
			//secondDiscount = discount + feeDeposite.getSecondDisocunt();
			//Calculate actual amount that needs to be taken from student for first installment
			if(nextInstallAmt > 0){
				payingAmount = nextInstallAmt;
			} 
			if(FeesQuery.UN_PAID.equals(sStatus)){
				//If stauts is unpaid means there is no fees paid by student so it will consider all extra amount with 2nd installment
				actualAmt = feeDeposite.getSecondInstall();
				if(discount > actualAmt){
					discount = discount - actualAmt;
					secondDiscount = actualAmt;
					rInstallDisc = secondDiscount;
					actualAmt = 0;
				}else{
					secondDiscount = discount;
					rInstallDisc = secondDiscount;
					actualAmt = actualAmt - secondDiscount;
					discount = 0;
				} 
			}else if(FeesQuery.PENDING_STATUS.equals(sStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getSecondPendAmt() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					rInstallDisc = actualAmt;
					secondDiscount = feeDeposite.getSecondDisocunt() + actualAmt;
					actualAmt = 0;
				}else{
					secondDiscount = feeDeposite.getSecondDisocunt() + discount;
					actualAmt = actualAmt - discount;
					rInstallDisc = discount;
					discount = 0;
				} 
			}
			
			if(payingAmount < actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + payingAmount;
				rInstallAmt = payingAmount;
				secondPendingAmt = actualAmt - payingAmount;
				sStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + payingAmount;
				rInstallAmt = payingAmount;
				secondPendingAmt = 0;
				if(discount > 0){
					sStatus = FeesQuery.PAID;
				}else{
					sStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + actualAmt;
				rInstallAmt = actualAmt;
				secondPendingAmt = 0;
				sStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
			}
			rInstallStatus = sStatus;
			receiptId = updateSecondInstallment(feeDeposite, secondAmount, secondPendingAmt, sStatus, secondDiscount,rPayAmt,rDiscount,rInstallAmt,rInstallDisc,rInstallStatus,receiptId);
		
		}
		
		if(!FeesQuery.PAID.equals(tStatus) && FeesQuery.PAID.equals(sStatus) && FeesQuery.PAID.equals(fStatus)){
			//Calculate actual amount that needs to be taken from student for first installment
			if(nextInstallAmt > 0){
				payingAmount = nextInstallAmt;
			}
			
			if(FeesQuery.UN_PAID.equals(tStatus)){
				//If stauts is unpaid means there is no fees paid by student so it will consider all extra amount with 2nd installment
				actualAmt = feeDeposite.getThirdInstall();
				if(discount > actualAmt){
					discount = discount - actualAmt;
					thirdDiscount = actualAmt;
					rInstallDisc = thirdDiscount;
					actualAmt = 0;
				}else {
					thirdDiscount = discount;
					rInstallDisc = thirdDiscount;
					actualAmt = actualAmt - discount;
					discount = 0;
				} 
			}else if(FeesQuery.PENDING_STATUS.equals(tStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getThirdPendAmt() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					thirdDiscount = feeDeposite.getThirdDisocunt() + actualAmt;
					rInstallDisc = actualAmt;
					actualAmt = 0;
				}else{
					thirdDiscount = feeDeposite.getThirdDisocunt() + discount;
					actualAmt = actualAmt - discount;
					rInstallDisc = discount;
					discount = 0;
				} 
			}
			
			if(payingAmount < actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + payingAmount;
				rInstallAmt = payingAmount;
				thirdPendingAmt = actualAmt - payingAmount;
				tStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + payingAmount;
				rInstallAmt = payingAmount;
				thirdPendingAmt = 0;
				if(discount > 0){
					tStatus = FeesQuery.PAID;
				}else{
					tStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + actualAmt;
				rInstallAmt = actualAmt;
				thirdPendingAmt = 0;
				tStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
				discount = 0;
			}
			rInstallStatus = tStatus;
			receiptId = updateThirdInstallment(feeDeposite, thirdAmount, thirdPendingAmt, tStatus, thirdDiscount,rPayAmt,rDiscount,rInstallAmt,rInstallDisc,rInstallStatus,receiptId);
		}
		
		return receiptId;
		
	}

	

	private long updateThirdInstallment(FeeDeposite feeDeposite, long amount, long pendingAmt, String updateStatus,
			long discount, long rPayAmt, long rDiscount, long rInstallAmt, long rInstallDisc, String rInstallStatus, long receiptId) throws Exception {
		
		PreparedStatement stmt=null;
		Connection conn=null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement("update fee_deposite set t_amount_paid = ?, t_discount = ?, t_pending_amt = ?, t_status=? "
					+ "where scholarNo = ?  ");
			
			stmt.setLong(1, amount);
			stmt.setLong(2, discount);
			stmt.setLong(3, pendingAmt);
			if(FeesQuery.PAID_ZERO.equals(updateStatus)){
				stmt.setString(4, FeesQuery.PAID);
			}else{
				stmt.setString(4, updateStatus);
			}
			stmt.setString(5, feeDeposite.getScholarNo());
			int i = stmt.executeUpdate();
			
			//Save Receipt
			String installType = "Third"; 
			receiptId = saveRecipt(receiptId,rInstallAmt,rInstallDisc,rInstallStatus,installType,rPayAmt,rDiscount,feeDeposite,conn);
			
			conn.commit();
		}catch(Exception e) {
			conn.rollback();
			throw e;
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return receiptId;
	}

	private long updateSecondInstallment(FeeDeposite feeDeposite, long amount, long pendingAmt, String updateStatus,
			long discount, long rPayAmt, long rDiscount, long rInstallAmt, long rInstallDisc, String rInstallStatus, long receiptId ) throws Exception {
		
		PreparedStatement stmt=null;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement("update fee_deposite set s_amount_paid = ?, s_discount = ?, s_pending_amt = ?, s_status=? "
					+ "where scholarNo = ?  ");
			
			stmt.setLong(1, amount);
			stmt.setLong(2, discount);
			stmt.setLong(3, pendingAmt);
			if(FeesQuery.PAID_ZERO.equals(updateStatus)){
				stmt.setString(4, FeesQuery.PAID);
			}else{
				stmt.setString(4, updateStatus);
			}
			stmt.setString(5, feeDeposite.getScholarNo());
			int i = stmt.executeUpdate();
			
			//Save Receipt
			String installType = "Second"; 
			receiptId = saveRecipt(receiptId,rInstallAmt,rInstallDisc,rInstallStatus,installType,rPayAmt,rDiscount,feeDeposite,conn);
			
			conn.commit();
		}catch(Exception e) {
			conn.rollback();
			throw e;
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return receiptId;
		
	}

	private long updateFirstInstallment(FeeDeposite feeDeposite, long firstAmount, long firstPendingAmt, String fStatus, long fistDiscount, long rPayAmt, long rDiscount, long rInstallAmt, long rInstallDisc, String rInstallStatus) throws Exception {
		
		PreparedStatement stmt=null;
		Connection conn = null;
		long receiptId = 0;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement("update fee_deposite set f_amount_paid = ?, f_discount = ?, f_pending_amt = ?, f_status=? "
					+ "where scholarNo = ?  ");
			
			stmt.setLong(1, firstAmount);
			stmt.setLong(2, fistDiscount);
			stmt.setLong(3, firstPendingAmt);
			if(FeesQuery.PAID_ZERO.equals(fStatus)){
				stmt.setString(4, FeesQuery.PAID);
			}else{
				stmt.setString(4, fStatus);
			}
			stmt.setString(5, feeDeposite.getScholarNo());
			int i = stmt.executeUpdate();
			
			//Save Receipt
			String installType = "First"; 
			receiptId = saveRecipt(0,rInstallAmt,rInstallDisc,rInstallStatus,installType,rPayAmt,rDiscount,feeDeposite,conn);
			
			conn.commit();
		}catch(Exception e) {
			conn.rollback();
			throw e;
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return receiptId;
		
	}

	private long saveRecipt(long receiptId, long rInstallAmt, long rInstallDisc, String rInstallStatus, String installType, long rPayAmt, long rDiscount, FeeDeposite feeDeposite, Connection conn) {

		PreparedStatement searchIdStmt=null, updateStmt = null;
		try {
			//check if receipt id is found or not
			searchIdStmt = conn.prepareStatement("select count(1) as idcount from fee_receipt where id=?");
			searchIdStmt.setLong(1, receiptId);
			long idCount = 0;
			ResultSet idRs = searchIdStmt.executeQuery();
			while(idRs.next()){
				idCount = idRs.getLong("idcount");
			}

			//If Id is found then update the deposited fees information in receipt table
			String receiptInsertQuery = null , receiptUpdateQuery = null;
			if(idCount > 0){
			    if("Second".equals(installType)){
					receiptUpdateQuery = "update fee_receipt set s_amount_paid =?,s_discount=?,s_status=?,second_check =? where id = ?";
				}else if("Third".equals(installType)){
					receiptUpdateQuery = "update fee_receipt set t_amount_paid=?,t_discount=?,t_status=?,third_check=? where id = ?";
				}
			    
			    updateStmt = conn.prepareStatement(receiptUpdateQuery);
			    updateStmt.setLong(1, rInstallAmt);
			    updateStmt.setLong(2,rInstallDisc);
			    updateStmt.setString(3, rInstallStatus);
			    updateStmt.setString(4, "Checked");
			    updateStmt.setLong(5, receiptId);
			    
			    updateStmt.executeUpdate();
			    
			}else{

				receiptId = getNextReceiptId(conn);

				if("First".equals(installType)){
					receiptInsertQuery = "insert into fee_receipt(id,student_name,father_name,class,section,mobile_no,pay_amount,discount,first_check,f_amount_paid,f_discount"
							+ ",f_status,fee_pay_date,scholarNo) "
							+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				}else if("Second".equals(installType)){
					receiptInsertQuery = "insert into fee_receipt(id,student_name,father_name,class,section,mobile_no,pay_amount,discount,second_check,s_amount_paid,s_discount"
							+ ",s_status,fee_pay_date,scholarNo) "
							+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				}else if("Third".equals(installType)){
					receiptInsertQuery = "insert into fee_receipt(id,student_name,father_name,class,section,mobile_no,pay_amount,discount,third_check,t_amount_paid,t_discount"
							+ ",t_status,fee_pay_date,scholarNo) "
							+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				}

				updateStmt = conn.prepareStatement(receiptInsertQuery);
				updateStmt.setLong(1, receiptId);
				updateStmt.setString(2,feeDeposite.getName());
				updateStmt.setString(3, feeDeposite.getFatherName());
				updateStmt.setString(4, feeDeposite.getsClass());
				updateStmt.setString(5, feeDeposite.getsSection());
				updateStmt.setString(6, feeDeposite.getMobileNo());
				updateStmt.setLong(7, rPayAmt);
				updateStmt.setLong(8, rDiscount);
				updateStmt.setString(9, "Checked");
				updateStmt.setLong(10, rInstallAmt);
				updateStmt.setLong(11, rInstallDisc);
				updateStmt.setString(12, rInstallStatus);
				//updateStmt.setDate(13, DateUtility.utilDateToMyDate(new Date()));
				updateStmt.setTimestamp(13, DateUtility.getCurrentTimestamp());
				updateStmt.setString(14, feeDeposite.getScholarNo());
				updateStmt.executeUpdate();
			}
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally  {
			try {
				searchIdStmt.close();
				updateStmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
		}
	}
		
		
		return receiptId;
	}

	private long getNextReceiptId(Connection conn) throws Exception {
		long nextRegNum = 000;
		PreparedStatement stmt=null;
		String query = "select max(id) from fee_receipt";
		try {
			stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				nextRegNum = rs.getLong(1);
			}

		}catch(Exception e) {
			throw e;
		} finally  {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return nextRegNum+001;
}

	public Map<String,Object> getReceiptInfo(long receiptId) {
		
		Receipt receipt = new Receipt();
		FeeDeposite feeDeposite = null;
		Map<String,Object> receiptMap = new HashMap<String,Object>();
		PreparedStatement stmt=null;
		Connection conn = null;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement("select id, scholarNo,student_name,father_name,class,section,mobile_no,pay_amount,discount,first_check,"
					+ "f_amount_paid,f_discount,f_status ,second_check,s_amount_paid,s_discount,third_check,t_amount_paid,t_discount"
					+ ",t_status,s_status from fee_receipt where id = ?");
			
			stmt.setLong(1, receiptId);
			ResultSet receiptRs = stmt.executeQuery();
			
			while(receiptRs.next()){
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
			}
			
			feeDeposite = getStudentByScholar(receipt.getScholarNo());
			conn.commit();
		}catch(Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		receiptMap.put("RECEIPT", receipt);
		receiptMap.put("FEE_INSTALL", feeDeposite);
		return receiptMap;
		

	}
	
	
	
}
