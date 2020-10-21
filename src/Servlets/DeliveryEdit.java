package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.CustomerDelivery;
import Service.DeliveryEditService;

/**
 * Servlet implementation class DeliveryEdit
 */
@WebServlet("/DeliveryEdit")
public class DeliveryEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String did=request.getParameter("did");
		String fname=request.getParameter("fname");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String pnumber=request.getParameter("pnumber");
		
		
		CustomerDelivery del= new CustomerDelivery();
		
		del.setDid(did);
		del.setFname(fname);
		del.setAddress(address);
		del.setCity(city);
		del.setPnumber(pnumber);
		
		DeliveryEditService des = new DeliveryEditService() ;
			if(des.updateDelivery(del))
				response.sendRedirect("DeliveryView.jsp");
		}
	}


