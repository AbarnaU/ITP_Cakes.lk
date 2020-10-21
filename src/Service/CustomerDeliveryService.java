package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomerDelivery;

public class CustomerDeliveryService {

	public boolean add_delivery(CustomerDelivery del) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO delivery (fname,address,city,p_number) VALUES('"+del.getFname()+"','"+del.getAddress()+"','"+del.getCity()+"','"+del.getPnumber()+"')");

			if(i>0) {
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		} 
		// TODO Auto-generated method stub
		return false;
	}
}
