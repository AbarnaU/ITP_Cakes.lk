<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<%String id=request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
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
        <link href="css/summary.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
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
		
<div class="container wrapper">
<div class="row cart-body">

 <div class="text-center">
        		<button type="submit" class=" pest_btn_logout" onclick="setValue()" >Demo</button>
			</div>
		
					 <script>
				function setValue() {
					document.getElementById("fname").value = 'Harry';
					document.getElementById('address').value = 'Malabe';
					document.getElementById('city').value = 'Colombo';
					document.getElementById('pnumber').value = '0766791235';
					
				}
			</script>
                <form class="form-horizontal" method="post" action="CustomerDeliveryAdd">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Review Order 
                         <div class="pull-right">
                         <small><a class="afix-1" href="#">Edit Order</a></small></div>
                        </div>
                        <div class="panel-body" align="center">
                        <%
									try {
									    
									String Id = (String) session.getAttribute("Username");
									    DbConnection db=new DbConnection();
									     Connection connection = DbConnection.getDBConnection(); 
									    Statement myStm=connection.createStatement();
									     if (session != null) {
									if (session.getAttribute("Username") != null) {
									    String query = "SELECT * FROM cake c, cake_order o where custname='"+Id+"' and  c.cname=o.cname";
									 
									    ResultSet resultSet = myStm.executeQuery(query);
									
									    while(resultSet.next()) {
								%>
                            <div class="form-group">
                                <div class="col-sm-3 col-xs-3">
                                    <img class="img-responsive" src="//c1.staticflickr.com/1/466/19681864394_c332ae87df_t.jpg" />
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="col-xs-12"><%=resultSet.getString("cname") %></div>
                                    <div class="col-xs-12"><small>Quantity:<span> </span></small></div>
                                </div>
                                <div class="col-sm-3 col-xs-3 text-right">
                                    <h6><span>Rs</span><%=resultSet.getString("price") %></h6>
                                </div>
                            </div>
                                                                    
                            
                             <%
			                            }}}
			                             connection.close();
			                        } catch (Exception e) {
			                            e.printStackTrace();
			                        }
			                    %>
                        </div>
                    </div>
                    <!--REVIEW ORDER END-->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
             
                  
              
								  <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body" >
                              
					
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Shipping Address</h4>
                                </div>
                            </div>                         
                          <div class="form-group">
                                <div class="col-md-12"><strong>Full Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="fname" class="form-control" value="" id="fname" />
                                </div>
                            </div>
           

         <%
									try {
									    
									String Id = (String) session.getAttribute("Username");
									    DbConnection db=new DbConnection();
									     Connection connection = db.getDBConnection();
									    Statement myStm=connection.createStatement();
								     if (session != null) {
									if (session.getAttribute("Username") != null) {
									    String query = "SELECT username FROM user where username='"+Id+"'";
									    ResultSet resultSet = myStm.executeQuery(query);
									
									
									    while (resultSet.next()) {
								%> 
	 								<div class="none">
								    <label for="last">Customer Name</label>
									<input type="text" class="form-control" id="custname" name="custname" value="<%=resultSet.getString("userame") %> ">
								</div>
								 <%
		                            }}}
		                             connection.close();
		                        } catch (Exception e) {
		                            e.printStackTrace();
		                        }
		                    %>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="" id="address" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value=""  id="city"/>
                                </div>
                            </div>                                                       
                            <div class="form-group">
                                <div class="col-md-12"><strong>Phone Number:</strong></div>
                                <div class="col-md-12"><input type="text" name="pnumber" class="form-control" value="" id="pnumber" /></div>
                            </div>
                                </div>
                    </div>
                           
                    
                    
                </div>
                		
                            			
                		
                		
                					
                			<div class="container-login100-form-btn m-t-32 logout" align="center">
						<button class=" pest_btn_logout">
							Submit
						</button>
						</div>
						</form>
						</div>
                		</div>
								
                	
            
              
              <br><br>
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