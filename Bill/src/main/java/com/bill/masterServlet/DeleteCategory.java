package com.bill.masterServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.CategoryDao;
import com.bill.db.DBConnect;
@WebServlet("/deleteCategory")

public class DeleteCategory extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int cateId=Integer.parseInt(request.getParameter("cateId"));
		
		CategoryDao dao=new CategoryDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.deleteCategory(cateId))
		{
			session.setAttribute("succMsg", "Category Delete Successfully");
			response.sendRedirect("master/viewlist.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("master/viewlist.jsp");
		}
	}

}
