package com.orange.util;

public class FeesQuery {

	public static final String PENDING_STATUS = "Pending";
	public static final String UN_PAID = "UnPaid";
	public static final String PAID = "Paid";
	public static final String PAID_ZERO = "PaidZero";
	public static String getFeesInstallQuery = "select id, class,activity_fees,first_inatall,second_inatall,third_inatall from fees_installment";
	
	public static String updateInstallmentQuery = "update fees_installment set activity_fees =?, first_inatall=?, "
			+ "second_inatall=?, third_inatall=? where class=?";
	
	public static String getStudentFeeQuery = "select s.id,  s.scholarNo,  s.name ,s.admissionClass,p.fatherName,p.fatherMobNo,"
			+ "fd.activity_fee,fd.first_install,fd.f_amount_paid,fd.f_discount,fd.f_pending_amt,"
			+ "fd.f_status,fd.second_install,fd.s_amount_paid,fd.s_discount,fd.s_pending_amt,"
			+ "fd.s_status,fd.third_install,fd.t_amount_paid,fd.t_discount,fd.t_pending_amt,"
			+ "fd.t_status,fd.prev_year_due,fd.pres_year_due from studentInfo s "
			+ "JOIN  parentsDetails p on p.id = s.id "
			+ "JOIN  fee_deposite fd on fd.id = p.id " ;
	
	public static String insertIntoFeeDeposite = "insert into fee_deposite (id,scholarNo,activity_fee,first_install,f_status,second_install,s_status,third_install,t_status)"
	    				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
}
