package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomerDelivery;

public class DeliveryEditService {
	public boolean updateDelivery(CustomerDelivery del) {
	try {
		Connection con = DbConnection.getDBConnection();  	
		Statement st = con.createStatement();

			String query = "UPDATE delivery SET did='"+del.getDid()+"', fname='"+del.getFname()+"',address='"+del.getAddress()+"',city='"+del.getCity()+"',p_number='"+del.getPnumber()+"' WHERE did ='"+del.getDid()+"'";
			st.executeUpdate(query);

				return true;


} 

		catch(Exception e){
			System.out.println(e);
		} 

			return false;
}
}
