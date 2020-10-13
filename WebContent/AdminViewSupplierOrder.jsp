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
    <style type="text/css"> 
	.cakes-red-button {
	border-radius: 2px;
	padding: 10px 30px;
	text-transform: uppercase;
	transition: all 0.3s ease;
	background-color: #CB4335;
	border: none;	
	color: white;	
} 
</style> 
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
      <a class="navbar-brand" href="AdminViewSupplier.jsp">Supplier management</a>
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
  </div></nav>
        <div >
        
 
 			<div class="btn-group btn-group-justified">

    <div class="btn-group  text-left">
      <button onclick="window.location.href='SupplierOrderReport.jsp'" class="cakes-red-button"  >Report generate</button>
    </div>
    <div class="btn-group  text-right">
       <form action="" method="get">
       		<input type="text" class="form-control" name="src" placeholder="search here...">
       </form>
    </div>
  </div> 
 			 
          <div class="cakes-content-widget no-padding">
            <div class="panel panel-default table-responsive-sm">
              <table class="table table-striped table-bordered tcakes-user-table table-responsive">
                <thead>
                  <tr>
                    <td><a class="cakes-sort-by">Order Id <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Supplier Id <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Supplier Name <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Supplier Type <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Item <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Quantity <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Price <span class="caret"></span></a></td> 
                    <td><a class="cakes-sort-by">Order Total <span class="caret"></span></a></td> 
                    <td><a class="cakes-sort-by">Balance <span class="caret"></span></a></td> 
                 

                          
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
            	data = "select * from supplierorder_table where name like '%"+query+"%' ";
            }else{
            	data = "select supOrdId,supId,name,supType,ordItm,qty,price,total,balance from supplierorder_table";
            }
          
            res = myStm.executeQuery(data);
               while(res.next()){
%>
                  <tr>
                    <td><%=res.getString("supOrdId") %></td>
                  	<td><%=res.getString("supId") %></td>
                    <td><%=res.getString("name") %></td>
                    <td><%=res.getString("supType") %></td>
                    <td><%=res.getString("ordItm") %></td>
                    <td><%=res.getString("qty") %></td>
                    <td><%=res.getString("price") %></td>  
                     <td><%=res.getString("total") %></td>
                     <td><%=res.getString("balance") %></td>
                     <td>
              <button onclick="window.location.href='AdminEditPaySupplierOrder.jsp?supOrdId=<%=res.getString("supOrdId")%>';" type="button" class="btn btn-success">Edit</button></td>
              <td>
            <button  onclick="window.location.href='AdminDeleteSupplierOrder?supOrdId=<%=res.getString("supOrdId")%>';" type="button" class="btn btn-danger">Delete</button>
            </td>
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
         <div class="form-group"></div>
         <div class=" panel panel-default table-responsive-md" >
         <table class="table table-striped table-bordered tcakes-user-table">
                <thead  class="thead-dark">
                  <tr>
                    
                    <td><a class="cakes-sort-by">Supplier Id <span class="caret"></span></a></td>
                    <td><a class="cakes-sort-by">Supplier Name <span class="caret"></span></a></td>
              <td><a class="cakes-sort-by">Total Amount <span class="caret"></span></a></td>
               <td><a class="cakes-sort-by">Total Balance <span class="caret"></span></a></td>
                 

                    
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
            	data = "select supId,name,SUM(qty*price) AS total,sum(balance) as balance from supplierorder_table where name like '%"+query+"%' ";
            }else{
            	data = "SELECT supId,name, SUM(qty*price) total,sum(balance) as balance FROM  supplierorder_table GROUP BY  name ORDER BY  total DESC;";
            	
            	
            }
          
            res = myStm.executeQuery(data);
               while(res.next()){
%>
                  <tr>
                    
                  	<td><%=res.getString("supId") %></td>
                    <td><%=res.getString("name") %></td>
                    <td><%=res.getString("total") %></td>
                    <td><%=res.getString("balance") %></td>
                    
                    
                   
                       
                    
           
                     
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
                                 
          </div> </div>
        </div>

      </div>
	    </div>
  </body>
</html>