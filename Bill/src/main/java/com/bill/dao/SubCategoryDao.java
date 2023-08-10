package com.bill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bill.entity.AddCategoryE;
import com.bill.entity.SubCategory;

public class SubCategoryDao {
	public Connection conn;

	public SubCategoryDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addSubCategory(SubCategory s)
	{
		boolean f=false;
		try {
			
			String sql="insert into subcategory(cateId,subcateName,subcateDesc)values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
//			ps.setInt(1, s.getSubCateId());
			ps.setInt(1, s.getCateId());
			ps.setString(2, s.getSubCateName());
			ps.setString(3, s.getSubCateDesc());
			
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
		public List<SubCategory> getSubCatId()
		{
			List<SubCategory> list=new ArrayList<SubCategory>();
			SubCategory p=null;
			try {
				 String sql="select * from subcategory order by subcateId";
				 PreparedStatement ps=conn.prepareStatement(sql);
				 ResultSet rs=ps.executeQuery();
				 while(rs.next())
				 {
					 p=new SubCategory();
					 p.setSubCateId(rs.getInt(1));
					p.setSubCateName(rs.getString(3));
					 
					 list.add(p);
				 
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
			
		}
		
		public List<SubCategory> getAllSubCategory()
		{
			List<SubCategory> list=new ArrayList<SubCategory>();
			SubCategory p=null;
			try {
				 String sql="select * from subcategory order by subcateId desc";
				 PreparedStatement ps=conn.prepareStatement(sql);
				 ResultSet rs=ps.executeQuery();
				 while(rs.next())
				 {
					 p=new SubCategory();
					 p.setSubCateId(rs.getInt(1));
					 p.setCateId(rs.getInt(2));
					
					 p.setSubCateName(rs.getString(3));
					 p.setSubCateDesc(rs.getString(4));
					 
					 
					 list.add(p);
				 
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
			
		}
		public boolean deleteSubCategory(int subcateId)
		{
			boolean f=false;
			try {
				String sql="delete from subcategory where subcateId=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, subcateId);
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
		
		public SubCategory getsubCategoryById(int subcateId)
		{ 
			SubCategory d=null;
		 try {
			 String sql="select * from subcategory where subcateId=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, subcateId);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 d=new SubCategory();
				 d.setSubCateId(rs.getInt(1));
				 d.setCateId(rs.getInt(2));
				 d.setSubCateName(rs.getString(3));
				 d.setSubCateDesc(rs.getString(4));
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return d;
		}
		public boolean updatesubCategory(SubCategory d)
		{
			boolean f=false;
			try {
				String sql="update subcategory set cateId=?,subcateName=?,subcateDesc=? where subcateId=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, d.getCateId());
				
				ps.setString(2, d.getSubCateName());
				ps.setString(3, d.getSubCateDesc());
				ps.setInt(4, d.getSubCateId());
				
				
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