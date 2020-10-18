<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    <script type="text/javascript" src="js/admin-add_cakes.js"></script>  
    
  </head>
  <body>  
    <!-- Left column -->
    <div class="cakes-flex-row">
      <div class="cakes-sidebar">
        <header class="cakes-site-header">
          <h1>Cakes.lk</h1>
        </header>    
        <br>
        <nav class="cakes-left-nav">          
          <ul>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Customers</a></li>
            <li><a href="Admin-EmployeeView.jsp" class="active"><i class="fa fa-users fa-fw"></i>Employee</a></li>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp" ><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href="CustomizeCakeAdminView.jsp"><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
            <li><a href="AdminViewCustomerOrderedCake.jsp"><i class="fa fa-sliders fa-fw"></i>Cake Orders</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Account</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Delivery</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Payment</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Feedback</a></li>          
            <li style="padding: 20px 47px;"  class="login"><form action="Logout" class="logout" method="post">
							 <button  class="cakes-blue-button" >Logout</button>
   						</form> </li>
          </ul>  
        </nav>
      </div>
      
      <!-- Main content --> 
          <div class="cakes-content col-1 light-gray-bg"> 
        <div class="cakes-content-container">
          <div class="cakes-content-widget white-bg">
            <h2 class="margin-bottom-10 text-center">Add Employee</h2>
            <form action="AdminAddEmployee" name="add-cake" class="cakes-login-form" method="POST">
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee ID</label>
                    <input type="text" class="form-control" id="eid" name="eid"  placeholder="Employee ID" required>                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Name</label>
                    <input type="text" class="form-control" id="ename"name="ename" placeholder="Employee Name" required>                  
                </div> 
              </div>
              <div class="row form-group">
			  <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Phone No</label>
                    <input type="text" class="form-control" id="epno" name="epno"  placeholder="07xxxxxxxx" pattern="[0-9]{10}" required>                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Address</label>
                    <input type="text" class="form-control" id="eaddress"name="eaddress" placeholder="Employee Address" required>                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Employee Email </label>
                    <input type="text" class="form-control" id="eemail" name="eemail"  placeholder="Employee Email" required>    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Job Title</label>
                    <input type="text" class="form-control" id="ejobtitle" name="ejobtitle"  placeholder="Employee Job Title" required>                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label >Employee Date Start</label>
                    <input type="date" class="form-control" id="edstart" name="edstart"> 
                       
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Salary</label>
                    <input type="text" class="form-control" id="esalary" name="esalary"  placeholder="Employee Salary" required>                  
                </div> 
              </div>
               <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Employee NIC</label>
                    <input type="text" class="form-control" id="enic" name="enic"  placeholder="Employee NIC" required>    
                </div> 
              </div>
              </div>

              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button" onclick="return validate()">Add</button>
              </div>   
            </form>                            
          </div>
        </div>
	  </div>
  </body>
</html>