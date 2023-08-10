package com.bill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bill.entity.AddCategoryE;
import com.bill.entity.AddProductE;

public class CategoryDao {
	private Connection conn;

	public CategoryDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addCategory(AddCategoryE c)
	{
		boolean f=false;
		try {
			
			String sql="insert into addcategory(cateName,cateDesc)values(?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
//			ps.setInt(1, c.getCateId());
			ps.setString(1, c.getCateName());
			ps.setString(2, c.getCateDesc());
			
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
	public List<AddCategoryE> getAllCategory()
	{
		List<AddCategoryE> list=new ArrayList<AddCategoryE>();
		AddCategoryE p=null;
		try {
			 String sql="select * from addcategory order by cateId";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new AddCategoryE();
				 p.setCateId(rs.getInt(1));
				 p.setCateName(rs.getString(2));
				 p.setCateDesc(rs.getString(3));
				 
				 list.add(p);
			 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public List<AddCategoryE> getId()
	{
		List<AddCategoryE> list=new ArrayList<AddCategoryE>();
		AddCategoryE p=null;
		try {
			 String sql="select * from addcategory order by cateId";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new AddCategoryE();
				 p.setCateId(rs.getInt(1));
				 p.setCateName(rs.getString(2));
				 
				 list.add(p);
			 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	public boolean deleteCategory(int cateId)
	{
		boolean f=false;
		try {
			String sql="delete from addcategory where cateId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, cateId);
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
	
	public AddCategoryE getCategoryById(int cateId)
	{ 
		AddCategoryE d=null;
	 try {
		 String sql="select * from addcategory where cateId=?";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setInt(1, cateId);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 d=new AddCategoryE();
			 d.setCateId(rs.getInt(1));
			 d.setCateName(rs.getString(2));
			 d.setCateDesc(rs.getString(3));
			
			 
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return d;
	}
	public boolean updateCategory(AddCategoryE d)
	{
		boolean f=false;
		try {
			String sql="update addcategory set cateName=?,cateDesc=? where cateId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, d.getCateName());
			ps.setString(2, d.getCateDesc());
			ps.setInt(3, d.getCateId());
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


}
