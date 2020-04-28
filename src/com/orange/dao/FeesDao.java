package com.orange.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.orange.model.FeeDeposite;
import com.orange.model.FeesInstallment;
import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.StudentInfo;
import com.orange.model.TransportDetails;
import com.orange.util.DBUtil;
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
		PreparedStatement stmt=null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where s.scholarNo = fd.scholarNo and  fd.scholarNo like ? ");
			stmt.setString(1, "%"+value+"%");
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

	public FeeDeposite getStudentByName(String value) {
		
		FeeDeposite feeDeposite = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(FeesQuery.getStudentFeeQuery + " where fd.scholarNo = s.scholarNo  and  s.name like ? ");
			stmt.setString(1, "%"+value+"%");
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
			feeDeposite.setHistory(null);
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
		PreparedStatement stmt=null;
		try {
			
			//Calculate Fees
			calculateFees(Long.parseLong(amount), Long.parseLong(discount), scholarNo);
			
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

	private void calculateFees(long payingAmount, long discount, String scholarNo) throws Exception {
		
		
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
		
		
		
		if(!FeesQuery.PAID.equals(fStatus)){
			//Calculate actual amount that needs to be taken from student for first installment
			if(FeesQuery.UN_PAID.equals(fStatus)){
				//If stauts is unpaid means there is no fees paid by student so it will consider all extra amount with 1st installment
				actualAmt = feeDeposite.getActivityFees() + feeDeposite.getFirstInstall() + feeDeposite.getPreviousrDues() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					fistDiscount = actualAmt;
					actualAmt = 0;
				}else{
					fistDiscount = discount;
					actualAmt = actualAmt - fistDiscount;
					discount = 0;
				} 
				
			}else if(FeesQuery.PENDING_STATUS.equals(fStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getFirstPendAmt();
				if(discount > actualAmt){
					discount = discount - actualAmt;
					fistDiscount = feeDeposite.getFirstDisocunt() + actualAmt;
					actualAmt = 0;
				}else{
					actualAmt = actualAmt - discount;
					fistDiscount = feeDeposite.getFirstDisocunt() + discount;
					discount = 0;
				} 
			}
			
 			if(payingAmount < actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + payingAmount;
				firstPendingAmt = actualAmt - payingAmount;
				fStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + payingAmount;
				firstPendingAmt = 0;
				if(discount > 0){
					fStatus = FeesQuery.PAID;
				}else{
					fStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				firstAmount = feeDeposite.getFirstAmount() + actualAmt;
				firstPendingAmt = 0;
				fStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
			}
			
			updateFirstInstallment(feeDeposite, firstAmount, firstPendingAmt, fStatus, fistDiscount);
			
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
					actualAmt = 0;
				}else{
					secondDiscount = discount;
					actualAmt = actualAmt - secondDiscount;
					discount = 0;
				} 
			}else if(FeesQuery.PENDING_STATUS.equals(sStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getSecondPendAmt() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					secondDiscount = feeDeposite.getSecondDisocunt() + actualAmt;
					actualAmt = 0;
				}else{
					secondDiscount = feeDeposite.getSecondDisocunt() + discount;
					actualAmt = actualAmt - discount;
					discount = 0;
				} 
			}
			
			if(payingAmount < actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + payingAmount;
				secondPendingAmt = actualAmt - payingAmount;
				sStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + payingAmount;
				secondPendingAmt = 0;
				if(discount > 0){
					sStatus = FeesQuery.PAID;
				}else{
					sStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				secondAmount = feeDeposite.getSecondAmount() + actualAmt;
				secondPendingAmt = 0;
				sStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
			}
			
			updateSecondInstallment(feeDeposite, secondAmount, secondPendingAmt, sStatus, secondDiscount);
		
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
					actualAmt = 0;
				}else {
					thirdDiscount = discount;
					actualAmt = actualAmt - discount;
					discount = 0;
				} 
			}else if(FeesQuery.PENDING_STATUS.equals(tStatus)){
				//If stauts is pending then only student has to pay pending amount
				actualAmt = feeDeposite.getThirdPendAmt() ;
				if(discount > actualAmt){
					discount = discount - actualAmt;
					thirdDiscount = feeDeposite.getThirdDisocunt() + actualAmt;
					actualAmt = 0;
				}else{
					thirdDiscount = feeDeposite.getThirdDisocunt() + discount;
					actualAmt = actualAmt - discount;
					discount = 0;
				} 
			}
			
			if(payingAmount < actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + payingAmount;
				thirdPendingAmt = actualAmt - payingAmount;
				tStatus = FeesQuery.PENDING_STATUS;
			}else if(payingAmount == actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + payingAmount;
				thirdPendingAmt = 0;
				if(discount > 0){
					tStatus = FeesQuery.PAID;
				}else{
					tStatus = FeesQuery.PAID_ZERO;
				}
			}else if(payingAmount > actualAmt){
				thirdAmount = feeDeposite.getThirdAmount() + actualAmt;
				thirdPendingAmt = 0;
				tStatus = FeesQuery.PAID;
				nextInstallAmt = payingAmount - actualAmt;
				discount = 0;
			}
			
			updateThirdInstallment(feeDeposite, thirdAmount, thirdPendingAmt, tStatus, thirdDiscount);
		}
		
	}

	

	private void updateThirdInstallment(FeeDeposite feeDeposite, long amount, long pendingAmt, String updateStatus,
			long discount) throws Exception {
		
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
		
	}

	private void updateSecondInstallment(FeeDeposite feeDeposite, long amount, long pendingAmt, String updateStatus,
			long discount ) throws Exception {
		
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
		
	}

	private void updateFirstInstallment(FeeDeposite feeDeposite, long amount, long pendingAmt, String updateStatus,
			long discount) throws Exception {
		
		PreparedStatement stmt=null;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement("update fee_deposite set f_amount_paid = ?, f_discount = ?, f_pending_amt = ?, f_status=? "
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
		
	}
	
	
	
}
