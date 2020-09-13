package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.AdminDeleteProductService;

/**
 * Servlet implementation class AdminDeleteProduct
 */
@WebServlet("/AdminDeleteProduct")
public class AdminDeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String PId=request.getParameter("id");
		
		AdminDeleteProductService adcs=new AdminDeleteProductService();
		
		if(adcs.deleteProduct(PId))
			response.sendRedirect("AdminViewProduct.jsp");
	}

}

