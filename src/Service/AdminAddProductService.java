package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.AdminProduct;

public class AdminAddProductService {
	public boolean addProduct(AdminProduct admin_product) {
		
		try {
			Connection con = DbConnection.getDBConnection();
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO cake_products(PId,PNAme,Description,Quantity,Price,supId) VALUES('"+admin_product.getPId()+"','"+admin_product.getPName()+"','"+admin_product.getDescription()+"','"+admin_product.getQuantity()+"','"+admin_product.getPrice()+"','"+admin_product.getSupId()+"')"); 
			
			if(i>0) {
				return true;
			}
		}
		catch(Exception e) {
			
			System.out.println(e);
		}
		return false;
	}
	
	

}
