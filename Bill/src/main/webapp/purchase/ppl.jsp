 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.PDao"%>

<%@ page import="com.bill.entity.PE"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Product list</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container-fluide p-5">
		<form action="../purchase" method="post">
			<div class="card paint-card">
				<div class="card-body">
				<h1 class="text-center ">Purchase Product List</h1>
					<div class="row">
						<table class="table">
							<thead>
								<tr>
									<!-- <th scope="col">Id</th> -->
									<th scope="col">Order No</th>
									<th scope="col">Product Name</th>
									<th scope="col">Product Qty</th>
									<th scope="col">Product Unit</th>
									<th scope="col">Date</th>
									<th scope="col">Buy Price</th>
									<th scope="col">Sell Price</th>
									<th scope="col">Action</th>
									
								</tr>
							</thead>
							<tbody>
								<%
								PDao dao2 = new PDao(DBConnect.getConn());
								List<PE> list2 = dao2.getAllPProduct();

								for (PE p : list2) {
								%>


								<tr>
							<%-- 	<th><%=p.getProductId()%></th> --%>
								<th><%=p.getOrder_no()%></th>
								
									
									<td><%=p.getProductName()%></td>
									<td><%=p.getProductQty()%></td>
									<td><%=p.getProductUnit()%></td>
									<th><%=p.getPdate()%></th>
									<th><%=p.getBuyprice() %>
									<th><%=p.getSellprice() %></th>
									<td><a
										href="editProductl.jsp?order_no=<%=p.getOrder_no()%>"
										class="btn btn-sm btn-primary">Edit</a> <a
										href="../deleteproductl?order_no=<%=p.getOrder_no()%>"
										class="btn btn-sm btn-danger">Delete</a></td>

								</tr>

								<%
								}
								%>
			

							</tbody>


						</table>


					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>