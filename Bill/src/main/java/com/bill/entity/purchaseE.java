package com.bill.entity;

public class purchaseE {
	private int order_no;
	private int productId;
	private String productName;
	private int productQty;
	private String productUnit;
	private String pdate;
	
	public purchaseE(int order_no, int productId, String productName, int productQty, String productUnit, String pdate) {
		super();
		this.order_no = order_no;
		this.productId = productId;
		this.productName = productName;
		this.productQty = productQty;
		this.productUnit = productUnit;
		this.pdate = pdate;
	}
	public purchaseE(int order_no, String productName, int productQty, String productUnit, String pdate) {
		super();
		this.order_no = order_no;
//		this.productId = productId;
		this.productName = productName;
		this.productQty = productQty;
		this.productUnit = productUnit;
		this.pdate = pdate;
	}


	public purchaseE(String productName, int productQty, String productUnit, String pdate) {
		super();
		this.productName = productName;
		this.productQty = productQty;
		this.productUnit = productUnit;
		this.pdate = pdate;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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
	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		order_no =this. order_no;
	}

}
