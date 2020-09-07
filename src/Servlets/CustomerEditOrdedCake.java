package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.CustomerOrderCakes;
import Service.CustomerEditOrderedCakeService;

/**
 * Servlet implementation class CustomerEditOrdedCake
 */
@WebServlet("/CustomerEditOrdedCake")
public class CustomerEditOrdedCake extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerEditOrdedCake() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cake_oid=request.getParameter("cake_oid");
		String cus_id=request.getParameter("cus_id");
		String custname=request.getParameter("custname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String cname=request.getParameter("cname");
		String odate=request.getParameter("odate");
		String address=request.getParameter("address");
		
		CustomerOrderCakes coc=new CustomerOrderCakes();
		coc.setCake_oid(cake_oid);
		coc.setCus_id(cus_id);
		coc.setCustname(custname);
		coc.setEmail(email);
		coc.setPhone(phone);
		coc.setCname(cname);
		coc.setOdate(odate);
		coc.setAddress(address);
		
		CustomerEditOrderedCakeService ceocs= new CustomerEditOrderedCakeService();
		if(ceocs.updateOrder(coc))
			response.sendRedirect("CustomerViewCakeOrder.jsp");
	}

}
