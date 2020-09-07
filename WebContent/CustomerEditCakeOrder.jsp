<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<%String id=request.getParameter("id"); %>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
        <title>Cakes.lk</title>

        <!-- Icon css link -->
        <link href="vendors/flat-icon/flaticon.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
		    
    </head>
    <body>
        
        <header class="main_header_area">
			<div class="main_menu_two">
				<div class="container">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
						<a class="navbar-brand" href="index.html"><img src="img/logo.png" alt=""></a>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav justify-content-end">
								<li><a href="Home.jsp">Home</a></li>
								<li><a href="H_Cakes.jsp">Cakes</a></li>
								<li><a href="#">Customize Cakes</a></li>
								<li><a href="#">My Profile</a></li>
								<li class="active"><a href="CustomerViewCakeOrder.jsp">My Orders</a></li>
								<li><a href="">Feedback</a></li>
								<li>
									<%
										if (session != null) {
											if (session.getAttribute("Username") != null) {
												String name = (String) session.getAttribute("Username");
										%>
								                             
								                           <%
											} else {
												response.sendRedirect("Login.jsp");
											}
										}
									%>
									<div class="logout" >
										<form action="Logout" method="post">
										
											<input class="pest_btn_logout" type="submit" value="Logout">
				   						</form> 
   									</div> 
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</header>
              
       <section class="billing_details_area">
            <div class="container">
                <div class="row justify-content-center">
                	<div class="col-lg-6">
               	    	<div class="single_b_title">
               	    		<h2>Order Cake</h2>
               	    	</div>
               	   
                		<div class="billing_form_area">
                			<form class="billing_form row justify-content-center" action="CustomerEditOrdedCake" method="post">
                				 <%

										try{
												Connection con = DbConnection.getDBConnection(); 
								 		        Statement myStm= con.createStatement();
								 		       	String query  ="SELECT * FROM cake_order WHERE cake_oid='"+id+"'";
							
							    				ResultSet  resultSet = myStm.executeQuery(query);
							    
							      			while(resultSet.next()){
						    	      	  
									%>
														
								<div class="none">
								    <label>Order Id</label>
									<input class="form-control" id="cake_oid" name="cake_oid" value="<%=resultSet.getString("cake_oid")%>">
								</div>
								<div class="form-group col-md-6">
								    <label>Customer Id</label>
									<input type="text" class="form-control" id="cus_id" name="cus_id" value="<%=resultSet.getString("cus_id")%>"disabled>
								</div>
								<div class="form-group col-md-6">
								    <label for="last">Customer Name</label>
									<input type="text" class="form-control" id="custname" name="custname" value="<%=resultSet.getString("custname")%>"disabled>
								</div>
								<div class="form-group col-md-6">
								    <label>Email</label>
									<input type="email" class="form-control" id="email" name="email" value="<%=resultSet.getString("email")%>">
								</div>
								<div class="form-group col-md-6">
								    <label>Phone</label>
									<input type="text" class="form-control" id="phone" name="phone" value="<%=resultSet.getString("phone")%>">
								</div>
							
								<div class="col-lg-12 col-md-12 form-group">                  
				                    <label>Cake Name</label>
				                    <select id="cname" name="cname" class="form-control">
				                      <option selected><%=resultSet.getString("cname")%></option>
				                      
				                      	<% 
													}
									      
									      			con.close();
									      
												} 
												
												catch (Exception e) {
													e.printStackTrace();
												}
									%> 
				                      <%
						
										try{
												Connection conn = DbConnection.getDBConnection(); 
								 		        Statement mySt= conn.createStatement();
								 		       	String query2  ="SELECT * FROM cake";
							
							    				ResultSet  resultSet2 = mySt.executeQuery(query2);
							    
							      			while(resultSet2.next()){
						    	      	  
									%>
												 <option><%=resultSet2.getString("cname")%></option>
								
									   <% 
													}
									      
									      			conn.close();
									      
												} 
												
												catch (Exception e) {
													e.printStackTrace();
												}
									%> 
								    </select>
								</div>
									 <%

										try{
												Connection con = DbConnection.getDBConnection(); 
								 		        Statement myStm= con.createStatement();
								 		       	String query  ="SELECT * FROM cake_order WHERE cake_oid='"+id+"'";
							
							    				ResultSet  resultSet = myStm.executeQuery(query);
							    
							      			while(resultSet.next()){
						    	      	  
									%>
								<div class="form-group col-md-12">
								    <label for="zip">Delivery Date</label>
									<input type="date" class="form-control" id="odate" name="odate" value="<%=resultSet.getString("odate") %>">
								</div>
								<div class="form-group col-md-12">
								    <label>Address</label>
									<input type="text" class="form-control" id="address" name="address" value="<%=resultSet.getString("address") %>">
								</div>
								<% 
													}
									      
									      			con.close();
									      
												} 
												
												catch (Exception e) {
													e.printStackTrace();
												}
									%> 
								
										
							    <div class="form-group text-center">
										<button type="submit" value="submit" class="btn pest_btn2">Update Order</button>
								</div>	
											
							</form>	
		  							
                		</div>
                	</div>
                </div>
              </div>
        </section>
      
      <footer class="footer_area">
        	<div class="footer_widgets">
        		<div class="container">
        			<div class="row footer_wd_inner">
        				<div class="col-lg-3 col-6">
        					<aside class="f_widget f_about_widget">
        						<img src="img/footer-logo.png" alt="">
        						<p>At Cakes.lk, it is our mission to bring you the largest selection of cakes and other great quality desserts on the market. Along with a vast wealth of knowledge in the products we sell, Cakes.lk carries everything you could possibly imagine and more.</p>
        					</aside>
        				</div>
        				<div class="col-lg-3 col-6">
        					<aside class="f_widget f_link_widget">
        						<div class="f_title">
        							<h3>Work Times</h3>
        						</div>
        						<ul class="list_style">
        							<li><a>Weekdays: 8 am - 10 pm</a></li>
        							<li><a>Weekends : 10 am - 8 pm</a></li>
        						</ul>
        					</aside>
        				</div>
        				<div class="col-lg-3 col-6">
        					<aside class="f_widget f_contact_widget">
        						<div class="f_title">
        							<h3>Contact Info</h3>
        						</div>
        						<h4>+94 771234567</h4>
        						<p>45B, Galle Road<br />Wellawatte, Colombo</p>
        						<h5>info@cakes.lk</h5>
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </footer>
       
    </body>

</html>