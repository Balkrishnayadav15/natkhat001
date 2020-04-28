<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*, com.orange.model.*,com.orange.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="Web Page Maker">
<style type="text/css">
/*----------Text Styles----------*/
.ws6 {
	font-size: 8px;
}

.ws7 {
	font-size: 9.3px;
}

.ws8 {
	font-size: 11px;
}

.ws9 {
	font-size: 12px;
}

.ws10 {
	font-size: 13px;
}

.ws11 {
	font-size: 15px;
}

.ws12 {
	font-size: 16px;
}

.ws14 {
	font-size: 19px;
}

.ws16 {
	font-size: 21px;
}

.ws18 {
	font-size: 24px;
}

.ws20 {
	font-size: 27px;
}

.ws22 {
	font-size: 29px;
}

.ws24 {
	font-size: 32px;
}

.ws26 {
	font-size: 35px;
}

.ws28 {
	font-size: 37px;
}

.ws36 {
	font-size: 48px;
}

.ws48 {
	font-size: 64px;
}

.ws72 {
	font-size: 96px;
}

.wpmd {
	font-size: 13px;
	font-family: Arial, Helvetica, Sans-Serif;
	font-style: normal;
	font-weight: normal;
}
/*----------Para Styles----------*/
DIV, UL, OL /* Left */ {
	margin-top: 0px;
	margin-bottom: 0px;
}
</style>

<style type="text/css">
a.SidePanel:link {
	color: #FFFFFF;
	text-decoration: none;
}

a.SidePanel:hover {
	font-family: Copperplate Gothic Bold;
	color: #000000;
	background: #FFFFFF;
	text-decoration: none;
}

a.SidePanel:active {
	font-family: Copperplate Gothic Bold;
	color: #000000;
	text-decoration: none;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script>
	if ( window.history.replaceState ) {
	  window.history.replaceState( null, null, window.location.href );
	}
</script>

</head>
<body>
<%
	String appUrl = UrlUtil.appUrl;
	FeeDeposite feeDeposite = (FeeDeposite)request.getAttribute("STUDENT_FEE_INFO");
	String key = (String)request.getAttribute("KEY");
	String value = (String)request.getAttribute("VALUE");
	
	long remainingAmt = 0;
	
	if(null != feeDeposite){
		
		if(FeesQuery.UN_PAID.equals(feeDeposite.getFirstStatus())){
			remainingAmt = feeDeposite.getActivityFees() + feeDeposite.getFirstInstall() + feeDeposite.getPreviousrDues() ;
		}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getFirstStatus())){
			remainingAmt = feeDeposite.getFirstPendAmt() ;
		}
		
		if(FeesQuery.UN_PAID.equals(feeDeposite.getSecondStatus())){
			remainingAmt = remainingAmt + feeDeposite.getSecondInstall();
		}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getSecondStatus())){
			remainingAmt = remainingAmt + feeDeposite.getSecondPendAmt() ;
		}
		
		if(FeesQuery.UN_PAID.equals(feeDeposite.getThirdStatus())){
			remainingAmt = remainingAmt + feeDeposite.getThirdInstall();
		}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getThirdStatus())){
			remainingAmt = remainingAmt + feeDeposite.getThirdPendAmt() ;
		}
	}
