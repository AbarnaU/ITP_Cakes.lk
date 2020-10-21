<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Account Page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
	<link href="css/account.css" rel="stylesheet">
</head>
<body>
</body>
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
            <li><a href=""><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp" ><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
            <li><a href="AdminViewCustomerOrderedCake.jsp"><i class="fa fa-sliders fa-fw"></i>Cake Orders</a></li>
            <li><a href="AccountManage.jsp" class="active"><i class="fa fa-sliders fa-fw"></i>Account</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Delivery</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Payment</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Feedback</a></li>          
            <li style="padding: 20px 47px;"  class="login"><form action="Logout" class="logout" method="post">
							 <button  class="cakes-blue-button" >Logout</button>
   						</form> </li>
          </ul>  
        </nav>
      </div>

<div class="cakes-content col-1 light-gray-bg"> 
        <div class="cakes-content-container">
      <form action="AccountAdd" class="cakes-login-form" method ="post">     
          <div class="cakes-content-widget white-bg"> 
      <table>   
      <tr>
            <th class="first-col"></th>
            <th style="font-size:20px"><strong>Amount</strong></th>
          </tr>
          <tr>          
            <td class="first-col">Total Cost</td>  	
                   <%
				        
				        try {
				        	DbConnection db=new DbConnection();
				            Connection connection = DbConnection.getDBConnection(); 
				            Statement myStm=connection.createStatement();
				            String query = "select sum(price) as totalc  from cake";
				            ResultSet resultSet = myStm.executeQuery(query);
				               while(resultSet.next()){				            	   
				            	  
				%>				
				<td id="totalc"  name="totalc"><%=resultSet.getString("totalc") %> LKR</td>	
          </tr>         
          <tr>          
                   <%				        
				        try {
				        	DbConnection db2=new DbConnection();
				            Connection connection2 = DbConnection.getDBConnection(); 
				            Statement myStm2=connection2.createStatement();
				            String query2 = "select sum(price) as totals  from cake_order o, cake c where c.cname=o.cname ";
				            ResultSet resultSet2 = myStm2.executeQuery(query2);
				               while(resultSet2.next()){				            	  
				%>								
				<td class="first-col">Total Sales</td>  	
				<td id="total"  name="total"> <%=resultSet2.getString("totals") %> LKR</td>	
          </tr>
          <tr>
          <%				        
				        try {
				        	DbConnection db3 = new DbConnection();
				            Connection connection3 = DbConnection.getDBConnection(); 
				            Statement myStm3=connection3.createStatement();
				            String query3 = "select sum(Price) as ptotal  from cake_products";
				            ResultSet resultSet3 = myStm3.executeQuery(query3);
				               while(resultSet3.next()){
				            	   
				            	  
				%>
            <td class="first-col" >Total Transactions</td>
              <td id="ptotal"  name="ptotal"> <%=resultSet3.getString("ptotal") %>  LKR</td>            
          </tr>       
          <tr>
            <td class="first-col">Net Balance</td>
              <td id="totalPrice"  name="totalPrice" >
              
               <script type="text/javascript">
           			var total=0;
           			
           		    var income = new String(" <%=resultSet2.getString("totals") %>");
           		    var cost= new String("<%=resultSet3.getString("ptotal") %>");
           		    
           		    total= income-cost;
           		    document.getElementById("totalPrice").innerHTML = total+" LKR";
           		    
           		              		    	
               </script>
               </td>                       
          </tr>
    </table>
    <table>
   
         <tr>
            <td class="profit-col"><strong> APPARENT </strong></td>
              <td name="app" id="app" >
              <script type="text/javascript">
           			var total=0;
           			
           		    var income = new String(" <%=resultSet2.getString("totals") %>");
           		    var cost= new String("<%=resultSet3.getString("ptotal") %>");
           		    
           		 total=  income-cost;
           		   
           		    
           		    if(total>0){
           		     document.getElementById("app").innerHTML = " Profit";
           		    }
           		    
           		    else
           		    	document.getElementById("app").innerHTML = " Lost";
           		    	
               </script>
              </td>
          </tr> 
               
            <%
					            }
					      
					      			connection3.close();
					      
								} 
								
								catch (Exception e) {
									e.printStackTrace();
								}
					%>  
					<%
					            }
					      
					      			connection2.close();
					      
								} 
								
								catch (Exception e) {
									e.printStackTrace();
								}
					%>  
          
                <%
					            }
					      
					      			connection.close();
					      
								} 
								
								catch (Exception e) {
									e.printStackTrace();
								}
					%> 
					
					
      </table>
     <br>
     <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button">Submit</button>
              </div>  
        
       </div>   
      </form>
    </div>
    </div>

</html>