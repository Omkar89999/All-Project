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

@WebServlet("/updateCategory")
public class UpdateCategory extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int cateId = Integer.parseInt(request.getParameter("cateId"));
			String cateName = request.getParameter("cateName");
			String cateDesc = request.getParameter("cateDesc");

			AddCategoryE a = new AddCategoryE(cateId, cateName, cateDesc);

			CategoryDao dao = new CategoryDao(DBConnect.getConn());
			HttpSession session = request.getSession();

			if (dao.updateCategory(a)) {
				session.setAttribute("succMsg", "Category Update Successfully");
				response.sendRedirect("master/viewlist.jsp");
			} else {
				session.setAttribute("errorMsg", "Something Wrong on Server");
				response.sendRedirect("master/viewlist.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
