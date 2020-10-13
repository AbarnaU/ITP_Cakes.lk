package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.supplierOrder;

public class AdminOrderSupplierService {
	public boolean orderSupplier(supplierOrder so) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int total = so.getQty() * so.getPrice();
			int balance = total;
			int i = st.executeUpdate("INSERT INTO supplierorder_table(supOrdId,supId,name,supType,ordItm,qty,price,total,balance) VALUES('"+so.getSupOrdId()+"','"+so.getSupId()+"','"+so.getName()+"','"+so.getSupType()+"','"+so.getOrdItm()+"','"+so.getQty()+"','"+so.getPrice()+"','"+total+"','"+balance+"')");

			if(i>0) {
				return true;
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
