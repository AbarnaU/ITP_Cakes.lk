package Entities;

public class supplierOrder {
	String supOrdId;
	String supId;
	String name;
	String ordItm;
	String supType;
	int total;
	int qty;
	int price;
	int balance;
	int pay;
	
	
	public String getSupOrdId() {
		return supOrdId;
	}
	public void setSupOrdId(String supOrdId) {
		this.supOrdId = supOrdId;
	}
	public String getSupId() {
		return supId;
	}
	public void setSupId(String supId) {
		this.supId = supId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrdItm() {
		return ordItm;
	}
	public void setOrdItm(String ordItm) {
		this.ordItm = ordItm;
	}
	public String getSupType() {
		return supType;
	}
	public void setSupType(String supType) {
		this.supType = supType;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
}
