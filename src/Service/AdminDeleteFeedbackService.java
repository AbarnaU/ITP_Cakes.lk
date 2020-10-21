package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;




public class AdminDeleteFeedbackService {
	public boolean deletefeedback(String fid) {
		
		try {
			 Connection con = DbConnection.getDBConnection();
			 Statement st = con.createStatement();
			 
			 String query = "DELETE FROM feedback WHERE fid='"+fid+"'";
				
			 st.executeUpdate(query);
				return true;
				
		}
		catch (SQLException e) {
			e.printStackTrace();
			}
		
		
		
		
		
		
		
		return false;
		
	}

}
