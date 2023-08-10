package com.bill.entity;

public class AddCategoryE {
	private int cateId;
	private String cateName;
	private String cateDesc;
	
	public AddCategoryE() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public AddCategoryE(int cateId, String cateName, String cateDesc) {
		super();
		this.cateId = cateId;
		this.cateName = cateName;
		this.cateDesc = cateDesc;
	}
	
	public AddCategoryE(String cateName, String cateDesc) {
		super();
		this.cateName = cateName;
		this.cateDesc = cateDesc;
	}
	
	public int getCateId() {
		return cateId;
	}
	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCateDesc() {
		return cateDesc;
	}
	public void setCateDesc(String cateDesc) {
		this.cateDesc = cateDesc;
	}
	
	

}
