package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Employee;

public class AdminAddEmployeeService {
public boolean insertEmployee(Employee employee) {
		
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO employee(eid,ename,epno,eaddress,eemail,ejobtitle,edstart,esalary,enic) VALUES('"+employee.getEid()+"','"+employee.getEname()+"','"+employee.getEpno()+"','"+employee.getEaddress()+"','"+employee.getEemail()+"','"+employee.getEjobtitle()+"','"+employee.getEdstart()+"','"+employee.getEsalary()+"','"+employee.getEnic()+"')");
			

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
