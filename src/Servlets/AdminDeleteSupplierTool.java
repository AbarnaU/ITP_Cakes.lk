package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Service.AdminDeleteSupplierToolService;

/**
 * Servlet implementation class AdminDeleteSupplierTool
 */
@WebServlet("/AdminDeleteSupplierTool")
public class AdminDeleteSupplierTool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteSupplierTool() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supId=request.getParameter("supId");
		
		AdminDeleteSupplierToolService adcs=new AdminDeleteSupplierToolService();
		
		if(adcs.deleteSupplierTool(supId))
			response.sendRedirect("AdminViewSupplierTool.jsp");
	}


}
