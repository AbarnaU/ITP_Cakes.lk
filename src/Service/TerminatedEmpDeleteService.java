package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class TerminatedEmpDeleteService {
public boolean deleteTerminatedEmployee(String teid) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();

	String query = "DELETE FROM temployee WHERE teid='"+teid+"'";

	st.executeUpdate(query);
	
	return true;
	
			
} 

catch (SQLException e) {
	e.printStackTrace();
}

return false;
}
}
