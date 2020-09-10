package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.supplier;
import Service.AdminEditSupplierService;

/**
 * Servlet implementation class AdminEditSupplier
 */
@WebServlet("/AdminEditSupplier")
public class AdminEditSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditSupplier() {
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
		
		supplier admin_supplier=new supplier();
		admin_supplier.setSupId(supId);
		admin_supplier.setName(name);
		admin_supplier.setLocation(location);
		admin_supplier.setEmail(email);
		admin_supplier.setPhone(phone);
		admin_supplier.setDelivery(delivery);
		
		AdminEditSupplierService aecs=new AdminEditSupplierService();
		if(aecs.updateSupplier(admin_supplier))
			response.sendRedirect("AdminViewSupplier.jsp");
	}

}
