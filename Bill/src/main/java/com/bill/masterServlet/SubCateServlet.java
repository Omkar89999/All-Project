package com.bill.masterServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.SubCategoryDao;
import com.bill.db.DBConnect;
import com.bill.entity.SubCategory;

@WebServlet("/subCateSer")
public class SubCateServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int subcateId=Integer.parseInt(request.getParameter("subcateId"));
		int cateId=Integer.parseInt(request.getParameter("cateId"));
		String subcateName=request.getParameter("subcateName");
		String subcateDesc=request.getParameter("subcateDesc");
		
//		SubCategory s=new SubCategory(subcateId, cateId, subcateName, subcateDesc);
		
		SubCategory s=new SubCategory(cateId, subcateName, subcateDesc);
		
		SubCategoryDao dao=new SubCategoryDao(DBConnect.getConn());
		
		HttpSession session=request.getSession();
		if(dao.addSubCategory(s))
		{
			session.setAttribute("succMsg", "Sub Category Added Successfully");
			response.sendRedirect("master/subCategory.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("master/subCategory.jsp");
		}
		
		
}

		
		
	}


