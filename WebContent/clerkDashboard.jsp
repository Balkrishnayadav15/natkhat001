<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*, com.orange.model.*,com.orange.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Clerk Dashboard</title>
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
%>
	<div id="shape1"
		style="position: absolute; overflow: hidden; left: 0px; top: 1px; width: 252px; height: 780px; z-index: 0">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape2554625.gif">
	</div>

	<div id="roundrect1"
		style="position: absolute; overflow: hidden; left: 14px; top: 0px; width: 208px; height: 197px; z-index: 1">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect2554625.gif">
	</div>
	<div id="natkhatLogo"
		style="position: absolute; overflow: hidden; left: 19px; top: -1px; width: 200px; height: 200px; z-index: 2">
		<img src="<%=appUrl %>natkhat/images/TrasprntLogo2.png" alt="" title="" border=0
			width=200 height=200>
	</div>

	<div id="uType"
		style="position: absolute; overflow: hidden; left: 0px; top: 199px; width: 238px; height: 26px; z-index: 3">
		<div class="wpmd">
			<div align=center>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16"><B>User
						Type</B></font>
			</div>
		</div>
	</div>

	<!--[if IE]><div id="text2" style="position:absolute; overflow:hidden; left:560px; top:3px; width:455px; height:43px; z-index:4; border:#FF6600 2px outset; background-color:#FFFFFF"><![endif]-->
	<!--[if !IE]>-->
	<div id="cDashboard"
		style="position: absolute; overflow: hidden; left: 560px; top: 3px; width: 451px; height: 39px; z-index: 4; border: #FF6600 2px outset; background-color: #FFFFFF">
		<!--<![endif]-->

		<div class="wpmd">
			<div align=center>
				<font color="#FF6600" face="Cooper Black" class="ws28"><B>CLERK
						DASHBOARD</B></font>
			</div>
			<div>
				<font face="Copperplate Gothic Bold" class="ws16"><BR></font>
			</div>
		</div>
	</div>

	<div id="shape2"
		style="position: absolute; overflow: hidden; left: 1237px; top: 64px; width: 109px; height: 29px; z-index: 5">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/shape2554625.gif">
	</div>

	<div id="logout"
		style="position: absolute; overflow: hidden; left: 1243px; top: 68px; width: 77px; height: 21px; z-index: 6">
		<div class="wpmd">
			<div>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws12"><B>Logout</B></font>
			</div>
		</div>
	</div>

	<div id="image2"
		style="position: absolute; overflow: hidden; left: 1318px; top: 63px; width: 27px; height: 29px; z-index: 7">
		<img src="<%=appUrl %>natkhat/images/Logouticon.png" alt="" title="" border=0
			width=27 height=29>
	</div>

	<div id="hr1"
		style="position: absolute; overflow: hidden; left: 336px; top: 124px; width: 1011px; height: 17px; z-index: 8">
		<hr size=2 width=1011 color="#FF6600">
	</div>

	<div id="image3"
		style="position: absolute; overflow: hidden; left: 266px; top: 90px; width: 62px; height: 62px; z-index: 9">
		<img src="<%=appUrl %>natkhat/images/attendanceSheet2.png" alt="" title=""
			border=0 width=62 height=62>
	</div>

	<div id="aSheet2"
		style="position: absolute; overflow: hidden; left: 335px; top: 101px; width: 290px; height: 33px; z-index: 10">
		<div class="wpmd">
			<div>
				<font color="#FF6600" face="Copperplate Gothic Bold" class="ws20">Attendance
					Sheet</font>
			</div>
		</div>
	</div>

	<div id="roundrect2"
		style="position: absolute; overflow: hidden; left: 12px; top: 226px; width: 209px; height: 37px; z-index: 11">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect2554625.gif">
	</div>

	<div id="utClerk"
		style="position: absolute; overflow: hidden; left: 87px; top: 232px; width: 80px; height: 22px; z-index: 12">
		<div class="wpmd">
			<div>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws14"><B>Clerk</B></font>
			</div>
		</div>
	</div>

	<div id="image7"
		style="position: absolute; overflow: hidden; left: -1px; top: 276px; width: 45px; height: 45px; z-index: 13">
		<img src="<%=appUrl %>natkhat/images/attendanceSheet1.png" alt="" title=""
			border=0 width=45 height=45>
	</div>

	<div id="aSheet1"
		style="position: absolute; overflow: hidden; left: 53px; top: 277px; width: 162px; height: 49px; z-index: 14">
		<div class="wpmd">
			<div>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Attendance
				</font>
			</div>
			<div align=center>
				<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Sheet</font>
			</div>
		</div>
	</div>

	<div id="doc"
		style="position: absolute; overflow: hidden; left: 53px; top: 347px; width: 157px; height: 27px; z-index: 15">
		<a href="clerkDashboardDocuments.jsp"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Documents</font>
				</div>
			</div></a>
	</div>

	<div id="image8"
		style="position: absolute; overflow: hidden; left: 0px; top: 338px; width: 44px; height: 44px; z-index: 16">
		<img src="<%=appUrl %>natkhat/images/documents2.png" alt="" title="" border=0
			width=44 height=44>
	</div>

	<div id="formates"
		style="position: absolute; overflow: hidden; left: 53px; top: 398px; width: 157px; height: 28px; z-index: 17">
		<a href="clerkDashboardFormates.html"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Formates</font>
				</div>
			</div></a>
	</div>

	<div id="image9"
		style="position: absolute; overflow: hidden; left: 1px; top: 391px; width: 43px; height: 49px; z-index: 18">
		<img src="<%=appUrl %>natkhat/images/formates1.png" alt="" title="" border=0
			width=43 height=49>
	</div>

	<div id="mWindow"
		style="position: absolute; overflow: hidden; left: 53px; top: 459px; width: 191px; height: 25px; z-index: 19">
		<a href="clerkDashboardMessageWindow.html"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws14">Message
						Window</font>
				</div>
			</div></a>
	</div>

	<div id="image10"
		style="position: absolute; overflow: hidden; left: 3px; top: 450px; width: 42px; height: 44px; z-index: 20">
		<img src="<%=appUrl %>natkhat/images/messageWindow2.png" alt="" title="" border=0
			width=42 height=44>
	</div>

	<div id="action"
		style="position: absolute; overflow: hidden; left: 53px; top: 510px; width: 172px; height: 27px; z-index: 21">
		<a href="clerkDashboardAction.html"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Action</font>
				</div>
			</div></a>
	</div>

	<div id="image11"
		style="position: absolute; overflow: hidden; left: 0px; top: 502px; width: 46px; height: 46px; z-index: 22">
		<img src="<%=appUrl %>natkhat/images/action1.png" alt="" title="" border=0
			width=46 height=46>
	</div>

	<div id="mhPage"
		style="position: absolute; overflow: hidden; left: 53px; top: 566px; width: 198px; height: 50px; z-index: 23">
		<a href="clerkDashboardManageHomePage.html"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Manage
						Home </font>
				</div>
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						Page</font>
				</div>
			</div></a>
	</div>

	<div id="image12"
		style="position: absolute; overflow: hidden; left: 1px; top: 565px; width: 44px; height: 44px; z-index: 24">
		<img src="<%=appUrl %>natkhat/images/manageHomePage2.png" alt="" title=""
			border=0 width=44 height=44>
	</div>

	<div id="marquee1"
		style="position: absolute; overflow: hidden; left: 527px; top: 52px; width: 538px; height: 33px; z-index: 25">
		<marquee width="538" height="33">
			<div class="wpmd">
				<div>
					<font color="#00FF00" face="Copperplate Gothic Bold" class="ws20"><B>Welcome
							To Natkhat Play School</B></font>
				</div>
			</div>
		</marquee>
	</div>

	<div id="roundrect4"
		style="position: absolute; overflow: hidden; left: 284px; top: 167px; width: 163px; height: 97px; z-index: 26">
		<img border=0 width="100%" height="100%" alt=""
			src="<%=appUrl %>natkhat/images/roundrect3157335.gif">
	</div>

	<div id="cWise"
		style="position: absolute; overflow: hidden; left: 267px; top: 265px; width: 201px; height: 54px; z-index: 27">
		<div class="wpmd">
			<div align=center>
				<font color="#000000" face="Copperplate Gothic Bold" class="ws16"><B>Class
						Wise Sheet</B></font>
			</div>
		</div>
	</div>

	<div id="image5"
		style="position: absolute; overflow: hidden; left: 319px; top: 171px; width: 101px; height: 90px; z-index: 28">
		<img src="<%=appUrl %>natkhat/images/AttendenceClasswise.png" alt="" title=""
			border=0 width=101 height=90>
	</div>

	<div id="chPage"
		style="position: absolute; overflow: hidden; left: 53px; top: 633px; width: 198px; height: 50px; z-index: 29">
		<a href="clerkDashboardCreateHomePage.html"><div class="wpmd">
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">Create
						Home </font>
				</div>
				<div>
					<font color="#FFFFFF" face="Copperplate Gothic Bold" class="ws16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						Page</font>
				</div>
			</div></a>
	</div>

	<div id="image4"
		style="position: absolute; overflow: hidden; left: 1px; top: 633px; width: 45px; height: 45px; z-index: 30">
		<img src="<%=appUrl %>natkhat/images/createHomePage1.png" alt="" title=""
			border=0 width=45 height=45>
	</div>


</body>
</html>
