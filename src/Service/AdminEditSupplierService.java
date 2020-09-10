package Service;
import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.supplier;

public class AdminEditSupplierService {
	public boolean updateSupplier(supplier ac) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();
					String query = "UPDATE supplier_table SET name='"+ac.getName()+"',location='"+ac.getLocation()+"',email='"+ac.getEmail()+"',phone='"+ac.getPhone()+"',delivery='"+ac.getDelivery()+"' WHERE supId='"+ac.getSupId()+"'";
					//String query = "UPDATE supplier_table SET name='"+ac.getName()+"',location='"+ac.getLocation()+"',email='"+ac.getEmail()+"',phone='"+ac.getPhone()+"' WHERE supId='"+ac.getSupId()+"'";
						st.executeUpdate(query);

							return true;

	
			} 

		catch(Exception e){
			System.out.println(e);
		} 

						return false;
	}
}
