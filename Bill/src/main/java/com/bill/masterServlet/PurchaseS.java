//package com.bill.masterServlet;
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
//import com.bill.dao.PDao;
//import com.bill.db.DBConnect;
//import com.bill.entity.purchaseE;
//@WebServlet("/purchase")
//public class PurchaseS extends HttpServlet {
//    
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    try {
////    	response.setContentType("application/pdf");
//    	int order_no=Integer.parseInt(request.getParameter("order_no"));
//    	String productName=request.getParameter("productName");
//    	int productQty=Integer.parseInt(request.getParameter("productQty"));
//    	String productUnit=request.getParameter("productUnit");
//    	String pdate=request.getParameter("pdate");
//    	
//    	purchaseE p=new purchaseE(order_no,productName, productQty, productUnit,pdate);
//    	
//    	PDao dao=new PDao(DBConnect.getConn());
//    	HttpSession session=request.getSession();
//    	if(dao.addPurchase(p))
//    	{
//    		session.setAttribute("succMsg", "Product Purchase Updated Successfully");
//			response.sendRedirect("/Bill/purchase/p.jsp");
//		} else {
//			session.setAttribute("errorMsg", "Something wrong on Server");
//			response.sendRedirect("/Bill/purchase/p.jsp");
//		}
//		
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//    
//    
//    }
//    }
//
