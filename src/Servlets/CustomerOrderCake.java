package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.CustomerOrderCakes;
import Service.CustomerOrderCakeService;

/**
 * Servlet implementation class CustomerOrderCake
 */
@WebServlet("/CustomerOrderCake")
public class CustomerOrderCake extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerOrderCake() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cus_id=request.getParameter("cus_id");
		String custname=request.getParameter("custname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String cname=request.getParameter("cname");
		String odate=request.getParameter("odate");
		String address=request.getParameter("address");
		
		CustomerOrderCakes coc=new CustomerOrderCakes();
		coc.setCus_id(cus_id);
		coc.setCustname(custname);
		coc.setEmail(email);
		coc.setPhone(phone);
		coc.setCname(cname);
		coc.setOdate(odate);
		coc.setAddress(address);
		
		CustomerOrderCakeService cocs=new CustomerOrderCakeService();
		if(cocs.orderCake(coc))
			response.sendRedirect("CustomerViewCakeOrder.jsp");
		
		
	}

}
