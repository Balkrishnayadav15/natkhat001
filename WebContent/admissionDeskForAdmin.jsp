<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*, com.orange.model.*, com.orange.util.*"%>
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
	font-family: 'Squada One', cursive;
}

.ws7 {
	font-size: 9.3px;
	font-family: 'Squada One', cursive;
}

.ws8 {
	font-size: 11px;
	font-family: 'Squada One', cursive;
}

.ws9 {
	font-size: 12px;
	font-family: 'Squada One', cursive;
}

.ws10 {
	font-size: 13px;
	font-family: 'Squada One', cursive;
}

.ws11 {
	font-size: 15px;
	font-family: 'Squada One', cursive;
}

.ws12 {
	font-size: 16px;
	font-family: 'Squada One', cursive;
}

.ws14 {
	font-size: 19px;
	font-family: 'Squada One', cursive;
}

.ws16 {
	font-size: 21px;
	font-family: 'Squada One', cursive;
}

.ws18 {
	font-size: 24px;
	font-family: 'Squada One', cursive;
}

.ws20 {
	font-size: 27px;
	font-family: 'Squada One', cursive;
}

.ws22 {
	font-size: 29px;
	font-family: 'Squada One', cursive;
}

.ws24 {
	font-size: 32px;
	font-family: 'Squada One', cursive;
}

.ws26 {
	font-size: 35px;
	font-family: 'Squada One', cursive;
}

.ws28 {
	font-size: 37px;
	font-family: 'Squada One', cursive;
}

.ws36 {
	font-size: 48px;
	font-family: 'Squada One', cursive;
}

.ws48 {
	font-size: 64px;
	font-family: 'Squada One', cursive;
}

.ws72 {
	font-size: 96px;
	font-family: 'Squada One', cursive;
}

