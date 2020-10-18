<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<!DOCTYPE html>
<html>
<head>1
<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <h2 class="margin-bottom-10 text-center">Design Cakes Request</h2> 
          <div class="cakes-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered tcakes-user-table">
                <thead>
                  <tr>
                    <td>Cake Id <span class="caret"></span></td>
                    <td>Cake Name <span class="caret"></span></td>
                    <td>Add More Details <span class="caret"></span></td>
                    <td>Flavor <span class="caret"></span></td>
                    <td>Shape <span class="caret"></span></td>
                    <td>Size <span class="caret"></span></td>
                    <td>Image <span class="caret"></span></td>
                    <td>Color <span class="caret"></span></td> 
                    <td>Description <span class="caret"></span></td> 
                    <td>Decision <span class="caret"></span></td> 
                  </tr>
                </thead>
                </tbody>
               <%
        
        try {
        	DbConnection db=new DbConnection();
            Connection connection = DbConnection.getDBConnection(); 
            Statement myStm=connection.createStatement();
            String query = "select * from ccake ";
            ResultSet resultSet = myStm.executeQuery(query);
               while(resultSet.next()){
%>
                  <tr>
                    
                  	<td><%=resultSet.getString("ccid") %></td>
                    <td><%=resultSet.getString("ccname") %></td>
                     <td><%=resultSet.getString("caddmore") %></td>
                    <td><%=resultSet.getString("cflavour") %></td>
                    <td><%=resultSet.getString("cshape") %></td>
                    <td><%=resultSet.getString("csize") %></td>
                    <td><%=resultSet.getString("img") %></td>
                    <td><%=resultSet.getString("ccolor") %></td>
                    <td><%=resultSet.getString("cdescription") %></td>   
                    <td><%=resultSet.getString("decision") %></td>   
                    
                    <td><a href="CustomizeCakeAdminEdit.jsp?id=<%=resultSet.getString("ccid")%>" class="templatemo-edit-btn">Accept/Reject</a></td>      
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