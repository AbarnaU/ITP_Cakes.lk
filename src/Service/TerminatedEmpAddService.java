package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.TerminatedEmp;

public class TerminatedEmpAddService {
public boolean insertTerminatedEmp(TerminatedEmp temployee) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO temployee(teid,tename,tepno,teemail,tejobtitle,edstart,edend) VALUES('"+temployee.getTeid()+"','"+temployee.getTename()+"','"+temployee.getTepno()+"','"+temployee.getTeemail()+"','"+temployee.getTejobtitle()+"','"+temployee.getEdstart()+"','"+temployee.getEdend()+"')");
			

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
