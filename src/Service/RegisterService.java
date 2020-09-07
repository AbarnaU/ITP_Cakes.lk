package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Register;

public class RegisterService {
	public boolean insertRegister(Register reg) {
			
			
			try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();
				int i = st.executeUpdate("INSERT INTO user(uname,email,pass,address,phone) VALUES('"+reg.getUsername()+"','"+reg.getEmail()+"','"+reg.getPassword()+"','"+reg.getAddress()+"','"+reg.getCnumber()+"')");
	
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
