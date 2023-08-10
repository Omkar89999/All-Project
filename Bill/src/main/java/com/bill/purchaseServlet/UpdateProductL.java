package com.bill.purchaseServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.PDao;
import com.bill.db.DBConnect;
import com.bill.entity.PE;
@WebServlet("/updateProductl")
public class UpdateProductL extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		int order_no=Integer.parseInt(request.getParameter("order_no"));
//		int productId=Integer.parseInt(request.getParameter("productId"));
		String productName=request.getParameter("productName");
		int productQty=Integer.parseInt(request.getParameter("productQty"));
		String productUnit=request.getParameter("productUnit");
		String pdate=request.getParameter("pdate");
		int buyprice=Integer.parseInt(request.getParameter("buyprice"));
		int sellprice=Integer.parseInt(request.getParameter("sellprice"));
		
		
		PE a=new PE(order_no, productName, productQty, productUnit, pdate, buyprice, sellprice);
		
		
//		AddProductE a=new AddProductE(cateId, subcateId, productName, productBuyingPrice, productUnits, productSellingPrice, productSize, productDesc);
				
		PDao dao=new PDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.updateProductl(a))
		{
			session.setAttribute("succMsg", "Product Update Successfully");
			response.sendRedirect("/Bill/purchase/ppl.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("/Bill/master/errorpage.jsp");
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}

}
