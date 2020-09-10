package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.supplier;
import Service.AdminAddSupplierService;

/**
 * Servlet implementation class AdminAddSupplier
 */
@WebServlet("/AdminAddSupplier")
public class AdminAddSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddSupplier() {
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
		
		
		supplier ac=new supplier();
		ac.setSupId(supId);
		ac.setName(name);
		ac.setLocation(location);
		ac.setEmail(email);
		ac.setPhone(phone);
		ac.setDelivery(delivery);
		
		
		AdminAddSupplierService aac= new AdminAddSupplierService();
		if(aac.addSupplier(ac))
			response.sendRedirect("AdminViewSupplier.jsp");
		
	}

}