.wpmd {
	font-size: 13px;
	font-family: 'Squada One', cursive;
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
		Map<String, Object> adminData = (Map<String, Object>) request.getAttribute("ADMIN_DATA");
		Integer totalStudents = 0, maleStudents = 0, femaleStudents = 0, general = 0, obc = 0, st = 0, sc = 0;
		List<StudentInfo> todayStudents = null;
		Student student = null;
		Parents parents = null;
		StudentDocs studentDocs = null;
		Guardian guradian = null;
		TransportDetails tDetails = null;
		if (null != adminData) {
			if (null != adminData.get("TOTAL_STUDENT")) {
				totalStudents = (Integer) adminData.get("TOTAL_STUDENT");
			}
			if (null != adminData.get("MALE_STUDENT")) {
				maleStudents = (Integer) adminData.get("MALE_STUDENT");
			}
			if (null != adminData.get("FEMALE_STUDENT")) {
				femaleStudents = (Integer) adminData.get("FEMALE_STUDENT");
			}
			if (null != adminData.get("GENERAL_STUDENT")) {
				general = (Integer) adminData.get("GENERAL_STUDENT");
			}
			if (null != adminData.get("OBC_STUDENT")) {
				obc = (Integer) adminData.get("OBC_STUDENT");
			}
			if (null != adminData.get("ST_STUDENT")) {
				st = (Integer) adminData.get("ST_STUDENT");
			}
			if (null != adminData.get("SC_STUDENT")) {
				sc = (Integer) adminData.get("SC_STUDENT");
			}
			if (null != adminData.get("TODAY_ADMIT_STUDENT")) {
				todayStudents = (List<StudentInfo>) adminData.get("TODAY_ADMIT_STUDENT");

			}
		}

		String key = (String) request.getAttribute("KEY");
		String type = (String) request.getAttribute("TYPE");
	%>
	<div id="shape1"
		style="position: absolute; overflow: hidden; left: 745px; top: 93px; width: 256px; height: 242px; z-index: 0; box-shadow: 5px 5px grey; border-radius: 20px 20px 20px 20px !important;">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape10496683.gif">
	</div>

	<div id="marquee1"
		style="position: absolute; overflow: hidden; left: 271px; top: 0px; width: 538px; height: 33px; z-index: 1">
		<marquee width="538" height="33">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Copperplate Gothic Bold" class="ws20"><B>Welcome
							To Natkhat Play School</B></font>
				</div>
			</div>
		</marquee>
	</div>

	<div id="text1"
		style="position: absolute; overflow: hidden; left: 28px; top: 67px; width: 93px; height: 24px; z-index: 2">
		<div class="wpmd">
			<div>
				<font face="Copperplate Gothic Bold" class="ws14">Session </font>
			</div>
		</div>
	</div>

	<select name="session"
		style="position: absolute; left: 118px; top: 67px; width: 92px; z-index: 3">
		<option value="">2020-2021</option>
	</select>
	<div id="table1"
		style="position: absolute; overflow: hidden; left: 275px; top: 94px; width: 464px; height: 257px; z-index: 4">
		<div class="wpmd">
			<div>
				<TABLE
					style="border-radius: 20px 20px 20px 20px !important; transform: rotateX(5deg); box-shadow: 5px 5px grey; background-image: linear-gradient(yellow, orange);">
					<TR valign=top>
						<TD colspan=6><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws20">Total Students </font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=6 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws16"><%=totalStudents%><BR></font>
								</div>
								<div align=center>
									<font class="ws16"><BR></font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=2 width=145><div class="wpmd">
								<div align=center>
									<font color="#FFFFFF" face="Copperplate Gothic Bold"
										class="ws14">Gender</font>
								</div>
							</div></TD>
						<TD colspan=4><div class="wpmd">
								<div align=center>
									<font color="#FFFFFF" face="Copperplate Gothic Bold"
										class="ws14">Caste(category)</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=74 height=69><div class="wpmd">
								<div>
									<IMG border=0 src="<%=appUrl %>natkhat/images/Boy.png">
								</div>
							</div></TD>
						<TD width=71 height=69 valign=middle><div class="wpmd">
								<div>
									<IMG border=0 src="<%=appUrl %>natkhat/images/Girl.png">
								</div>
							</div></TD>
						<TD width=68 height=69 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B>Gen</B></font>
								</div>
							</div></TD>
						<TD width=68 height=69 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B>Obc</B></font>
								</div>
							</div></TD>
						<TD width=68 height=69 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B>St</B></font>
								</div>
							</div></TD>
						<TD width=70 height=69 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B>Sc</B></font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=74 valign=middle><div class="wpmd">
								<div align=center>
									<b><%=maleStudents%></b><BR>
								</div>
							</div></TD>
						<TD width=71 valign=middle><div class="wpmd">
								<div align=center>
									<b><%=femaleStudents%></b><BR>
								</div>
							</div></TD>
						<TD width=68 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B><%=general%></B></font>
								</div>
							</div></TD>
						<TD width=68 valign=middle><div class="wpmd">
								<div align=center>
									<B><%=obc%></B>
								</div>
							</div></TD>
						<TD width=68 valign=middle><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws14"><B><%=st%></B></font>
								</div>
							</div></TD>
						<TD width=70 valign=middle><div class="wpmd">
								<div align=center>
									<B><%=sc%></B>
								</div>
							</div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>


	<div id="formimage1"
		style="position: absolute; left: 804px; top: 238px; z-index: 5">
		<a href="<%=appUrl %>admissionForm.jsp"><input type="image"
			name="formimage1" width="155" height="77"
			src="<%=appUrl %>natkhat/images/AdmitStudent.gif"></a>
	</div>
	<div id="formimage2"
		style="position: absolute; left: 796px; top: 113px; z-index: 6">
		<input type="image" name="formimage2" width="171" height="85"
			src="<%=appUrl %>natkhat/images/MessageStudents.gif">
	</div>
	<div id="table2"
		style="position: absolute; overflow-x: auto; left: 8px; top: 341px; max-width: 100%; z-index: 7;">
		<br>
		<div class="wpmd">
			<div>
				<TABLE
					style="border-radius: 20px 20px 20px 20px !important; background-image: linear-gradient(yellow, orange);">
					<TR valign=top>
						<TD colspan=29 width=3024 bgcolor="" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"
										style="border-radius: 20px 20px 20px 20px;"><B>Student's
											Personal Details</B></font>
								</div>
							</div></TD>
						<TD colspan=11 width=1324 bgcolor="" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Parents Details</B></font>
								</div>
							</div></TD>
						<TD rowspan=3 width=125 style="border-radius: 0 20px 0 0;"
							bgcolor="#0080FF" valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14"
										style="border-radius: 20px 20px 20px 20px;">Option </font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=11 width=1122 bgcolor="#FFFF0D" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Student
										General details</font>
								</div>
							</div></TD>
						<TD colspan=5 width=513 bgcolor="#2B2BFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										details</font>
								</div>
							</div></TD>
						<TD colspan=7 width=772 bgcolor="#FF2D2D" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Last
										School Details</font>
								</div>
							</div></TD>
						<TD colspan=6 width=617 bgcolor="#1CFF1C" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Current
										School Details</font>
								</div>
							</div></TD>
						<TD colspan=5 width=552 bgcolor="#00FFFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Father
										Genral details</font>
								</div>
							</div></TD>
						<TD colspan=6 width=772 bgcolor="#FF0DFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										Details</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=56 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">S.no</font>
								</div>
							</div></TD>
						<TD width=144 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Scholar
										no.</font>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Name</font>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">D.o.b</font>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Gender</font>
								</div>
							</div></TD>
						<TD width=133 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Nationality</font>
								</div>
							</div></TD>
						<TD width=112 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Religious</font>
								</div>
							</div></TD>
						<TD width=85 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Caste</font>
								</div>
							</div></TD>
						<TD width=115 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Category</font>
								</div>
							</div></TD>
						<TD width=86 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
									<font face="Copperplate Gothic Bold" class="ws14">Blood
										Group</font>
								</div>
							</div></TD>
						<TD width=91 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div>
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
					</TR>
					<%
						if (null != todayStudents && todayStudents.size() > 0) {
							for (StudentInfo info : todayStudents) {

								student = info.getStudent();
								parents = info.getParents();
								studentDocs = info.getStudentDocs();
								guradian = info.getGuradian();
								tDetails = info.gettDetails();
					%>
					<TR valign=top style="line-height: 8px;">
						<TD width=56><BR></TD>
						<TD width=144><BR></TD>
						<TD width=100><BR></TD>
						<TD width=100><BR></TD>
						<TD width=100><BR></TD>
						<TD width=133><BR></TD>
						<TD width=112><BR></TD>
						<TD width=85><BR></TD>
						<TD width=115><BR></TD>
						<TD width=86><BR></TD>
						<TD width=91><BR></TD>
						<TD width=101><BR></TD>
						<TD width=96><BR></TD>
						<TD width=81><BR></TD>
						<TD width=116><BR></TD>
						<TD width=119><BR></TD>
						<TD width=95><BR></TD>
						<TD width=124><BR></TD>
						<TD width=125><BR></TD>
						<TD width=122><BR></TD>
						<TD width=120><BR></TD>
						<TD width=80><BR></TD>
						<TD width=106><BR></TD>
						<TD width=82><BR></TD>
						<TD width=114><BR></TD>
						<TD width=116><BR></TD>
						<TD width=136><BR></TD>
						<TD width=120><BR></TD>
						<TD width=49><BR></TD>
						<TD width=103><BR></TD>
						<TD width=157><BR></TD>
						<TD width=138><BR></TD>
						<TD width=52><BR></TD>
						<TD width=102><BR></TD>
						<TD width=108><BR></TD>
						<TD width=125><BR></TD>
						<TD width=137><BR></TD>
						<TD width=166><BR></TD>
						<TD width=111><BR></TD>
						<TD width=125><BR></TD>
						<TD width=125><BR></TD>
					</TR>


					<TR valign=top>
						<TD width=56 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getId()%>
								</div>
							</div></TD>
						<TD width=144 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getScholarNo()%>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getName()%>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getDobFigure()%>
								</div>
							</div></TD>
						<TD width=100 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getGender()%>
								</div>
							</div></TD>
						<TD width=133 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getNationality()%>
								</div>
							</div></TD>
						<TD width=112 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getReligion()%>
								</div>
							</div></TD>
						<TD width=85 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getCaste()%>
								</div>
							</div></TD>
						<TD width=115 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getCategory()%>
								</div>
							</div></TD>
						<TD width=86 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getBloodGroup()%>
								</div>
							</div></TD>
						<TD width=91 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getMotherTounge()%>
								</div>
							</div></TD>
						<TD width=101 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getAdharNo()%>
								</div>
							</div></TD>
						<TD width=96 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getSssmiNo()%>
								</div>
							</div></TD>
						<TD width=81 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getBankAccNo()%>
								</div>
							</div></TD>
						<TD width=116 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getIfscCode()%>
								</div>
							</div></TD>
						<TD width=119 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getBankName()%>
								</div>
							</div></TD>
						<TD width=95 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getLastSchoolName()%>
								</div>
							</div></TD>
						<TD width=124 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getLastClassAdmission()%>
								</div>
							</div></TD>
						<TD width=125 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getLastSessionAdmission()%>
								</div>
							</div></TD>
						<TD width=122 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getLastSessionLeave()%>
								</div>
							</div></TD>
						<TD width=120 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getLastStudyMedium()%>
								</div>
							</div></TD>
						<TD width=80 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getPassedClass()%>
								</div>
							</div></TD>
						<TD width=106 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getPercentage()%>
								</div>
							</div></TD>
						<TD width=82 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getCurrentSchoolName()%>
								</div>
							</div></TD>
						<TD width=114 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getAdmissionDate()%>
								</div>
							</div></TD>
						<TD width=116 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getAdmissionSession()%>
								</div>
							</div></TD>
						<TD width=136 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getAdmissionClass()%>
								</div>
							</div></TD>
						<TD width=120 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getStudyMedium()%>
								</div>
							</div></TD>
						<TD width=49 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=student.getRte()%>
								</div>
							</div></TD>
						<TD width=103 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=parents.getFatherName()%>
								</div>
							</div></TD>
						<TD width=157 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=parents.getFatherQualification()%>
								</div>
							</div></TD>
						<TD width=138 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=parents.getFatherDesignation()%>
								</div>
							</div></TD>
						<TD width=52 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=parents.getFatherAge()%>
								</div>
							</div></TD>
						<TD width=102 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center>
									<%=parents.getFatherIncome()%>
								</div>
							</div></TD>
						<TD width=108 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=125 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=137 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=166 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=111 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=125 bgcolor="#FAE6D3"><div class="wpmd">
								<div align=center></div>
							</div></TD>
						<TD width=125 bgcolor="#FAE6D3"><BR></TD>
					</TR>
					<%
						}
						}
					%>
				</TABLE>
			</div>
		</div>
	</div>

	<div id="shape2"
		style="position: absolute; overflow: hidden; left: 10px; top: 93px; width: 256px; height: 242px; z-index: 8; box-shadow: 5px 5px grey; border-radius: 20px 20px 20px 20px !important;">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape10602249.gif">
	</div>

	<div id="text4"
		style="position: absolute; overflow: hidden; left: 19px; top: 100px; width: 241px; height: 30px; z-index: 9">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B>Search
						Student</B></font>
			</div>
		</div>
	</div>

	<div id="text2"
		style="position: absolute; overflow: hidden; left: 20px; top: 162px; width: 241px; height: 25px; z-index: 10">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Name</font>
			</div>
		</div>
	</div>

	<div id="text5"
		style="position: absolute; overflow: hidden; left: 20px; top: 258px; width: 241px; height: 25px; z-index: 11">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Scholar no.</font>
			</div>
		</div>
	</div>

	<%
		if ("name".equals(type)) {
	%>
	<input name="searchstudent" id="nameSearch" type="text"
		value="<%=key%>"
		style="position: absolute; width: 220px; left: 30px; top: 196px; z-index: 12">
	<% }else { %>
	<input name="searchstudent" id="nameSearch" type="text"
		style="position: absolute; width: 220px; left: 30px; top: 196px; z-index: 12">
	<%} %>

	<%if("scholarNo".equals(type)){ %>
	<input name="formtext2" type="text" id="scholarNoSearch"
		value="<%=key %>"
		style="position: absolute; width: 220px; left: 30px; top: 296px; z-index: 13">
	<% }else{  %>
	<input name="formtext2" type="text" id="scholarNoSearch"
		style="position: absolute; width: 220px; left: 30px; top: 296px; z-index: 13">
	<%} %>

	<div id="text3"
		style="position: absolute; overflow: hidden; left: 366px; top: 49px; width: 320px; height: 30px; z-index: 14">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B>ADMISSION
						DESK</B></font>
			</div>
		</div>
	</div>

	<form id="searchForm" method="get" action="getStudent">
		<input type="hidden" value="" name="key" id="searchKey"> <input
			type="hidden" value="" name="search" id="searchParam"> <input
			type="hidden" value="natkhat001" name="franchise" id="franchise">
	</form>

	<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
	<script src="<%=appUrl %>natkhat/js/adminDash.js"></script>
</body>
</html>
