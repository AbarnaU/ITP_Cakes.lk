<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
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
          <h1>Cakes.lk</h1>
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
        	<div class="form-group text-center">
	          <button onclick="window.location.href='AdminAddProduct.jsp'" class="cakes-blue-button"  >Add New Product</button>
	        </div> 
          <div class="cakes-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered tcakes-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="cakes-sort-by">Product Id <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Product Name <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Quantity (kg) <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Price (per kg) <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Description <span class="caret"></span></a></td>  
                    <td><a href="" class="cakes-sort-by">Supplier Id <span class="caret"></span></a></td>
                           
                    <td>Edit</td>
                    <td>Delete</td>
                  </tr>
                </thead>
                </tbody>
               <%
        
        try {
        	DbConnection db=new DbConnection();
            Connection connection = DbConnection.getDBConnection(); 
            Statement myStm=connection.createStatement();
            String query = "select * from cake_products ";
            ResultSet resultSet = myStm.executeQuery(query);
               while(resultSet.next()){
%>
                  <tr>
                    
                  	<td><%=resultSet.getString("PId") %></td>
                    <td><%=resultSet.getString("PName") %></td>
                    <td><%=resultSet.getString("Description") %></td>
                    <td><%=resultSet.getString("Quantity") %></td>
                    <td><%=resultSet.getString("Price") %></td>
                    <td><%=resultSet.getString("supId") %></td>
                       
                    <td><a href="AdminEditProduct.jsp?id=<%=resultSet.getString("PId")%>" class="templatemo-edit-btn">Edit</a></td>   
                    <td><a href="AdminDeleteProduct?id=<%=resultSet.getString("PId")%>" class="templatemo-edit-btn">Delete</a></td>       
        		</tr>
                  <%
            }
      
      			connection.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>    
                </tbody>
              </table>  
            
         </div>                          
          </div> 
        </div>
      </div>
	    </div>
  </body>
</html>