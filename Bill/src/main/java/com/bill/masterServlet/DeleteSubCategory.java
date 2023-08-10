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

@WebServlet("/deleteSubCategory")
public class DeleteSubCategory extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int subcateId = Integer.parseInt(request.getParameter("subcateId"));

		SubCategoryDao dao = new SubCategoryDao(DBConnect.getConn());
		HttpSession session = request.getSession();
		if (dao.deleteSubCategory(subcateId)) {
			session.setAttribute("succMsg", "Category Delete Successfully");
			response.sendRedirect("master/viewSubCat.jsp");
		} else {
			session.setAttribute("errorMsg", "Something Wrong on Server");
			response.sendRedirect("master/viewSubCat.jsp");
		}

	}

}
