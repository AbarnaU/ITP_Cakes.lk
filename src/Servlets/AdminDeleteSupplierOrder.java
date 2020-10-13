package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AdminDeleteSupplierOrderService;

/**
 * Servlet implementation class AdminDeleteSupplierOrder
 */
@WebServlet("/AdminDeleteSupplierOrder")
public class AdminDeleteSupplierOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteSupplierOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supId=request.getParameter("supOrdId");
		
		AdminDeleteSupplierOrderService adcs=new AdminDeleteSupplierOrderService();
		
		if(adcs.deleteSupplierOrder(supId))
			response.sendRedirect("AdminViewSupplierOrder.jsp");
	}


}
