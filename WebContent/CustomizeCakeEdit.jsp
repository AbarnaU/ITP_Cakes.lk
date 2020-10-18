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
								<li class="active"><a href="CustomizeCakeView.jsp">Customized Cakes</a></li>
								<li><a href="#">My Profile</a></li>
								<li><a href="CustomerViewCakeOrder.jsp">My Orders</a></li>
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
               	    		<h2>Customized Cakes Edit</h2>
               	    	</div>
               	   
                		<div class="billing_form_area">
                			<form class="billing_form row justify-content-center" action="CustomizeEditCake" method="post">
              <%

				try{
						Connection con = DbConnection.getDBConnection(); 
		 		        Statement myStm= con.createStatement();
		 		       	String query  ="SELECT * FROM ccake WHERE ccid='"+id+"'";
	
	    				ResultSet  resultSet = myStm.executeQuery(query);
	    
	      			while(resultSet.next()){
    	      	  
			%>
               
                <div class="none">                  
                    <label>Cake Name</label>
                    <input type="text" class="form-control" id="ccname"name="ccname" value="<%=resultSet.getString("ccname")%>">                  
                </div> 
                
                <div class="col-lg-12 col-md-12 form-group"> 
              		<label>Add more details about Cake</label>
                    <input type="text" class="form-control" id="caddmore"name="caddmore" value="<%=resultSet.getString("caddmore")%>">
                </div> 
              </div>
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Shape</label>
                    <input type="text" class="form-control" id="cshape"name="cshape" value="<%=resultSet.getString("cshape")%>">                  
                </div>   
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Flavor</label>
                    <input type="text" class="form-control" id="cflavour"name="cflavour" value="<%=resultSet.getString("cflavour")%>">                     
                </div>
               </div>
               <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Size</label>
                    <input type="text" class="form-control" id="csize" name="csize" value="<%=resultSet.getString("csize")%>">   
                </div>
                <div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Color</label>
                    <input type="text" class="form-control" id="ccolor" name="ccolor" value="<%=resultSet.getString("ccolor")%>">   
                </div>
               </div>
               <div class="row form-group">
                <div class="col-lg-12 col-md-12 form-group">                                  
                    <label>Description on cake</label>
                    <input type="text" class="form-control" id="cdescription" name="cdescription" value="<%=resultSet.getString("cdescription")%>">   
                </div>
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
                <button type="submit" value="submit" class="btn pest_btn2">Update</button>
              </div>   
                
              </form>          
		
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