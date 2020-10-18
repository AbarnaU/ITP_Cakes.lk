package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.TerminatedEmp;

public class TerminatedEmpEditService {
public boolean editTerminatedEmployee(TerminatedEmp temployee) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

				String query = "UPDATE temployee SET tename='"+temployee.getTename()+"',tepno='"+temployee.getTepno()+"',teemail='"+temployee.getTeemail()+"',tejobtitle='"+temployee.getTejobtitle()+"',edstart='"+temployee.getEdstart()+"',edend='"+temployee.getEdend()+"' WHERE teid='"+temployee.getTeid()+"'";
				st.executeUpdate(query);
	
				return true;
	
			
			} 

		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}
}
