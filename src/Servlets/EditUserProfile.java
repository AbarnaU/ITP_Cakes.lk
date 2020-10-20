package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Register;

import Service.EditUserProfileService;

/**
 * Servlet implementation class EditUserProfile
 */
@WebServlet("/EditUserProfile")
public class EditUserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserProfile() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String cnumber=request.getParameter("cnumber");
		
		Register register=new Register();
		
	
		register.setUsername(username);
		register.setEmail(email);
		register.setAddress(address);
		register.setCnumber(cnumber);
		
		EditUserProfileService eups= new EditUserProfileService();
		if(eups.updateProfile(register))
			response.sendRedirect("UserProfile.jsp");
	}

}
