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
@WebServlet("/deleteproductl")
public class DeleteProductL extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int order_no=Integer.parseInt(req.getParameter("order_no"));
		
		PDao dao=new PDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		if(dao.deletePProduct(order_no))
		{
			session.setAttribute("succMsg", "Product Delete Successfully");
			resp.sendRedirect("purchase/ppl.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			resp.sendRedirect("purchase/ppl.jsp");
		}
		
	}
	

}
