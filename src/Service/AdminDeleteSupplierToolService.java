package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class AdminDeleteSupplierToolService {

public boolean deleteSupplierTool(String supId) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();

					String query = "DELETE FROM suppliertool_table WHERE supId='"+supId+"'";
				
					st.executeUpdate(query);
					
					return true;
					
			
			} 

			catch (SQLException e) {
				e.printStackTrace();
				}

			return false;
		}

}
