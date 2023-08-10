package com.bill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bill.entity.AddProductE;
import com.bill.entity.PE;

public class PDao {
	private Connection conn;

	public PDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addpp(PE a)
	{
		boolean f=false;
		try {
			String sql="insert into purchaseproduct(order_no,productName,productQty,productUnit,pdate)values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, a.getOrder_no());
			ps.setString(2, a.getProductName());
			ps.setInt(3, a.getProductQty());
			ps.setString(4, a.getProductUnit());
			ps.setString(5, a.getPdate());
//			System.out.println(ps);
			/*
			 * ps.setInt(6, a.getBuyprice()); ps.setInt(7, a.getSellprice());
			 */
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

	public List<PE> getAllPProduct()
	{
		List<PE> list=new ArrayList<PE>();
		PE p=null;
		try {
			String sql = "select * from purchaseproduct ";/* order by order_no */
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new PE(0, sql, 0, sql, sql, 0, 0);
				 p.setOrder_no(rs.getInt(1));
				 p.setProductName(rs.getString(2));
				 p.setProductQty(rs.getInt(3));
				 p.setProductUnit(rs.getString(4));
				 p.setPdate(rs.getString(5));
				 p.setBuyprice(rs.getInt(6));
				 p.setSellprice(rs.getInt(7));
				
				
//				 System.out.println(p.getOrder_no());
				 list.add(p);
				 
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	public boolean deletePProduct(int order_no)
	{
		boolean f=false;
		try {
			String sql="delete from purchaseproduct where order_no=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, order_no);
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
	public PE getPProductById(int order_no)
	{ 
		PE p=null;
	 try {
		 String sql="select * from purchaseproduct where order_no=?";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setInt(1, order_no);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 p=new PE(order_no, sql, order_no, sql, sql, order_no, order_no);
			
			 p.setOrder_no(rs.getInt(1));
//			 p.setProductId(rs.getInt(2));
			 p.setProductName(rs.getString(2));
			 p.setProductQty(rs.getInt(3));
			 p.setProductUnit(rs.getString(4));
			 p.setPdate(rs.getString(5));
			 p.setBuyprice(rs.getInt(6));
			 p.setSellprice(rs.getInt(7));
			
			 
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return p;
	}

	public boolean updateProductl(PE d)
	{
		boolean f=false;
		try {
			String sql="update purchaseproduct set productName=?,productQty=?,productUnit=?,pdate=?,buyprice=?,sellprice=? where order_no=?";
			PreparedStatement ps=conn.prepareStatement(sql);
//			ps.setInt(1, d.getOrder_no());
			ps.setString(1, d.getProductName());
			ps.setInt(2, d.getProductQty());
			ps.setString(3, d.getProductUnit());
			ps.setString(4, d.getPdate());
			ps.setInt(5, d.getBuyprice());
			ps.setInt(6, d.getSellprice());
			ps.setInt(7, d.getOrder_no());
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
	public List<PE> getAllOProduct()
	{
		List<PE> list=new ArrayList<PE>();
		PE p=null;
		try {
			 String sql="select * from purchaseproduct order by order_no";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 p=new PE(0, sql, 0, sql, sql, 0, 0);
				 p.setOrder_no(rs.getInt(1));
//				 p.setProductId(rs.getInt(2));
				 p.setProductName(rs.getString(2));
				 p.setProductQty(rs.getInt(3));
				 p.setProductUnit(rs.getString(4));
				 p.setPdate(rs.getString(5));
				 p.setBuyprice(rs.getInt(6));
				 p.setSellprice(rs.getInt(7));
				 
				
				 list.add(p);
				 
				 
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public PE getPById(int order_no)
	{ 
		PE p=null;
	 try {
		 String sql="select * from purchaseproduct where order_no=?";
		 PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setInt(1, order_no);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 p=new PE(order_no);
			
			 p.setOrder_no(rs.getInt(1));
			 System.out.println(order_no);
		 }
		 
	 }catch(Exception e) {
		 
		 e.printStackTrace();
	 }
	 return p;
	}

	
}
