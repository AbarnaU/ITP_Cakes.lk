package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Register;
import Service.RegisterService;

/**
 * Servlet implementation class RegisterHandler
 */
@WebServlet("/RegisterHandler")
public class RegisterHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String username=request.getParameter("username");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String address=request.getParameter("address");
			String cnumber=request.getParameter("cnumber");
			
			Register register=new Register();
			register.setUsername(username);
			register.setEmail(email);
			register.setPassword(password);
			register.setAddress(address);
			register.setCnumber(cnumber);
			
			RegisterService regsv=new RegisterService();
			if(regsv.insertRegister(register))
				response.sendRedirect("Login.jsp");
		}

}
