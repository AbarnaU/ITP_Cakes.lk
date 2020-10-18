package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Employee;


public class AdminEditEmployeeService {
public boolean editEmployee(Employee employee) {
		
		try {
				Connection con = DbConnection.getDBConnection();  	
					Statement st = con.createStatement();

				String query = "UPDATE employee SET ename='"+employee.getEname()+"',epno='"+employee.getEpno()+"',eaddress='"+employee.getEaddress()+"',eemail='"+employee.getEemail()+"',ejobtitle='"+employee.getEjobtitle()+"',edstart='"+employee.getEdstart()+"',esalary='"+employee.getEsalary()+"',enic='"+employee.getEnic()+"' WHERE eid='"+employee.getEid()+"'";
				st.executeUpdate(query);
	
				return true;
	
			
			} 

		catch(Exception e){
			System.out.println(e);
		} 

		return false;
	}
}
