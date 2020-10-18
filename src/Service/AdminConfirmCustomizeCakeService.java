package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomizeCake;

public class AdminConfirmCustomizeCakeService {
	public boolean ConfirmCustomizeCake(CustomizeCake ac) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

					String query = "UPDATE ccake SET cflavour='"+ac.getCflavour()+"',cshape='"+ac.getCshape()+"',csize='"+ac.getCsize()+"',ccolor='"+ac.getCcolor()+"',caddmore='"+ac.getCaddmore()+"',cdescription='"+ac.getCdescription()+"',decision='"+ac.getDecision()+"' WHERE ccname='"+ac.getCcname()+"'";
					st.executeUpdate(query);

							return true;

	
			} 

					catch(Exception e){
						System.out.println(e);
					} 

						return false;
	}
}


