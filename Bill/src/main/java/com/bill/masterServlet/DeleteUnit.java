package com.bill.masterServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.ProductUnitDao;
import com.bill.db.DBConnect;
@WebServlet("/deleteUnit")

public class DeleteUnit extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int productUnit=Integer.parseInt(request.getParameter("productUnit"));
		
		ProductUnitDao dao=new ProductUnitDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.deleteUnit(productUnit))
		{
			session.setAttribute("succMsg", "Category Delete Successfully");
			response.sendRedirect("master/addUnit.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("master/errorpage.jsp");
		}
	}

}
