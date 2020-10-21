package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.feedback;

public class CustomerFeedbackService {
	public boolean addfeedback(feedback feed) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO feedback(name, custname, email, pnumber, message) Values ('"+feed.getName()+"','"+feed.getCustname()+"','"+feed.getEmail()+"', '"+feed.getPnumber()+"','"+feed.getMessage()+"')");
		
		if(i>0) {
			return true;
		}
		
	}
	catch(Exception e){
		System.out.println(e);
	} 
		
		
		
		
		
		return false;
		
	}

}
