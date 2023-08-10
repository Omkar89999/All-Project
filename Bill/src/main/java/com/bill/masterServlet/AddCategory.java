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
import com.bill.entity.AddCategoryE;

@WebServlet("/addCategory")
public class AddCategory extends HttpServlet {
	
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//			int cateId=Integer.parseInt(request.getParameter("cateId"));
			String cateName=request.getParameter("cateName");
			String cateDesc=request.getParameter("cateDesc");
			
//			AddCategoryE c=new AddCategoryE(cateId, cateName, cateDesc);
			
			AddCategoryE c=new AddCategoryE(cateName, cateDesc);
			
			
			CategoryDao dao=new CategoryDao(DBConnect.getConn());
			
			HttpSession session=request.getSession();
			if(dao.addCategory(c))
			{
				session.setAttribute("succMsg", "Category Added Successfully");
				response.sendRedirect("master/addCategory.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Wromg on Server");
				response.sendRedirect("master/addCategory.jsp");
			}
			
			
	}

}
