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
								<li><a href="Cakes.jsp">Cakes</a></li>
								<li><a href="#">Customize Cakes</a></li>
								<li class="active"><a href="Contact-Us.jsp">Contact Us</a></li>
								<li>
									<a href="Login.jsp"><input class="pest_btn_logout" type="submit" value="Login"></a>
							</ul>
						</div>	
					</nav>
				</div>
			</div>
		</header>
             
       <section class="contact_form_area p_100">
        	<div class="container">
        		<div class="main_title">
					<h2>Get In Touch</h2>
					<h5>Do you have anything in your mind to let us know?</h5>
				</div>
       			<div class="row">
       				<div class="col-lg-7">
       					<form class="row contact_us_form" action="http://galaxyanalytics.net/demos/cake/theme/cake-html/contact_process.php" method="post" id="contactForm" novalidate="novalidate">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="name" name="name" placeholder="Your name">
							</div>
							<div class="form-group col-md-6">
								<input type="email" class="form-control" id="email" name="email" placeholder="Email address">
							</div>
							<div class="form-group col-md-12">
								<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject">
							</div>
							<div class="form-group col-md-12">
								<textarea class="form-control" name="message" id="message" rows="1" placeholder="Wrtie message"></textarea>
							</div>
							<div class="form-group col-md-12">
								<button type="submit" value="submit" class="btn contact pest_btn form-control">submit now</button>
							</div>
						</form>
       				</div>
       				<div class="col-lg-4 offset-md-1">
       					<div class="contact_details">
       						<div class="contact_d_item">
       							<h3>Address :</h3>
       							<p>45B, Galle Road <br /> Wellawatte, Colombo</p>
       						</div>
       						<div class="contact_d_item">
       							<h5>Phone : <a>076 1234567</a></h5>
       							<h5>Email : <a>info@cakes.lk</a></h5>
       						</div>
       						<div class="contact_d_item">
       							<h3>Opening Hours :</h3>
       							<p>8:00 AM to 10:00 PM</p>
       							<p>Monday to Sunday</p>
       						</div>
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