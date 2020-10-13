package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.supplierOrder;

import Service.AdminOrderSupplierService;

/**
 * Servlet implementation class AdminOrderSupplier
 */
@WebServlet("/AdminOrderSupplier")
public class AdminOrderSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderSupplier() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supOrdId=request.getParameter("supOrdId");
		String supId=request.getParameter("supId");
		String name=request.getParameter("name");
		String supType=request.getParameter("supType");
		String ordItm=request.getParameter("ordItm");
		int qty =  Integer.parseInt(request.getParameter("qty"));
		int price =  Integer.parseInt(request.getParameter("price"));
	
		

		
		
		supplierOrder ac=new supplierOrder();
		ac.setSupOrdId(supOrdId);
		ac.setSupId(supId);
		ac.setName(name);
		ac.setSupType(supType);
		ac.setOrdItm(ordItm);
		ac.setQty(qty);
		ac.setPrice(price);
		
		
		
		AdminOrderSupplierService aac= new AdminOrderSupplierService();
		if(aac.orderSupplier(ac))
			response.sendRedirect("AdminViewSupplierOrder.jsp");
		
	}

}
