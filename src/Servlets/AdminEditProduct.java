package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.AdminProduct;
import Service.AdminEditProductService;

/**
 * Servlet implementation class AdminEditProduct
 */
@WebServlet("/AdminEditProduct")
public class AdminEditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String PId=request.getParameter("PId");
		String PName=request.getParameter("PName");
		String Description=request.getParameter("Description");
		String Quantity=request.getParameter("Quantity");
		String Price=request.getParameter("Price");
		String supId=request.getParameter("supId");
		
		
		AdminProduct admin_product=new AdminProduct();
		admin_product.setPId(PId);
		admin_product.setPName(PName);
		admin_product.setDescription(Description);
		admin_product.setQuantity(Quantity);
		admin_product.setPrice(Price);
		admin_product.setSupId(supId);
		
		
		AdminEditProductService aecs=new AdminEditProductService();
		if(aecs.updateProduct(admin_product))
			
			response.sendRedirect("AdminViewProduct.jsp");
		
	}

}
