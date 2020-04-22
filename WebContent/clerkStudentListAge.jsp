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

</head>
<body>
	<%
	String appUrl = UrlUtil.appUrl;
	List<StudentInfo> docsDetailList = (ArrayList<StudentInfo>)request.getAttribute("DOC_LIST_STUDENT");
	int totalDocsSize = 0;
	if(null != docsDetailList && docsDetailList.size() > 0){
		totalDocsSize = docsDetailList.size();
	}
	String sClass = (String)request.getAttribute("CLASS");
	String sSection = (String)request.getAttribute("SECTION");
	String aOrder = (String)request.getAttribute("ORDER");
	
%>
	<div id="marquee1"
		style="position: absolute; overflow: hidden; left: 271px; top: 0px; width: 538px; height: 33px; z-index: 0">
		<marquee width="538" height="33">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Copperplate Gothic Bold" class="ws20"><B>Welcome
							To Natkhat Play School</B></font>
				</div>
			</div>
		</marquee>
	</div>

	<div id="session"
		style="position: absolute; overflow: hidden; left: 28px; top: 56px; width: 93px; height: 24px; z-index: 1">
		<div class="wpmd">
			<div>
				<font face="Copperplate Gothic Bold" class="ws14">Session </font>
			</div>
		</div>
	</div>
	<div id="docsErrorMsg"
		style="display:none;position: absolute; overflow: hidden; left: 634px; top: 265px;  z-index: 4;">
		<label style="color: red;"><b> Please select atleat one
				search parameter for search.</b></label>
	</div>
	<div id="docsErrorClassMsg"
		style="display:none;position: absolute; overflow: hidden; left: 634px; top: 265px; z-index: 4;">
		<label style="color: red;"><b> Please first Select Class before Select Section.</b></label>
	</div>
	<select name="session"
		style="position: absolute; left: 118px; top: 56px; width: 92px; z-index: 2">
		<option value="">2020-2021</option>
	</select>
	<div id="table2"
		style="position: absolute; overflow: auto; left: 9px; top: 314px; max-width: 99%  z-index: 3">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 bordercolorlight="#C0C0C0"
					bordercolordark="#808080">
					<TR valign=top>
						<TD colspan=29 width=3024 bgcolor="#FFFF00" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Personal Details</B></font>
								</div>
							</div></TD>
						<TD colspan=26 bgcolor="#00FFFF" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Parents Details</B></font>
								</div>
							</div></TD>
						<TD colspan=4 bgcolor="#33FF33" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Address Details</B></font>
								</div>
							</div></TD>
						<TD colspan=7 bgcolor="#AD5BFF"><div class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Transport Details</B></font>
								</div>
							</div></TD>
						<TD rowspan=3 width=87 bgcolor="#0080FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Option
									</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=11 width=1122 height=47 bgcolor="#FFFF0D"
							valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Student
										Genral details</font>
								</div>
							</div></TD>
						<TD colspan=5 width=513 height=47 bgcolor="#2B2BFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										details</font>
								</div>
							</div></TD>
						<TD colspan=7 width=772 height=47 bgcolor="#FF2D2D" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Last
										School Details</font>
								</div>
							</div></TD>
						<TD colspan=6 width=617 height=47 bgcolor="#1CFF1C" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Current
										School Details</font>
								</div>
							</div></TD>
						<TD colspan=5 width=552 height=47 bgcolor="#00FFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Father
										General details</font>
								</div>
							</div></TD>
						<TD colspan=6 width=772 height=47 bgcolor="#FF0DFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										Details</font>
								</div>
							</div></TD>
						<TD colspan=5 height=47 bgcolor="#3366FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Mother
										General details</font>
								</div>
							</div></TD>
						<TD colspan=6 height=47 bgcolor="#00CCFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										Details</font>
								</div>
							</div></TD>
						<TD colspan=4 height=47 bgcolor="#FF2D2D" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">In
										case of divorced, Fill the gurdian details</font>
								</div>
							</div></TD>
						<TD colspan=4 height=47 bgcolor="#84FF84"><BR></TD>
						<TD height=47 bgcolor="#C488FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Self </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">(will
										go alone)</font>
								</div>
							</div></TD>
						<TD colspan=2 height=47 bgcolor="#C488FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">With
										Parents </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">(will
										go alone)</font>
								</div>
							</div></TD>
						<TD colspan=4 height=47 bgcolor="#C488FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">By
										School Vehicle</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">(will
										go alone)</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=56 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">S.no</font>
								</div>
							</div></TD>
						<TD width=102 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Scholar
										no.</font>
								</div>
							</div></TD>
						<TD width=142 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Name</font>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">D.o.b</font>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Gender</font>
								</div>
							</div></TD>
						<TD width=133 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Nationality</font>
								</div>
							</div></TD>
						<TD width=112 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Religious</font>
								</div>
							</div></TD>
						<TD width=85 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Caste</font>
								</div>
							</div></TD>
						<TD width=115 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Category</font>
								</div>
							</div></TD>
						<TD width=86 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Blood
										Group</font>
								</div>
							</div></TD>
						<TD width=91 bgcolor="#FFFF6F" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Mother
										Tounge</font>
								</div>
							</div></TD>
						<TD width=101 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Aadhar
										card no.</font>
								</div>
							</div></TD>
						<TD width=96 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Samagra
										ID</font>
								</div>
							</div></TD>
						<TD width=81 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										A/c no.</font>
								</div>
							</div></TD>
						<TD width=116 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">IFSC
										Code</font>
								</div>
							</div></TD>
						<TD width=119 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										Name</font>
								</div>
							</div></TD>
						<TD width=95 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">School
										Name</font>
								</div>
							</div></TD>
						<TD width=124 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Class
										of Admission</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Session
										of Admission</font>
								</div>
							</div></TD>
						<TD width=122 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Session
										of Leave</font>
								</div>
							</div></TD>
						<TD width=120 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Medium
										of Study</font>
								</div>
							</div></TD>
						<TD width=80 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Passed
										Class</font>
								</div>
							</div></TD>
						<TD width=106 bgcolor="#FF6262" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Passed
										Class %</font>
								</div>
							</div></TD>
						<TD width=82 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">School
										Name</font>
								</div>
							</div></TD>
						<TD width=114 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Date
										of Admission</font>
								</div>
							</div></TD>
						<TD width=116 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Session
										of Admission</font>
								</div>
							</div></TD>
						<TD width=136 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Class
										of Admission</font>
								</div>
							</div></TD>
						<TD width=120 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Medium
										of Study</font>
								</div>
							</div></TD>
						<TD width=49 bgcolor="#3EFF3E" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Rte</font>
								</div>
							</div></TD>
						<TD width=103 bgcolor="#8AFFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Father's
										Name</font>
								</div>
							</div></TD>
						<TD width=157 bgcolor="#8AFFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Qualification</font>
								</div>
							</div></TD>
						<TD width=138 bgcolor="#8AFFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Designation</font>
								</div>
							</div></TD>
						<TD width=52 bgcolor="#8AFFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Age</font>
								</div>
							</div></TD>
						<TD width=102 bgcolor="#8AFFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Monthly
										Income</font>
								</div>
							</div></TD>
						<TD width=108 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Aadhar
										Card No.</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Samagra
										Family Id</font>
								</div>
							</div></TD>
						<TD width=137 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Contact
										No.</font>
								</div>
							</div></TD>
						<TD width=166 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										A/c No.</font>
								</div>
							</div></TD>
						<TD width=111 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">IFSC
										Code</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#FF55FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										Name</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#5E86FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Mother's
										Name</font>
								</div>
							</div></TD>
						<TD width=151 bgcolor="#5E86FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Qualification</font>
								</div>
							</div></TD>
						<TD width=137 bgcolor="#5E86FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Designation</font>
								</div>
							</div></TD>
						<TD width=87 bgcolor="#5E86FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Age</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#5E86FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Monthly
										Income</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Aadhar
										Card No.</font>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Samagra
										Family Id</font>
								</div>
							</div></TD>
						<TD width=140 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Contact
										No.</font>
								</div>
							</div></TD>
						<TD width=157 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										A/c No.</font>
								</div>
							</div></TD>
						<TD width=114 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">IFSC
										Code</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#59DEFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										Name</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#FF8484"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14"> Name</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#FF8484"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Aadhar
										Card no.</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#FF8484"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Contact
										no.</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#FF8484"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Residential
									</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Address</font>
								</div>
							</div></TD>
						<TD width=177 bgcolor="#84FF84"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">State</font>
								</div>
							</div></TD>
						<TD width=110 bgcolor="#84FF84"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">City</font>
								</div>
							</div></TD>
						<TD width=99 bgcolor="#84FF84"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Area
										Zip Code</font>
								</div>
							</div></TD>
						<TD width=267 bgcolor="#84FF84"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Residential
									</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Address</font>
								</div>
							</div></TD>
						<TD width=267 bgcolor="#D3A8FF"><div class="wpmd">
								<div align=center>
									<BR>
								</div>
							</div></TD>
						<TD width=133 bgcolor="#D3A8FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Person
										Leave</font>
								</div>
							</div></TD>
						<TD width=133 bgcolor="#D3A8FF"><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Person
										Recieve</font>
								</div>
							</div></TD>
						<TD width=126 bgcolor="#D3A8FF" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Root
										Name</font>
								</div>
							</div></TD>
						<TD width=138 bgcolor="#D3A8FF" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Stop
										Name</font>
								</div>
							</div></TD>
						<TD width=193 bgcolor="#D3A8FF" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Person
										Take or Recieve at Stop</font>
								</div>
							</div></TD>
						<TD width=200 bgcolor="#D3A8FF" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Person
										Take or Recieve at School</font>
								</div>
							</div></TD>
					</TR>
					</TR>
					<%
						if (null != docsDetailList && docsDetailList.size() > 0) {
							int i = 0;
							for (StudentInfo info : docsDetailList) {

								Student student = info.getStudent();
								Parents parents = info.getParents();
								StudentDocs studentDocs = info.getStudentDocs();
								Guardian guradian = info.getGuradian();
								TransportDetails tDetails = info.gettDetails();
						if(i%2 == 0){
					%>
					<TR valign="center" >
					<% }else{%>
					<TR valign="center" style="background-color:#FFE8C4" >
					<% } %>
						<TD width=56><%=student.getId()%></TD>
						<TD width=102><%=student.getScholarNo()%></TD>
						<TD width=142><%=student.getName()%></TD>
						<TD width=100><%=student.getDobFigure()%></TD>
						<TD width=100><%=student.getGender()%></TD>
						<TD width=133><%=student.getNationality()%></TD>
						<TD width=112><%=student.getReligion()%></TD>
						<TD width=85><%=student.getCaste()%></TD>
						<TD width=115><%=student.getCategory()%></TD>
						<TD width=86><%=student.getBloodGroup()%></TD>
						<TD width=91><%=student.getMotherTounge()%></TD>
						<TD width=101><%=student.getAdharNo()%></TD>
						<TD width=96><%=student.getSssmiNo()%></TD>
						<TD width=81><%=student.getBankAccNo()%></TD>
						<TD width=116><%=student.getIfscCode()%></TD>
						<TD width=119><%=student.getBankName()%></TD>
						<TD width=95><%=student.getLastSchoolName()%></TD>
						<TD width=124><%=student.getLastClassAdmission()%></TD>
						<TD width=125><%=student.getLastSessionAdmission()%></TD>
						<TD width=122><%=student.getLastSessionLeave()%></TD>
						<TD width=120><%=student.getLastStudyMedium()%></TD>
						<TD width=80><%=student.getPassedClass()%></TD>
						<TD width=106><%=student.getPercentage()%></TD>
						<TD width=82><%=student.getCurrentSchoolName()%></TD>
						<TD width=114><%=student.getAdmissionDate()%></TD>
						<TD width=116><%=student.getAdmissionSession()%></TD>
						<TD width=136><%=student.getAdmissionClass()%></TD>
						<TD width=120><%=student.getStudyMedium()%></TD>
						<TD width=49><%=student.getRte()%></TD>
						<TD width=103><%=parents.getFatherName()%></TD>
						<TD width=157><%=parents.getFatherQualification()%></TD>
						<TD width=138><%=parents.getFatherDesignation()%></TD>
						<TD width=52><%=parents.getFatherAge()%></TD>
						<TD width=111><%=parents.getFatherIncome()%></TD>
						<TD width=102><%=parents.getFatherAdharNo()%></TD>
						<TD width=108><%=parents.getFamilysssmid()%></TD>
						<TD width=125><%=parents.getFatherMobNo()%></TD>
						<TD width=137><%=parents.getFatherAccNo()%></TD>
						<TD width=166><%=parents.getFatherIfscCode()%></TD>
						<TD width=130><%=parents.getFatherBankName()%></TD>
						<TD width=125><%=parents.getMotherName()%></TD>
						<TD width=125><%=parents.getMotherQualification()%></TD>
						<TD width=151><%=parents.getMotherDesignation()%></TD>
						<TD width=137><%=parents.getMotherAge()%></TD>
						<TD width=87><%=parents.getMontherIncome()%></TD>
						<TD width=125><%=parents.getMotherAdharNo()%></TD>
						<TD width=125></TD>
						<TD width=125><%=parents.getMotherMobNo()%></TD>
						<TD width=140><%=parents.getMotherAccNo()%></TD>
						<TD width=157><%=parents.getMotherIfscCode()%></TD>
						<TD width=114><%=parents.getMotherBankName()%></TD>
						
						<TD width=130><%=guradian.getGuardianName()%></TD>
						<TD width=130><%=guradian.getGuardianAdharNo()%></TD>
						<TD width=130><%=guradian.getGuardianMobileNo()%></TD>
						<TD width=130><%=guradian.getGuardianresAddress()%></TD>
						<TD width=177></TD>
						<TD width=110><BR></TD>
						<TD width=99><BR></TD>
						<TD width=267><BR></TD>
						<TD width=133><%=tDetails.getMode()%></TD>
						<TD width=133><%=tDetails.getReceivePersonSchool()%></TD>
						<TD width=126><%=tDetails.getReceivePersonSchool()%></TD>
						<TD width=138><%=tDetails.getRootName()%></TD>
						<TD width=193><%=tDetails.getStop()%></TD>
						<TD width=200><%=tDetails.getReceiveParsonStop()%></TD>
						<TD width=267><BR></TD>
					</TR>
					
				<%
					i++;
						}
						}
					%>	
				</TABLE>
			</div>
		</div>
	</div>

	<div id="ssawise"
		style="position: absolute; overflow: hidden; left: 271px; top: 41px; width: 445px; height: 69px; z-index: 4">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws26"><B><U>Students
							Sheet </U></B></font>
			</div>
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B><U>(Age
							Wise)</U></B></font>
			</div>
		</div>
	</div>

	<div id="tStudents"
		style="position: absolute; overflow: hidden; left: 778px; top: 45px; width: 217px; height: 58px; z-index: 5">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFCC00" border=1 bordercolorlight="#FFCC00"
					bordercolordark="#FFCC00">
					<TR valign=top>
						<TD width=122 bgcolor="#FFFFFF" valign=middle
							style='border-color: #808000 #808000 #808000 #808000; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Total
									</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Students</font>
								</div>
							</div></TD>
						<TD width=78 bgcolor="#FFFFFF" valign=middle
							style='border-color: #808000 #808000 #808000 #808000; border-style: solid;'><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14"><%=totalDocsSize %></font>
								</div>
							</div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="roundrect1"
		style="position: absolute; overflow: hidden; left: 13px; top: 116px; width: 977px; height: 123px; z-index: 6">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect16207443.gif">
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 386px; top: 119px; width: 241px; height: 30px; z-index: 7">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B><U>Search
							Student</U></B></font>
			</div>
		</div>
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 46px; top: 162px; width: 178px; height: 25px; z-index: 8">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">Select
					Class</font>
			</div>
		</div>
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 343px; top: 162px; width: 190px; height: 25px; z-index: 9">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">Select
					Section</font>
			</div>
		</div>
	</div>


	<div id="saorder"
		style="position: absolute; overflow: hidden; left: 649px; top: 162px; width: 213px; height: 25px; z-index: 13">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">Select
					Age Order</font>
			</div>
		</div>
	</div>


	<form id="ageForm" action="clrkSearchAge">
		<select name="sClass" id="sClass"
			style="position: absolute; width: 98px; left: 206px; top: 162px; z-index: 7">
			<option value="" <% if(null == sClass){ %> selected <% } %>>Select
				Class</option>
			<option value="Pre-Nursery"
				<% if(null != sClass && "Pre-Nursery".equals(sClass)){ %> selected
				<% } %>>Pre-Nursery</option>
			<option value="Nursery"
				<% if(null != sClass && "Nursery".equals(sClass)){ %> selected
				<% } %>>Nursery</option>
			<option value="K.G.I"
				<% if(null != sClass && "K.G.I".equals(sClass)){ %> selected <% } %>>K.G.I</option>
			<option value="K.G.II"
				<% if(null != sClass && "K.G.II".equals(sClass)){ %> selected
				<% } %>>K.G.II</option>
		</select> <select name="sSection" id="sSection"
			style="position: absolute; width: 113px;left: 504px; top: 162px; z-index: 8">
			<option value="" <% if(null == sSection){ %> selected <% } %>>Select
				Section</option>
			<option value="A" <% if(null != sSection && "A".equals(sSection)){ %>
				selected <% } %>>A</option>
			<option value="B" <% if(null != sSection && "B".equals(sSection)){ %>
				selected <% } %>>B</option>
			<option value="C" <% if(null != sSection && "C".equals(sSection)){ %>
				selected <% } %>>C</option>
			<option value="D" <% if(null != sSection && "D".equals(sSection)){ %>
				selected <% } %>>D</option>
		</select> 
		<select name="aOrder" id="aOrder"
			style="position: absolute; left: 867px; top: 163px; width: 98px; z-index: 14">
			<option value="" <% if(null == aOrder){ %> selected <% } %>>Select</option>
			<option value="Ascending" <% if(null != aOrder && "Ascending".equals(aOrder)){ %>
				selected <% } %>>Ascending</option>
			<option value="Descending" <% if(null != aOrder && "Descending".equals(aOrder)){ %>
				selected <% } %>>Descending</option>
		</select> 
		<input name="submitCategory" id="submitAge" type="button" style="position: absolute; left: 384px; top: 263px; z-index: 16;"
			value="Search Student"> 
		<input type="button" id="refreshAge"
			style="position: absolute; left: 548px; top: 263px;z-index: 16;"
			value="Refresh"> <input type="hidden" name="franchise"
			value="natkhat001">
	</form>
	<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
	<script src="<%=appUrl %>natkhat/js/clerk.js"></script>
</body>
</html>
