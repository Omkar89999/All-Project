package com.bill.entity;

public class SubCategory {
	private int subcateId;
	private int cateId;
	private String subcateName;
	private String subcateDesc;
	public SubCategory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SubCategory(int subCateId, int cateId, String subCateName, String subCateDesc) {
		super();
		this.subcateId = subCateId;
		this.cateId = cateId;
		this.subcateName = subCateName;
		this.subcateDesc = subCateDesc;
	}
	public SubCategory(int cateId, String subCateName, String subCateDesc) {
		super();
		this.cateId = cateId;
		this.subcateName = subCateName;
		this.subcateDesc = subCateDesc;
	}
	public int getSubCateId() {
		return subcateId;
	}
	public void setSubCateId(int subCateId) {
		this.subcateId = subCateId;
	}
	public int getCateId() {
		return cateId;
	}
	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	public String getSubCateName() {
		return subcateName;
	}
	public void setSubCateName(String subCateName) {
		this.subcateName = subCateName;
	}
	public String getSubCateDesc() {
		return subcateDesc;
	}
	public void setSubCateDesc(String subCateDesc) {
		this.subcateDesc = subCateDesc;
	}
	
	
	

}
