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
    <link rel="stylesheet" type="text/css" href="css/natkhat/style0.css">

    <title>Blossom Academy</title>
  </head>
  <body class="bodycss bcolor">
  <%
 	 Map<String,Object> report = (Map<String, Object>)request.getAttribute("TOTAL_COLLECTION");
  	 String sClass = (String)request.getAttribute("sClass");
  	 String sSection = (String)request.getAttribute("sSection");
  	 String sInstallment = (String)request.getAttribute("sInstallment");
  	 InstallmentReport installReport = null;
  	 List<FeeDeposite> reportList = null;
  	 if(null != report){
  		reportList = (List<FeeDeposite>)report.get("STUDENT_INFO_LIST");
  		installReport = (InstallmentReport)report.get("TOTAL_INSTALL");
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
            
            </div>
        </div>
     
<!-- END HEADER SECTION (CASHIER DASHBOARD,.... , COLLECTION & PENDING ) -->

<!-- START SELECT CLASS, .... , TOTAL STUDENTS -->

          <div class="row ml-3 d-flex justify-content-center">
                <div class="col-lg-4 body1">
                <form action="classViseCollection" name="classReportForm" id="classReportForm" >
                  <div class="input-group mb-3 mt-3 ">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Class</label>
                      </div>
                      <select class="custom-select iField" id="sClass" name="sClass" >
                        <option <% if(null == sClass){ %> selected <% } %>>Select</option>
                        <option value="Pre-Nursery" <% if(null != sClass && "Pre-Nursery".equals(sClass)){ %> selected<% } %>>Pre-Nursery</option>
                        <option value="Nursery" <% if(null != sClass && "Nursery".equals(sClass)){ %> selected<% } %>>Nursery</option>
                        <option value="K.G.I" <% if(null != sClass && "K.G.I".equals(sClass)){ %> selected<% } %>>K.G.I</option>
                        <option value="K.G.II" <% if(null != sClass && "K.G.II".equals(sClass)){ %> selected<% } %>>K.G.II</option>
                      </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Section</label>
                      </div>
                      <select class="custom-select iField" id="sSection" name="sSection">
                        <option <% if(null == sSection){ %> selected <% } %>>Select</option>
                        <option value="A" <% if(null != sSection && "A".equals(sSection)){ %> selected<% } %>>A</option>
                        <option value="B" <% if(null != sSection && "B".equals(sSection)){ %> selected<% } %>>B</option>
                        <option value="C" <% if(null != sSection && "C".equals(sSection)){ %> selected<% } %>>C</option>
                        <option value="D" <% if(null != sSection && "D".equals(sSection)){ %> selected<% } %>>D</option>
                      </select>
                  </div>
                  <div class="input-group mb-2 mt-2 ">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">Select Installment</label>
                      </div>
                      <select class="custom-select iField" id="sInstallment" name="sInstallment">
                        <option value="All" <% if(null == sInstallment){ %> selected <% } %>>All Installments</option>
                        <option value="first" <% if(null != sInstallment && "first".equals(sInstallment)){ %> selected<% } %>>I Installment</option>
                        <option value="second" <% if(null != sInstallment && "second".equals(sInstallment)){ %> selected<% } %>>II Installment</option>
                        <option value="third" <% if(null != sInstallment && "third".equals(sInstallment)){ %> selected<% } %>>III Installment</option>
                       
                      </select>
                  </div> 
                  <div class="text-center">
                  	<button type="button" class="btn btn-light" id="classReportBtn">Submit</button>
                  </div>
                  
                  <div id="docsErrorClassMsg" style="display:none;">
						<label style="color: red;"><b> Please first Select Class before Select Section.</b></label>
				</div>
				<div id="docsErrorMsg" style="display:none;">
					<label style="color: red;"><b> Please select atleast one search parameter for search.</b></label>
				</div>
                </form>
              </div>
              <div class="col-lg-4 body1">
              			<table class="table text-center table-borderless mt-4">
			                <thead class="thead tstudents" >
			                  <tr>
			                    <th scope="col" style="border-radius: 50px 50px 50px 50px;">Total Students</th>
			                  </tr>
			                </thead>
			                <tbody>
			                  <tr>
			                    <td><% if(null != reportList && reportList.size() > 0){ %>
			                    <%= reportList.size()%>
			                    <% } else{%>
			                    <%= 0 %>
			                    <% } %>
			                    </td>
			                  </tr>
			                </tbody>
		              	</table>      
          	  	</div>
        </div>


<!-- END SELECT CLASS, .... , TOTAL STUDENTS -->

<!-- START COLLECTION & PENDING TABLE -->
          <div class="row mt-3 ">
            <div class="col">
                <button type="button" class="btn btn-danger btn-lg btn-block" style="color: white; font-weight: bold;">MESSAGE CASHIER</button>
            </div>  
            <div class="col">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="color: white; font-weight: bold;">MESSAGE ALL STUDENTS</button>
            </div>  
          </div>


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
                    <th scope="col">S.no</th>
                    <th scope="col">Scholar No.</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Father's Name</th>
                    <th scope="col">Contact No.</th>
                    <% if(null != sInstallment && ("first".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">I Installment</th>
                    <th scope="col">Amount Paid</th>
                    <th scope="col">Discount</th>
                    <th scope="col">Pending</th>
                    <%} if(null != sInstallment && ("second".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">II Installment</th>
                    <th scope="col">Amount Paid</th>
                    <th scope="col">Discount</th>
                    <th scope="col">Pending</th>
                    <%} if(null != sInstallment && ("third".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">III Installment</th>
                    <th scope="col">Amount Paid</th>
                    <th scope="col">Discount</th>
                    <th scope="col">Pending</th>
                    <% } %>
                    <th scope="col">Option</th>
                  </tr>
                </thead>
                <tbody>
                <% 
					if(null != reportList && reportList.size() > 0 && null!= installReport){
						for(FeeDeposite fee :reportList){		
                %>
                  <tr class="text-center">
                    <th scope="row"><%=fee.getId() %></th>
                    <td><%=fee.getScholarNo() %></td>
                    <td><%=fee.getName() %></td>
                    <td><%=fee.getFatherName() %></td>
                    <td><%=fee.getMobileNo() %></td>
                    <% if(null != sInstallment && ("first".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=fee.getFirstInstall() + fee.getActivityFees() + fee.getPreviousrDues() %></td>
                    <td><%=fee.getFirstAmount() %></td>
                    <td><%=fee.getFirstDisocunt() %></td>
                    <td><%=fee.getFirstPendAmt() %></td>
                    <%} if(null != sInstallment && ("second".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=fee.getSecondInstall() %></td>
                    <td><%=fee.getSecondAmount() %></td>
                    <td><%=fee.getSecondDisocunt() %></td>
                    <td><%=fee.getSecondPendAmt() %></td>
                    <%} if(null != sInstallment && ("third".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=fee.getThirdInstall() %></td>
                    <td><%=fee.getThirdAmount() %></td>
                    <td><%=fee.getThirdDisocunt() %></td>
                    <td><%=fee.getThirdPendAmt() %></td>
                    <% } %>
                    <td>
                      <div class="dropdown">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="abtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                          </button>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <button class="dropdown-item" type="button">Action</button>
                            <button class="dropdown-item" type="button">Message</button>
                          </div>
                        </div>
                    </td>
                  </tr>
                 
               <% } %>
                  <thead class="astableh2">
                  <tr class="text-center">
                    <th colspan="5">Totals Amounts</th>
                     <% if(null != sInstallment && ("first".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">I Installment Total</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                     <%}
                     
                     if(null != sInstallment && ("second".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">II Installment Total</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                     <%}
                     
                     if(null != sInstallment && ("third".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <th scope="col">III Installment</th>
                    <th scope="col">Total Amount Paid</th>
                    <th scope="col">Total Discount</th>
                    <th scope="col">Total Pending Amount</th>
                    <% } %>
                    <th scope="col"></th>
                  </tr>
                </thead>
                	<tr class="text-center">
                    <td colspan="5"></td>
                     <% if(null != sInstallment && ("first".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=installReport.getTotalFirstInstall() %></td>
                    <td><%=installReport.getTotalFirstAmount() %></td>
                    <td><%=installReport.getTotalFirstDiscount() %></td>
                    <td><%=installReport.getTotalFirstPending() %></td>
                     <%}
                     
                     if(null != sInstallment && ("second".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=installReport.getTotalSecondInstall() %></td>
                    <td><%=installReport.getTotalSecondAmount() %></td>
                    <td><%=installReport.getTotalSecondDiscount() %></td>
                    <td><%=installReport.getTotalSecondPending() %></td>
                     <%} 
                     
                     if(null != sInstallment && ("third".equals(sInstallment) || "All".equals(sInstallment))){ %>
                    <td><%=installReport.getTotalThirdInstall() %></td>
                    <td><%=installReport.getTotalThirdAmount() %></td>
                    <td><%=installReport.getTotalThirdDiscount() %></td>
                    <td><%=installReport.getTotalThirdPending() %></td>
                    <% } %>
                    <td></td>
                  </tr>
               <% } %>
                </tbody>
              </table>
          </div>
        <div class="row mt-2 d-flex justify-content-center">
         
              <button type="button" class="btn btn-primary">Print Sheet</button>
          
        </div>

<!-- END COLLECTION & PENDING TABLE -->

     </div>
    </div>  

    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="js/natkhat/jquery.js"></script>
    <script type="text/javascript" src="js/natkhat/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/natkhat/feeReport.js"></script>
  </body>
</html>