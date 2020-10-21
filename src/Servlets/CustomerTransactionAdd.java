package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Transaction;
import Service.CustomerAddTransactionService;

/**
 * Servlet implementation class CustomerTransactionAdd
 */
@WebServlet("/CustomerTransactionAdd")
public class CustomerTransactionAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerTransactionAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String custname = request.getParameter("custname");
		String cake_oid = request.getParameter("cake_oid");
		String cname = request.getParameter("cname");
		String price = request.getParameter("price");
		String payment = request.getParameter("payment");
		
		
		Transaction transaction = new Transaction();
		transaction.setCustame(custname);
		transaction.setCake_oid(cake_oid);
		transaction.setCname(cname);
		transaction.setPrice(price);
		transaction.setPayment(payment);
		
		CustomerAddTransactionService cats = new CustomerAddTransactionService();
		if(cats.addTransaction(transaction));{
			
		}
		if(payment.equals("Online"))
		{
			response.sendRedirect("Payment.jsp"); 
		}
	else {
		response.sendRedirect("PaymentMethodConfirmation.jsp");
		}
}	

}
