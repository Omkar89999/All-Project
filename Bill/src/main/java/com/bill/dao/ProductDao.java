package com.bill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bill.entity.AddProductE;

public class ProductDao {
	private Connection conn;

	public ProductDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addProduct(AddProductE a)
	{
		boolean f=false;
		try {
			String sql="insert into addproduct(cateId,subcateId,productName,productBuyPrice,productUnit,productSellPrice,productSize,productDesc)values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
//			ps.setInt(1, a.getProductid());
			ps.setInt(1, a.getCateId());
			ps.setInt(2, a.getSubcateId());
			ps.setString(3, a.getProductName());
			ps.setInt(4, a.getProductBuyingPrice());
			ps.setInt(5, a.getProductUnits());
			ps.setInt(6, a.getProductSellingPrice());
			ps.setString(7, a.getProductSize());
			ps.setString(8, a.getProductDesc());
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return f;
		
	}
	public List<AddProductE> getAllProduct()
	{
		List<AddProductE> list=new ArrayList<AddProductE>();
		AddProductE p=null;
		try {
			 String sql="select * from addproduct order by productId";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new AddProductE();
				 p.setProductid(rs.getInt(1));
				 p.setCateId(rs.getInt(2));
				 p.setSubcateId(rs.getInt(3));
				 p.setProductName(rs.getString(4));
				 p.setProductBuyingPrice(rs.getInt(5));
				 p.setProductUnits(rs.getInt(6));
				 p.setProductSellingPrice(rs.getInt(7));
				 p.setProductSize(rs.getString(8));
				 p.setProductDesc(rs.getString(9));
				 list.add(p);
				 
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	public boolean deleteProduct(int productid)
	{
		boolean f=false;
		try {
			String sql="delete from addproduct where productId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, productid);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public AddProductE getProductById(int productid)
	{ 
		AddProductE d=null;
	 try {
		 String sql="select * from addproduct where productId=?";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setInt(1, productid);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 d=new AddProductE();
			 d.setProductid(rs.getInt(1));
			 d.setCateId(rs.getInt(2));
			 d.setSubcateId(rs.getInt(3));
			 d.setProductName(rs.getString(4));
			 d.setProductBuyingPrice(rs.getInt(5));
			 d.setProductUnits(rs.getInt(6));
			 d.setProductSellingPrice(rs.getInt(7));
			 d.setProductSize(rs.getString(8));
			 d.setProductDesc(rs.getString(9));
			 
			
			 
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return d;
	}
	public boolean updateProduct(AddProductE d)
	{
		boolean f=false;
		try {
			String sql="update addproduct set cateId=?,subcateId=?,productName=?,productBuyPrice=?,productUnit=?,productSellPrice=?,productSize=?,productDesc=? where productId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, d.getCateId());
			ps.setInt(2, d.getSubcateId());
			ps.setString(3, d.getProductName());
			ps.setInt(4, d.getProductBuyingPrice());
			ps.setInt(5, d.getProductUnits());
			ps.setInt(6, d.getProductSellingPrice());
			ps.setString(7, d.getProductSize());
			ps.setString(8, d.getProductDesc());
			ps.setInt(9, d.getProductid());
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public int countSubCategory()
	{
		int i=0;
		try {
			String sql="select * from subcategory";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				i++;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return i;
		
	}
	public int countProduct()
	{
		int i=0;
		try {
			String sql="select * from addproduct";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				i++;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return i;
		
	}
	public int countCategory()
	{
		int i=0;
		try {
			String sql="select * from addcategory";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				i++;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return i;
		
	}
	public int countUnit()
	{
		int i=0;
		try {
			String sql="select * from addunit";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				i++;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return i;
		
	}

}
