package com.bill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bill.entity.AddUnitE;
import com.bill.entity.SubCategory;

public class ProductUnitDao {
	public Connection conn;

	public ProductUnitDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addUnit(AddUnitE a) {
		boolean f=false;
		try {
			String sql="insert into addunit(productUnit,unitName)values(?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, a.getProductUnit());
			ps.setString(2, a.getUnitName());
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
	public List<AddUnitE> getUnitId()
	{
		List<AddUnitE> list=new ArrayList<AddUnitE>();
		AddUnitE p=null;
		try {
			 String sql="select * from addunit order by productUnit";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new AddUnitE();
//				 p.setId(rs.getInt(1));
				 p.setProductUnit(rs.getInt(1));
				 p.setUnitName(rs.getString(2));
				 list.add(p);
			 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;																			
	}
	
	public AddUnitE getUnitById(int productUnit)
	{ 
		AddUnitE d=null;
	 try {
		 String sql="select * from addunit where productUnit=?";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setInt(1, productUnit);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 d=new AddUnitE();
//			 d.setId(rs.getInt(1));
			 d.setProductUnit(rs.getInt(1));
			 d.setUnitName(rs.getString(2));
			
		 }
		
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return d;
	}
	public boolean updateUnit(AddUnitE d)
	{
		boolean f=false;
		try {
			String sql="update addunit set unitName=? where productUnit=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			
			ps.setString(1, d.getUnitName());
			ps.setInt(2, d.getProductUnit());
			
//			ps.setInt(3, d.getId());
			
			
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
	public boolean deleteUnit(int productUnit)
	{
		boolean f=false;
		try {
			String sql="delete from addunit where productUnit=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, productUnit);
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


}
