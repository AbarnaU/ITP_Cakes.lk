package Service;
import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Transaction;

public class CustomerAddTransactionService {
	public boolean addTransaction(Transaction transaction) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO transaction(custname, cake_oid, cname, price, payment_method) VALUES('"+transaction.getCustname()+"','"+transaction.getCake_oid()+"','"+transaction.getCname()+"','"+transaction.getPrice()+"','"+transaction.getPayment()+"') ");
			
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
