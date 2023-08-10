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
import com.bill.entity.AddProductE;

@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		int productid=Integer.parseInt(request.getParameter("productid"));
		int cateId=Integer.parseInt(request.getParameter("cateId"));
		int subcateId=Integer.parseInt(request.getParameter("subcateId"));
		String productName=request.getParameter("productName");
		int productBuyingPrice=Integer.parseInt(request.getParameter("productBuyingPrice"));
		int productUnits=Integer.parseInt(request.getParameter("productUnits"));
		int productSellingPrice=Integer.parseInt(request.getParameter("productSellingPrice"));
		String productSize=request.getParameter("productSize");
		String productDesc=request.getParameter("description");
		
		
//		AddProductE a=new AddProductE(productName, productBuyPrice, productUnit, productSellPrice, productSize);
		

//		AddProductE a=new AddProductE(productid, cateId, subcateId, productName, productBuyingPrice, productUnits, productSellingPrice, productSize, productDesc);
		
		AddProductE a=new AddProductE(cateId, subcateId, productName, productBuyingPrice, productUnits, productSellingPrice, productSize, productDesc);
		
		
		
		ProductDao dao=new ProductDao(DBConnect.getConn());
		
		HttpSession session=request.getSession();
		if(dao.addProduct(a))
		{
			session.setAttribute("succMsg","Product Added Successfully");
			response.sendRedirect("master/add_Product.jsp");
		}else {
			session.setAttribute("errorMsg","Something Wrong on Server");
			response.sendRedirect("master/errorpage.jsp");
		}
	}

}
