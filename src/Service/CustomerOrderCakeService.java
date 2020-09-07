package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomerOrderCakes;

public class CustomerOrderCakeService {
	public boolean orderCake(CustomerOrderCakes coc) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO cake_order(cus_id,custname,email,phone,cname,odate,address) VALUES('"+coc.getCus_id()+"','"+coc.getCustname()+"','"+coc.getEmail()+"','"+coc.getPhone()+"','"+coc.getCname()+"','"+coc.getOdate()+"','"+coc.getAddress()+"')");

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