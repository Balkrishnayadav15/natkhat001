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
	List<FeesInstallment> installmentList = (List<FeesInstallment>)request.getAttribute("FEES_INSTALL");
	FeesInstallment perNursery = null;
	FeesInstallment nursery = null;
	FeesInstallment kg1 = null;
	FeesInstallment kg2 = null;
	if(null != installmentList && installmentList.size() > 0){
		
		for(FeesInstallment fees:installmentList){
			if(fees.getId() == 1){
				perNursery = fees;
			}
			if(fees.getId() == 2){
				nursery = fees;
			} 
			if(fees.getId() == 3){
				kg1 = fees;
			}
			if(fees.getId() == 4){
				kg2 = fees;
			}
			
		}
		
	}
%>
	<div id="roundrect1"
		style="position: absolute; overflow: hidden; left: 37px; top: 130px; width: 943px; height: 266px; z-index: 0">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect18102839.gif">
	</div>

	<div id="marquee1"
		style="position: absolute; overflow: hidden; left: 215px; top: 55px; width: 538px; height: 33px; z-index: 1">
		<marquee width="538" height="33">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Copperplate Gothic Bold" class="ws20"><B>Welcome
							To Natkhat Play School</B></font>
				</div>
			</div>
		</marquee>
	</div>
	<%
		String saveMsg = (String) request.getAttribute("SAVE_MSG");
		if(null != saveMsg){
	%>
	<div
		style="position: absolute; overflow: hidden; left: 37px; top: 98px;font-family: monospace;color:red;  z-index: 0">
		<b><%=saveMsg %></b>
	</div>
	<% } %>
	<div id="table1"
		style="position: absolute; overflow: hidden; left: 82px; top: 195px; width: 860px; height: 178px; z-index: 2; border-radius: 30px 30px 30px 30px;">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=0 bordercolorlight="#C0C0C0"
					bordercolordark="#808080" cellspacing=1>
					<TR valign=top>
						<TD width=150 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Class</B></font>
								</div>
							</div></TD>
						<TD width=117 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Activity Fees</B></font>
								</div>
							</div></TD>
						<TD width=148 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws16"><B>I</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=147 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws16"><B>II</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=154 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws16"><B>III</B></font>
								</div>
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Installment</B></font>
								</div>
							</div></TD>
						<TD width=94 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Option</B></font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=150 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Pre-Nursery</B></font>
								</div>
							</div></TD>
						<TD width=117 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="preNurseryTextA">
									<font face="Copperplate Gothic Bold" class="ws14"><%=perNursery.getActivityFees() %></font>
								</div>
								
							</div></TD>
						<TD width=148 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;">
							<div class="wpmd">
									<div id="preNurseryTextF">
									<font face="Copperplate Gothic Bold" class="ws14"><%=perNursery.getFirstInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=147 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;">
							<div class="wpmd">
								<div id="preNurseryTextS">
									<font face="Copperplate Gothic Bold" class="ws14"><%=perNursery.getSecondInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;">
							<div class="wpmd">
								<div id="preNurseryTextT">
									<font face="Copperplate Gothic Bold" class="ws14"><%=perNursery.getThirdInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=94 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div>
									<select name="firstAction" id="firstAction" onchange="editInstall('<%=perNursery.getClassName()%>','<%=perNursery.getActivityFees() %>','<%=perNursery.getFirstInstall() %>','<%=perNursery.getSecondInstall() %>','<%=perNursery.getThirdInstall() %>')">
										<option value="">Action</option>
										<option value="edit">Edit</option>
									</select>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=150 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>Nursery</B></font>
								</div>
							</div></TD>
						<TD width=117 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="nurseryTextA">
									<font face="Copperplate Gothic Bold" class="ws14"><%=nursery.getActivityFees() %></font>
								</div>
								
							</div></TD>
						<TD width=148 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="nurseryTextF">
									<font face="Copperplate Gothic Bold" class="ws14"><%=nursery.getFirstInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=147 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="nurseryTextS">
									<font face="Copperplate Gothic Bold" class="ws14"><%=nursery.getSecondInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="nurseryTextT">
									<font face="Copperplate Gothic Bold" class="ws14"><%=nursery.getThirdInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=94 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div>
									<select name="firstAction" id="firstAction" onchange="editInstall('<%=nursery.getClassName()%>','<%=nursery.getActivityFees() %>','<%=nursery.getFirstInstall() %>','<%=nursery.getSecondInstall() %>','<%=nursery.getThirdInstall() %>')">
										<option value="">Action</option>
										<option value="edit">Edit</option>
									</select>								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=150 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>K.G.I</B></font>
								</div>
							</div></TD>
						<TD width=117 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg1TextA">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg1.getActivityFees() %></font>
								</div>
								
							</div></TD>
						<TD width=148 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg1TextF">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg1.getFirstInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=147 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg1TextS">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg1.getSecondInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg1TextT">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg1.getThirdInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=94 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div>
									<select name="firstAction" id="firstAction" onchange="editInstall('<%=kg1.getClassName()%>','<%=kg1.getActivityFees() %>','<%=kg1.getFirstInstall() %>','<%=kg1.getSecondInstall() %>','<%=kg1.getThirdInstall() %>')">
										<option value="">Action</option>
										<option value="edit">Edit</option>
									</select>								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=150 bgcolor="#00CCFF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div align=center>
									<font color="#000080" face="Copperplate Gothic Bold"
										class="ws14"><B>K.G.II</B></font>
								</div>
							</div></TD>
						<TD width=117 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg2TextA">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg2.getActivityFees() %></font>
								</div>
								
							</div></TD>
						<TD width=148 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg2TextF">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg2.getFirstInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=147 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg2TextS">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg2.getSecondInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=154 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div id="kg2TextT">
									<font face="Copperplate Gothic Bold" class="ws14"><%=kg2.getThirdInstall() %></font>
								</div>
								
							</div></TD>
						<TD width=94 bgcolor="#82E6FF" valign=middle
							style="border-color: #FFFFFF; border-style: solid;"><div
								class="wpmd">
								<div>
									<select name="firstAction" id="firstAction" onchange="editInstall('<%=kg2.getClassName()%>','<%=kg2.getActivityFees() %>','<%=kg2.getFirstInstall() %>','<%=kg2.getSecondInstall() %>','<%=kg2.getThirdInstall() %>')">
										<option value="">Action</option>
										<option value="edit">Edit</option>
									</select>								
								</div>
							</div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="text1"
		style="position: absolute; overflow: hidden; left: 84px; top: 147px; width: 93px; height: 24px; z-index: 3">
		<div class="wpmd">
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws14">Session</font><font
					face="Copperplate Gothic Bold" class="ws14"> </font>
			</div>
		</div>
	</div>

	<select name="formselect1"
		style="position: absolute; left: 174px; top: 147px; width: 92px; z-index: 4">
		<option value="">2020-2021</option>
	</select>
	<div id="text4"
		style="position: absolute; overflow: hidden; left: 291px; top: 133px; width: 445px; height: 39px; z-index: 5">
		<div class="wpmd">
			<div align=center>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws26"><B><U>Fee
							Structure Table</U></B></font>
			</div>
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B><U><BR></U></B></font>
			</div>
		</div>
	</div>

	<div id="shape1"
		style="position: absolute; overflow: hidden; left: 893px; top: 54px; width: 109px; height: 29px; z-index: 6">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape20088123.gif">
	</div>

	<div id="text2"
		style="position: absolute; overflow: hidden; left: 899px; top: 58px; width: 77px; height: 21px; z-index: 7">
		<div class="wpmd">
			<div>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws12"><B>Logout</B></font>
			</div>
		</div>
	</div>

	<div id="image1"
		style="position: absolute; overflow: hidden; left: 974px; top: 53px; width: 27px; height: 29px; z-index: 8">
		<img src="<%=appUrl %>natkhat/images/Logouticon.png" alt="" title="" border=0 width=27
			height=29>
	</div>

	<!--[if IE]><div id="text3" style="position:absolute; overflow:hidden; left:252px; top:6px; width:455px; height:43px; z-index:9; border:#000080 2px outset; background-color:#FFFFFF"><![endif]-->
	<!--[if !IE]>-->
	<div id="text3"
		style="position: absolute; overflow: hidden; left: 252px; top: 6px; width: 451px; height: 39px; z-index: 9; border: #000080 2px outset; background-color: #FFFFFF">
		<!--<![endif]-->

		<div class="wpmd">
			<div align=center>
				<font color="#000080" face="Cooper Black" class="ws28"><B>ADMIN DASHBOARD</B></font>
			</div>
			<div>
				<font color="#000080" face="Copperplate Gothic Bold" class="ws16"><BR></font>
			</div>
		</div>
	</div>
