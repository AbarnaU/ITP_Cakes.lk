package Entities;

public class Transaction {
	String tid;
	
	String custame;
	String cake_oid;
	String cname;
	String price;
	String payment;

	
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getCustame() {
		return custame;
	}
	public void setCustame(String custame) {
		this.custame = custame;
	}
	public String getCake_oid() {
		return cake_oid;
	}
	public void setCake_oid(String cake_oid) {
		this.cake_oid = cake_oid;
	}
	public String getPrice() {
		return price;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}

	
	
	

}
