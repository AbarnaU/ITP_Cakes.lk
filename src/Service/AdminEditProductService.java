package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.AdminProduct;


public class AdminEditProductService {
	public boolean updateProduct(AdminProduct ac) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

						String query = "UPDATE cake_products SET PName='"+ac.getPName()+"',Description='"+ac.getDescription()+"',Quantity='"+ac.getQuantity()+"',price='"+ac.getPrice()+"' WHERE PId='"+ac.getPId()+"'";
						st.executeUpdate(query);

							return true;

	
			} 

					catch(Exception e){
						System.out.println(e);
					} 

						return false;
	}
}
