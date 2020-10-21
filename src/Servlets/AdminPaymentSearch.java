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
 * Servlet implementation class AdminPaymentSearch
 */
@WebServlet("/AdminPaymentSearch")
public class AdminPaymentSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminPaymentSearch() {
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
		 String Name=request.getParameter("id");
	        
		 Connection conn= DbConnection.getDBConnection();
		 Statement st;
	        try {
	            
	 
	            ArrayList<String> paymentlist = null;
	            ArrayList<ArrayList<String>> tid_list = new ArrayList<ArrayList<String>>();
	            String query = "select * from transaction where  custname='"+Name+"'OR tid='"+Name+"'";
	            st = conn.createStatement();
	            ResultSet rs = st.executeQuery(query);
	 
	            while (rs.next()) {
	            	paymentlist = new ArrayList<String>();

	            	paymentlist.add(rs.getString(1));
	            	paymentlist.add(rs.getString(2));
	            	paymentlist.add(rs.getString(3));
	            	paymentlist.add(rs.getString(4));
	            	paymentlist.add(rs.getString(5));
	            	paymentlist.add(rs.getString(6));
	                tid_list.add(paymentlist);
	            }
	 
	            request.setAttribute("PaymentList", tid_list);
	            RequestDispatcher view = request.getRequestDispatcher("/AdminPaymentSearchResults.jsp");
	            view.forward(request, response);
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
