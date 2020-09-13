package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.AdminProduct;

import Service.AdminAddProductService;

/**
 * Servlet implementation class AdminAddProduct
 */
@WebServlet("/AdminAddProduct")
public class AdminAddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddProduct() {
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
		
		
		AdminProduct ac=new AdminProduct();
		ac.setPId(PId);
		ac.setPName(PName);
		ac.setDescription(Description);
		ac.setQuantity(Quantity);
		ac.setPrice(Price);
		ac.setSupId(supId);
		
		
		AdminAddProductService aac= new AdminAddProductService();
		if(aac.addProduct(ac))
			response.sendRedirect("AdminViewProduct.jsp");
		
	}

}