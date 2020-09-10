package Service;
import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.supplier;

public class AdminAddSupplierService {
	public boolean addSupplier(supplier admin_supplier) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO supplier_table(supId,name,location,email,phone,delivery) VALUES('"+admin_supplier.getSupId()+"','"+admin_supplier.getName()+"','"+admin_supplier.getLocation()+"','"+admin_supplier.getEmail()+"','"+admin_supplier.getPhone()+"','"+admin_supplier.getDelivery()+"')");

			if(i>0) {
				return true;
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
