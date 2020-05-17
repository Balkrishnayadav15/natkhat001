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
	
	public static String totalFeeDepositeAmt = "select sum(fd.activity_fee + fd.prev_year_due + fd.first_install) as first_install, sum(f_amount_paid) as f_amount_paid, sum(f_discount) as f_discount, sum(f_pending_amt) as f_pending_amt,"
				+ "sum(fd.second_install) as second_install,sum(s_amount_paid) as s_amount_paid, sum(s_discount) as s_discount, sum(s_pending_amt) as s_pending_amt,"
				+ "sum(fd.third_install) as third_install,sum(t_amount_paid) as t_amount_paid, sum(t_discount) as t_discount, sum(t_pending_amt) as t_pending_amt from fee_deposite fd";
	
	public static String totalFeeInstallAmt = "select sum(activity_fees+first_inatall) as total_f_install,sum(second_inatall) as total_s_install,"
			+ "sum(third_inatall) as total_t_install from fees_installment";
	
	public static String getClassViseTotalQuery = "select sum(fd.activity_fee + fd.prev_year_due + fd.first_install) as first_install ,"
			+ "sum(fd.f_amount_paid) as f_amount_paid,"
			+ "sum(fd.f_discount) as f_discount,sum(fd.f_pending_amt) as f_pending_amt,"
			+ "sum(fd.second_install) as second_install,sum(fd.s_amount_paid) as s_amount_paid,sum(fd.s_discount) as s_discount,sum(fd.s_pending_amt) as s_pending_amt,"
			+ "sum(fd.third_install) as third_install,sum(fd.t_amount_paid) as t_amount_paid,sum(fd.t_discount) as t_discount,sum(fd.t_pending_amt) as t_pending_amt"
			+ " from studentInfo s "
			+ "join fee_deposite fd on fd.id = s.id " ;
	
	public static String getFeeReceipt = "select id, scholarNo,student_name,father_name,class,section,mobile_no,pay_amount,discount,first_check,"
		+ "f_amount_paid,f_discount,f_status ,second_check,s_amount_paid,s_discount,third_check,t_amount_paid,t_discount , DATE_FORMAT(fee_pay_date, '%d/%m/%Y') as fee_pay_date,"
		+ "t_status,s_status from fee_receipt ";

}
