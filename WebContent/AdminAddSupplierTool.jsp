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
            <li><a href=""><i class="fa fa-users fa-fw"></i>Employee</a></li>
            <li><a href="AdminViewSupplier.jsp"  class="active"><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp"><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
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
            <h2 class="margin-bottom-10 text-center">Add Supplier - Tool</h2>
            <form action="AdminAddSupplierTool" name="add-supplier" class="cakes-login-form" method="POST">
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Tool Supplier Id</label>
                    <input type="text" class="form-control" id="supId" name="supId"  placeholder="supId" > 
                                      
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Tool Supplier Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="name" >  
                                       
                </div> 
     
               
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Location</label>
                    <input type="text" class="form-control" id="location" name="location" placeholder="location">   
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Email Address</label>
                    <input type="email" class="form-control" id="email" name="email"  placeholder="email" required/>   
                    	<div class="invalid-feedback">
            Please provide a valid email example@....
        </div>               
                </div> 
                 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Phone Number</label>
                    <input type="tel" pattern=".{10}" class="form-control" id="phone" name="phone"  placeholder="phone"> 
                    <div class="invalid-feedback">
            Please provide a valid phone number(10)
        </div>                                
                </div> 
                
                 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Delivery</label>
                    <input type="text" class="form-control" id="delivery" name="delivery"  placeholder="delivery">                  
                </div> 
                 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Minimum Order Quantity</label>
                    <input type="text" class="form-control" id="minOrderQty" name="minOrderQty"  placeholder="minOrderQtys">                  
                </div> 
                
              </div>
              
               </div>
            
              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button" onclick="return validate()">Add</button>
                <button type="submit" class="cakes-blue-button" onclick="setValue()" >Demo</button>
              </div>   
            </form>  
            <script>
				function setValue() {
					document.getElementById("supId").value = '33';
					document.getElementById('name').value = 'Cake Tools House';
					document.getElementById('location').value = 'Colombo 01';
					document.getElementById('email').value = 'CakeToolsHouse@gmail.com';
					document.getElementById('phone').value = '0756537487';
					document.getElementById('delivery').value = 'yes';
					document.getElementById('minOrderQty').value = '10';
				}
			</script>                                  
          </div>
        </div>
	  </div>
  </body>
</html>