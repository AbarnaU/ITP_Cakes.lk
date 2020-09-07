package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.CusCanCakeOrderService;

/**
 * Servlet implementation class CustomerCancelCakeOrder
 */
@WebServlet("/CustomerCancelCakeOrder")
public class CustomerCancelCakeOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerCancelCakeOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cake_oid=request.getParameter("id");
		
		CusCanCakeOrderService cccos= new CusCanCakeOrderService();
		if(cccos.deleteOrder(cake_oid))
			response.sendRedirect("CustomerViewCakeOrder.jsp");
	}

}