%>
<input type="hidden" value="<%=remainingAmt%>" name="remainingAmt" id = "remainingAmt">
	<div id="roundrect1"
		style="position: absolute; overflow: hidden; left: 18px; top: 117px; width: 99%; height: 373px; z-index: 0">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect19498892.gif">
	</div>

	<!--[if IE]><div id="text2" style="position:absolute; overflow:hidden; left:252px; top:6px; width:455px; height:43px; z-index:1; border:#000080 2px outset; background-color:#FFFFFF"><![endif]-->
	<!--[if !IE]>-->
	<div id="text2"
		style="position: absolute; overflow: hidden; left: 252px; top: 6px; width: 451px; height: 39px; z-index: 1; border: #000080 2px outset; background-color: #FFFFFF">
		<!--<![endif]-->

		<div class="wpmd">
			<div align=center>
				<font color="#000080" face="Cooper Black" class="ws28"><B>ADMIN
						DASHBOARD</B></font>
			</div>
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws16"><BR></font>
			</div>
		</div>
	</div>

	<div id="shape2"
		style="position: absolute; overflow: hidden; left: 893px; top: 54px; width: 109px; height: 29px; z-index: 2">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape19498908.gif">
	</div>

	<div id="text3"
		style="position: absolute; overflow: hidden; left: 899px; top: 58px; width: 77px; height: 21px; z-index: 3">
		<div class="wpmd">
			<div>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws12"><B>Logout</B></font>
			</div>
		</div>
	</div>

	<div id="image2"
		style="position: absolute; overflow: hidden; left: 974px; top: 53px; width: 27px; height: 29px; z-index: 4">
		<img src="<%=appUrl %>natkhat/images/Logouticon.png" alt="" title="" border=0 width=27
			height=29>
	</div>

	<div id="marquee1"
		style="position: absolute; overflow: hidden; left: 219px; top: 55px; width: 538px; height: 33px; z-index: 5">
		<marquee width="538" height="33">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Copperplate Gothic Bold" class="ws20">
							<B>WelcomeTo Natkhat Play School</B>
					</font>
				</div>
			</div>
		</marquee>
	</div>

	<div id="table1"
		style="position: absolute; overflow-x: auto; left: 30px; top: 267px; max-width: 97%;  z-index: 6; border-radius: 30px 30px 30px 30px;">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=0 bordercolorlight="#C0C0C0"
					bordercolordark="#808080" cellspacing=1>
					<TR valign=top>
						<TD width=55 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>S.no</B></font>
								</div>
							</div></TD>
						<TD width=103 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Scholar No.</B></font>
								</div>
							</div></TD>
						<TD width=234 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Student Name</B></font>
								</div>
							</div></TD>
						<TD width=80 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Class</B></font>
								</div>
							</div></TD>
						<TD width=247 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Father's Name</B></font>
								</div>
							</div></TD>
						<TD width=145 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Contact </B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>No.</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Previous Year Dues</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Activity Fee</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>I</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Amount </B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Paid </B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Discount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Pending Amount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B> Status</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>II</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Amount </B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Paid </B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Discount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Pending Amount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B> Status</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>III</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Amount </B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Paid </B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Discount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Pending Amount</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Status</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Present Year Dues</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>History</B></font>
								</div>
							</div></TD>
						<TD width=94 bgcolor="#00CCFF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Option</B></font>
								</div>
							</div></TD>
					</TR>
					<% if(null != feeDeposite){ %>
					<TR valign=top>
						<TD width=55 bgcolor="#88E8FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						 <%= feeDeposite.getId() %>
						</TD>
						<TD width=103 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><%= feeDeposite.getScholarNo() %></font>
								</div>
							</div></TD>
						<TD width=234 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><%= feeDeposite.getName() %></font>
								</div>
							</div></TD>
						<TD width=80 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getsClass() %>
						</TD>
						<TD width=247 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><%= feeDeposite.getFatherName() %></font>
								</div>
							</div></TD>
						<TD width=145 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><%= feeDeposite.getMobileNo() %></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><%= feeDeposite.getPreviousrDues() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getActivityFees() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getFirstInstall() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getFirstAmount() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getFirstDisocunt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getFirstPendAmt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getFirstStatus() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getSecondInstall() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getSecondAmount() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getSecondDisocunt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getSecondPendAmt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getSecondStatus() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getThirdInstall() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getThirdAmount() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getThirdDisocunt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getThirdPendAmt() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getThirdStatus() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						<%= feeDeposite.getPresentDues() %>
						</TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><BR>
						
						</TD>
						<TD width=94 bgcolor="#82E6FF" valign=middle
							style='border-color: #FFFFFF #FFFFFF #FFFFFF #FFFFFF; border-style: solid;'><div
								class="wpmd">
								<div>
									<select name="actionFee" id="actionFee" onchange="payFeeBlock('<%=feeDeposite.getScholarNo() %>')">
										<option value="">Action</option>
										<option value="pay">Pay</option>
									</select>
								</div>
							</div></TD>
					</TR>
					<% } %>
				</TABLE>
			</div>
		</div>
	</div>
