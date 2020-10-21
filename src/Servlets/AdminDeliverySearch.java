package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DbConnection;

/**
 * Servlet implementation class AdminDeliverySearch
 */
@WebServlet("/AdminDeliverySearch")
public class AdminDeliverySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeliverySearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String Name=request.getParameter("id");
	        
		 Connection conn= DbConnection.getDBConnection();
		 Statement st;
	        try {
	            
	 
	            ArrayList<String> deliverylist = null;
	            ArrayList<ArrayList<String>> did_list = new ArrayList<ArrayList<String>>();
	            String query = "select * from delivery where  fname='"+Name+"'OR fid='"+Name+"'";
	            st = conn.createStatement();
	            ResultSet rs = st.executeQuery(query);
	 
	            while (rs.next()) {
	            	deliverylist = new ArrayList<String>();

	            	deliverylist.add(rs.getString(1));
	            	deliverylist.add(rs.getString(2));
	            	deliverylist.add(rs.getString(3));
	            	deliverylist.add(rs.getString(4));
	            	deliverylist.add(rs.getString(5));
	            	
	                did_list.add(deliverylist);
	            }
	 
	            request.setAttribute("DeliveryList", did_list);
	            RequestDispatcher view = request.getRequestDispatcher("/AdminDeliverySearchResults.jsp");
	            view.forward(request, response);
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
