package com.bill.entity;
public class PE {
    private int order_no;
   
    
    private String productName;
    private int productQty;
    private String productUnit;
    private String pdate;
	private int buyprice;
	private int sellprice;
	
	
	
	public PE(int order_no) {
		super();
		this.order_no = order_no;
	}




	public PE(int order_no, String productName, int productQty, String productUnit, String pdate) {
		super();
		this.order_no = order_no;
		this.productName = productName;
		this.productQty = productQty;
		this.productUnit = productUnit;
		this.pdate = pdate;
	}
	
	


	public PE(int order_no, String productName, int productQty, String productUnit, String pdate, int buyprice,
			int sellprice) {
		super();
		this.order_no = order_no;
		this.productName = productName;
		this.productQty = productQty;
		this.productUnit = productUnit;
		this.pdate = pdate;
		this.buyprice = buyprice;
		this.sellprice = sellprice;
	}




	public int getOrder_no() {
		return order_no;
	}


	public void setOrder_no(int order_no) {
		 this.order_no =order_no;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public int getProductQty() {
		return productQty;
	}


	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}


	public String getProductUnit() {
		return productUnit;
	}


	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}


	public String getPdate() {
		return pdate;
	}


	public void setPdate(String pdate) {
		this.pdate = pdate;
	}


	public int getBuyprice() {
		return buyprice;
	}


	public void setBuyprice(int buyprice) {
		this.buyprice = buyprice;
	}


	public int getSellprice() {
		return sellprice;
	}


	public void setSellprice(int sellprice) {
		this.sellprice = sellprice;
	}

	
}
