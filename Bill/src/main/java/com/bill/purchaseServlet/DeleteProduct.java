//package com.bill.purchaseServlet;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.bill.dao.PurchaseDao;
//import com.bill.db.DBConnect;
//@WebServlet("/deleteproduct")
//public class DeleteProduct extends HttpServlet{
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		int productId=Integer.parseInt(req.getParameter("productId"));
//		
//		PurchaseDao dao=new PurchaseDao(DBConnect.getConn());
//		HttpSession session=req.getSession();
//		if(dao.deleteProduct(productId))
//		{
//			session.setAttribute("succMsg", "Product Delete Successfully");
//			resp.sendRedirect("purchase/p.jsp");
//		}else {
//			session.setAttribute("errorMsg", "Something Wrong on Server");
//			resp.sendRedirect("purchase/p.jsp");
//		}
//		
//	}
//	
//
//}
