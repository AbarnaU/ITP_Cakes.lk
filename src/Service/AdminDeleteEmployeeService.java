package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class AdminDeleteEmployeeService {
	public boolean deleteEmployee(String eid) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();

	String query = "DELETE FROM employee WHERE eid='"+eid+"'";

	st.executeUpdate(query);
	
	return true;
	
			
} 

catch (SQLException e) {
	e.printStackTrace();
}

return false;
}

}
