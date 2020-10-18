package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomizeCake;

public class CustomizeAddCakeService {
	public boolean customizeAddCake(CustomizeCake customizecakes) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO ccake(img,ccname,uname,caddmore,cflavour,cshape,csize,cdescription,ccolor,decision) VALUES('"+customizecakes.getImg()+"','"+customizecakes.getCcname()+"','"+customizecakes.getUname()+"','"+customizecakes.getCaddmore()+"','"+customizecakes.getCflavour()+"','"+customizecakes.getCshape()+"','"+customizecakes.getCsize()+"','"+customizecakes.getCdescription()+"','"+customizecakes.getCcolor()+"','"+customizecakes.getDecision()+"')");

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
