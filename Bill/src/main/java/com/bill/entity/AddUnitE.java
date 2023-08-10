package com.bill.entity;

public class AddUnitE {
//	private int id;
	private int productUnit;
	private String unitName;
	public AddUnitE() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*
	 * public AddUnitE( int productUnit, String unitName) { super(); // this.id=id;
	 * this.productUnit = productUnit; this.unitName = unitName; }
	 */
	public AddUnitE(int productUnit, String unitName) {
		super();
		this.productUnit=productUnit;
		this.unitName = unitName;
	}
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
	public int getProductUnit() {
		return productUnit;
	}
	public void setProductUnit(int productUnit) {
		this.productUnit = productUnit;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	
	
	

}
