package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AdDelCustOrderedCakeService;

/**
 * Servlet implementation class AdminDeleteCustomerOrderedCake
 */
@WebServlet("/AdminDeleteCustomerOrderedCake")
public class AdminDeleteCustomerOrderedCake extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteCustomerOrderedCake() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cake_oid=request.getParameter("id");
		
		AdDelCustOrderedCakeService adcoc= new AdDelCustOrderedCakeService();
		if(adcoc.deleteOrder(cake_oid))
			response.sendRedirect("AdminViewCustomerOrderedCake.jsp");
	}
}
