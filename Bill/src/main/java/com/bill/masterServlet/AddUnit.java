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
import com.bill.entity.AddUnitE;
@WebServlet("/addUnit")
public class AddUnit extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int id=Integer.parseInt(request.getParameter("id"));
		int productUnit=Integer.parseInt(request.getParameter("productUnit"));
		String unitName=request.getParameter("unitName");
		
		AddUnitE u=new AddUnitE(productUnit, unitName);
		ProductUnitDao dao=new ProductUnitDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		
		if(dao.addUnit(u)) {
			session.setAttribute("succMsg", "Unit Added Successfully");
			response.sendRedirect("master/addUnit.jsp");
		}else {
			session.setAttribute("succMsg", "Unit Added Successfully");
			response.sendRedirect("master/addUnit.jsp");
		}
	
	}

}
