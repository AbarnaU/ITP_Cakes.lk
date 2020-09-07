package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Login;
import Service.LoginService;

/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Login login=new Login();
		login.setUsername(username);
		login.setPassword(password);
		
		LoginService regsv=new LoginService();
		
		if (username.equals("Admin") && password.equals("Admin@23")){
		    HttpSession session = request.getSession();
		    session.setAttribute("Username", username);
		    response.sendRedirect("AdminViewCakes.jsp");
            }
                             
	    else if (regsv.checkLogin(login)){
            HttpSession session = request.getSession();
		    session.setAttribute("Username", username);
		    response.sendRedirect("Home.jsp");
	    }
	    else {
		    response.sendRedirect("Login.jsp");
	    }
	}
}
