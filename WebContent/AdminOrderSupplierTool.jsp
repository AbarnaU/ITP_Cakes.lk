<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="Connection.DbConnection"%>
 <%String id=request.getParameter("supId"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    
  </head>
  <body>  
    <!-- Left column -->
    <div class="cakes-flex-row">
      <div class="cakes-sidebar">
        <header class="cakes-site-header">
          <h1>Cakes.Lk</h1>
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
            <h2 class="margin-bottom-10 text-center">Order Tools</h2>
            
              <%

				try{
						Connection con = DbConnection.getDBConnection(); 
		 		        Statement myStm= con.createStatement();
		 		       	String query  ="SELECT * FROM suppliertool_table WHERE supId='"+id+"'";
	
	    				ResultSet  resultSet = myStm.executeQuery(query);
	    
	      			while(resultSet.next()){
    	      	  
			%>
            <form action="AdminOrderSupplier" name="add-package" class="cakes-login-form" method="POST">
              <div class="row form-group">
              <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Order Id</label>
                    <input type="text" class="form-control" id="supOrdId" name="supOrdId"  placeholder="Enter supplier Order id"> 
                    
                </div>
                <div class="col-lg-4 col-md-6 form-group">                  
                    <label>Supplier Id</label>
                    <input type="text" class="form-control" id="supId" name="supId"  placeholder="supId" value="<%=resultSet.getString("supId")%>" readonly> 
                    
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Supplier Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="name"  value="<%=resultSet.getString("name")%>" readonly>  
                                        
                </div> 
                
                 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Supplier type</label>
                    <input type="text" class="form-control" id="supType" name="supType" placeholder="supType"  value="Tool" readonly>  
                                        
                </div> 
                               <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Tool name</label>
                     <input type="text" class="form-control" id="ordItm" name="ordItm" placeholder="Tool Name"   required/>                                
                </div> 
             
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Quantity</label>
                   <input type="number" class="form-control" id="qty" name="qty" placeholder="Quantity"  required/>   
                         
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>price</label>
                   <input type="number" class="form-control" id="price" name="price" placeholder="price LKR"  required/>        
                </div>
                
               
               
               
              </div>

              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button">save</button>
                 <button type="submit" class="cakes-blue-button" onclick="setValue()" >Demo</button>
              </div>   
            </form>      
                       <% 
				}
      
      			con.close();
      
			} 
		
			catch (Exception e) {
				e.printStackTrace();
			}
%>                      
          </div>
           <script>
				function setValue() {
					document.getElementById("supOrdId").value = '39';
					document.getElementById('ordItm').value = 'Piping bags';
					document.getElementById('qty').value = '20';
					document.getElementById('price').value = '400';
				}
			</script>   
        </div>
	  </div>
  </body>
</html>