package Service;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;

public class AdminDeleteProductService {
	
	public boolean deleteProduct(String PId) {
		
		try {
			Connection con = DbConnection.getDBConnection();
			Statement st = con.createStatement();
			
			String query = "DELETE FROM cake_products WHERE PId='"+PId+"'";
			
			st.executeUpdate(query);
			
		return true;
		
		}
		catch (SQLException e) {
			e.printStackTrace();
			}

		return false;

}
}
