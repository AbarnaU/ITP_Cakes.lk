package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class AdDelCustOrderedCakeService {
	public boolean deleteOrder(String cake_oid) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();

					String query = "DELETE FROM cake_order WHERE cake_oid='"+cake_oid+"'";
				
					st.executeUpdate(query);
					
					return true;
					
			
			} 

			catch (SQLException e) {
				e.printStackTrace();
				}

			return false;
		}


}