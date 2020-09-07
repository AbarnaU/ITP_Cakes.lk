package Service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import Connection.DbConnection;
import Entities.Login;

public class LoginService {

	public boolean checkLogin(Login log) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			ResultSet result = st.executeQuery("SELECT uname,pass FROM user WHERE uname='"+log.getUsername()+"' AND pass='"+log.getPassword()+"'");
			
			if(result.next()) {
	 			return true;
	 		}else {
	 			return false;
	 		}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 
		
		
		return false;
	}
}
