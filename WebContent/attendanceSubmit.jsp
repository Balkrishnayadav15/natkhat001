<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <title>Blossom Academy</title>
  </head>
  <body class="bodycss bcolor">
      <div class="container-fluid">
        <div class="row d-flex justify-content-center">
            <div class="">
            <label class=" border text-center header">CLERK DASHBOARD</label>
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
              <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Session 2020-2021
              </a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <!-- <a class="dropdown-item" href="#">Session 2020-2022</a> -->
              </div>
            </div>
          </div>
              <div class="col-lg-6">
                <div class="d-flex justify-content-center">
                  <label class="text-center aSheet"><STRONG>ATTENDANCE SHEET</STRONG></label>
                </div>
              </div>
            <div class="col-lg-3">
              <div class="dropdown float-right">
                  <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Month-June
                  </a>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <!-- <a class="dropdown-item" href="#">Month-July</a> -->
                  </div>
              </div>
            </div>
        </div>
          <div class="row ">
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
               
          </div>

          <div class="row ml-3">
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
                  <button type="button" class="btn btn-success">Submit</button>
                  </div>
              </div>
              
              <div class="col-lg-3 body1">
                  <div class="input-group mb-3 mt-3 ">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">From Date</label>
                      </div>
                      <select class="custom-select iField" id="inputGroupSelect01">
                        <!-- <option selected>select</option>
                        <option value="1">Pre-Nursery</option>
                        <option value="2">Nursery</option>
                        <option value="3">K.G.I</option>
                        <option value="3">K.G.II</option> -->
                      </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                      <div class="input-group-prepend">
                        <label class="input-group-text iField" for="inputGroupSelect01">To Date</label>
                      </div>
                      <select class="custom-select iField" id="inputGroupSelect01">
                        <!-- <option selected>select</option>
                        <option value="1">A</option>
                        <option value="2">B</option>
                        <option value="3">C</option>
                        <option value="3">D</option> -->
                      </select>          
                  </div>
                  <div class="text-center">
                  <button type="button" class="btn btn-success">Submit</button>
                  </div>
              </div>
              <div class="col-lg-4 body1">
                <div class="text-center sstudent">
                <!-- <label class=""><strong>Search Student</strong></label> -->
                </div>
                <div class="input-group mt-3">
                    <div class="input-group-prepend ">
                      <span class="input-group-text  iField">Name</span>
                    </div>
                    <input type="text" aria-label="name" class="form-control  iField">
                </div> 
                <div class="input-group mt-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text iField">Scholar No.</span>
                    </div>
                    <input type="text" aria-label="scholar" class="form-control iField">
                </div> 
              <div class="text-center mt-3">
                  <button type="button" class="btn btn-success">Search Student</button>
              </div>
          </div>
        </div>

          
          <div class="row mt-3 ">
            <div class="col">
                <button type="button" class="btn btn-info btn-lg btn-block">Message All</button>
            </div>  
            <div class="col">
                <button type="button" class="btn btn-warning btn-lg btn-block">Show Short Attendance</button>
            </div>  
          </div>


          <div class="row mt-3 ml-1 mr-2 table-responsive">
              <table class="table table-striped ">
                <thead class="astableh1">
                  <tr class="text-center">
                    <th colspan="8">STUDENT DETAILS</th>
                    <th colspan="31">DAYS</th>
                    <th colspan="5">SUMMARY</th>
                  </tr>
                </thead>
                <thead class="astableh2">
                  <tr>
                    <th scope="col">S.no</th>
                    <th scope="col">Scholar No.</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Class</th>
                    <th scope="col">Section</th>
                    <th scope="col">Father's Name</th>
                    <th scope="col">Contact No.</th>
                    <th scope="col">Class</th>
                    <th scope="col">1</th>
                    <th scope="col">2</th>
                    <th scope="col">3</th>
                    <th scope="col">4</th>
                    <th scope="col">5</th>
                    <th scope="col">6</th>
                    <th scope="col">7</th>
                    <th scope="col">8</th>
                    <th scope="col">9</th>
                    <th scope="col">10</th>
                    <th scope="col">11</th>
                    <th scope="col">12</th>
                    <th scope="col">13</th>
                    <th scope="col">14</th>
                    <th scope="col">15</th>
                    <th scope="col">16</th>
                    <th scope="col">17</th>
                    <th scope="col">18</th>
                    <th scope="col">19</th>
                    <th scope="col">20</th>
                    <th scope="col">21</th>
                    <th scope="col">22</th>
                    <th scope="col">23</th>
                    <th scope="col">24</th>
                    <th scope="col">25</th>
                    <th scope="col">26</th>
                    <th scope="col">27</th>
                    <th scope="col">28</th>
                    <th scope="col">29</th>
                    <th scope="col">30</th>
                    <th scope="col">31</th>
                    <th scope="col">Total Working Days</th>
                    <th scope="col">Total Present</th>
                    <th scope="col">Total Absent</th>
                    <th scope="col">Percentage</th>
                    <th scope="col">Option</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>
                      <div class="dropdown">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                          </button>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <button class="dropdown-item" type="button">Action</button>
                            <button class="dropdown-item" type="button">Another action</button>
                            <button class="dropdown-item" type="button">Something else here</button>
                          </div>
                        </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>Otto</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>
                      <div class="dropdown">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                          </button>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <button class="dropdown-item" type="button">Action</button>
                            <button class="dropdown-item" type="button">Another action</button>
                            <button class="dropdown-item" type="button">Something else here</button>
                          </div>
                        </div>
                    </td>
                  </tr>
                </tbody>
              </table>
          </div>
        <div class="row mt-2 d-flex justify-content-center">
         
              <button type="button" class="btn btn-primary">Print Sheet</button>
          
        </div>
      </div>




                  

      </div>  
        


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
  </body>
</html>