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
    <link rel="stylesheet" type="text/css" href="css/natkhat/styleDatewiseCollectionReport.css">

    <title>Blossom Academy</title>
  </head>
  <body class="bodycss bcolor">
  <%
  	Map<String,Long> report = (Map<String,Long>)request.getAttribute("TOTAL_COLLECTION");
  	
  %>
      <div class="container-fluid">


<!-- START HEADER SECTION (CASHIER DASHBOARD,.... , DATE WISE COLLECTION ) -->


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
                  <label class="text-center aSheet"><STRONG>DATE WISE COLLECTION</STRONG></label>
                </div>
              </div>
            <div class="col-lg-3">
             
        </div>
         

<!-- END HEADER SECTION (CASHIER DASHBOARD,.... , DATE WISE COLLECTION ) -->



<!-- START DATE AMOUNT TABLE -->
<%           if(null != report){  %>         
          <div class="row mt-3 ml-1 mr-2 table-responsive d-flex justify-content-center">
          	<div class="col-lg-8">
              <table class="table table-striped" style="table-layout:;">
                
                <thead class="astableh2">
                  <tr class="text-center">
                    <th scope="col">Date</th>
                    <th scope="col">Amount</th>
                  </tr>
                </thead>
                <tbody>
<%    
	 long totalAmt = 0;

	   for (Map.Entry<String,Long> recepitMap : report.entrySet()) {
		   String keyDate = recepitMap.getKey();
		   Long dayTotalAmt = recepitMap.getValue();
		   totalAmt += dayTotalAmt;
		  
 %>
                  <tr class="text-center">
                    <td><%=keyDate%></td>
                    <td><%=dayTotalAmt %></td>
                  </tr>
 <%
	   }
 %>               
                <thead class="astableh2">
                  <tr class="text-center">
                    <th scope="col">Total Collection</th>
                    <th scope="col"><%=totalAmt %></th>
                  </tr>
                </thead>
               </table>       
          	</div>
    </div> 
     <div class="row mt-3 ml-1 mr-2 table-responsive d-flex justify-content-center">
        	<button type="button" class="btn btn-primary">Print Sheet</button>
        </div>	
 <%
	   }
 %> 
<!-- END DATE AMOUNT TABLE -->
			
     </div>
    </div>  

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="js/natkhat/jquery.js"></script>
    <script type="text/javascript" src="js/natkhat/bootstrap.min.js"></script>
  </body>
</html>