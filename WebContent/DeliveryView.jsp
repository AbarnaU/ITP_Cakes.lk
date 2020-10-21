<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<%String id=request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
        <title>Delivery Details</title>

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
								<li><a href="CustomerFeedback.jsp">Feedback</a></li>
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

<section class="cart_table_area p_100">
        	<div class="container">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
							<th scope="col">Full Name</th>
								<th scope="col">Address</th>
								<th scope="col">City</th>
								<th scope="col">Phone Number</th>
								<th scope="col"></th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
						<%
									try {
									    
										String Id = (String) session.getAttribute("Username");
									    DbConnection db=new DbConnection();
									     Connection connection = DbConnection.getDBConnection(); 
									    Statement myStm=connection.createStatement();
									     if (session != null) {
									    	 if (session.getAttribute("Username") != null) {
									    		 String query = "SELECT * FROM delivery where fname = '"+Id+"' ";
									 
									    ResultSet resultSet = myStm.executeQuery(query);
									
									    while(resultSet.next()) {
								%>
								<tr>
												<td><%=resultSet.getString("fname") %></td>
												<td><%=resultSet.getString("address") %></td>
												<td><%=resultSet.getString("city") %></td>
												<td><%=resultSet.getString("p_number") %></td>										
												<td><a href="DeliveryEdit.jsp?id=<%=resultSet.getString("did")%>">Edit</a></td>   
												<td><a href="DeliveryDelete?id=<%=resultSet.getString("did")%>" class="templatemo-edit-btn"> Delete </a></td> 
								                                                                                                
								
							</tr>
							<%
									    }}}
			                             connection.close();
			                        } catch (Exception e) {
			                            e.printStackTrace();
			                        }
			                    %>
							<tr>
					<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<a class="pest_btn" href="PaymentMethodConfirmation.jsp">Confirm</a>
								</td>
							</tr>
							</tbody>
					</table>
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