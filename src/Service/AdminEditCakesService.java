package Service;
import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.AdminCakes;

public class AdminEditCakesService {
	public boolean updateCakes(AdminCakes ac) {

		try {
					Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

						String query = "UPDATE cake SET cname='"+ac.getCname()+"',flavour='"+ac.getFlavour()+"',shape='"+ac.getShape()+"',qty='"+ac.getQty()+"',price='"+ac.getPrice()+"',description='"+ac.getDescription()+"' WHERE cid='"+ac.getCid()+"'";
						st.executeUpdate(query);

							return true;

	
			} 

					catch(Exception e){
						System.out.println(e);
					} 

						return false;
	}
}
