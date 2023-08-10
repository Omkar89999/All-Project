//package com.bill.purchaseServlet;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
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
//import com.bill.entity.PE;
//@WebServlet("/newl")
//public class NewL extends HttpServlet {
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	try {
//		int order_no=Integer.parseInt(request.getParameter("order_no"));
//		String productName=request.getParameter("productName");
//		int productQty=Integer.parseInt(request.getParameter("productQty"));
//		String productUnit=request.getParameter("productUnit");
//		String pdate=request.getParameter("pdate");
//		
//		PE p=new PE(order_no, productName, productQty, productUnit, pdate);
//		PDao dao=new PDao(DBConnect.getConn());
//		HttpSession session=request.getSession();
//		
//		 List<PE> purchases = (List<PE>) session.getAttribute("purchases");
//		    if (purchases == null) {
//		        purchases = new ArrayList<PE>();
//		    }
//
//			
//			  session.setAttribute("purchases", purchases);
////			  response.sendRedirect("/Bill/purchase/app.jsp");
//			  PE purchase = new PE(order_no, productName, productQty, productUnit, pdate);
//			  
//					     purchases.add(purchase);
//					     session.removeAttribute("purchase"); 
////					     session.setMaxInactiveInterval(1000);
//			  
//			 // response.sendRedirect("app.jsp");
////		 session.removeAttribute("purchase");
//		
//		if (dao.addpp(p)) {
//			session.setAttribute("succMsg","Purchase Product Added Successfully");
//			response.sendRedirect("purchase/app.jsp");
//			
//		}else {
//			session.setAttribute("errorMsg","Something Wrong on server");
//			response.sendRedirect("purchase/app.jsp");
//		}
//		
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//		
//		
//	}
//
//}
