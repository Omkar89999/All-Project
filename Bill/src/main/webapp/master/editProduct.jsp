<%@page import="com.bill.entity.AddProductE"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.ProductDao"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
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
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Product Details</p>

						<%--  <c:if test="${not empty succMsg }">
							<p class="fs-4 text-center text-success" role="alert">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="fs-4 text-center text-danger">${errorMsg }</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>  --%>

						 <%
						int productid = Integer.parseInt(request.getParameter("productId"));
						ProductDao dao2 = new ProductDao(DBConnect.getConn());
						AddProductE d = dao2.getProductById(productid);
						%>
						<form action="../updateProduct" method="post">
							<%-- <div class="mb-3">
								 <label class="form-label">Product Id</label><input type="number"
									required name=productid class="form-control" value="<%=d.getProductid()%>">

							</div> --%>
							<div class="mb-3">
								<label class="form-label">Category Id</label><input
									type="number" required name="cateId" class="form-control"
									value="<%=d.getCateId()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Product Name</label><input type="text"
									required name="productName" class="form-control" value="<%=d.getProductName()%>">
								

							</div>

							<div class="mb-3">
								<label class="form-label">Sub Category Id</label><input
									type="number" required name="subcateId" class="form-control"
									value="<%=d.getSubcateId()%>">
								

							</div>
							<div class="mb-3">
								<label class="form-label">Product Buying Price</label><input
									type="number" required name="productBuyingPrice"
									class="form-control" value="<%=d.getProductBuyingPrice()%>">
								

							</div>
							<div class="mb-3">
								<label class="form-label">Product Unit</label><input type="text"
									required name="productUnits" class="form-control" value="<%=d.getProductUnits()%>">
								
							</div>
							<div class="mb-3">
								<label class="form-label">Product Selling Price</label><input
									type="text" required name="productSellingPrice"
									class="form-control" value="<%=d.getProductSellingPrice()%>">
						

							</div>
							<div class="mb-3">
								<label class="form-label">Product Size</label><input type="text"
									required name="productSize" class="form-control" value="<%=d.getProductSize()%>">
								

							</div>
							<div class="mb-3">
								<label class="form-label">Product Description</label><input
									type="text" required name="description" class="form-control"
									value="<%=d.getProductDesc()%>">
								

							</div>
							 <input type="hidden" name="productid" value="<%=d.getProductid()%>">
							

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
