<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="Connection.DbConnection"%>
 <%String id=request.getParameter("supOrdId"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    
    
    <script>
    function validateBalancePay() {
        var balance = document.getElementById("balance").value;
        var pay = document.getElementById("pay").value;
        if (pay > balance) {
        	 alert("Payment Should less than balance amount!!!");
            document.getElementById("balance").style.borderColor = "#E34234";
            document.getElementById("pay").style.borderColor = "#E34234";
        }
        else {
           
            document.getElementById("payForm").submit();
        }
    }
   
    </script>
    
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
            <h2 class="margin-bottom-10 text-center">Edit Supplier Order | Save a payment</h2>
            
              <%

				try{
						Connection con = DbConnection.getDBConnection(); 
		 		        Statement myStm= con.createStatement();
		 		       	String query  ="SELECT * FROM supplierorder_table WHERE supOrdId='"+id+"'";
	
	    				ResultSet  resultSet = myStm.executeQuery(query);
	    
	      			while(resultSet.next()){
	      			
    	      	  
			%>
            <form action="AdminEditSupplierOrder" id="payForm" name="payForm" class="cakes-login-form" method="POST">
              <div class="row form-group">
              <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Order Id</label>
                    <input type="text" class="form-control" id="supId" name="supOrdId"  placeholder="Enter supplier Order id" value="<%=resultSet.getString("supOrdId")%>" readonly> 
                    
                </div>
                <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Supplier Id</label>
                    <input type="text" class="form-control" id="supId" name="supId"  placeholder="Enter supplier id" value="<%=resultSet.getString("supId")%>" readonly> 
                    
                </div>
                <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Supplier Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="enter supplier name"  value="<%=resultSet.getString("name")%>" readonly>  
                                        
                </div> 
                <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Balance Amount</label>
                    <input type="text" class="form-control" id="balance" name="balance" placeholder="balance"  value="<%=resultSet.getString("balance")%>" readonly>  
                                        
                </div> 
                                <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Ingredient name</label>
                    <input type="text" class="form-control" id="ordItm"name="ordItm" value="<%=resultSet.getString("ordItm")%>" required/>                  
                </div> 
                               <div class="col-lg-8 col-md-6 form-group">                  
                    <label>Quantity</label>
                    <input type="number" class="form-control" id="qty"name="qty" value="<%=resultSet.getString("qty")%>" required/>                 
                </div> 
             
              	<div class="col-lg-8 col-md-6 form-group">                                  
                    <label>Unit Price</label>
                    <input type="number" class="form-control" id="price" name="price" value="<%=resultSet.getString("price")%>" required/>   
                         
                </div>
                <div class="col-lg-8 col-md-6 form-group">                                  
                    <label>Payment</label>
                    <input type="number" class="form-control" id="pay" name="pay" placeholder="<%=resultSet.getString("balance")%>" required/>   
                         
                </div>
              	 
               
              </div>

              <div class="form-group text-center">
                <button type="button" onclick="validateBalancePay()"class="cakes-blue-button">Update </button>
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
        </div>
	  </div>
  </body>
</html>