package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class CustomizeDeleteService {
	public boolean customizeCakeDelete(String ccid) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();

					String query = "DELETE FROM ccake WHERE ccid='"+ccid+"'";
				
					st.executeUpdate(query);
					
					return true;
					
			
			} 

			catch (SQLException e) {
				e.printStackTrace();
				}

			return false;
		}


}
