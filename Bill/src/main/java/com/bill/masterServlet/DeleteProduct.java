package com.bill.masterServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.ProductDao;
import com.bill.db.DBConnect;
@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productid=Integer.parseInt(request.getParameter("productId"));
		
		ProductDao dao=new ProductDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.deleteProduct(productid))
		{
			session.setAttribute("succMsg", "Product Delete Successfully");
			response.sendRedirect("master/viewproductList.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("master/viewproductList.jsp");
		}
		
	}
	

}
