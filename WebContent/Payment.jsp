<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="Connection.DbConnection"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Payment</title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/card.css">
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

    <!-- The HTML for our form will go here -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/jquery.payform.min.js"></script>
    <script src="js/card.js"></script>
    <script src="js/cardempty.js"></script>
    
    <div class="creditCardForm">
    <div class="heading">
        <h2><strong>Confirm Purchase</strong></h2>
    </div>
    <div class="payment" >
    <div class="cakes-content-container">
    <div class="text-center">
        		<button type="submit" class="pest_btn" onclick="setValue()" >Demo</button>
			</div>
        <form name="online"  action = "PaymentMethodConfirmation.jsp">
        
        <script>
				function setValue() {
					document.getElementById('holder').value = 'Hariscumar';
					document.getElementById('cvv').value = '396';
					document.getElementById('cardNumber').value = '4605 5940 0204 5329';
					document.getElementById('01').value = 'January';
					document.getElementById('02').value = '2024';
				}
			</script>
            <div class="form-group owner">
                <label for="holder">Card Holder Name</label>
                <input type="text" class="form-control" id="holder" name="holder" required>
            </div>
            <div class="form-group CVV">
                <label for="cvv" >CVV</label>
                <input type="text" class="form-control" id="cvv" name="cvv" maxlength="3" data-validation-type="numeric" data-validation-error-msg="Please enter a valid CVV number" data-validation-error-msg-container="#cvv-error-dialog"  required>
            </div>
            <div class="form-group" id="card-number-field" name="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber"  name="cardNumber" required>
            </div>
            <div class="form-group" id="expiration-date"  name="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01" id="01">January</option>
                    <option value="02" id="01">February </option>
                    <option value="03" id="01">March</option>
                    <option value="04" id="01">April</option>
                    <option value="05" id="01">May</option>
                    <option value="06" id="01">June</option>
                    <option value="07" id="01">July</option>
                    <option value="08" id="01">August</option>
                    <option value="09" id="01">September</option>
                    <option value="10" id="01">October</option>
                    <option value="11" id="01">November</option>
                    <option value="12" id="01">December</option>
                </select>
                <select>
                    <option value="16" id="02"> 2020</option>
                    <option value="17" id="02"> 2021</option>
                    <option value="18" id="02"> 2022</option>
                    <option value="19" id="02"> 2023</option>
                    <option value="20" id="02"> 2024</option>
                    <option value="21" id="02"> 2025</option>
                     <option value="16" id="02">2026</option>
                    <option value="17" id="02"> 2027</option>
                    <option value="18" id="02"> 2028</option>
                </select>
            </div>
            <div class="form-group" id="credit_cards">
                <img src="img/visa.jpg" id="visa">
                <img src="img/mastercard.jpg" id="mastercard">
                <img src="img/amex.jpg" id="amex">
            </div>
          
             
			<div class="form-group text-center">
                <button type="submit"class="pest_btn" onclick="return validation()" >PAY</button>
              </div> 
             						
   				</form>	
   				 </div>				
   </div>
   </div>
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