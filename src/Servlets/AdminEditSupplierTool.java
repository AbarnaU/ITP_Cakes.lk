package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Entities.supplierTool;
import Service.AdminEditSupplierToolService;

/**
 * Servlet implementation class AdminEditSupplierTool
 */
@WebServlet("/AdminEditSupplierTool")
public class AdminEditSupplierTool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditSupplierTool() {
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
		
		supplierTool admin_supplier_tool=new supplierTool();
		admin_supplier_tool.setSupId(supId);
		admin_supplier_tool.setName(name);
		admin_supplier_tool.setLocation(location);
		admin_supplier_tool.setEmail(email);
		admin_supplier_tool.setPhone(phone);
		admin_supplier_tool.setDelivery(delivery);
		admin_supplier_tool.setMinOrderQty(minOrderQty);

		
		AdminEditSupplierToolService aecs=new AdminEditSupplierToolService();
		if(aecs.updateSupplierTool(admin_supplier_tool))
			response.sendRedirect("AdminViewSupplierTool.jsp");
	}

}
