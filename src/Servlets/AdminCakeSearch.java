package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DbConnection;
import java.sql.*;
import java.util.ArrayList;

/**
 * Servlet implementation class AdminCakeSearch
 */
@WebServlet("/AdminCakeSearch")
public class AdminCakeSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCakeSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String Name=request.getParameter("id");
	        
		 Connection conn= DbConnection.getDBConnection();
		 Statement st;
	        try {
	            
	 
	            ArrayList<String> cakelist = null;
	            ArrayList<ArrayList<String>> cid_list = new ArrayList<ArrayList<String>>();
	            String query = "select * from cake where  cname='"+Name+"'OR cid='"+Name+"'";
	            st = conn.createStatement();
	            ResultSet rs = st.executeQuery(query);
	 
	            while (rs.next()) {
	            	cakelist = new ArrayList<String>();

	            	cakelist.add(rs.getString(1));
	            	cakelist.add(rs.getString(2));
	            	cakelist.add(rs.getString(3));
	            	cakelist.add(rs.getString(4));
	            	cakelist.add(rs.getString(5));
	            	cakelist.add(rs.getString(6));
	            	cakelist.add(rs.getString(7));
	                cid_list.add(cakelist);
	            }
	 
	            request.setAttribute("CakeList", cid_list);
	            RequestDispatcher view = request.getRequestDispatcher("/AdminCakeSearchResults.jsp");
	            view.forward(request, response);
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}