<!-- Start Enquiry Modal Modal -->
  <div id="feeInstallModal" class="modal fade"  role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content enquiry-form">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <div id="modalMsg" style="display:none;"> All fields are mandatory. Please fill all fields to submit form. </div>
                 <h4><label  class="enqiry-font" style="font-weight: bold;font-size: 31px;color: #3a19bdb8;">Installment and Activity Fee Details. </label></h4>
                <div id="selectedClass" style="color:#ff0052;font-weight: bold;font-family: sans-serif"> </div>
                
                <form action="feeTable" id="feeTable" method="post">
               		<div class="form-group">
               		 <div>
                        <label for="name" style="width: 30%;padding: 14px 0px 0px 14px;" class="enqiry-font"> Activity Fees:</label>
                        <input type="number" name="activity" id="activity"  value=""/> 
                      </div> 
                      <div>
                         <label for="name" style="width: 30%;padding: 14px 0px 0px 14px;" class="enqiry-font"> First Installment:</label>
                        <input type="number" name="first" id="first" value=""/> 
                      </div>
                     <div>
                         <label for="name" style="width: 30%;padding: 14px 0px 0px 14px;" class="enqiry-font"> Second Installment:</label>
                        <input type="number" name="second" id="second" value=""/> 
                     </div>    
                     <div> 
                         <label for="name" style="width: 30%;padding: 14px 0px 0px 14px;" class="enqiry-font"> Third Installment:</label>
                        <input type="number" name="third" id="third" value=""/> 
					 </div>
                   		 <input type="hidden"  name="cname" id="cname">
                   		 		
                   		 		
                    </div>
                   <input id="updateInstallment" type="button" name="changeSection" class="btn btn-lg btn-danger btn-block" value="Update Installment"/>
                </form>
            </div>
        </div>
    </div>
</div>
 <!-- End Enquiry Modal Modal -->
<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="<%=appUrl %>natkhat/js/feeTable.js"></script>

</body>
</html>
