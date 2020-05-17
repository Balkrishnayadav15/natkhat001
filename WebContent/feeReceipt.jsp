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

</head>
<body>
<%
	Map<String,Object> receiptMap = (Map<String,Object>)request.getAttribute("FEES_RECEIPT");
	Receipt receipt = null;
	FeeDeposite feeDeposite = null;
	long totalAmount = 0;
	long remainingAmt = 0;
	
	if(null != receiptMap){
		receipt = (Receipt)receiptMap.get("RECEIPT");
		feeDeposite = (FeeDeposite)receiptMap.get("FEE_INSTALL");
		
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
			
			totalAmount =  feeDeposite.getActivityFees() + feeDeposite.getFirstInstall()  + feeDeposite.getSecondInstall() + feeDeposite.getThirdInstall() + feeDeposite.getPreviousrDues();
		}
		
	}
	
%>
	<div id="text1"
		style="position: absolute; overflow: hidden; left: 22px; top: 68px; width: 103px; height: 26px; z-index: 0">
		<div class="wpmd">
			<div>
				<font color="#FF6600" class="ws12"
					style="background-color: #FFFFFF;"><B>Receipt Id :</B></font>
			</div>
		</div>
	</div>

	<div id="text2"
		style="position: absolute; overflow: hidden; left: 127px; top: 68px; width: 129px; height: 23px; z-index: 1">
		<%= receipt.getId() %>
	</div>

	<div id="text17"
		style="position: absolute; overflow: hidden; left: 10px; top: 20px; width: 289px; height: 33px; z-index: 2">
		<div class="wpmd">
			<div>
				<font color="#99CC00" class="ws14"
					style="background-color: #FFFFFF;">Natkhat 01 Fee Deposite
					Receipt</font>
			</div>
		</div>
	</div>

	<div id="table1"
		style="position:absolute; overflow:hidden; left:288px; top:146px; width:420px; height:118px; z-index:3">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 cellpadding=0 
					bordercolorlight="#C0C0C0" bordercolordark="#808080">
					<TR valign=top>
						<TD width=126><BR></TD>
						<TD width=74>
							<div class="wpmd">
								<div align=center>
									<font color="#3366FF" style="background-color: #FFFFFF;"><B>Amount</B></font>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<font color="#3366FF"><B>Discount</B></font>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<font color="#3366FF"><B>Status</B></font>
								</div>
							</div></TD>
					</TR>
					<%
						if(null != receipt.getFirstCheck() && "Checked".equals(receipt.getFirstCheck())){
					%>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>First Installment</div>
							</div></TD>
						<TD width=74><div class="wpmd">
								<div align=center>
									<%=receipt.getfAmount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.getfDiscount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.getfStatus() %>
								</div>
							</div></TD>
					</TR>
					<%
						}
					%>
					
					<%
						if(null != receipt.getSecondCheck() && "Checked".equals(receipt.getSecondCheck())){
					%>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>Second Installment</div>
							</div></TD>
						<TD width=74><div class="wpmd">
								<div align=center>
									<%=receipt.getsAmount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.getsDiscount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.getsStatus() %>
								</div>
							</div></TD>
					</TR>
					<% } %>
				    <%
						if(null != receipt.getThirdCheck() && "Checked".equals(receipt.getThirdCheck())){
					%>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>Third Installment</div>
							</div></TD>
						<TD width=74><div class="wpmd">
								<div align=center>
									<%=receipt.gettAmount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.gettDiscount() %>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center>
									<%=receipt.gettStatus() %>
								</div>
							</div></TD>
					</TR>
					<% } %>
					<TR valign=top>
						<TD width=126><div class="wpmd">
								<div>Total Amount</div>
							</div></TD>
						<TD colspan=2 width=174><div class="wpmd">
								<div align=center><%=receipt.getPayAmount() + receipt.getDiscount() %></div></div></TD>
						<TD width=100><BR></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="table2"
		style="position:absolute; overflow:hidden; left:18px; top:107px; width:224px; height:164px; z-index:4">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 cellpadding=2
					bordercolorlight="#C0C0C0" bordercolordark="#808080">
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Scholar No.</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getScholarNo() %></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Student Name</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getStudentName() %></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Father Name</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getFatherName() %></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Class</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getsClass() %></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Section</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getsSection() %></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div>
									<font color="#FF6600"><B>Mobile No.</B></font>
								</div>
							</div></TD>
						<TD width=100><%= receipt.getMobileNo() %></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="table3"
		style="position:absolute; overflow:hidden; left:305px; top:53px; width:224px; height:59px; z-index:5">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 cellpadding=2
					bordercolorlight="#C0C0C0" bordercolordark="#808080">
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div align=center>
									<font color="#FF6600"><B>Amount Pay</B></font>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center><%= receipt.getPayAmount() %></div></div></TD>
					</TR>
					<TR valign=top>
						<TD width=100><div class="wpmd">
								<div align="center">
									<font color="#FF6600"><B>Discount</B></font>
								</div>
							</div></TD>
						<TD width=100><div class="wpmd">
								<div align=center><%= receipt.getDiscount() %></div></div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="table4"
		style="position:absolute; overflow:hidden; left:13px; top:319px; width:420px; height:139px; z-index:6">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 cellpadding=0
					bordercolorlight="#C0C0C0" bordercolordark="#808080">
					<TR valign=top>
						<TD width=126><BR></TD>
						<TD width=139><div class="wpmd">
								<div align=center>
									<font color="#3366FF" style="background-color: #FFFFFF;"><B>Installment
											Amount</B></font>
								</div>
							</div></TD>
						<TD width=118><div class="wpmd">
								<div align=center>
									<font color="#3366FF"><B>Pedning Amount</B></font>
								</div>
							</div></TD>
					</TR>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getFirstStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>First Installment</div>
							</div></TD>
						<TD width=139><div class="wpmd">
								<div align=center>
									<%= feeDeposite.getActivityFees() + feeDeposite.getFirstInstall() + feeDeposite.getPreviousrDues() %>
								</div>
							</div></TD>
						<TD width=118><div class="wpmd">
								<div align=center>
									<%
										if(FeesQuery.UN_PAID.equals(feeDeposite.getFirstStatus())){
									%>
									 	<%= feeDeposite.getActivityFees() + feeDeposite.getFirstInstall() + feeDeposite.getPreviousrDues() %>
									<%		
										}else {
									%>
										<%=feeDeposite.getFirstPendAmt() %>
									<%		
										}
									%>
								</div>
							</div></TD>
					</TR>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getSecondStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>Second Installment</div>
							</div></TD>
						<TD width=139><div class="wpmd">
								<div align=center><%= feeDeposite.getSecondInstall() %></div></div></TD>
						<TD width=118><div class="wpmd">
								<div align=center>
							<%
								if (FeesQuery.UN_PAID.equals(feeDeposite.getSecondStatus())) {
							%> 
								<%=feeDeposite.getSecondInstall()%> 
							<%
						 		} else {
						 	%> 
						 		<%=feeDeposite.getSecondPendAmt()%> 
						 	<%
						 		}
							%>
							</div></div>
						</TD>
					</TR>
					<% if(FeesQuery.UN_PAID.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:#f3adad">
					<%}else if(FeesQuery.PENDING_STATUS.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:yellow">
					<%}else if(FeesQuery.PAID.equals(feeDeposite.getThirdStatus())){ %>
					<TR valign=top style="background-color:#6ce86c">
					<%}%>
						<TD width=126><div class="wpmd">
								<div>Third Installment</div>
							</div></TD>
						<TD width=139><div class="wpmd">
								<div align=center><%= feeDeposite.getThirdInstall() %></div></div></TD>
						<TD width=118><div class="wpmd">
								<div align=center>
							<%
								if (FeesQuery.UN_PAID.equals(feeDeposite.getThirdStatus())) {
							%> 
								<%=feeDeposite.getThirdInstall()%> 
							<%
						 		} else {
						 	%> 
						 		<%=feeDeposite.getThirdPendAmt()%> 
						 	<%
						 		}
							%>
							</div>
							</div>
						</TD>
					</TR>
					<TR valign=top>
						<TD width=126><div class="wpmd">
								<div>Total Amount</div>
							</div></TD>
						<TD width=139><div class="wpmd">
								<div align=center><%= totalAmount %></div></div></TD>
						<TD width=118><div class="wpmd">
								<div align=center><%= remainingAmt %></div></div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="text3"
		style="position:absolute; overflow:hidden; left:312px; top:30px; width:211px; height:21px; z-index:7">
		<div class="wpmd">
			<div>
				<font color="#498248" class="ws12"><B>Studnet Payment
						Amount</B></font>
			</div>
		</div>
	</div>

	<div id="text4"
		style="position: absolute; overflow: hidden; left: 415px; top: 123px; width: 193px; height: 21px; z-index: 8">
		<div class="wpmd">
			<div>
				<font color="#498248" class="ws12"><B>Studnet Payment
						Status</B></font>
			</div>
		</div>
	</div>

	<div id="text5"
		style="position: absolute; overflow: hidden; left: 88px; top: 295px; width: 270px; height: 21px; z-index: 9">
		<div class="wpmd">
			<div>
				<font color="#498248" class="ws12"><B>Fees breakup and
						current status</B></font>
			</div>
		</div>
	</div>

	<div id="text6"
		style="position: absolute; overflow: hidden; left: 593px; top: 27px; width: 109px; height: 28px; z-index: 10">
		<div class="wpmd">
			<div>
				<font class="ws12"><button onclick="window.print()">Print</button></font>
			</div>
		</div>
	</div>
</body>
</html>
