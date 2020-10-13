package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.supplierTool;
import Service.AdminAddSupplierToolService;

/**
 * Servlet implementation class AdminAddSupplierTool
 */
@WebServlet("/AdminAddSupplierTool")
public class AdminAddSupplierTool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddSupplierTool() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supId=request.getParameter("supId");
		String name=request.getParameter("name");
		String location=request.getParameter("location");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String delivery=request.getParameter("delivery");
		String minOrderQty=request.getParameter("minOrderQty");
		
		
		supplierTool ac=new supplierTool();
		ac.setSupId(supId);
		ac.setName(name);
		ac.setLocation(location);
		ac.setEmail(email);
		ac.setPhone(phone);
		ac.setDelivery(delivery);
		ac.setMinOrderQty(minOrderQty);
		
		
		AdminAddSupplierToolService aac= new AdminAddSupplierToolService();
		if(aac.addSupplierTool(ac))
			response.sendRedirect("AdminViewSupplierTool.jsp");
		
	}

}
