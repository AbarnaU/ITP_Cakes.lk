package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.AdminCakes;

public class AdminAddCakesService {
	public boolean addCake(AdminCakes admin_cakes) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO cake(cid,cname,flavour,shape,qty,price,img,description) VALUES('"+admin_cakes.getCid()+"','"+admin_cakes.getCname()+"','"+admin_cakes.getFlavour()+"','"+admin_cakes.getShape()+"','"+admin_cakes.getQty()+"','"+admin_cakes.getPrice()+"','"+admin_cakes.getImg()+"','"+admin_cakes.getDescription()+"')");

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
