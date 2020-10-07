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
 * Servlet implementation class AdminOrderedCakeSearch
 */
@WebServlet("/AdminOrderedCakeSearch")
public class AdminOrderedCakeSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderedCakeSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name=request.getParameter("id");
        
		 Connection conn= DbConnection.getDBConnection();
		 Statement st;
	        try {
	            
	 
	            ArrayList<String> orderlist = null;
	            ArrayList<ArrayList<String>> oid_list = new ArrayList<ArrayList<String>>();
	            String query = "select * from cake_order where  custname='"+Name+"'OR cake_oid='"+Name+"'";
	            st = conn.createStatement();
	            ResultSet rs = st.executeQuery(query);
	 
	            while (rs.next()) {
	            	orderlist = new ArrayList<String>();

	            	orderlist.add(rs.getString(1));
	            	orderlist.add(rs.getString(2));
	            	orderlist.add(rs.getString(3));
	            	orderlist.add(rs.getString(4));
	            	orderlist.add(rs.getString(5));
	            	orderlist.add(rs.getString(6));
	            	orderlist.add(rs.getString(7));
	            	orderlist.add(rs.getString(8));
	                oid_list.add(orderlist);
	            }
	 
	            request.setAttribute("OrderList", oid_list);
	            RequestDispatcher view = request.getRequestDispatcher("/AdminOrderedCakeSearcResults.jsp");
	            view.forward(request, response);
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
