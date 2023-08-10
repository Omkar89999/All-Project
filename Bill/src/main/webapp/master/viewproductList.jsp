<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.ProductDao"%>
<%@ page import="com.bill.entity.AddProductE"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Product Details</p>


						<table class="table">
							<thead>
								<tr>
									<th scope="col">Product Id</th>
									<th scope="col">Category Id</th>
									<th scope="col">Sub Category Id</th>
									<th scope="col">Product Name</th>
									<th scope="col">Product Buy Price</th>
									<th scope="col">Product Unit</th>
									<th scope="col">Product Sell Price</th>
									<th scope="col">Product Size</th>
									<th scope="col">Product Description</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								ProductDao dao2 = new ProductDao(DBConnect.getConn());
								List<AddProductE> list2 = dao2.getAllProduct();
								for (AddProductE p : list2) {
								%>
								<tr>
									<td><%=p.getProductid()%></td>
									<td><%=p.getCateId()%></td>
									<td><%=p.getSubcateId()%></td>
									<td><%=p.getProductName()%></td>
									<td><%=p.getProductBuyingPrice()%></td>
									<td><%=p.getProductUnits()%></td>
									<td><%=p.getProductSellingPrice()%></td>
									<td><%=p.getProductSize()%></td>
									<td><%=p.getProductDesc()%></td>
									<td><a href="editProduct.jsp?productId=<%=p.getProductid()%>"
										class="btn btn-sm btn-primary">Edit</a>
										 <a
										href="../deleteProduct?productId=<%=p.getProductid()%>"
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
		</div>
	</div>
</body>
</html>