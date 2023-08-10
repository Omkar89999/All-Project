package com.bill.purchaseServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bill.dao.PDao;
import com.bill.db.DBConnect;
import com.bill.entity.PE;

@WebServlet("/pp")
public class P extends HttpServlet {
//	private int orderNoCount = 1000;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		Integer order_no = (Integer) session.getAttribute("order_no");
		if (order_no == null) {
			order_no = 1000;
			session.setAttribute("order_no", order_no);
		}
		session.removeAttribute("purchases");

		try {
			response.sendRedirect("purchase/app.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int order_no = Integer.parseInt(request.getParameter("order_no"));
			String productName = request.getParameter("productName");
			int productQty = Integer.parseInt(request.getParameter("productQty"));
			String productUnit = request.getParameter("productUnit");
			String pdate = request.getParameter("pdate");
//			System.out.println(order_no);
//		int buyprice=Integer.parseInt(request.getParameter("buyprice"));
//		int sellprice=Integer.parseInt(request.getParameter("sellprice"));
//		
//			order_no++;

			PE p = new PE(order_no, productName, productQty, productUnit, pdate);
			PDao dao = new PDao(DBConnect.getConn());
			HttpSession session = request.getSession();

			List<PE> purchases = (List<PE>) session.getAttribute("purchases");
			if (purchases == null) {
				purchases = new ArrayList<PE>();

			}

			session.setAttribute("purchases", purchases);

			PE purchase = new PE(order_no, productName, productQty, productUnit, pdate);

			purchases.add(purchase);

			if (dao.addpp(p)) {
				session.setAttribute("succMsg", "Purchase Product Added Successfully");

				response.sendRedirect("purchase/app.jsp");
//				response.sendRedirect(request.getContextPath() + "/pp");

			} else {
				session.setAttribute("errorMsg", "Something Wrong on server");
				response.sendRedirect("purchase/app.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
