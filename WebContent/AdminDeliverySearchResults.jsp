<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html>

<html lang="en">
  <head>
  	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    
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
            <li><a href="AdminViewSupplier.jsp"><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href="AdminViewProduct.jsp"><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp"><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
            <li><a href="AdminViewCustomerOrderedCake.jsp"><i class="fa fa-sliders fa-fw"></i>Cake Orders</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Account</a></li>
            <li><a href="AdminViewDelivery.jsp"  class="active"><i class="fa fa-sliders fa-fw"></i>Delivery</a></li>
            <li><a href="AdminViewPayment.jsp"><i class="fa fa-sliders fa-fw"></i>Payment</a></li>
            <li><a href="AdminViewFeedback.jsp"><i class="fa fa-sliders fa-fw"></i>Feedback</a></li>          
            <li style="padding: 20px 47px;"  class="login"><form action="Logout" class="logout" method="post">
							 <button  class="cakes-blue-button" >Logout</button>
   						</form> </li>
          </ul>  
        </nav>
      </div>
      
      <!-- Main content --> 
        <div class="cakes-content col-1 light-gray-bg"> 
        <div class="cakes-content-container">
         <div class="text-center">
         <form class="form-inline" action="AdminPaymentSearch" method="post">
		    <input class="form-control" type="search" id="id" name="id" placeholder="Search" aria-label="Search">
		    <button class="btn btn-primary" type="submit">Search</button>
		  </form>
        </div>
        	
          <div class="cakes-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered tcakes-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="cakes-sort-by">Delivery Id <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Receiver Name <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Address <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">City <span class="caret"></span></a></td>
                    <td><a href="" class="cakes-sort-by">Phone Number <span class="caret"></span></a></td>
                    
                  </tr>
                </thead>
                </tbody>
    		 <%
                                	
                int count = 0;

                if (request.getAttribute("DeliveryList") != null) {
                    ArrayList deliverylist = (ArrayList) request.getAttribute("DeliveryList");
                    Iterator itr = deliverylist.iterator();
                    while (itr.hasNext()) {
                        count++;
                        ArrayList DeliveryList = (ArrayList) itr.next();
            %>              
            	<tr>
            		<td><%=DeliveryList.get(0)%></td>
                    <td><%=DeliveryList.get(1)%></td>
                    <td><%=DeliveryList.get(2)%></td>
                    <td><%=DeliveryList.get(3)%></td>
                    <td><%=DeliveryList.get(4)%></td>
                   
        		</tr>
          <%
                    }
                    
                }
                if (count == 0) {
            %>
            
            	<tr>
            		<td  colspan=6 class="text-center"><h2>No Record Found !</h2></td>
            	</tr>
        	<%          
        		}
            %>          
          </tbody>
       </table>  
            
         </div>                          
          </div> 
          	<div class="text-center">
         	 <a class="btn btn-primary " href="AdminViewDelivery.jsp">Back</a>   
          	</div>
        </div>
      </div>
	    </div>
  </body>
</html>