package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.supplierOrder;
import Service.AdminEditSupplierOrderService;


/**
 * Servlet implementation class AdminEditSupplierOrder
 */
@WebServlet("/AdminEditSupplierOrder")
public class AdminEditSupplierOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditSupplierOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supOrdId=request.getParameter("supOrdId");
		String supId=request.getParameter("supId");
		String name=request.getParameter("name");
		String ordItm=request.getParameter("ordItm");
		int qty =  Integer.parseInt(request.getParameter("qty"));
		int price =  Integer.parseInt(request.getParameter("price"));
		int pay =  Integer.parseInt(request.getParameter("pay"));
		int balance =  Integer.parseInt(request.getParameter("balance"));
		
		

		
		
		supplierOrder ac=new supplierOrder();
		ac.setSupOrdId(supOrdId);
		ac.setSupId(supId);
		ac.setName(name);
		ac.setOrdItm(ordItm);
		ac.setQty(qty);
		ac.setPrice(price);
		ac.setBalance(balance);
		ac.setPay(pay);
		
		
		
		
		AdminEditSupplierOrderService aac= new AdminEditSupplierOrderService();
		if(aac.updateOrder(ac))
			response.sendRedirect("AdminViewSupplierOrder.jsp");
		
	}

}
