package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.AdminCakes;
import Service.AdminEditCakesService;

/**
 * Servlet implementation class AdminEditCakes
 */
@WebServlet("/AdminEditCakes")
public class AdminEditCakes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditCakes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String flavour=request.getParameter("flavour");
		String shape=request.getParameter("shape");
		String qty=request.getParameter("qty");
		String price=request.getParameter("price");
		String description=request.getParameter("description");
		
		AdminCakes admin_cake=new AdminCakes();
		admin_cake.setCid(cid);
		admin_cake.setCname(cname);
		admin_cake.setFlavour(flavour);
		admin_cake.setShape(shape);
		admin_cake.setQty(qty);
		admin_cake.setPrice(price);
		admin_cake.setDescription(description);
		
		AdminEditCakesService aecs=new AdminEditCakesService();
		if(aecs.updateCakes(admin_cake))
			response.sendRedirect("AdminViewCakes.jsp");
		
	}

}
