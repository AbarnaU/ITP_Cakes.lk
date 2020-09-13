<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="Connection.DbConnection"%>
 <%String id=request.getParameter("id"); %>
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
            <li><a href="AdminViewSupplier.jsp"><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href="AdminViewProduct.jsp"><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp" class="active"><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
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
            <h2 class="margin-bottom-10 text-center">Edit Cakes</h2>
            
              <%

				try{
						Connection con = DbConnection.getDBConnection(); 
		 		        Statement myStm= con.createStatement();
		 		       	String query  ="SELECT * FROM cake WHERE cid='"+id+"'";
	
	    				ResultSet  resultSet = myStm.executeQuery(query);
	    
	      			while(resultSet.next()){
    	      	  
			%>
            <form action="AdminEditCakes" name="add-package" class="cakes-login-form" method="POST">
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Cake Id</label>
                    <input type="text" class="form-control" id="cid" name="cid"  value="<%=resultSet.getString("cid")%>">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Cake Name</label>
                    <input type="text" class="form-control" id="cname"name="cname" value="<%=resultSet.getString("cname")%>">                  
                </div> 
              </div>
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Flavour</label>
                    <select id="flavour" name="flavour" class="form-control">
                      <option><%=resultSet.getString("flavour") %></option>
                      <option value="Chocolate">Chocolate</option>
					  <option value="Vanilla">Vanilla</option>
					  <option value="Strawberry">Strawberry</option>
					  <option value="Pineapple">Pineapple</option>
					</select>                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Shape</label>
                    <select id="shape" name="shape" class="form-control">
                      <option><%=resultSet.getString("shape") %></option>
                      <option value="Round">Round</option>
					  <option value="Square">Square</option>
					  <option value="Heart">Heart</option>
					  <option value="Rectangle">Rectangle</option>
					</select>
				</div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Quantity</label>
                    <input type="text" class="form-control" id="qty" name="qty" value="<%=resultSet.getString("qty")%>">   
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Price</label>
                    <input type="text" class="form-control" id="price" name="price" value="<%=resultSet.getString("price")%>">                  
                </div> 
              </div>
              <div class="row form-group"> 
                <div class="col-lg-12 col-md-12 form-group">                  
                    <label >Description</label>
                    <textarea id="description" class="form-control"  name="description" rows="2"> <%=resultSet.getString("description")%></textarea>                   
                </div>  
              </div>
               
              </div>

              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button">Update</button>
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