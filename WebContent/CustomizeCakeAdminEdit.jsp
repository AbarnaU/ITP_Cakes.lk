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
          <h1>Dream Destination</h1>
        </header>    
        <br>
        <nav class="cakes-left-nav">          
          <ul>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Customers</a></li>
            <li><a href="Admin-EmployeeView.jsp"><i class="fa fa-users fa-fw"></i>Employee</a></li>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp"><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href="CustomizeCakeAdminView.jsp"  class="active"><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
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
            <h2 class="margin-bottom-10 text-center">Make Decision</h2>
            
               <%

			try{
					Connection con = DbConnection.getDBConnection(); 
	 		        Statement myStm= con.createStatement();
	 		       	String query  ="SELECT * FROM ccake WHERE ccid='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
            
            <form action="AdminConfirmCustomizeCake" name="Confirm" class="dream-destination-login-form" method="POST">   
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Cake Id</label>
                    <input type="text" class="form-control" id="ccid" name="ccid"  value="<%=resultSet.getString("ccid") %>">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Cake Name</label>
                    <input type="text" class="form-control" id="ccname"name="ccname" value="<%=resultSet.getString("ccname") %>">                  
                </div> 
              </div>
              <div class="row form-group">
			  <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Add More Details</label>
                    <input type="text" class="form-control" id="caddmore" name="caddmore"  value="<%=resultSet.getString("caddmore") %>">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Flavor</label>
                    <input type="text" class="form-control" id="cflavour"name="cflavour" value="<%=resultSet.getString("cflavour") %>">                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Shape</label>
                    <input type="text" class="form-control" id="cshape" name="cshape"  value="<%=resultSet.getString("cshape") %>">    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Size</label>
                    <input type="text" class="form-control" id="csize" name="csize"  value="<%=resultSet.getString("csize") %>">                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Image</label>
                    <input type="text" class="form-control" id="img" name="img"  value="<%=resultSet.getString("img") %>">    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Color</label>
                    <input type="text" class="form-control" id="ccolor" name="ccolor"  value="<%=resultSet.getString("ccolor") %>">                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Description</label>
                    <input type="text" class="form-control" id="cdescription" name="cdescription"  value="<%=resultSet.getString("cdescription") %>">    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Decision</label>
                    <input type="text" class="form-control" id="decision" name="decision"  value="<%=resultSet.getString("decision") %>">                  
                </div> 
              </div>

                
              </div>

              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button">Confirm</button>
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