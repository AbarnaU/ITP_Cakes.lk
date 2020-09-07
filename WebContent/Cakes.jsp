<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
        <title>Cakes.lk</title>

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
								<li><a href="Cakes_lk.jsp">Home</a></li>
								<li class="active"><a href="Cakes.jsp">Cakes</a></li>
								<li><a href="#">Customize Cakes</a></li>
								<li><a href="Contact-Us.jsp">Contact Us</a></li>
								<li>
									<a href="Login.jsp"><input class="pest_btn_logout" type="submit" value="Login"></a>
							</ul>
						</div>	
					</nav>
				</div>
			</div>
		</header>
             
        <section class="our_cakes_area">
        	<div class="container">
        		<div class="single_b_title">
        			<h2>Our Cakes</h2>	
        		</div>
        		<div class="cake_feature_row row">
        		<%
					try{
							DbConnection db=new DbConnection();
			            	Connection connection = DbConnection.getDBConnection(); 
			            	Statement myStm=connection.createStatement();
			 		        
			 		       	String query  ="SELECT * FROM cake";
		
		    				ResultSet  resultSet = myStm.executeQuery(query);
		    
		      		while(resultSet.next()){
		      %>
					<div class="col-lg-3 col-md-4 col-6">
						<div class="cake_feature_item">
							<div class="cake_img">
								<img src="img/cake-feature/<%=resultSet.getString("img") %>"" alt="">
							</div>
							<div class="cake_text">
								<h3><%=resultSet.getString("cname")%></h3>
								<h4>Rs <%=resultSet.getString("price")%>.00</h4>
								<h5><%=resultSet.getString("flavour")%></h5>
								<h5><%=resultSet.getString("shape")%></h5>
								<a class="pest_btn" href="CustomerCakeOrder.jsp">Order</a>
							</div>
						</div>
					</div>
					<% 	
							}
			      
			      		connection.close();
			      		}
						
						
						catch (Exception e) {
							e.printStackTrace();
						}
					%>
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