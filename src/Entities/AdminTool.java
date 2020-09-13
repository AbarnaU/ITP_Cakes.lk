package Entities;

public class AdminTool {
	
	String toolID;
	String toolsName;
	String Usage;
	String Price;
	String supId;
	String Quantity;
	
	public String getQuantity() {
		return Quantity;
	}
	public void setQuantity(String quantity) {
		Quantity = quantity;
	}
	public String getToolID() {
		return toolID;
	}
	public void setToolID(String toolID) {
		this.toolID = toolID;
	}
	public String getToolsName() {
		return toolsName;
	}
	public void setToolsName(String toolsName) {
		this.toolsName = toolsName;
	}
	public String getUsage() {
		return Usage;
	}
	public void setUsage(String usage) {
		Usage = usage;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getSupId() {
		return supId;
	}
	public void setSupId(String supId) {
		this.supId = supId;
	}
	

}
