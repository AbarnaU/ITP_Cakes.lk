package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.supplierOrder;

public class AdminEditSupplierOrderService {
	public boolean updateOrder(supplierOrder so) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();
					int total = so.getQty() * so.getPrice();
					int bal = so.getBalance();
							//payment calculation
					int pay = so.getPay();					
					int balance = bal - pay;	
					
					if(balance > 0) 
						{	
						String query = "UPDATE supplierorder_table SET supOrdId='"+so.getSupOrdId()+"',supId='"+so.getSupId()+"',name='"+so.getName()+"',ordItm='"+so.getOrdItm()+"',qty='"+so.getQty()+"' ,price='"+so.getPrice()+"',total='"+total+"',balance='"+balance+"'WHERE supOrdId='"+so.getSupOrdId()+"'";
						st.executeUpdate(query);
						return true;
						}
					
					else
					{
						String query = "DELETE FROM supplierorder_table WHERE supOrdId='"+so.getSupOrdId()+"'";
						st.executeUpdate(query);
						return true;	
					}
						
			} 

		catch(Exception e){
			System.out.println(e);
		} 

						return false;
	
		
	}

}
