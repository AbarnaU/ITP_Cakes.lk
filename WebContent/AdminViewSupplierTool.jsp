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
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Supplier management</a>
    </div>
     <ul class="nav navbar-nav">
      <li class="active"><a href="AdminViewSupplier.jsp">Ingredients</a></li>

      </ul>
    <ul class="nav navbar-nav">
      <li class="active"><a href="AdminViewSupplierTool.jsp">Tools</a></li>
      </ul>
          <ul class="nav navbar-nav">
      <li class="active"><a href="AdminViewSupplierOrder.jsp">Orders</a></li>

      </ul>
  </div>
</nav>
        <div class="cakes-content-container">
        	 <div class="btn-group btn-group-justified">

    <div class="btn-group  text-left">
      <button onclick="window.location.href='AdminAddSupplierTool.jsp'" class="cakes-blue-button"  >Add New Tool Supplier</button>
    </div>
    <div class="btn-group  text-right">
       <form action="" method="get">
       		<input type="text" class="form-control" name="src" placeholder="search here...">
       </form>
    </div>
  </div>
          <div class="cakes-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered tcakes-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="cakes-sort-by">Supplier Id <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Supplier Name <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Location <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Email <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Phone <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Delivery <span class="caret"></span></a></td>       
                    <td><a href="" class="cakes-sort-by">MinOrderQty <span class="caret"></span></a></td>         
                    <td>Order</td>
                     <td>Edit</td>
                      <td>Delete</td>
                  </tr>
                </thead>
                </tbody>
               <%
        
        try {
        	DbConnection db=new DbConnection();
            Connection connection = DbConnection.getDBConnection(); 
            ResultSet res = null;
            Statement myStm=connection.createStatement();
            String query=request.getParameter("src");
            String data;
            
            if(query!=null){
            	data = "select * from suppliertool_table where name like '%"+query+"%' ";
            }else{
            	data = "select * from suppliertool_table";
            }
          
            res = myStm.executeQuery(data);;
               while(res.next()){
%>
                  <tr>
                    
                  	<td><%=res.getString("supId") %></td>
                    <td><%=res.getString("name") %></td>
                    <td><%=res.getString("location") %></td>
                    <td><%=res.getString("email") %></td>
                    <td><%=res.getString("phone") %></td>
                    <td><%=res.getString("delivery") %></td>
                    <td><%=res.getString("minOrderQty") %></td>    
                  
                    <td>
              			<button onclick="window.location.href='AdminOrderSupplierTool.jsp?supId=<%=res.getString("supId")%>';" type="button" class="btn btn-primary">Order</button>
              		<td>
             			<button onclick="window.location.href='AdminEditSupplierTool.jsp?supId=<%=res.getString("supId")%>';" type="button" class="btn btn-success">Edit</button></td>
              		<td>
            			<button  onclick="window.location.href='AdminDeleteSupplierTool?supId=<%=res.getString("supId")%>';" type="button" class="btn btn-danger">Delete</button></td>
            
                         
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