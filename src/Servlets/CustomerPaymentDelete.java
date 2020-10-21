package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.PaymentDeleteService;

/**
 * Servlet implementation class CustomerPaymentDelete
 */
@WebServlet("/CustomerPaymentDelete")
public class CustomerPaymentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerPaymentDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String tid =request.getParameter("id");
		
		PaymentDeleteService pds= new PaymentDeleteService();
		if(pds.deletetransaction(tid))
			response.sendRedirect("PaymentView.jsp");
	}

}
