<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  
    import="java.util.*, com.orange.model.*,com.orange.util.*"
    %>
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
<%
	String appUrl = UrlUtil.appUrl;
	List<StudentInfo> docsDetailList = (ArrayList<StudentInfo>)request.getAttribute("DOC_LIST_STUDENT");
	int totalDocsSize = 0;
	if(null != docsDetailList && docsDetailList.size() > 0){
		totalDocsSize = docsDetailList.size();
	}
	String sClass = (String)request.getAttribute("CLASS");
	String sSection = (String)request.getAttribute("SECTION");
	String bName = (String)request.getAttribute("NAME");
	String bScholar = (String)request.getAttribute("SCHOLAR_NO");
	
%>
<body>
	<div id="roundrect2"
		style="position: absolute; overflow: hidden; left: 68px; top: 187px; width: 879px; height: 102px; z-index: 0">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect14015941.gif">
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

	<div id="session"
		style="position: absolute; overflow: hidden; left: 28px; top: 56px; width: 93px; height: 24px; z-index: 2">
		<div class="wpmd">
			<div>
				<font face="Copperplate Gothic Bold" class="ws14">Session </font>
			</div>
		</div>
	</div>

	<select name="session"
		style="position: absolute; left: 118px; top: 56px; width: 92px; z-index: 3">
		<option value="">2020-2021</option>
	</select>
	<div id="docsErrorMsg"
		style="display:none;position: absolute; overflow: hidden; left: 634px; top: 305px; width: 1564px; height: 206px; z-index: 4;">
		<label style="color: red;"><b> Please select atleat one
				search parameter for search.</b></label>
	</div>
	<div id="docsErrorClassMsg"
		style="display:none;position: absolute; overflow: hidden; left: 634px; top: 305px; width: 1564px; height: 206px; z-index: 4;">
		<label style="color: red;"><b> Please first Select Class before Select Section.</b></label>
	</div>
	<div id="sdainformation"
		style="position: absolute; overflow: auto; left: 3px; top: 364px; width: 100%; z-index: 4">
		<div class="wpmd">
			<div>
				<TABLE bgcolor="#FFFFFF" border=1 bordercolorlight="#C0C0C0"
					bordercolordark="#808080">
					<TR valign=top>
						<TD colspan=11 bgcolor="#FF6600" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14"><B>Student's
											Documents Availibility Information</B></font>
								</div>
							</div></TD>
						<TD rowspan=3 width=104 bgcolor="#0080FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Option
									</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=3 width=306 bgcolor="#FFFF0D" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Student
										General details</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#2B2BFF" valign=middle><BR></TD>
						<TD width=132 bgcolor="#2B2BFF" valign=middle><BR></TD>
						<TD colspan=6 bgcolor="#2B2BFF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws12">Documents
										details</font>
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
						<TD width=94 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Scholar
										no.</font>
								</div>
							</div></TD>
						<TD width=162 bgcolor="#FFFF37" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Name</font>
								</div>
							</div></TD>
						<TD width=130 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Birth</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Certificate</font>
								</div>
							</div></TD>
						<TD width=132 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Caste</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Certificate</font>
								</div>
							</div></TD>
						<TD width=113 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Aadhar
										card no.</font>
								</div>
							</div></TD>
						<TD width=127 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Samagra
										ID</font>
								</div>
							</div></TD>
						<TD width=140 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Bank
										Dtails</font>
								</div>
							</div></TD>
						<TD width=140 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">TC </font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Recieved</font>
								</div>
							</div></TD>
						<TD width=140 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">TC</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Issused</font>
								</div>
							</div></TD>
						<TD width=140 bgcolor="#6666FF" valign=middle><div
								class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Last
										Class</font>
								</div>
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Marksheet</font>
								</div>
							</div></TD>
					</TR>
				<%
					if(null != docsDetailList && docsDetailList.size() > 0){
					int i = 0;
					for (StudentInfo info : docsDetailList) {
						Student student = info.getStudent();
						StudentDocs studentDocs = info.getStudentDocs();
					if(i%2 == 0){
				%>
					<TR valign="center" >
				<%} else{ %>
					<TR valign="center" style="background-color:#FFE8C4" >
				<% } %>
						<TD width=56><%=student.getId()%></TD>
						<TD width=94><%=student.getScholarNo()%></TD>
						<TD width=162><%=student.getName()%></TD>
						<TD width=130><%=studentDocs.getStudentDob()%></TD>
						<TD width=132><%=studentDocs.getCasteCertificate()%></TD>
						<TD width=113><%=studentDocs.getAdharCard()%></TD>
						<TD width=127><%=studentDocs.getSssmid()%></TD>
						<TD width=140><%=studentDocs.getDocsBankAccNo()%></TD>
						<TD width=140><%=studentDocs.getTcReceived()%></TD>
						<TD width=140><%=studentDocs.getTcIssued()%></TD>
						<TD width=140><%=studentDocs.getMarkSheet()%></TD>
						<TD width=104></TD>
					</TR>
				<%
					i++;}}
				%>	
				</TABLE>
			</div>
		</div>
	</div>

	<div id="sStudent"
		style="position: absolute; overflow: hidden; left: 390px; top: 94px; width: 241px; height: 30px; z-index: 5">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B><U>Search
							Student</U></B></font>
			</div>
		</div>
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 149px; top: 227px; width: 132px; height: 25px; z-index: 6">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Name</font>
			</div>
		</div>
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 484px; top: 227px; width: 190px; height: 25px; z-index: 7">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Scholar no.</font>
			</div>
		</div>
	</div>


	<div id="roundrect1"
		style="position: absolute; overflow: hidden; left: 199px; top: 126px; width: 624px; height: 48px; z-index: 10">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect13760192.gif">
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 216px; top: 139px; width: 178px; height: 25px; z-index: 11">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">Select
					Class</font>
			</div>
		</div>
	</div>

	<div id=""
		style="position: absolute; overflow: hidden; left: 496px; top: 139px; width: 190px; height: 25px; z-index: 12">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">Select
					Section</font>
			</div>
		</div>
	</div>

	<form id="documentForm" action="clrkSearchDocs">
		
		<select name="sClass" id="sClass" style="position: absolute; width: 98px; left: 376px; top: 139px; z-index: 13">
			<option value=""  <% if(null == sClass){ %>selected<% } %>>Select Class</option>
			<option value="Pre-Nursery" <% if(null != sClass && "Pre-Nursery".equals(sClass)){ %>selected<% } %>>Pre-Nursery</option>
			<option value="Nursery" <% if(null != sClass && "Nursery".equals(sClass)){ %>selected<% } %>>Nursery</option>
			<option value="K.G.I" <% if(null != sClass && "K.G.I".equals(sClass)){ %>selected<% } %>>K.G.I</option>
			<option value="K.G.II" <% if(null != sClass && "K.G.II".equals(sClass)){ %>selected<% } %>>K.G.II</option>
		</select>
		<select name="sSection" id="sSection" style="position: absolute; width: 110px; left: 678px; top: 139px; z-index: 14">
			<option value="" <% if(null == sSection){ %>selected<% } %>>Select Section</option>
			<option value="A" <% if(null != sSection && "A".equals(sSection)){ %>selected<% } %>>A</option>
			<option value="B" <% if(null != sSection && "B".equals(sSection)){ %>selected<% } %>>B</option>
			<option value="C" <% if(null != sSection && "C".equals(sSection)){ %>selected<% } %>>C</option>
			<option value="D" <% if(null != sSection && "D".equals(sSection)){ %>selected<% } %>>D</option>
		</select>
		
		<input name="bName" id="bName" type="text" <% if(null != bName){ %>value="<%=bName %>" <% } %>
			style="position: absolute; width: 220px; left: 252px; top: 227px; z-index: 8">
		<input name="bScholar" id="bScholar" type="text" <% if(null != bScholar){ %>value="<%=bScholar %>" <% } %>
			style="position: absolute; width: 220px; left: 668px; top: 227px; z-index: 9">
		<input type="button" id="submitDocs" style="position: absolute;left: 418px;top: 303px;z-index: 16;" value="Search Student">
		<input type="button" id="refreshSearch" style="position: absolute;left: 553px;top: 303px;z-index: 16;" value="Refresh">
		<input type="hidden" name="franchise" value="natkhat001">
	</form>
	
	<div id="tStudents"
		style="position: absolute; overflow: hidden; left: 784px; top: 45px; width: 217px; height: 58px; z-index: 15">
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


	<div id="dpSheet"
		style="position: absolute; overflow: hidden; left: 236px; top: 50px; width: 511px; height: 41px; z-index: 17">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws24"><B>Documents
						Pending Sheet</B></font>
			</div>
		</div>
	</div>

    <script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
	<script src="<%=appUrl %>natkhat/js/clerk.js"></script>
</body>
</html>
