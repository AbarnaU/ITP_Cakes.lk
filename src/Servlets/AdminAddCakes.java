package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.AdminCakes;
import Service.AdminAddCakesService;

/**
 * Servlet implementation class AdminAddCakes
 */
@WebServlet("/AdminAddCakes")
public class AdminAddCakes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddCakes() {
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
		String img=request.getParameter("img");
		String description=request.getParameter("description");
		
		AdminCakes ac=new AdminCakes();
		ac.setCid(cid);
		ac.setCname(cname);
		ac.setFlavour(flavour);
		ac.setShape(shape);
		ac.setQty(qty);
		ac.setPrice(price);
		ac.setImg(img);
		ac.setDescription(description);
		
		AdminAddCakesService aac= new AdminAddCakesService();
		if(aac.addCake(ac))
			response.sendRedirect("AdminViewCakes.jsp");
		
	}

}
