package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class UserDeleteService {
public boolean deleteUser(String username) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();

	String query = "DELETE FROM user WHERE username='"+username+"'";

	st.executeUpdate(query);
	
	return true;
	
			
} 

catch (SQLException e) {
	e.printStackTrace();
}

return false;
}

}
