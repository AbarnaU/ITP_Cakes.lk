package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.supplierTool;

public final class AdminAddSupplierToolService {
		public boolean addSupplierTool(supplierTool admin_supplier_tool) {
			try {
				Connection con = DbConnection.getDBConnection();  	
				Statement st = con.createStatement();
				int i = st.executeUpdate("INSERT INTO suppliertool_table(supId,name,location,email,phone,delivery,minOrderQty) VALUES('"+admin_supplier_tool.getSupId()+"','"+admin_supplier_tool.getName()+"','"+admin_supplier_tool.getLocation()+"','"+admin_supplier_tool.getEmail()+"','"+admin_supplier_tool.getPhone()+"','"+admin_supplier_tool.getDelivery()+"','"+admin_supplier_tool.getMinOrderQty()+"')");

				if(i>0) {
					return true;
				}
				
				
			}catch(Exception e) {
				System.out.println(e);
			}
			return false;

	}

}
