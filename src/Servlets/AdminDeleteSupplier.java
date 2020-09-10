package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AdminDeleteSupplierService;

/**
 * Servlet implementation class AdminDeleteSupplier
 */
@WebServlet("/AdminDeleteSupplier")
public class AdminDeleteSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteSupplier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supId=request.getParameter("supId");
		
		AdminDeleteSupplierService adcs=new AdminDeleteSupplierService();
		
		if(adcs.deleteSupplier(supId))
			response.sendRedirect("AdminViewSupplier.jsp");
	}



}
