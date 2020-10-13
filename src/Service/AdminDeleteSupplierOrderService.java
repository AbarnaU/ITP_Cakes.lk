package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class AdminDeleteSupplierOrderService {

public boolean deleteSupplierOrder(String supOrdId) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();

					
					String query = "DELETE FROM supplierorder_table WHERE supOrdId='"+supOrdId+"'";
				
					st.executeUpdate(query);
					
					return true;
					
			
			} 

			catch (SQLException e) {
				e.printStackTrace();
				}

			return false;
		}

}
