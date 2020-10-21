package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Account;
import Service.AddAccountManageDetails;

/**
 * Servlet implementation class AccountAdd
 */
@WebServlet("/AccountAdd")
public class AccountAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountAdd() {
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
		String totals =request.getParameter("totals");
		String ptotal =  request.getParameter("ptotal");
		String totalPrice =  request.getParameter("totalPrice");
		String app = request.getParameter("app");
		
		Account acc = new Account();
		acc.setTotals(totals);
		acc.setPtotal(ptotal);
		acc.setTotalPrice(totalPrice);
		acc.setApp(app);
		
		AddAccountManageDetails aamd = new AddAccountManageDetails();	
		if(aamd.addaccount(acc))
			response.sendRedirect("AccountManage.jsp");
		
		
		
		
		
	}
	


}
