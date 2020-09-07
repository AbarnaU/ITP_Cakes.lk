package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.CustomerOrderCakes;

public class CustomerEditOrderedCakeService {
	public boolean updateOrder(CustomerOrderCakes coc) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

						String query = "UPDATE cake_order SET email='"+coc.getEmail()+"',phone='"+coc.getPhone()+"',cname='"+coc.getCname()+"',odate='"+coc.getOdate()+"',address='"+coc.getAddress()+"' WHERE cake_oid='"+coc.getCake_oid()+"'";
						st.executeUpdate(query);

							return true;

	
			} 

					catch(Exception e){
						System.out.println(e);
					} 

						return false;
	}
}