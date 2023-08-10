 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bill.entity.PE" %>
<%
     int order_no =Integer.parseInt(request.getParameter("order_no"));  
   
    String productName = request.getParameter("productName");
    int productQty =Integer.parseInt(request.getParameter("productQty"));
    String productUnit = request.getParameter("productUnit");
    String pdate = request.getParameter("pdate");

    List<PE> purchases = (ArrayList<PE>) session.getAttribute("purchases");
    if (purchases == null) {
        purchases = new ArrayList<PE>();
    }

    /*  PE purchase = new PE
     purchases.add(purchase); */
    

    session.setAttribute("purchases", purchases);

    response.sendRedirect("app.jsp");
%>
 
 