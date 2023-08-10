package com.bill.masterServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.SubCategoryDao;
import com.bill.db.DBConnect;
import com.bill.entity.SubCategory;

public class UpdateSubCategory extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int subcateId = Integer.parseInt(request.getParameter("subcateId"));
			int cateId = Integer.parseInt(request.getParameter("cateId"));
			String subcateName = request.getParameter("subcateName");
			String subcateDesc = request.getParameter("subcateDesc");

			SubCategory s = new SubCategory(subcateId, cateId, subcateName, subcateDesc);
			
//			SubCategory s = new SubCategory(cateId, subcateName, subcateDesc);
			
			SubCategoryDao dao = new SubCategoryDao(DBConnect.getConn());
			HttpSession session = request.getSession();
			if (dao.updatesubCategory(s)) {
				session.setAttribute("succMsg", "SubCategory Updated Successfully");
				response.sendRedirect("master/viewSubCat.jsp");
			} else {
				session.setAttribute("errorMsg", "Something wrong on Server");
				response.sendRedirect("master/viewSubCat.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
