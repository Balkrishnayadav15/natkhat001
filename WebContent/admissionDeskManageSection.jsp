<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*, com.orange.model.*, com.orange.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="Web Page Maker">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
table {
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}
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
		Map<String, Map<String, Integer>> classSectionCount =  (Map<String, Map<String, Integer>>) request.getAttribute("CLASS_COUNT");
		Map<String, Integer> preNursery = null;
		Map<String, Integer> nursery = null;
		Map<String, Integer> kg1 = null;
		Map<String, Integer> kg2 = null;
		Map<String, Integer> total = null;
		
		
		String updateMsg = (String)request.getAttribute("UPDATE_MSG");
		List<StudentInfo> studentList = (List<StudentInfo>)request.getAttribute("STUDENT_LIST");
		
		if (null != classSectionCount) {
				preNursery =  classSectionCount.get("Pre-Nursery");
				nursery = classSectionCount.get("Nursery");
				kg1 =  classSectionCount.get("K.G.I");
				kg2 =  classSectionCount.get("K.G.II");
				total = classSectionCount.get("TOTAL");
		}

		String key = (String) request.getAttribute("KEY");
		String type = (String) request.getAttribute("TYPE");
		
		String sClass = null;
		if(null != type && "sClass".equals(type)){
			sClass = key;
		}
	%>
	<div id="shape3"
		style="position: absolute; overflow: hidden; left: 777px; top: 94px; width: 256px; height: 260px; z-index: 0; box-shadow: 5px 5px grey; border-radius: 20px 20px 20px 20px !important;">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape11868197.gif">
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

	<!-- <div id="art1" style="position:absolute; overflow:hidden; left:398px; top:31px; width:258px; height:38px; z-index:2"><img border=0 alt="Admission Desk" src="<%=appUrl %>natkhat/images/art9958589.gif"></div> -->

	<div id="text1"
		style="position: absolute; overflow: hidden; left: 28px; top: 67px; width: 93px; height: 24px; z-index: 3">
		<div class="wpmd">
			<div>
				<font face="Copperplate Gothic Bold" class="ws14">Session </font>
			</div>
		</div>
	</div>

	<select name="formselect1"
		style="position: absolute; left: 118px; top: 67px; width: 92px; z-index: 4">
		<option value="">2020-2021</option>
	</select>
	<div id="table1"
		style="position: absolute; overflow: hidden; left: 290px; top: 94px; width: 493px; height: 310px; z-index: 5">
		<div class="wpmd">
			<div>
				<TABLE
					style="border-radius: 20px 20px 20px 20px !important; transform: rotateX(5deg); box-shadow: 5px 5px grey; background-image: linear-gradient(yellow, orange);"
					cellspacing=3>
					<TR valign=top>
						<TD colspan=5><div class="wpmd">
								<div align=center>
									<font color="#000000" face="Copperplate Gothic Bold"
										class="ws20">Total Students </font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD colspan=5><div class="wpmd">
								<div align=center>
									<font class="ws16">
										<% if(null != total ){ 
										%>
										<%=total.get("TOTALSTU") %>
										<% } %>	
									</font>
								</div>
								
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=152><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws16"><B>Section</B></font>
								</div>
							</div></TD>
						<TD width=73><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws16"><B>A</B></font>
								</div>
							</div></TD>
						<TD width=72><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws16"><B>B</B></font>
								</div>
							</div></TD>
						<TD width=69><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws16"><B>C</B></font>
								</div>
							</div></TD>
						<TD width=69><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws16">D</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=152 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Pre-Nursery</font>
								</div>
							</div></TD>
						<TD width=73 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
										<% if(null != preNursery && preNursery.containsKey("A")){ 
										%>
										<%=preNursery.get("A") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=72 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != preNursery && preNursery.containsKey("B")){ 
										%>
										<%=preNursery.get("B") %>
										<% } %>	</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != preNursery && preNursery.containsKey("C")){ 
										%>
										<%=preNursery.get("C") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">
									<% if(null != preNursery && preNursery.containsKey("D")){ 
										%>
										<%=preNursery.get("D") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=152 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">Nursery</font>
								</div>
							</div></TD>
						<TD width=73 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
										<% if(null != nursery && nursery.containsKey("A")){ 
										%>
										<%=nursery.get("A") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=72 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != nursery && nursery.containsKey("B")){ 
										%>
										<%=nursery.get("B") %>
										<% } %>	</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != nursery && nursery.containsKey("C")){ 
										%>
										<%=nursery.get("C") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">
									<% if(null != nursery && nursery.containsKey("D")){ 
										%>
										<%=nursery.get("D") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=152 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">K.G.I</font>
								</div>
							</div></TD>
						<TD width=73 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
										<% if(null != kg1 && kg1.containsKey("A")){ 
										%>
										<%=kg1.get("A") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=72 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != kg1 && kg1.containsKey("B")){ 
										%>
										<%=kg1.get("B") %>
										<% } %>	</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != kg1 && kg1.containsKey("C")){ 
										%>
										<%=kg1.get("C") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">
									<% if(null != kg1 && kg1.containsKey("D")){ 
										%>
										<%=kg1.get("D") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
					</TR>
					<TR valign=top>
						<TD width=152 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">K.G.II</font>
								</div>
							</div></TD>
						<TD width=73 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
										<% if(null != kg2 && kg2.containsKey("A")){ 
										%>
										<%=kg2.get("A") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=72 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != kg2 && kg2.containsKey("B")){ 
										%>
										<%=kg2.get("B") %>
										<% } %>	</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font class="ws14">
									<% if(null != kg2 && kg2.containsKey("C")){ 
										%>
										<%=kg2.get("C") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
						<TD width=69 valign=middle><div class="wpmd">
								<div align=center>
									<font face="Copperplate Gothic Bold" class="ws14">
									<% if(null != kg2 && kg2.containsKey("D")){ 
										%>
										<%=kg2.get("D") %>
										<% } %>	
									</font>
								</div>
							</div></TD>
					</TR>
				</TABLE>
			</div>
		</div>
	</div>

<% if(null != updateMsg){ %>
	<div id="table2"
		style="position: absolute; left: 8px; top: 400px; max-width: 100%; z-index: 7;">
		<label style="color:red"> <%=updateMsg %> </label>
	</div>
<% } %>
	<div id="table2"
		style="position: absolute; overflow-x: auto; left: 8px; top: 445px; max-width: 100%; z-index: 7;">
		<div class="wpmd">
			<div class="table">
				<div>
					<TABLE
						style="border-radius: 20px 20px 20px 20px !important; background-image: linear-gradient(yellow, orange);">
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
						if (null != studentList && studentList.size() > 0) {
							int i = 0;
							for (StudentInfo info : studentList) {

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
						<TD width=267>
								<select id="action_<%=student.getId()%>" onchange="callSectionModal('<%=student.getId()%>','<%=student.getAdmissionSection()%>','<%=student.getName()%>')">
									<option value="" >Action</option>
									<option value="section" >Set Section</option>
								</select>
						
						</TD>
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
	</div>

	<div id="shape2"
		style="position: absolute; overflow: hidden; left: 10px; top: 93px; width: 256px; height: 260px; z-index: 7; box-shadow: 5px 5px grey; border-radius: 20px 20px 20px 20px !important;">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape9958604.gif">
	</div>

	<div id="text2"
		style="position: absolute; overflow: hidden; left: 19px; top: 100px; width: 241px; height: 30px; z-index: 8">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B>Search
						Student</B></font>
			</div>
		</div>
	</div>

	<div id="text3"
		style="position: absolute; overflow: hidden; left: 20px; top: 162px; width: 241px; height: 25px; z-index: 9">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Name</font>
			</div>
		</div>
	</div>

	<div id="text4"
		style="position: absolute; overflow: hidden; left: 20px; top: 258px; width: 241px; height: 25px; z-index: 10">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16">By
					Scholar no.</font>
			</div>
		</div>
	</div>

	<input name="nameSearch" id="nameSearch" type="text" <%if ("name".equals(type)) { %>value="<%=key%>" <%} %>
		style="position: absolute; width: 220px; left: 30px; top: 196px; z-index: 11">
	<input name="scholarNoSearch"  id="scholarNoSearch" type="text" <%if ("scholarNo".equals(type)) { %>value="<%=key%>" <%} %>
		style="position: absolute; width: 220px; left: 30px; top: 296px; z-index: 12">
	
	<div id="text5"
		style="position: absolute; overflow: hidden; left: 783px; top: 105px; width: 241px; height: 30px; z-index: 14">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B>Select Class</B></font>
			</div>
		</div>
	</div>

	<select name="sClass" id="sClass"
		style="position: absolute; left: 780px; top: 194px; width: 164px; z-index: 15; border-radius: 10px;">
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
	</select>
	
	<input name="sClassSub" id="sClassSub" type="button" value="Search"
		style="position: absolute; left: 954px; top: 193px; z-index: 19">

	
	<div id="text3"
		style="position: absolute; overflow: hidden; left: 366px; top: 49px; width: 320px; height: 30px; z-index: 14">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws18"><B>ADMISSION
						DESK</B></font>
			</div>
		</div>
	</div>
	<!-- Start Enquiry Modal Modal -->
  <div id="manageSectionModal" class="modal fade"  role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content enquiry-form">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <div id="modalMsg" style="display:none"> Please Select Section before Submit </div>
                <form action="changeStudentSec" id="changeSecForm" >
                <h4><label  class="enqiry-font" style="font-weight: bold;font-size: 31px;color: #3a19bdb8;">Change Section of Students</label></h4>
               		<div class="form-group">
                        <label for="name" class="enqiry-font"> Select Section to change:</label>
                   		 		<input type="hidden"  name="key" id="searchKeySec">
                   		 		<input type="hidden"  name="search" id="searchParamSec"> 
                   		 		<input type="hidden" value="natkhat001" name="franchise">
                   		 		<input type="hidden" name="studentId" id="studentIdSec">
                   		 		<input type="hidden" name="studentName" id="studentName">
                   		 		
                   		 		<select name = "sectionDropdown" id = "sectionDropdown" >
                   		 			<option value="">Select Section</option>
                   		 			<option value="A">A</option>
                   		 			<option value="B">B</option>
                   		 			<option value="C">C</option>
                   		 			<option value="D">D</option>
                   		 		</select>
                    </div>
                   <input id="changeSection" type="button" name="changeSection" class="btn btn-lg btn-danger btn-block" value="Update Section"/>
                </form>
            </div>
        </div>
    </div>
</div>
 <!-- End Enquiry Modal Modal -->
	<form id="searchForm" method="get" action="manageStudentSec">
		<input type="hidden" value="" name="key" id="searchKey"> <input
			type="hidden" value="" name="search" id="searchParam"> <input
			type="hidden" value="natkhat001" name="franchise" id="franchise">
	</form>
	<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<script src="<%=appUrl %>natkhat/js/adminDash.js"></script>
</body>
</html>
