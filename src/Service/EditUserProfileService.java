package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Register;

public class EditUserProfileService {
	public boolean updateProfile(Register reg) {
		
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			String query = "UPDATE user SET email='"+reg.getEmail()+"',address='"+reg.getAddress()+"', phone ='"+reg.getCnumber()+"' WHERE username='"+reg.getUsername()+"' ";
			st.executeUpdate(query);

				return true;


} 

		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}

}
