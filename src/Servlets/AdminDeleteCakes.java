package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AdminDeleteCakesService;

/**
 * Servlet implementation class AdminDeleteCakes
 */
@WebServlet("/AdminDeleteCakes")
public class AdminDeleteCakes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteCakes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("id");
		
		AdminDeleteCakesService adcs=new AdminDeleteCakesService();
		
		if(adcs.deleteCakes(cid))
			response.sendRedirect("AdminViewCakes.jsp");
	}

}
