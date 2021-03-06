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
    <link rel="stylesheet" type="text/css" href="css/natkhat/style1.css">

    <title>Blossom Academy</title>
  </head>
  <body class="bodycss bcolor">
  <%
  
  	InstallmentReport report = (InstallmentReport)request.getAttribute("TOTAL_COLLECTION");
  	long totalInstallmentAmt = 0;
  	long totalPaidAmount = 0;
  	long totalDiscount = 0;
  	long totalPendingAmt = 0;
  	String receivedPer = "";
  	String discountPer = "";
  	String pendingPer = "";
  	
  	if(null != report){
  		totalInstallmentAmt = report.getTotalFirstInstall() + report.getTotalSecondInstall() + report.getTotalThirdInstall();
  		totalPaidAmount = report.getTotalFirstAmount() + report.getTotalSecondAmount() + report.getTotalThirdAmount();
  		totalDiscount = report.getTotalFirstDiscount() + report.getTotalSecondDiscount() + report.getTotalThirdDiscount();
  		totalPendingAmt = totalInstallmentAmt - totalPaidAmount - totalDiscount;
  		
  		receivedPer = ReportUtility.getPercentage(totalInstallmentAmt,totalPaidAmount);
  		discountPer = ReportUtility.getPercentage(totalInstallmentAmt,totalDiscount);
  		pendingPer = ReportUtility.getPercentage(totalInstallmentAmt,totalPendingAmt);
  	}
  %>
      <div class="container-fluid">


<!-- START HEADER SECTION (CASHIER DASHBOARD,.... , COLLECTION & PENDING ) -->


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
                  <label class="text-center aSheet"><STRONG>COLLECTION & PENDING</STRONG></label>
                </div>
              </div>
            <div class="col-lg-3">
              <!-- <div class="dropdown float-right">
                  <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   
                  </a> -->
                  <!-- <div class="dropdown-menu" aria-labelledby="dropdownMenuLink"> -->
                    <!-- <a class="dropdown-item" href="#">Month-July</a> -->
                  <!-- </div> -->
             <!--  </div> -->
            </div>
        </div>
          <!-- <div class="row ">
            <div class="col ">
                

            </div>
            <div class="col-6 " >
               <table class="table text-center table-borderless">
                <thead class="thead tstwcss" >
                  <tr>
                    <th scope="col" style="border-radius: 20px 0 0 20px;">Total Students</th>
                    <th scope="col" style="border-radius: 0 20px 20px 0;">Total Working Days</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><input type="text" aria-label="name" class="form-control  iField"></td>
                    <td><input type="text" aria-label="name" class="form-control  iField"></td>
                  </tr>
                </tbody>
              </table>          
            </div>
            <div class="col ">
                

            </div>
               
          </div> -->



<!-- END HEADER SECTION (CASHIER DASHBOARD,.... , COLLECTION & PENDING ) -->


<!-- START SELECT CLASS, .... , TOTAL STUDENTS -->

          <!-- <div class="row ml-3">
                <div class="col-lg-4 body1">
                  <div class="input-group mb-3 mt-3 ">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Class</label>
                      </div>
                      <select class="custom-select iField" id="inputGroupSelect01">
                        <option selected>Select</option>
                        <option value="1">Pre-Nursery</option>
                        <option value="2">Nursery</option>
                        <option value="3">K.G.I</option>
                        <option value="3">K.G.II</option>
                      </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Section</label>
                      </div>
                      <select class="custom-select iField" id="inputGroupSelect01">
                        <option selected>Select</option>
                        <option value="1">A</option>
                        <option value="2">B</option>
                        <option value="3">C</option>
                        <option value="3">D</option>
                      </select>
                  </div>
                  <div class="text-center">
                  <button type="button" class="btn btn-light">Submit</button>
                  </div>
              </div>
              
              <div class="col-lg-3 body1" >
		              	<table class="table text-center table-borderless mt-4">
			                <thead class="thead tstudents" >
			                  <tr>
			                    <th scope="col" style="border-radius: 20px 20px 20px 20px;">Total Students</th>
			                  </tr>
			                </thead>
			                <tbody>
			                  <tr>
			                    <td><input type="text" aria-label="name" class="form-control  iFieldtable"></td>
			                  </tr>
			                </tbody>
		              </table>       
              </div>
              <div class="col-lg-4 body1">

              	<div class="input-group mb-3 mt-5 ">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Installment</label>
                      </div>
                      <select class="custom-select iField" id="inputGroupSelect01">
                        <option selected>Select</option>
                        <option value="1">I Installment</option>
                        <option value="2">II Installment</option>
                        <option value="3">III Installment</option>
                        <option value="3">All Installments</option>
                      </select>
                  </div> 
                  <div class="text-center">
                  <button type="button" class="btn btn-light">Submit</button>
                  </div>
                
          	  </div>
        </div> -->


