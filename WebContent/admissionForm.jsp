<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*, com.orange.model.*, com.orange.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="Web Page Maker">

<style type="text/css">


#mask {
  position:absolute;
  left:0;
  top:0;
  z-index:9000;
  background-color:#000;
  display:none;
}  
#boxes .window {
  position:absolute;
  left:0;
  top:0;
  width:440px;
  height:100px;
  display:none;
  z-index:9999;
  padding:20px;
  border-radius: 15px;
  text-align: center;
}
#boxes #dialog {
  width:450px; 
  min-height:100px;
  padding:10px;
  background-color:#fff;
  font-family: 'Segoe UI Light', sans-serif;
  font-size: 15pt;
  font-weight: bold;
  color: #fff;
}
.maintext{
    text-align: center;
  font-family: "Segoe UI", sans-serif;
  text-decoration: none;
}

#lorem{
	font-family: "Segoe UI", sans-serif;
	font-size: 12pt;
  text-align: left;
}
#popupfoot{
	font-family: "Segoe UI", sans-serif;
	font-size: 16pt;
  padding: 10px 20px;
}
#popupfoot a{
	text-decoration: none;
}
.agree:hover{
  background-color: #D1D1D1;
}
.popupoption:hover{
	background-color:#D1D1D1;
	color: green;
}
.popupoption2:hover{
	
	color: red;
}
.tabOther {
	display: none;
}
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
<%
		String appUrl = UrlUtil.appUrl;
