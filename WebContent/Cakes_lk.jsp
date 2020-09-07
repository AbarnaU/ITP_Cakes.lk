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
								<li class="active"><a href="Cakes_lk.jsp">Home</a></li>
								<li><a href="Cakes.jsp">Cakes</a></li>
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
        
       <section class="special_recipe_area">
        	<div class="container">
        		<div class="special_recipe_slider">
        			<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-1.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Vanilla Cupcake</h4>
        						<p>These Vanilla cupcakes are perfect for any occasion</p>
        						<a class="pest_btn" href="Cakes.jsp">View Details</a>
        					</div>
        				</div>
        			</div>
					<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-3.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Birthday Cake</h4>
        						<p>These Birthday cake are perfect for birthday party</p>
        						<a class="pest_btn" href="Cakes.jsp">View Details</a>
        					</div>
        				</div>
        			</div>
					<div class="item">
        				<div class="media">
        					<div class="d-flex">
        						<img src="img/recipe/recipe-2.png" alt="">
        					</div>
        					<div class="media-body">
        						<h4>Wedding Cake</h4>
        						<p>These wedding cakes are perfect for reception </p>
        						<a class="pest_btn" href="Cakes.jsp">View Details</a>
        					</div>
        				</div>
        			</div>	
        		</div>
        	</div>
			
			<script>
				var slideIndex = 0;	
					showSlides();

					function showSlides() {
						var i;
						var count = document.body.getElementsByClassName("item");
						for (i = 0; i <3; i++) {
							count[i].style.display = "none";
						}
						slideIndex++;
						if (slideIndex > 3)
						{
							slideIndex = 1;
						}

						count[slideIndex-1].style.display = "block";

						setTimeout(showSlides, 3000); // Change image every 3.0 seconds
					}				
			</script>
			
        </section>
		
        <section class="welcome_bakery_area cake_feature_main p_50">
        	<div class="container">
				<div class="single_b_title">
					<h2>Our Featured Cakes</h2>
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
								<img src="img/cake-feature/<%=resultSet.getString("img") %>" alt="">
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
      
        <section class="service_we_offer_area p_30">
        	<div class="container">
        		<div class="single_w_title">
        			<h2>Services We offer</h2>
        		</div>
        		<div class="row we_offer_inner">
        			<div class="col-lg-4">
        				<div class="s_we_item">
        					<div class="media">
        						<div class="d-flex">
        							<i class="flaticon-food-6"></i>
        						</div>
        						<div class="media-body">
        							<a><h4>Birthday Cakes</h4></a>
        							<p>A birthday cake is a cake eaten as part of a birthday celebration. Birthday cakes are often layer cakes with frosting served with small lit candles on top representing the celebrant's age</p>
        						</div>
        					</div>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="s_we_item">
        					<div class="media">
        						<div class="d-flex">
        							<i class="flaticon-food-5"></i>
        						</div>
        						<div class="media-body">
        							<a><h4>Tasty Cupcakes</h4></a>
        							<p>A cupcake is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy</p>
        						</div>
        					</div>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="s_we_item">
        					<div class="media">
        						<div class="d-flex">
        							<i class="flaticon-food-3"></i>
        						</div>
        						<div class="media-body">
        							<a href="#"><h4>Wedding Cakes</h4></a>
        							<p>A wedding cake is the traditional cake served at wedding receptions following dinner. In some parts of England, the wedding cake is served at a wedding breakfast</p>
        						</div>
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