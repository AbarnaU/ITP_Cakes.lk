package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.CustomerDelivery;
import Service.CustomerDeliveryService;

/**
 * Servlet implementation class CustomerDeliveryAdd
 */
@WebServlet("/CustomerDeliveryAdd")
public class CustomerDeliveryAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDeliveryAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		String fname=request.getParameter("fname");		
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String pnumber=request.getParameter("pnumber");
		
		
		CustomerDelivery del= new CustomerDelivery();
		
		
		del.setFname(fname);		
		del.setAddress(address);
		del.setCity(city);
		del.setPnumber(pnumber);
		
		
		CustomerDeliveryService das=new CustomerDeliveryService();
		if(das.add_delivery(del))
			response.sendRedirect("DeliveryView.jsp");
		
	}

}