%>
</head>
<body>
  <!--Start Approve Modal HTML -->
	<div id="boxes">
		<div style="top: 199.5px; left: 551.5px; display: none;" id="dialog"
			class="window">
			<div id="lorem" style="padding-top: 10px;text-align: center;margin-top: 10px;">
				<p style="color: red">Please fill all Mendatory(*) Fields.</p>
			</div>
			<div id="popupfoot"></div>
		</div>
		<div
			style="width: 1478px; font-size: 32pt; color: white; height: 602px; display: none; opacity: 0.8;"
			id="mask"></div>
	</div>
	<!--End Approve Modal HTML -->

	<div id="art1"
		style="position: absolute; overflow: hidden; left: 410px; top: 91px; width: 262px; height: 38px; z-index: 2">
		<img border=0 alt="Admission Form" src="<%=appUrl %>natkhat/images/art692504.gif">
	</div>
	<div id="hr1"
		style="position: absolute; overflow: hidden; left: 28px; top: 84px; width: 949px; height: 17px; z-index: 3">
		<hr size=3 width=949 color="#FF6600">
	</div>
	<div id="ellipse1"
		style="position: absolute; overflow: hidden; left: 13px; top: 80px; width: 20px; height: 23px; z-index: 4">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/ellipse692504.gif">
	</div>
	<div id="ellipse2"
		style="position: absolute; overflow: hidden; left: 973px; top: 80px; width: 20px; height: 23px; z-index: 5">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/ellipse692504.gif">
	</div>

	<!--[if IE]><div id="text37" style="position:absolute; overflow:hidden; left:69px; top:160px; width:181px; height:43px; z-index:5; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
	<!--[if !IE]>-->
	<div id="text37"
		style="position: absolute; overflow: hidden; left: 69px; top: 160px; width: 177px; height: 39px; z-index: 5; border: #993300 2px solid; background-color: #FF6600">
		<!--<![endif]-->
		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 6px; top: 208px; width: 955px; height: 666px; z-index: 0">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect3503361.gif">
		</div>

		<a href="#" onclick="showHide('student')"><div class="wpmd">
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Student's
					</B></font>
				</div>
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Personal
							Details</B></font>
				</div>
			</div></a>
	</div>

	<!--[if IE]><div id="text38" style="position:absolute; overflow:hidden; left:277px; top:159px; width:181px; height:43px; z-index:6; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
	<!--[if !IE]>-->
	<div id="text38"
		style="position: absolute; overflow: hidden; left: 277px; top: 159px; width: 177px; height: 39px; z-index: 6; border: #993300 2px solid; background-color: #FF6600">
		<!--<![endif]-->

		<a href="#" onclick="showHide('parents')"><div class="wpmd">
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Student's
					</B></font>
				</div>
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Parents
							Details</B></font>
				</div>
			</div></a>
	</div>

	<!--[if IE]><div id="text39" style="position:absolute; overflow:hidden; left:486px; top:159px; width:181px; height:43px; z-index:7; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
	<!--[if !IE]>-->
	<div id="text39"
		style="position: absolute; overflow: hidden; left: 486px; top: 159px; width: 177px; height: 39px; z-index: 7; border: #993300 2px solid; background-color: #FF6600">
		<!--<![endif]-->

		<a href="#" onclick="showHide('address')"><div class="wpmd">
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Student's
					</B></font>
				</div>
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Address
							Details</B></font>
				</div>
			</div></a>
	</div>

	<!--[if IE]><div id="text40" style="position:absolute; overflow:hidden; left:692px; top:159px; width:207px; height:43px; z-index:8; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
	<!--[if !IE]>-->
	<div id="text40"
		style="position: absolute; overflow: hidden; left: 692px; top: 159px; width: 203px; height: 39px; z-index: 8; border: #993300 2px solid; background-color: #FF6600">
		<!--<![endif]-->

		<a href="#" onclick="showHide('transport')"><div class="wpmd">
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Student's
					</B></font>
				</div>
				<div align=center>
					<font color="#FFFFFF" face="Arial Rounded MT Bold" class="ws12"><B>Transport
							Details</B></font>
				</div>
			</div></a>
	</div>

	<div id="marquee2"
		style="position: absolute; overflow: hidden; left: 161px; top: 125px; width: 659px; height: 32px; z-index: 9">
		<marquee width="659" height="32">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Arial Rounded MT Bold" class="ws14"><B>Fill
							student's details by clicking on buttons one by one.</B></font>
				</div>
			</div>
		</marquee>
	</div>
	<!-- Start Section start -->
	<div id="studentInfo" class="tab">
		<div id="roundrect1"
			style="position: absolute; overflow: hidden; left: 12px; top: 317px; width: 141px; height: 33px; z-index: 1">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect692504.gif">
		</div>

		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 6px; top: 208px; width: 985px; height: 835px; z-index: 0">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect2714713.gif">
		</div>

		<div id="text1"
			style="position: absolute; overflow: hidden; left: 26px; top: 320px; width: 125px; height: 27px; z-index: 6">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						1</font>
				</div>
			</div>
		</div>

		<div id="text2"
			style="position: absolute; overflow: hidden; left: 155px; top: 319px; width: 337px; height: 27px; z-index: 7">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Personal Details</font>
				</div>
			</div>
		</div>

		<div id="formimage1"
			style="position: absolute; left: 770px; top: 207px; z-index: 8">
			<input type="image" name="formimage1" width="150" height="150"
				src="<%=appUrl %>natkhat/images/Upload Student Photo.png">
		</div>
		<input name="scholarNo" id="scholarNo" type="text" maxlength=10
			style="position: absolute; width: 121px; left: 152px; top: 269px; z-index: 9">
		<div id="text3"
			style="position: absolute; overflow: hidden; left: 15px; top: 270px; width: 119px; height: 27px; z-index: 10">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Scholar
						No.</font>
				</div>
			</div>
		</div>

		<input name="name" id="name" type="text"
			style="position: absolute; width: 175px; left: 259px; top: 369px; z-index: 11">
		<div id="text4"
			style="position: absolute; overflow: hidden; left: 23px; top: 369px; width: 227px; height: 27px; z-index: 12">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="dobFigure" id="dobFigure" type="date"
			style="position: absolute; width: 175px; left: 259px; top: 402px; z-index: 13">
		<div id="text5"
			style="position: absolute; overflow: hidden; left: 23px; top: 402px; width: 227px; height: 27px; z-index: 14">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						DOB</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(In
						Figure) <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="dobWords" id="dobWords" type="text"
			style="position: absolute; width: 175px; left: 258px; top: 436px; z-index: 15">
		<div id="text6"
			style="position: absolute; overflow: hidden; left: 22px; top: 436px; width: 227px; height: 27px; z-index: 16">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						DOB</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(In
						Words) <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<select name="gender" id="gender"
			style="position: absolute; left: 257px; top: 473px; width: 175px; z-index: 17">
			<option value="">Select</option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
		</select>
		<div id="text7"
			style="position: absolute; overflow: hidden; left: 22px; top: 472px; width: 227px; height: 27px; z-index: 18">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Gender <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="nationality" id="nationality" type="text"
			style="position: absolute; width: 175px; left: 258px; top: 507px; z-index: 19">
		<div id="text8"
			style="position: absolute; overflow: hidden; left: 22px; top: 507px; width: 227px; height: 27px; z-index: 20">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Nationality <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="religion" id="religion" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 369px; z-index: 21">
		<div id="text9"
			style="position: absolute; overflow: hidden; left: 524px; top: 369px; width: 227px; height: 27px; z-index: 22">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Religious <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="caste"  id="caste" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 402px; z-index: 23">
		<div id="text10"
			style="position: absolute; overflow: hidden; left: 524px; top: 402px; width: 227px; height: 27px; z-index: 24">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Caste <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="category" id="category" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 436px; z-index: 25">
		<div id="text11"
			style="position: absolute; overflow: hidden; left: 523px; top: 436px; width: 227px; height: 27px; z-index: 26">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Category <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="bloodGroup" id="bloodGroup" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 472px; z-index: 30">
		<div id="text12"
			style="position: absolute; overflow: hidden; left: 523px; top: 472px; width: 227px; height: 27px; z-index: 27">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Blood
						Group</font>
				</div>
			</div>
		</div>

		<input name="motherTounge" id="motherTounge" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 507px; z-index: 28">
		<div id="text13"
			style="position: absolute; overflow: hidden; left: 523px; top: 507px; width: 227px; height: 27px; z-index: 29">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mother
						Tongue <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<div id="text14"
			style="position: absolute; overflow: hidden; left: 394px; top: 559px; width: 249px; height: 27px; z-index: 31">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Document
								Details</U></B></font>
				</div>
			</div>
		</div>

		<input name="adharNo" id="adharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 259px; top: 596px; z-index: 32">
		<div id="text15"
			style="position: absolute; overflow: hidden; left: 22px; top: 595px; width: 227px; height: 27px; z-index: 33">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No. <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="bankAccNo" id="bankAccNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 629px; z-index: 34">
		<div id="text16"
			style="position: absolute; overflow: hidden; left: 23px; top: 629px; width: 227px; height: 27px; z-index: 35">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input name="bankName" id="bankName" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 663px; z-index: 36">
		<div id="text17"
			style="position: absolute; overflow: hidden; left: 22px; top: 663px; width: 227px; height: 27px; z-index: 37">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name</font>
				</div>
			</div>
		</div>

		<input name="sssmidNo" id="sssmidNo" type="text" maxlength=9
			style="position: absolute; width: 175px; left: 760px; top: 596px; z-index: 38">
		<div id="text18"
			style="position: absolute; overflow: hidden; left: 524px; top: 596px; width: 227px; height: 27px; z-index: 39">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Id</font>
				</div>
			</div>
		</div>

		<input name="ifscCode" id="ifscCode" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 629px; z-index: 40">
		<div id="text19"
			style="position: absolute; overflow: hidden; left: 524px; top: 629px; width: 227px; height: 27px; z-index: 41">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Branch
						IFSC Code</font>
				</div>
			</div>
		</div>

		<div id="text20"
			style="position: absolute; overflow: hidden; left: 97px; top: 720px; width: 269px; height: 27px; z-index: 42">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Last
								School Details</U></B></font>
				</div>
			</div>
		</div>

		<input name="lastSchoolName" id="lastSchoolName" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 761px; z-index: 44">
		<div id="text22"
			style="position: absolute; overflow: hidden; left: 22px; top: 760px; width: 227px; height: 27px; z-index: 45">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Last
						School Name</font>
				</div>
			</div>
		</div>

		<input name="lastClassAdmission" id="lastClassAdmission" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 794px; z-index: 46">
		<div id="text23"
			style="position: absolute; overflow: hidden; left: 23px; top: 794px; width: 227px; height: 27px; z-index: 47">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Class
						of Admission</font>
				</div>
			</div>
		</div>

		<input name="lastSessionAdmission" id="lastSessionAdmission" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 828px; z-index: 48">
		<div id="text24"
			style="position: absolute; overflow: hidden; left: 22px; top: 828px; width: 227px; height: 27px; z-index: 49">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						Of Admission</font>
				</div>
			</div>
		</div>

		<input name="lastSessionLeave"  id="lastSessionLeave" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 861px; z-index: 50">
		<div id="text25"
			style="position: absolute; overflow: hidden; left: 22px; top: 860px; width: 227px; height: 27px; z-index: 51">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						of Leave</font>
				</div>
			</div>
		</div>

		<input name="lastStudyMedium" id="lastStudyMedium" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 894px; z-index: 52">
		<div id="text26"
			style="position: absolute; overflow: hidden; left: 22px; top: 894px; width: 227px; height: 27px; z-index: 53">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Medium
						of Study</font>
				</div>
			</div>
		</div>

		<input name="passedClass" id="passedClass" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 928px; z-index: 54">
		<div id="text27"
			style="position: absolute; overflow: hidden; left: 22px; top: 928px; width: 227px; height: 27px; z-index: 55">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Passed
						Class</font>
				</div>
			</div>
		</div>
		<input name="percentage" id="percentage" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 960px; z-index: 67">
		<div id="text34"
			style="position: absolute; overflow: hidden; left: 22px; top: 960px; width: 227px; height: 27px; z-index: 68">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">With
						Percentage</font>
				</div>
			</div>
		</div>

		<div id="text21"
			style="position: absolute; overflow: hidden; left: 597px; top: 720px; width: 317px; height: 27px; z-index: 43">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Current
								School Details</U></B></font>
				</div>
			</div>
		</div>
		<input name="currentSchoolName" id="currentSchoolName" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 761px; z-index: 56">
		<div id="text28"
			style="position: absolute; overflow: hidden; left: 521px; top: 760px; width: 227px; height: 27px; z-index: 57">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Current
						School Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="admissionDate" id="admissionDate" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 758px; top: 794px; z-index: 58">
		<div id="text29"
			style="position: absolute; overflow: hidden; left: 522px; top: 794px; width: 227px; height: 27px; z-index: 59">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Date
						of Admission <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="admissionSession" id="admissionSession" type="text"
			style="position: absolute; width: 200px; left: 757px; top: 828px; z-index: 60">
		<div id="text30"
			style="position: absolute; overflow: hidden; left: 521px; top: 828px; width: 227px; height: 27px; z-index: 61">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						of Admission </font>
				</div>
			</div>
		</div>

		<input name="admissionClass" id="admissionClass" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 861px; z-index: 62">
		<div id="text31"
			style="position: absolute; overflow: hidden; left: 521px; top: 860px; width: 227px; height: 27px; z-index: 63">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Class
						of Admission <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="studyMedium" id="studyMedium" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 894px; z-index: 64">
		<div id="text32"
			style="position: absolute; overflow: hidden; left: 522px; top: 894px; width: 227px; height: 27px; z-index: 65">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Medium
						of Study <span style="color:red">*</span></font>
				</div>
			</div>
		</div>


		<div id="formradio4"
			style="position: absolute; left: 755px; top: 934px; z-index: 71">
			<input type="radio" name="rte" id="rte" value="yes">
		</div>
		<div id="formradio5"
			style="position: absolute; left: 834px; top: 934px; z-index: 72">
			<input type="radio" name="rte" id="rte" value="no">
		</div>
		<div id="text35"
			style="position: absolute; overflow: hidden; left: 778px; top: 935px; width: 42px; height: 27px; z-index: 69">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">Yes</font>
				</div>
			</div>
		</div>

		<div id="text36"
			style="position: absolute; overflow: hidden; left: 857px; top: 935px; width: 42px; height: 27px; z-index: 70">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">No</font>
				</div>
			</div>
		</div>
		<div id="text33"
			style="position: absolute; overflow: hidden; left: 521px; top: 929px; width: 227px; height: 27px; z-index: 66">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">RTE
						Student <span style="color:red">*</span></font>
				</div>
			</div>
		</div>



		<!--[if IE]><div id="text41" style="position:absolute; overflow:hidden; left:446px; top:998px; width:102px; height:33px; z-index:78; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
		<!--[if !IE]>-->
		<div id="text41"
			style="position: absolute; overflow: hidden; left: 446px; top: 998px; width: 98px; height: 29px; z-index: 78; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->

			<a href="#" onclick="showHide('parents')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>NEXT</B></font>
					</div>
				</div></a>
		</div>
	</div>
	<!-- End Student Section start -->

	<!-- Start Parents Section start -->
	<div id="parentsSection" class="tabOther">

		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 6px; top: 208px; width: 955px; height: 666px; z-index: 0">
			<img border="0" width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect3503361.gif">
		</div>
		<!--[if !IE]>-->
		<div id="text41"
			style="position: absolute; overflow: hidden; left: 501px; top: 826px; width: 98px; height: 29px; z-index: 10; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->

			<a href="#" onclick="showHide('address')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>NEXT</B></font>
					</div>
				</div></a>
		</div>

		<!--[if IE]><div id="text42" style="position:absolute; overflow:hidden; left:339px; top:826px; width:119px; height:33px; z-index:11; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
		<!--[if !IE]>-->
		<div id="text42"
			style="position: absolute; overflow: hidden; left: 339px; top: 826px; width: 115px; height: 29px; z-index: 11; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->

			<a href="#" onclick="showHide('student')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>PREVIOUS</B></font>
					</div>
				</div></a>
		</div>

		<div id="roundrect1"
			style="position: absolute; overflow: hidden; left: 11px; top: 225px; width: 141px; height: 33px; z-index: 12">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect3705756.gif">
		</div>

		<div id="text1"
			style="position: absolute; overflow: hidden; left: 25px; top: 228px; width: 125px; height: 27px; z-index: 13">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						2</font>
				</div>
			</div>
		</div>

		<div id="text2"
			style="position: absolute; overflow: hidden; left: 154px; top: 227px; width: 337px; height: 27px; z-index: 14">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Parents Details</font>
				</div>
			</div>
		</div>

		<div id="text3"
			style="position: absolute; overflow: hidden; left: 126px; top: 275px; width: 220px; height: 27px; z-index: 15">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Father's
								Details</U></B></font>
				</div>
			</div>
		</div>

		<div id="text4"
			style="position: absolute; overflow: hidden; left: 631px; top: 275px; width: 222px; height: 27px; z-index: 16">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Mother's
								Details</U></B></font>
				</div>
			</div>
		</div>

		<input name="fatherName" id="fatherName"  type="text"
			style="position: absolute; width: 200px; left: 259px; top: 316px; z-index: 17">
		<div id="text5"
			style="position: absolute; overflow: hidden; left: 22px; top: 315px; width: 227px; height: 27px; z-index: 18">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Father's
						Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherQualification" id="fatherQualification" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 349px; z-index: 19">
		<div id="text6"
			style="position: absolute; overflow: hidden; left: 23px; top: 349px; width: 227px; height: 27px; z-index: 20">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Qualification <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherDesignation"  id="fatherDesignation" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 383px; z-index: 21">
		<div id="text7"
			style="position: absolute; overflow: hidden; left: 22px; top: 383px; width: 227px; height: 27px; z-index: 22">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Designation <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherAge" id="fatherAge" type="text" maxlength=2
			style="position: absolute; width: 200px; left: 259px; top: 416px; z-index: 23">
		<div id="text8"
			style="position: absolute; overflow: hidden; left: 22px; top: 415px; width: 227px; height: 27px; z-index: 24">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Age <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherIncome"  id="fatherIncome" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 449px; z-index: 25">
		<div id="text9"
			style="position: absolute; overflow: hidden; left: 22px; top: 449px; width: 227px; height: 27px; z-index: 26">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Monthly
						Income <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherAdharNo" id="fatherAdharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 258px; top: 483px; z-index: 27">
		<div id="text10"
			style="position: absolute; overflow: hidden; left: 22px; top: 483px; width: 227px; height: 27px; z-index: 28">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No. <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="familysssmid"  id="familysssmid" type="text" maxlength=8
			style="position: absolute; width: 200px; left: 258px; top: 515px; z-index: 29">
		<div id="text11"
			style="position: absolute; overflow: hidden; left: 22px; top: 515px; width: 227px; height: 27px; z-index: 30">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Family Id</font>
				</div>
			</div>
		</div>

		<input name="fatherMobNo" id="fatherMobNo" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 258px; top: 548px; z-index: 31">
		<div id="text12"
			style="position: absolute; overflow: hidden; left: 22px; top: 548px; width: 227px; height: 27px; z-index: 32">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No. <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="fatherAccNo"  id="fatherAccNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 581px; z-index: 33">
		<div id="text13"
			style="position: absolute; overflow: hidden; left: 22px; top: 580px; width: 227px; height: 27px; z-index: 34">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input name="fatherIfscCode" id="fatherIfscCode" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 614px; z-index: 35">
		<div id="text14"
			style="position: absolute; overflow: hidden; left: 22px; top: 614px; width: 227px; height: 27px; z-index: 36">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						IFSC Code</font>
				</div>
			</div>
		</div>

		<input name="fatherBankName" id="fatherBankName" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 648px; z-index: 37">
		<div id="text15"
			style="position: absolute; overflow: hidden; left: 22px; top: 648px; width: 227px; height: 27px; z-index: 38">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name </font>
				</div>
			</div>
		</div>

		<input name="motherName" id="motherName" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 316px; z-index: 39">
		<div id="text16"
			style="position: absolute; overflow: hidden; left: 516px; top: 315px; width: 227px; height: 27px; z-index: 40">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mother's
						Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="motherQualification"  id="motherQualification" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 349px; z-index: 41">
		<div id="text17"
			style="position: absolute; overflow: hidden; left: 517px; top: 349px; width: 227px; height: 27px; z-index: 42">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Qualification <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="motherDesignation" id="motherDesignation" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 383px; z-index: 43">
		<div id="text18"
			style="position: absolute; overflow: hidden; left: 516px; top: 383px; width: 227px; height: 27px; z-index: 44">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Designation <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="motherAge" id="motherAge" type="text" maxlength=2
			style="position: absolute; width: 200px; left: 753px; top: 416px; z-index: 45">
		<div id="text19"
			style="position: absolute; overflow: hidden; left: 516px; top: 415px; width: 227px; height: 27px; z-index: 46">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Age <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="montherIncome" id="montherIncome" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 449px; z-index: 47">
		<div id="text20"
			style="position: absolute; overflow: hidden; left: 516px; top: 449px; width: 227px; height: 27px; z-index: 48">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Monthly
						Income <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="motherAdharNo" id="motherAdharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 752px; top: 483px; z-index: 49">
		<div id="text21"
			style="position: absolute; overflow: hidden; left: 516px; top: 483px; width: 227px; height: 27px; z-index: 50">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No. <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="familysssmid" id="familysssmid" type="text" maxlength=8
			style="position: absolute; width: 200px; left: 752px; top: 515px; z-index: 51">
		<div id="text22"
			style="position: absolute; overflow: hidden; left: 516px; top: 515px; width: 227px; height: 27px; z-index: 52">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Family Id</font>
				</div>
			</div>
		</div>

		<input name="motherMobNo" id="motherMobNo" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 752px; top: 548px; z-index: 53">
		<div id="text23"
			style="position: absolute; overflow: hidden; left: 516px; top: 548px; width: 227px; height: 27px; z-index: 54">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No. <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="MotherAccNo" id="MotherAccNo" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 581px; z-index: 55">
		<div id="text24"
			style="position: absolute; overflow: hidden; left: 516px; top: 580px; width: 227px; height: 27px; z-index: 56">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input name="MotherIfscCode" id="MotherIfscCode" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 614px; z-index: 57">
		<div id="text25"
			style="position: absolute; overflow: hidden; left: 516px; top: 614px; width: 227px; height: 27px; z-index: 58">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						IFSC Code</font>
				</div>
			</div>
		</div>

		<input name="motherBankName" id="motherBankName" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 648px; z-index: 59">
		<div id="text26"
			style="position: absolute; overflow: hidden; left: 516px; top: 648px; width: 227px; height: 27px; z-index: 60">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name</font>
				</div>
			</div>
		</div>

		<div id="text27"
			style="position: absolute; overflow: hidden; left: 22px; top: 690px; width: 543px; height: 27px; z-index: 61">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Copperplate Gothic Bold" class="ws16"><I>In
							case of divorced, fill the gurdian details</I></font>
				</div>
			</div>
		</div>

		<input name="guardianName" id="guardianName" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 724px; z-index: 62">
		<div id="text28"
			style="position: absolute; overflow: hidden; left: 22px; top: 723px; width: 227px; height: 27px; z-index: 63">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Name</font>
				</div>
			</div>
		</div>

		<input name="guardianAdharNo" id="guardianAdharNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 757px; z-index: 64">
		<div id="text29"
			style="position: absolute; overflow: hidden; left: 23px; top: 757px; width: 227px; height: 27px; z-index: 65">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No.</font>
				</div>
			</div>
		</div>

		<input name="guardianMobileNo" id="guardianMobileNo"  type="text"
			style="position: absolute; width: 200px; left: 258px; top: 791px; z-index: 66">
		<div id="text30"
			style="position: absolute; overflow: hidden; left: 22px; top: 791px; width: 227px; height: 27px; z-index: 67">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No.</font>
				</div>
			</div>
		</div>

		<div id="text31"
			style="position: absolute; overflow: hidden; left: 516px; top: 718px; width: 227px; height: 27px; z-index: 68">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Residential
						Address</font>
				</div>
			</div>
		</div>

		<textarea name="guardianresAddress" id="guardianresAddress"
			style="position: absolute; left: 516px; top: 745px; width: 433px; height: 64px; z-index: 69"></textarea>

	</div>
	<!-- END Parents Section start -->


	<!-- Start Student Documents Section start -->

	<!-- END Student Documents Section start -->

	<!-- Start of student address details-->
	<div id="addressDetails" class="tabOther">
		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 6px; top: 208px; width: 955px; height: 251px; z-index: 0">
			<img border="0" width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect3840432.gif">
		</div>


		<!--[if IE]><div id="text41" style="position:absolute; overflow:hidden; left:501px; top:405px; width:102px; height:33px; z-index:10; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
		<!--[if !IE]>-->
		<div id="text41"
			style="position: absolute; overflow: hidden; left: 501px; top: 405px; width: 98px; height: 29px; z-index: 10; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->
			<a href="#" onclick="showHide('transport')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>NEXT</B></font>
					</div>
				</div></a>
		</div>

		<!--[if IE]><div id="text42" style="position:absolute; overflow:hidden; left:339px; top:405px; width:119px; height:33px; z-index:11; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
		<!--[if !IE]>-->
		<div id="text42"
			style="position: absolute; overflow: hidden; left: 339px; top: 405px; width: 115px; height: 29px; z-index: 11; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->

			<a href="#" onclick="showHide('parents')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>PREVIOUS</B></font>
					</div>
				</div></a>
		</div>

		<div id="roundrect1"
			style="position: absolute; overflow: hidden; left: 11px; top: 222px; width: 141px; height: 33px; z-index: 12">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect3978867.gif">
		</div>

		<div id="text1"
			style="position: absolute; overflow: hidden; left: 25px; top: 225px; width: 125px; height: 27px; z-index: 13">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						3</font>
				</div>
			</div>
		</div>

		<div id="text2"
			style="position: absolute; overflow: hidden; left: 154px; top: 224px; width: 337px; height: 27px; z-index: 14">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Address Details</font>
				</div>
			</div>
		</div>

		<div id="text3"
			style="position: absolute; overflow: hidden; left: 22px; top: 275px; width: 227px; height: 27px; z-index: 15">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Residential
						Address</font>
				</div>
			</div>
		</div>

		<input name="formtext1" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 330px; z-index: 16">
		<div id="text4"
			style="position: absolute; overflow: hidden; left: 21px; top: 329px; width: 227px; height: 27px; z-index: 17">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">State
					</font>
				</div>
			</div>
		</div>

		<textarea name="textarea1"
			style="position: absolute; left: 258px; top: 275px; width: 695px; height: 46px; z-index: 18"></textarea>
		<input name="formtext2" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 361px; z-index: 19">
		<div id="text5"
			style="position: absolute; overflow: hidden; left: 21px; top: 360px; width: 227px; height: 27px; z-index: 20">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">City</font>
				</div>
			</div>
		</div>

		<input name="formtext3" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 330px; z-index: 21">
		<div id="text6"
			style="position: absolute; overflow: hidden; left: 516px; top: 329px; width: 227px; height: 27px; z-index: 22">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Area
						Zip Code</font>
				</div>
			</div>
		</div>
	</div>
	<!-- End of student address details-->
	<!-- Start Transparent Details Section start -->
	<div id="transportDetails" class="tabOther">
		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 6px; top: 208px; width: 955px; height: 330px; z-index: 0">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect4252712.gif">
		</div>

		<!--[if IE]><div id="text42" style="position:absolute; overflow:hidden; left:420px; top:494px; width:119px; height:33px; z-index:10; border:#993300 2px solid; background-color:#FF6600"><![endif]-->
		<!--[if !IE]>-->
		<div id="text42"
			style="position: absolute; overflow: hidden; left: 420px; top: 494px; width: 115px; height: 29px; z-index: 10; border: #993300 2px solid; background-color: #FF6600">
			<!--<![endif]-->

			<a href="#" onclick="showHide('address')"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws14"><B>PREVIOUS</B></font>
					</div>
				</div></a>
		</div>

		<div id="roundrect1"
			style="position: absolute; overflow: hidden; left: 11px; top: 220px; width: 141px; height: 33px; z-index: 11">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect4363737.gif">
		</div>

		<div id="text1"
			style="position: absolute; overflow: hidden; left: 25px; top: 223px; width: 125px; height: 27px; z-index: 12">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						4</font>
				</div>
			</div>
		</div>

		<div id="text2"
			style="position: absolute; overflow: hidden; left: 154px; top: 222px; width: 371px; height: 27px; z-index: 13">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Transport Details</font>
				</div>
			</div>
		</div>

		<input name="rootName" id="rootName" type="text"
			style="position: absolute; width: 200px; left: 250px; top: 330px; z-index: 14">
		<div id="text3"
			style="position: absolute; overflow: hidden; left: 13px; top: 329px; width: 227px; height: 27px; z-index: 15">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Root
						Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="stop" id="stop" type="text"
			style="position: absolute; width: 200px; left: 250px; top: 361px; z-index: 16">
		<div id="text4"
			style="position: absolute; overflow: hidden; left: 13px; top: 360px; width: 227px; height: 27px; z-index: 17">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Stop
						Name <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<div id="text5"
			style="position: absolute; overflow: hidden; left: 14px; top: 282px; width: 227px; height: 27px; z-index: 18">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mode
						of Transport <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<div id="formradio1"
			style="position: absolute; left: 246px; top: 287px; z-index: 19">
			<input type="radio" name="mode" value="self">
		</div>
		<div id="formradio2"
			style="position: absolute; left: 508px; top: 287px; z-index: 20">
			<input type="radio" name="mode" value="parents">
		</div>
		<div id="formradio3"
			style="position: absolute; left: 743px; top: 287px; z-index: 21">
			<input type="radio" name="mode" value="vehicle">
		</div>
		<div id="text6"
			style="position: absolute; overflow: hidden; left: 264px; top: 286px; width: 168px; height: 27px; z-index: 22">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Self
					</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(Will
						go alone.)</font>
				</div>
			</div>
		</div>

		<div id="text7"
			style="position: absolute; overflow: hidden; left: 527px; top: 288px; width: 168px; height: 27px; z-index: 23">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">With
						Parents </font>
				</div>
			</div>
		</div>

		<div id="text8"
			style="position: absolute; overflow: hidden; left: 766px; top: 288px; width: 168px; height: 27px; z-index: 24">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">By
						School Vehicle</font>
				</div>
			</div>
		</div>

		<input name="receiveParsonStop" id="receiveParsonStop" type="text"
			style="position: absolute; width: 200px; left: 249px; top: 394px; z-index: 25">
		<div id="text9"
			style="position: absolute; overflow: hidden; left: 12px; top: 393px; width: 227px; height: 46px; z-index: 26">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Person
						Take or Recieve at Stop <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		<input name="receivePersonSchool"  id="receivePersonSchool" type="text"
			style="position: absolute; width: 200px; left: 249px; top: 442px; z-index: 27">
		<div id="text10"
			style="position: absolute; overflow: hidden; left: 12px; top: 441px; width: 227px; height: 46px; z-index: 28">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Person
						Take or Recieve at School <span style="color:red">*</span></font>
				</div>
			</div>
		</div>

		

		<!--[if IE]><div id="text12" style="position:absolute; overflow:hidden; left:339px; top:581px; width:287px; height:28px; z-index:30; border:#000000 1px solid; background-color:#808080"><![endif]-->
		<!--[if !IE]>-->
		<div id="text12"
			style="position: absolute; overflow: hidden; left: 339px; top: 581px; width: 285px; height: 26px; z-index: 30; border: #000000 1px solid; background-color: #808080">
			<!--<![endif]-->

			<a href="#" onclick="reviewAllField()"><div class="wpmd">
					<div align=center>
						<font color="#000000" face="Comic Sans MS" class="ws12"><B>CLICK
								TO SEE COMPLETE FORM</B></font>
					</div>
				</div></a>
		</div>


	</div>
	<!-- END Transparent Details Section start -->


	<!-- Start Review details Section start -->
	<div id="reviewData" class="tabOther">
	 <form id="admissionForm" action="natkhat/admin/admission" method="POST">
	 
	 <input type="hidden" name="franchise" value ="natkhat001">
		<div id="roundrect1"
			style="position: absolute; overflow: hidden; left: 12px; top: 256px; width: 141px; height: 33px; z-index: 0">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect5050235.gif">
		</div>

		<div id="text1"
			style="position: absolute; overflow: hidden; left: 26px; top: 259px; width: 125px; height: 27px; z-index: 5">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						1</font>
				</div>
			</div>
		</div>

		<div id="text2"
			style="position: absolute; overflow: hidden; left: 155px; top: 258px; width: 337px; height: 27px; z-index: 6">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Personal Details</font>
				</div>
			</div>
		</div>

		<div id="formimage1"
			style="position: absolute; left: 759px; top: 129px; z-index: 7">
			<input type="image" name="formimage1" width="150" height="150"
				src="<%=appUrl %>natkhat/images/Upload Student Photo.png">
		</div>
		<div id="marquee1"
			style="position: absolute; overflow: hidden; left: 743px; top: 272px; width: 187px; height: 32px; z-index: 8">
			<marquee width="187" height="32">
				<div class="wpmd">
					<div>
						<font color="#969696" face="Comic Sans MS" class="ws14">Double
							Click to Upload</font>
					</div>
				</div>
			</marquee>
		</div>

		<input name="scholarNo"  id="cscholarNo" type="text" maxlength=10
			style="position: absolute; width: 121px; left: 152px; top: 208px; z-index: 9">
		<div id="text3"
			style="position: absolute; overflow: hidden; left: 15px; top: 209px; width: 119px; height: 27px; z-index: 10">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Scholar
						No.</font>
				</div>
			</div>
		</div>

		<input name="name" id="cname" type="text"
			style="position: absolute; width: 175px; left: 259px; top: 308px; z-index: 11">
		<div id="text4"
			style="position: absolute; overflow: hidden; left: 23px; top: 308px; width: 227px; height: 27px; z-index: 12">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						Name</font>
				</div>
			</div>
		</div>

		<input name="dobFigure" id="cdobFigure" type="text"
			style="position: absolute; width: 175px; left: 259px; top: 341px; z-index: 13">
		<div id="text5"
			style="position: absolute; overflow: hidden; left: 23px; top: 341px; width: 227px; height: 27px; z-index: 14">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						DOB</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(In
						Figure)</font>
				</div>
			</div>
		</div>

		<input name="dobWords" id="cdobWords" type="text"
			style="position: absolute; width: 175px; left: 259px; top: 374px; z-index: 15">
		<div id="text6"
			style="position: absolute; overflow: hidden; left: 22px; top: 375px; width: 227px; height: 27px; z-index: 16">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Student
						DOB</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(In
						Words)</font>
				</div>
			</div>
		</div>

		<select name="gender" id="cgender"
			style="position: absolute; left: 257px; top: 412px; width: 175px; z-index: 17">
			<option value="">Select</option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
		</select>
		<div id="text7"
			style="position: absolute; overflow: hidden; left: 22px; top: 411px; width: 227px; height: 27px; z-index: 18">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Gender</font>
				</div>
			</div>
		</div>

		<input name="nationality" id="cnationality"  type="text"
			style="position: absolute; width: 175px; left: 258px; top: 446px; z-index: 19">
		<div id="text8"
			style="position: absolute; overflow: hidden; left: 22px; top: 446px; width: 227px; height: 27px; z-index: 20">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Nationality</font>
				</div>
			</div>
		</div>

		<input name="religion" id="creligion" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 308px; z-index: 21">
		<div id="text9"
			style="position: absolute; overflow: hidden; left: 524px; top: 308px; width: 227px; height: 27px; z-index: 22">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Religious</font>
				</div>
			</div>
		</div>

		<input name="caste"  id="ccaste" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 341px; z-index: 23">
		<div id="text10"
			style="position: absolute; overflow: hidden; left: 524px; top: 341px; width: 227px; height: 27px; z-index: 24">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Caste</font>
				</div>
			</div>
		</div>

		<input name="category" id="ccategory" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 375px; z-index: 25">
		<div id="text11"
			style="position: absolute; overflow: hidden; left: 523px; top: 375px; width: 227px; height: 27px; z-index: 26">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Category</font>
				</div>
			</div>
		</div>

		<div id="text12"
			style="position: absolute; overflow: hidden; left: 523px; top: 411px; width: 227px; height: 27px; z-index: 27">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Blood
						Group</font>
				</div>
			</div>
		</div>

		<input name="motherTounge" id="cmotherTounge" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 446px; z-index: 28">
		<div id="text13"
			style="position: absolute; overflow: hidden; left: 523px; top: 446px; width: 227px; height: 27px; z-index: 29">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mother
						Tongue</font>
				</div>
			</div>
		</div>

		<input name="bloodGroup"  id="cbloodGroup" type="text"
			style="position: absolute; width: 175px; left: 759px; top: 411px; z-index: 30">
		<div id="text14"
			style="position: absolute; overflow: hidden; left: 394px; top: 498px; width: 249px; height: 27px; z-index: 31">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Document
								Details</U></B></font>
				</div>
			</div>
		</div>

		<input name="adharNo" id="cadharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 259px; top: 535px; z-index: 32">
		<div id="text15"
			style="position: absolute; overflow: hidden; left: 22px; top: 534px; width: 227px; height: 27px; z-index: 33">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No.</font>
				</div>
			</div>
		</div>

		<input name="bankAccNo" id="cbankAccNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 568px; z-index: 34">
		<div id="text16"
			style="position: absolute; overflow: hidden; left: 23px; top: 568px; width: 227px; height: 27px; z-index: 35">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input name="bankName" id="cbankName" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 602px; z-index: 36">
		<div id="text17"
			style="position: absolute; overflow: hidden; left: 22px; top: 602px; width: 227px; height: 27px; z-index: 37">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name</font>
				</div>
			</div>
		</div>

		<input name="sssmidNo" id="csssmidNo" type="text" maxlength=9
			style="position: absolute; width: 175px; left: 760px; top: 535px; z-index: 38">
		<div id="text18"
			style="position: absolute; overflow: hidden; left: 524px; top: 535px; width: 227px; height: 27px; z-index: 39">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Id</font>
				</div>
			</div>
		</div>

		<input name="ifscCode" id="cifscCode" type="text"
			style="position: absolute; width: 175px; left: 760px; top: 568px; z-index: 40">
		<div id="text19"
			style="position: absolute; overflow: hidden; left: 524px; top: 568px; width: 227px; height: 27px; z-index: 41">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Branch
						IFSC Code</font>
				</div>
			</div>
		</div>

		<div id="text20"
			style="position: absolute; overflow: hidden; left: 97px; top: 659px; width: 269px; height: 27px; z-index: 42">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Last
								School Details</U></B></font>
				</div>
			</div>
		</div>

		<div id="text21"
			style="position: absolute; overflow: hidden; left: 597px; top: 659px; width: 317px; height: 27px; z-index: 43">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Current
								School Details</U></B></font>
				</div>
			</div>
		</div>

		<input name="lastSchoolName" id="clastSchoolName" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 700px; z-index: 44">
		<div id="text22"
			style="position: absolute; overflow: hidden; left: 22px; top: 699px; width: 227px; height: 27px; z-index: 45">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Last
						School Name</font>
				</div>
			</div>
		</div>

		<input name="lastClassAdmission" id="clastClassAdmission" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 733px; z-index: 46">
		<div id="text23"
			style="position: absolute; overflow: hidden; left: 23px; top: 733px; width: 227px; height: 27px; z-index: 47">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Class
						of Admission</font>
				</div>
			</div>
		</div>

		<input name="lastSessionAdmission"  id="clastSessionAdmission" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 767px; z-index: 48">
		<div id="text24"
			style="position: absolute; overflow: hidden; left: 22px; top: 767px; width: 227px; height: 27px; z-index: 49">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						Of Admission</font>
				</div>
			</div>
		</div>

		<input name="lastSessionLeave" id="clastSessionLeave" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 800px; z-index: 50">
		<div id="text25"
			style="position: absolute; overflow: hidden; left: 22px; top: 799px; width: 227px; height: 27px; z-index: 51">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						of Leave</font>
				</div>
			</div>
		</div>

		<input name="lastStudyMedium" id="clastStudyMedium" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 833px; z-index: 52">
		<div id="text26"
			style="position: absolute; overflow: hidden; left: 22px; top: 833px; width: 227px; height: 27px; z-index: 53">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Medium
						of Study</font>
				</div>
			</div>
		</div>

		<input name="passedClass" id="cpassedClass" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 867px; z-index: 54">
		<div id="text27"
			style="position: absolute; overflow: hidden; left: 22px; top: 867px; width: 227px; height: 27px; z-index: 55">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Passed
						Class</font>
				</div>
			</div>
		</div>

		<input name="currentSchoolName" id="ccurrentSchoolName" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 700px; z-index: 56">
		<div id="text28"
			style="position: absolute; overflow: hidden; left: 521px; top: 699px; width: 227px; height: 27px; z-index: 57">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Current
						School Name</font>
				</div>
			</div>
		</div>

		<input name="admissionDate" id="cadmissionDate" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 758px; top: 733px; z-index: 58">
		<div id="text29"
			style="position: absolute; overflow: hidden; left: 522px; top: 733px; width: 227px; height: 27px; z-index: 59">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Date
						of Admission</font>
				</div>
			</div>
		</div>

		<input name="admissionSession" id="cadmissionSession" type="text"
			style="position: absolute; width: 200px; left: 757px; top: 767px; z-index: 60">
		<div id="text30"
			style="position: absolute; overflow: hidden; left: 521px; top: 767px; width: 227px; height: 27px; z-index: 61">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Session
						of Admission</font>
				</div>
			</div>
		</div>

		<input name="admissionClass" id="cadmissionClass" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 800px; z-index: 62">
		<div id="text31"
			style="position: absolute; overflow: hidden; left: 521px; top: 799px; width: 227px; height: 27px; z-index: 63">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Class
						of Admission</font>
				</div>
			</div>
		</div>

		<input id="cstudyMedium" name="studyMedium" type="text"
			style="position: absolute; width: 200px; left: 758px; top: 833px; z-index: 64">
		<div id="text32"
			style="position: absolute; overflow: hidden; left: 522px; top: 833px; width: 227px; height: 27px; z-index: 65">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Medium
						of Study</font>
				</div>
			</div>
		</div>

		<div id="text33"
			style="position: absolute; overflow: hidden; left: 521px; top: 868px; width: 227px; height: 27px; z-index: 66">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">RTE
						Student</font>
				</div>
			</div>
		</div>

		<input id="cpercentage" name="percentage" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 899px; z-index: 67">
		<div id="text34"
			style="position: absolute; overflow: hidden; left: 22px; top: 899px; width: 227px; height: 27px; z-index: 68">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">With
						Percentage</font>
				</div>
			</div>
		</div>

		<div id="text35"
			style="position: absolute; overflow: hidden; left: 778px; top: 874px; width: 42px; height: 27px; z-index: 69">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">Yes</font>
				</div>
			</div>
		</div>

		<div id="text36"
			style="position: absolute; overflow: hidden; left: 857px; top: 874px; width: 42px; height: 27px; z-index: 70">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">No</font>
				</div>
			</div>
		</div>

		<div id="roundrect2"
			style="position: absolute; overflow: hidden; left: 11px; top: 949px; width: 141px; height: 33px; z-index: 71">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect5050173.gif">
		</div>

		<div id="text37"
			style="position: absolute; overflow: hidden; left: 25px; top: 952px; width: 125px; height: 27px; z-index: 72">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						2</font>
				</div>
			</div>
		</div>

		<div id="text38"
			style="position: absolute; overflow: hidden; left: 154px; top: 951px; width: 337px; height: 27px; z-index: 73">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Parents Details</font>
				</div>
			</div>
		</div>

		<div id="text39"
			style="position: absolute; overflow: hidden; left: 126px; top: 999px; width: 220px; height: 27px; z-index: 74">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Father's
								Details</U></B></font>
				</div>
			</div>
		</div>

		<div id="text40"
			style="position: absolute; overflow: hidden; left: 631px; top: 999px; width: 222px; height: 27px; z-index: 75">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16"><B><U>Mother's
								Details</U></B></font>
				</div>
			</div>
		</div>

		<input id="cfatherName" name="fatherName" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1040px; z-index: 76">
		<div id="text41"
			style="position: absolute; overflow: hidden; left: 22px; top: 1039px; width: 227px; height: 27px; z-index: 77">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Father's
						Name</font>
				</div>
			</div>
		</div>

		<input id="cfatherQualification"  name="fatherQualification" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1073px; z-index: 78">
		<div id="text42"
			style="position: absolute; overflow: hidden; left: 23px; top: 1073px; width: 227px; height: 27px; z-index: 79">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Qualification</font>
				</div>
			</div>
		</div>

		<input id="cfatherDesignation" name="fatherDesignation" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 1107px; z-index: 80">
		<div id="text43"
			style="position: absolute; overflow: hidden; left: 22px; top: 1107px; width: 227px; height: 27px; z-index: 81">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Designation</font>
				</div>
			</div>
		</div>

		<input id="cfatherAge" name="fatherAge"  type="text" maxlength=2
			style="position: absolute; width: 200px; left: 259px; top: 1140px; z-index: 82">
		<div id="text44"
			style="position: absolute; overflow: hidden; left: 22px; top: 1139px; width: 227px; height: 27px; z-index: 83">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Age</font>
				</div>
			</div>
		</div>

		<input id="cfatherIncome"  name="fatherIncome"  type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1173px; z-index: 84">
		<div id="text45"
			style="position: absolute; overflow: hidden; left: 22px; top: 1173px; width: 227px; height: 27px; z-index: 85">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Monthly
						Income</font>
				</div>
			</div>
		</div>

		<input id="cfatherAdharNo" name="fatherAdharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 258px; top: 1207px; z-index: 86">
		<div id="text46"
			style="position: absolute; overflow: hidden; left: 22px; top: 1207px; width: 227px; height: 27px; z-index: 87">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No.</font>
				</div>
			</div>
		</div>

		<input id="cfamilysssmid" name="familysssmid" type="text" maxlength=8
			style="position: absolute; width: 200px; left: 258px; top: 1239px; z-index: 88">
		<div id="text53"
			style="position: absolute; overflow: hidden; left: 22px; top: 1239px; width: 227px; height: 27px; z-index: 89">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Family Id</font>
				</div>
			</div>
		</div>

		<input id="cfatherMobNo" name="fatherMobNo" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 258px; top: 1272px; z-index: 90">
		<div id="text56"
			style="position: absolute; overflow: hidden; left: 22px; top: 1272px; width: 227px; height: 27px; z-index: 91">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No.</font>
				</div>
			</div>
		</div>

		<input id="cfatherAccNo" name="fatherAccNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1305px; z-index: 92">
		<div id="text57"
			style="position: absolute; overflow: hidden; left: 22px; top: 1304px; width: 227px; height: 27px; z-index: 93">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input id="cfatherIfscCode" name="fatherIfscCode" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1338px; z-index: 94">
		<div id="text58"
			style="position: absolute; overflow: hidden; left: 22px; top: 1338px; width: 227px; height: 27px; z-index: 95">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						IFSC Code</font>
				</div>
			</div>
		</div>

		<input id="cfatherBankName" name="fatherBankName" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 1372px; z-index: 96">
		<div id="text59"
			style="position: absolute; overflow: hidden; left: 22px; top: 1372px; width: 227px; height: 27px; z-index: 97">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name</font>
				</div>
			</div>
		</div>

		<input id="cmotherName" name="motherName" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 1040px; z-index: 98">
		<div id="text47"
			style="position: absolute; overflow: hidden; left: 516px; top: 1039px; width: 227px; height: 27px; z-index: 99">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mother's
						Name</font>
				</div>
			</div>
		</div>

		<input id="cmotherQualification" name="motherQualification" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 1073px; z-index: 100">
		<div id="text48"
			style="position: absolute; overflow: hidden; left: 517px; top: 1073px; width: 227px; height: 27px; z-index: 101">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Qualification</font>
				</div>
			</div>
		</div>

		<input id="cmotherDesignation" name="motherDesignation" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 1107px; z-index: 102">
		<div id="text49"
			style="position: absolute; overflow: hidden; left: 516px; top: 1107px; width: 227px; height: 27px; z-index: 103">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Designation</font>
				</div>
			</div>
		</div>

		<input id="cmotherAge" name="motherAge" type="text" maxlength=2
			style="position: absolute; width: 200px; left: 753px; top: 1140px; z-index: 104">
		<div id="text50"
			style="position: absolute; overflow: hidden; left: 516px; top: 1139px; width: 227px; height: 27px; z-index: 105">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Age</font>
				</div>
			</div>
		</div>

		<input id="cmontherIncome" name="montherIncome" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 1173px; z-index: 106">
		<div id="text51"
			style="position: absolute; overflow: hidden; left: 516px; top: 1173px; width: 227px; height: 27px; z-index: 107">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Monthly
						Income</font>
				</div>
			</div>
		</div>

		<input id="cmotherAdharNo" name="motherAdharNo" type="text" maxlength=14
			style="position: absolute; width: 200px; left: 752px; top: 1207px; z-index: 108">
		<div id="text52"
			style="position: absolute; overflow: hidden; left: 516px; top: 1207px; width: 227px; height: 27px; z-index: 109">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No.</font>
				</div>
			</div>
		</div>

		<input id="cfamilysssmid"  name="familysssmid" type="text" maxlength=8
			style="position: absolute; width: 200px; left: 752px; top: 1239px; z-index: 110">
		<div id="text54"
			style="position: absolute; overflow: hidden; left: 516px; top: 1239px; width: 227px; height: 27px; z-index: 111">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Samagra
						Family Id</font>
				</div>
			</div>
		</div>

		<input id="cmotherMobNo" name="motherMobNo" type="text" maxlength=10
			style="position: absolute; width: 200px; left: 752px; top: 1272px; z-index: 112">
		<div id="text55"
			style="position: absolute; overflow: hidden; left: 516px; top: 1272px; width: 227px; height: 27px; z-index: 113">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No.</font>
				</div>
			</div>
		</div>

		<input id="cMotherAccNo" name="MotherAccNo" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 1305px; z-index: 114">
		<div id="text60"
			style="position: absolute; overflow: hidden; left: 516px; top: 1304px; width: 227px; height: 27px; z-index: 115">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Account No.</font>
				</div>
			</div>
		</div>

		<input id="cMotherIfscCode" name="MotherIfscCode" type="text"
			style="position: absolute; width: 200px; left: 753px; top: 1338px; z-index: 116">
		<div id="text61"
			style="position: absolute; overflow: hidden; left: 516px; top: 1338px; width: 227px; height: 27px; z-index: 117">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						IFSC Code</font>
				</div>
			</div>
		</div>

		<input id="cmotherBankName"  name="motherBankName" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 1372px; z-index: 118">
		<div id="text62"
			style="position: absolute; overflow: hidden; left: 516px; top: 1372px; width: 227px; height: 27px; z-index: 119">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Bank
						Name</font>
				</div>
			</div>
		</div>

		<div id="roundrect3"
			style="position: absolute; overflow: hidden; left: 11px; top: 1565px; width: 141px; height: 33px; z-index: 120">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect5050126.gif">
		</div>

		<div id="text63"
			style="position: absolute; overflow: hidden; left: 25px; top: 1568px; width: 125px; height: 27px; z-index: 121">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						3</font>
				</div>
			</div>
		</div>

		<div id="text64"
			style="position: absolute; overflow: hidden; left: 154px; top: 1567px; width: 337px; height: 27px; z-index: 122">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Address Details</font>
				</div>
			</div>
		</div>

		<div id="text67"
			style="position: absolute; overflow: hidden; left: 22px; top: 1618px; width: 227px; height: 27px; z-index: 123">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Residential
						Address</font>
				</div>
			</div>
		</div>

		<input id="cformtext51" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 1673px; z-index: 124">
		<div id="text65"
			style="position: absolute; overflow: hidden; left: 21px; top: 1672px; width: 227px; height: 27px; z-index: 125">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">State
					</font>
				</div>
			</div>
		</div>

		<textarea name="textarea1"
			style="position: absolute; left: 258px; top: 1618px; width: 715px; height: 46px; z-index: 126"></textarea>
		<input name="formtext50" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 1704px; z-index: 127">
		<div id="text66"
			style="position: absolute; overflow: hidden; left: 21px; top: 1703px; width: 227px; height: 27px; z-index: 128">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">City</font>
				</div>
			</div>
		</div>

		<input name="formtext52" type="text"
			style="position: absolute; width: 200px; left: 752px; top: 1673px; z-index: 129">
		<div id="text68"
			style="position: absolute; overflow: hidden; left: 516px; top: 1672px; width: 227px; height: 27px; z-index: 130">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Area
						Zip Code</font>
				</div>
			</div>
		</div>

		<div id="roundrect4"
			style="position: absolute; overflow: hidden; left: 11px; top: 1752px; width: 141px; height: 33px; z-index: 131">
			<img border=0 width="100%" height="100%" alt=""
				src="<%=appUrl %>natkhat/images/roundrect5050111.gif">
		</div>

		<div id="text69"
			style="position: absolute; overflow: hidden; left: 25px; top: 1755px; width: 125px; height: 27px; z-index: 132">
			<div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Section
						4</font>
				</div>
			</div>
		</div>

		<div id="text70"
			style="position: absolute; overflow: hidden; left: 154px; top: 1754px; width: 371px; height: 27px; z-index: 133">
			<div class="wpmd">
				<div>
					<font color="#FF6600" face="Copperplate Gothic Bold" class="ws16">Student's
						Transport Details</font>
				</div>
			</div>
		</div>

		<input name="rootName" id="crootName"  type="text"
			style="position: absolute; width: 200px; left: 250px; top: 1862px; z-index: 134">
		<div id="text72"
			style="position: absolute; overflow: hidden; left: 13px; top: 1861px; width: 227px; height: 27px; z-index: 135">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Root
						Name</font>
				</div>
			</div>
		</div>

		<input name="stop" id="cstop" type="text"
			style="position: absolute; width: 200px; left: 250px; top: 1893px; z-index: 136">
		<div id="text73"
			style="position: absolute; overflow: hidden; left: 13px; top: 1892px; width: 227px; height: 27px; z-index: 137">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Stop
						Name</font>
				</div>
			</div>
		</div>

		<div id="text71"
			style="position: absolute; overflow: hidden; left: 14px; top: 1814px; width: 227px; height: 27px; z-index: 138">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Mode
						of Transport</font>
				</div>
			</div>
		</div>

		<div id="formradio1"
			style="position: absolute; left: 246px; top: 1819px; z-index: 139">
			<input type="radio" name="cmode" value="self">
		</div>
		<div id="formradio2"
			style="position: absolute; left: 508px; top: 1819px; z-index: 140">
			<input type="radio" name="cmode" value="parents">
		</div>
		<div id="formradio3"
			style="position: absolute; left: 743px; top: 1819px; z-index: 141">
			<input type="radio" name="cmode" value="vehicle"> 
		</div>
		<div id="text74"
			style="position: absolute; overflow: hidden; left: 264px; top: 1818px; width: 168px; height: 27px; z-index: 142">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Self
					</font><font color="#000000" face="Arial Rounded MT Bold" class="ws12">(Will
						go alone.)</font>
				</div>
			</div>
		</div>

		<div id="text75"
			style="position: absolute; overflow: hidden; left: 527px; top: 1820px; width: 168px; height: 27px; z-index: 143">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">With
						Parents </font>
				</div>
			</div>
		</div>

		<div id="text76"
			style="position: absolute; overflow: hidden; left: 766px; top: 1820px; width: 168px; height: 27px; z-index: 144">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws12">By
						School Vehicle</font>
				</div>
			</div>
		</div>

		<input id="creceiveParsonStop" name="receiveParsonStop" type="text"
			style="position: absolute; width: 200px; left: 249px; top: 1926px; z-index: 145">
		<div id="text77"
			style="position: absolute; overflow: hidden; left: 12px; top: 1925px; width: 227px; height: 46px; z-index: 146">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Person
						Take or Recieve at Stop</font>
				</div>
			</div>
		</div>

		<input id="creceivePersonSchool" name="receivePersonSchool" type="text"
			style="position: absolute; width: 200px; left: 249px; top: 1974px; z-index: 147">
		<div id="text78"
			style="position: absolute; overflow: hidden; left: 12px; top: 1973px; width: 227px; height: 46px; z-index: 148">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Person
						Take or Recieve at School</font>
				</div>
			</div>
		</div>

		<div id="text79"
			style="position: absolute; overflow: hidden; left: 22px; top: 1414px; width: 543px; height: 27px; z-index: 149">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Copperplate Gothic Bold" class="ws16"><I>In
							case of divorced, fill the gurdian details</I></font>
				</div>
			</div>
		</div>

		<input id="cguardianName" name="guardianName" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1448px; z-index: 150">
		<div id="text80"
			style="position: absolute; overflow: hidden; left: 22px; top: 1447px; width: 227px; height: 27px; z-index: 151">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Name</font>
				</div>
			</div>
		</div>

		<input id="cguardianAdharNo" name="guardianAdharNo" type="text"
			style="position: absolute; width: 200px; left: 259px; top: 1481px; z-index: 152">
		<div id="text81"
			style="position: absolute; overflow: hidden; left: 23px; top: 1481px; width: 227px; height: 27px; z-index: 153">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Aadhar
						Card No.</font>
				</div>
			</div>
		</div>

		<input id="cguardianMobileNo" name="guardianMobileNo" type="text"
			style="position: absolute; width: 200px; left: 258px; top: 1515px; z-index: 154">
		<div id="text82"
			style="position: absolute; overflow: hidden; left: 22px; top: 1515px; width: 227px; height: 27px; z-index: 155">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Contact
						No.</font>
				</div>
			</div>
		</div>

		<div id="text83"
			style="position: absolute; overflow: hidden; left: 516px; top: 1442px; width: 227px; height: 27px; z-index: 156">
			<div class="wpmd">
				<div>
					<font color="#000000" face="Arial Rounded MT Bold" class="ws14">Residential
						Address</font>
				</div>
			</div>
		</div>

		<textarea id="cguardianresAddress" name="guardianresAddress"
			style="position: absolute; left: 516px; top: 1469px; width: 433px; height: 64px; z-index: 157"></textarea>
		<div id="formradio4"
			style="position: absolute; left: 755px; top: 873px; z-index: 158">
			<input type="radio" name="rte">
		</div>
		<div id="formradio5"
			style="position: absolute; left: 834px; top: 873px; z-index: 159">
			<input type="radio" name="rte">
		</div>
	 </form>
	 
	 <!--[if IE]><div id="text11" style="position:absolute; overflow:hidden; left:400px; top:549px; width:157px; height:28px; z-index:29; border:#000000 1px solid; background-color:#808080"><![endif]-->
		<!--[if !IE]>-->
		<div id="text11"
			style="position: absolute; overflow: hidden; left: 400px; top: 2026px; width: 155px; height: 26px; z-index: 29; border: #000000 1px solid; background-color: #808080">
			<!--<![endif]-->

			<div class="wpmd">
				<div align=center><a href="#" onclick="submit()">
					<font color="#000000" face="Comic Sans MS" class="ws12"><B>SUBMIT
							FORM</B></font></a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- END Review details Section start -->
</body>
<script src="<%=appUrl %>natkhat/js/jquery-3.2.1.min.js"></script>
<script src="<%=appUrl %>natkhat/js/dashboard.js"></script>

</html>
