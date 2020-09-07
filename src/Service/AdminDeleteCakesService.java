package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;


public class AdminDeleteCakesService {
	public boolean deleteCakes(String cid) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();

					String query = "DELETE FROM cake WHERE cid='"+cid+"'";
				
					st.executeUpdate(query);
					
					return true;
					
			
			} 

			catch (SQLException e) {
				e.printStackTrace();
				}

			return false;
		}


}