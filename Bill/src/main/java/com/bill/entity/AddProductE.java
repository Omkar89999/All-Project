package com.bill.entity;

public class AddProductE {
	private int productid;
	private int cateId;
	private int subcateId;
	private String productName;
	private int productBuyingPrice;
	private int productUnits;
	private int productSellingPrice;
	private String productSize;
	private String productDesc;
	public AddProductE() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AddProductE(int productid, int cateId, int subcateId, String productName, int productBuyingPrice,
			int productUnits, int productSellingPrice, String productSize, String productDesc) {
		super();
		this.productid = productid;
		this.cateId = cateId;
		this.subcateId = subcateId;
		this.productName = productName;
		this.productBuyingPrice = productBuyingPrice;
		this.productUnits = productUnits;
		this.productSellingPrice = productSellingPrice;
		this.productSize = productSize;
		this.productDesc = productDesc;
	}
	public AddProductE(int cateId, int subcateId, String productName, int productBuyingPrice, int productUnits,
			int productSellingPrice, String productSize, String productDesc) {
		super();
		this.cateId = cateId;
		this.subcateId = subcateId;
		this.productName = productName;
		this.productBuyingPrice = productBuyingPrice;
		this.productUnits = productUnits;
		this.productSellingPrice = productSellingPrice;
		this.productSize = productSize;
		this.productDesc = productDesc;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getCateId() {
		return cateId;
	}
	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	public int getSubcateId() {
		return subcateId;
	}
	public void setSubcateId(int subcateId) {
		this.subcateId = subcateId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductBuyingPrice() {
		return productBuyingPrice;
	}
	public void setProductBuyingPrice(int productBuyingPrice) {
		this.productBuyingPrice = productBuyingPrice;
	}
	public int getProductUnits() {
		return productUnits;
	}
	public void setProductUnits(int productUnits) {
		this.productUnits = productUnits;
	}
	public int getProductSellingPrice() {
		return productSellingPrice;
	}
	public void setProductSellingPrice(int productSellingPrice) {
		this.productSellingPrice = productSellingPrice;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	
}