<div id="feeDepositeDiv" style="position: absolute;display:none; left: 257px; top: 527px;  z-index: 6; border-radius: 30px 30px 30px 30px;">
	<div id="feeErrMsg" style="display:none;color:red;">Please enter amount.</div>
	<div id="feeErrMsgZero" style="display:none;color:red;">Pay Amount should be greater then Zero.</div>
	<div id="remainingAmtError" style="display:none;color:red;">Pay Amount and discount should be less then remaining amount.</div>
	
	<form id="feeDepForm" action="feeDeposite" method="post">
		<div>
			<label>(Remaining Amount = <%=remainingAmt %>)</label><br>
			<label>Pay Amount:</label>
			<input type="number" name="amount" id="amount" value="0"> 
		</div>
		<div>
			<label>Discount:</label>
			<input type="number" name="discount" id="discount" value="0" >
		</div>
		<input type="hidden" name="scholarNo" id="scholarNo">
		<button type="button" id="payButton" class="btn btn-danger">Pay</button>
	</form>
</div>
	<div id="text1"
		style="position: absolute; overflow: hidden; left: 38px; top: 139px; width: 93px; height: 24px; z-index: 7">
		<div class="wpmd">
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws14">Session</font><font
					face="Copperplate Gothic Bold" class="ws14"> </font>
			</div>
		</div>
	</div>

	<select name="formselect1"
		style="position: absolute; left: 128px; top: 139px; width: 92px; z-index: 8">
		<option value="">2020-2021</option>
	</select>
	<div id="text4"
		style="position: absolute; overflow: hidden; left: 275px; top: 154px; width: 445px; height: 39px; z-index: 9">
		<div class="wpmd">
			<div align=center>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws26"><B><U>Fee
							Deposite Table</U></B></font>
			</div>
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B><U><BR></U></B></font>
			</div>
		</div>
	</div>

	<div id="table2"
		style="position: absolute; overflow: hidden; left: 752px; top: 129px; width: 201px; height: 47px; z-index: 10">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#00CCFF" border=1 bordercolorlight="#FFFFFF"
					bordercolordark="#FFFFFF" cellspacing=1>
					<TR valign=top>
						<TD width=97 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws12"><B>Total </B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws12"><B>Students</B></font>
								</div>
							</div></TD>
						<TD width=85 bgcolor="#93EAFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12"><BR></font>
								</div>
							</div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="text5"
		style="position: absolute; overflow: hidden; left: 99px; top: 213px; width: 132px; height: 25px; z-index: 11">
		<div class="wpmd">
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws16"><B>By
						Name</B></font>
			</div>
		</div>
	</div>

	<div id="text6"
		style="position: absolute; overflow: hidden; left: 458px; top: 213px; width: 205px; height: 25px; z-index: 12">
		<div class="wpmd">
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws16"><B>By
						Scholar no.</B></font>
			</div>
		</div>
	</div>
		<input name="bName" id="bName" type="text" <%if("name".equals(key)){ %>value=<%=value %><%} %>
			style="position: absolute; width: 220px; left: 218px; top: 213px; z-index: 13">
		<input name="bScholar" id="bScholar" type="text" <%if("scholarNo".equals(key)){ %>value=<%=value %><%} %>
			style="position: absolute; width: 220px; left: 660px; top: 213px; z-index: 14">
    <form id="searchForm" action="feeDeposite" method="get">
		<input name="key" id="key" type="hidden">
		<input name="value" id="value" type="hidden">
	</form>	
	
<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="<%=appUrl %>natkhat/js/feeTable.js"></script>
</body>
</html>
