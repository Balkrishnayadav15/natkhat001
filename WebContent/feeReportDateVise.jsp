<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*, com.orange.model.*,com.orange.model.report.*,com.orange.util.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" type="text/css" href="css/natkhat/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/natkhat/styleReciptOnDate.css">

    <title>Blossom Academy</title>
  </head>
  <body class="bodycss bcolor">
  
  <%
  	Map<String,List<Receipt>> report = (Map<String,List<Receipt>>)request.getAttribute("TOTAL_COLLECTION");
  	String fromDate = (String)request.getAttribute("fromDate");
  	String toDate = (String)request.getAttribute("toDate");
  	
  %>
      <div class="container-fluid">


<!-- START HEADER SECTION (CASHIER DASHBOARD,.... , RECEIPT PAID LIST ) -->


        <div class="row d-flex justify-content-center">
            <div class="">
            <label class=" border text-center header">CASHIER DASHBOARD</label>
            </div>
        </div>

        <div class="float-right">
              <button type="button" class="btn btn-danger float-right">Logout</button>
              <!-- <ion-icon name="log-out-outline"></ion-icon> -->
            </div> 

        <div class="row d-flex justify-content-center ml-5 pl-5">
            <div class="">
              <label class="text-center welcommsg">Welcome To Natkhat Play School</label>
            </div>
        </div>

      <div class="">
        <div class="row">
          <div class="col-lg-3">
            <div class="dropdown float-left">
              <a class="btn dropdown-toggle" style="background-color: #000099 !important; font-weight: bold; color: white;" href="#" role="button" id="sSession" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Session 2020-2021
              </a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <!-- <a class="dropdown-item" href="#">Session 2020-2022</a> -->
              </div>
            </div>
          </div>
              <div class="col-lg-6">
                <div class="d-flex justify-content-center">
                  <label class="text-center aSheet"><STRONG>RECEIPT PAID LIST</STRONG></label>
                </div>
              </div>
            <div class="col-lg-3">
              <div class="dropdown float-right">
                  <a class="btn btn-success dropdown-toggle" href="#" role="button" id="oDate" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color: #000099 !important; font-weight: bold; color: white;">
                    On Date 
                  </a>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <!-- <a class="dropdown-item" href="#">Month-July</a> -->
                  </div>
              </div>
            </div>
          
        </div>

<!-- START SELECT DATE -->
		<form action="dateViseCollection" id="dateViseForm" autocomplete="off">
          <div class="row ml-3 d-flex justify-content-center">
                <!-- <div class="col-lg-4 body1"> -->
              
	                <div class="col-lg-4 body1">
	                  <div class="input-group mb-3 mt-3 ">
	                      <div class="input-group-prepend">
	                        <label class="input-group-text iField" for="inputGroupSelect01">From Date</label>
	                      </div>
	                      <input type="text" class="custom-select iField" id="fromDate" name="fromDate"/>
	                  </div>
	                </div>
	                <div class="col-lg-4 body1">
	                  <div class="input-group mb-3 mt-3">
	                      <div class="input-group-prepend">
	                        <label class="input-group-text iField" for="inputGroupSelect01">To Date</label>
	                      </div>
	                       <input type="text" class="custom-select iField" id="toDate" name="toDate"/>
	                  </div>
	                </div>
              
          </div>
 		  <div class=" row d-flex justify-content-center" style="margin-top: 13px;">
                  <button type="button" style="margin-right: 20px;" class="btn btn-success" id="clearDates">Clear Dates</button>
                  <button type="button" id="dateSubmit" class="btn btn-success">Submit</button>
          </div>
          
          <div id="errorMsg" class=" row d-flex justify-content-center" style="display:none !important">
          	<label style="color:red;">Please select date first.</label>
          </div>
       </form>
        </div>


<!-- END SELECT DATE-->

<!-- START COLLECTION & PENDING TABLE RECEIPT -->
<% if(null != fromDate && null != toDate){ %>
    <div class="row mt-3 ml-1 mr-2 table-responsive">
    	<h3 style="color:#f1612b">Receipt Data between <%= fromDate %> to <%= toDate %> is:</h3>	
    </div>       
 <% } 
 
   if(null != report){ 
	   for (Map.Entry<String,List<Receipt>> recepitMap : report.entrySet()) {
		   String keyDate = recepitMap.getKey();
		   List<Receipt> receiptList = recepitMap.getValue();
 %>
          <div class="row mt-3 ml-1 mr-2 table-responsive">
	          <div class=" row d-flex justify-content-center" style="display:none;">
	          	<label style="color: #f9f3f3;font-size: 23px;background-color: #1f1919;padding: 1px 10px 1px 10px;border-radius: 8px;">Receipt Information for date : <%=keyDate %></label>
	          </div>
              <table class="table table-striped" style="table-layout:;">
               
                <thead class="astableh2">
                  <tr class="text-center">
                    <th scope="col">Scholar No.</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Father's Name</th>
                    <th scope="col">Class</th>
                    <th scope="col">Section</th>
                    <th scope="col">Receipt No.</th>
                    <th scope="col">Receipt Amount</th>
                  </tr>
                </thead>
                <tbody>
       <%
       		long totalReceiptAmt = 0;
       		for(Receipt receipt:receiptList){
       %>
                  <tr class="text-center">
                    <td><%=receipt.getScholarNo() %></td>
                    <td><%=receipt.getStudentName()%></td>
                    <td><%=receipt.getFatherName()%></td>
                    <td><%=receipt.getsClass()%></td>
                    <td><%=receipt.getsSection() %></td>
                    <td>Receipt:<%=receipt.getId() %></td>
                    <td><%=receipt.getPayAmount() + receipt.getDiscount() %></td>
                  </tr>
         <%
         	totalReceiptAmt = totalReceiptAmt + receipt.getPayAmount() + receipt.getDiscount();
       		}
         %>
                  <thead class="totalSection">
                  <tr class="text-center">
                    <th colspan="6" class="text-right">Total Collection on <%= keyDate %>:</th>
                    <th scope="col"><%=totalReceiptAmt %></th>
                  </tr>
                </thead>
                </tbody>
              </table>
             
          </div>
        
<%	
	  }
%>
	   <div class="row mt-2 d-flex justify-content-center">
       
       <button type="button" class="btn btn-primary">Print Sheet</button>
   
 </div>
<%  }
%>
<!-- END COLLECTION & PENDING TABLE RECEIPT-->

     </div>
   

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
rel="Stylesheet"type="text/css"/>
    <script type="text/javascript" src="js/natkhat/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/natkhat/feeReport.js"></script>
  </body>
</html>