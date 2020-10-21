package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.feedback;
import Service.CustomerFeedbackService;

/**
 * Servlet implementation class CustomerFeedback
 */
@WebServlet("/CustomerFeedback")
public class CustomerFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		String name = request.getParameter("name");
		String custname = request.getParameter("custname");
		String email= request.getParameter("email");
		String pnumber=request.getParameter("pnumber");
		String message = request.getParameter("message");
		
		feedback feed = new feedback();
		
	
		feed.setName(name);
		feed.setCustname(custname);
		feed.setEmail(email);
		feed.setPnumber(pnumber);
		feed.setMessage(message);
		
		CustomerFeedbackService cfs = new CustomerFeedbackService();
		if(cfs.addfeedback(feed))
			response.sendRedirect("Home.jsp");
		
		
	}

}