<!-- END SELECT CLASS, .... , TOTAL STUDENTS -->

<!-- START TOTAL COLLECTION & PENDING TABLE -->
          <!-- <div class="row mt-3 ">
            <div class="col">
                <button type="button" class="btn btn-danger btn-lg btn-block" style="color: white; font-weight: bold;">MESSAGE CASHIER</button>
            </div>  
            <div class="col">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="color: white; font-weight: bold;">MESSAGE ALL STUDENTS</button>
            </div>  
          </div> -->


          <div class="row mt-3 ml-1 mr-2 table-responsive">
              <table class="table table-striped" style="table-layout:;">
                <!-- <thead class="astableh1">
                  <tr class="text-center">
                    <th colspan="5">STUDENT DETAILS</th>
                    <th colspan="13">Payment Details</th>
                  </tr>
                </thead> -->
                <thead class="astableh2">
                  <tr class="text-center">
                    <th scope="col">Total I Installment</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                    <th scope="col">Total II Installment</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                    <th scope="col">Total III Installment</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                  </tr>
                </thead>
              
                <tbody>
                  <tr class="text-center">
                    <th scope="col"><%=report.getTotalFirstInstall() %></th>
                    <th scope="col"><%=report.getTotalFirstAmount() %></th>
                    <th scope="col"><%=report.getTotalFirstDiscount() %></th>
                    <th scope="col"><%=report.getTotalFirstPending() %></th>
                    <th scope="col"><%=report.getTotalSecondInstall() %></th>
                    <th scope="col"><%=report.getTotalSecondAmount() %></th>
                    <th scope="col"><%=report.getTotalSecondDiscount() %></th>
                    <th scope="col"><%=report.getTotalSecondPending() %></th>
                    <th scope="col"><%=report.getTotalThirdInstall() %></th>
                    <th scope="col"><%=report.getTotalThirdAmount() %></th>
                    <th scope="col"><%=report.getTotalThirdDiscount() %></th>
                    <th scope="col"><%=report.getTotalThirdPending() %></th>
                  </tr>
                </tbody>
              </table>
          </div>
      </div>

<!-- END TOTAL COLLECTION & PENDING TABLE -->

<!-- START TOTAL YEARLY COLLECTION & PENDING TABLE -->

          <div class="row mt-3 ml-1 mr-2 table-responsive">
              <table class="table table-striped" style="table-layout:;">
                <!-- <thead class="astableh1">
                  <tr class="text-center">
                    <th colspan="5">STUDENT DETAILS</th>
                    <th colspan="13">Payment Details</th>
                  </tr>
                </thead> -->
                <thead class="astableh2">
                  <tr class="text-center">
                    <th scope="col">TOTAL YEARLY COLLECTION</th>
                    <th scope="col">TOTAL RECIEVED AMOUNT</th>
                    <th scope="col">TOTAL DISCOUNT</th>
                    <th scope="col">TOTAL PENDING</th>
                    <th scope="col">
                    	<div class="col">
                			<button type="button" class="btn btn-warning btn-block" style="color: white; font-weight: bold;">MESSAGE CASHIER</button>
           				</div>  
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="text-center">
                    <th scope="col"><%= totalInstallmentAmt%></th>
                    <th scope="col"><%=totalPaidAmount%></th>
                    <th scope="col"><%= totalDiscount%></th>
                    <th scope="col"><%= totalPendingAmt%></th>
                  </tr>
                </tbody>
              </table>
          </div>
      </div>

<!-- END TOTAL YEARLY COLLECTION & PENDING TABLE -->

<!-- START PERFORMANCE COLLECTION & PENDING TABLE -->

          <div class="row mt-3 ml-1 mr-2 table-responsive">
              <table class="table table-striped">
                <thead class="astableh2">
                  <tr class="text-center">
                    <th colspan="2">COLLECTION PERFORMANCE PERCENTAGE TILL TODAY</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="text-center">
                    <th scope="col">Recieved Amount%</th>
                    <th scope="col"><%=receivedPer %> %</th>
                  </tr>
                  <tr class="text-center">
                    <th scope="col">Discount%</th>
                    <th scope="col"><%= discountPer%> %</th>
                  </tr>
                  <tr class="text-center">
                    <th scope="col">Pending Amount%</th>
                    <th scope="col"><%= pendingPer%> %</th>
                  </tr>
                </tbody>
              </table>
          </div>
        <div class="row mt-2 d-flex justify-content-center">
         
              <button type="button" class="btn btn-primary">Print Sheet</button>
          
        </div>

      </div>

<!-- END PERFORMANCE YEARLY COLLECTION & PENDING TABLE -->
     
    </div>  
        


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="js/natkhat/jquery.js"></script>
    <script type="text/javascript" src="js/natkhat/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/natkhat/myjs.js"></script>
  </body>
</html>