<%@page import="com.bill.entity.AddProductE"%>
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
<title>Edit Purchase Product</title>
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
						<p class="fs-3 text-center">Edit Purchase Product Details</p>

						 <%
						int order_no = Integer.parseInt(request.getParameter("order_no"));
						PDao dao2 = new PDao(DBConnect.getConn());
						PE p= dao2.getPProductById(order_no);
						%>
						<form action="../updateProductl" method="post">
							<%-- <div class="mb-3">
								 <label class="form-label">Product Id</label><input type="number"
									required name=productid class="form-control" value="<%=d.getProductid()%>">

							</div> --%>
							<div class="mb-3">
								<label class="form-label">Order Id</label><input
									type="number" required name="order_no" class="form-control"
									value="<%=p.getOrder_no()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Product Name</label><input type="text"
									required name="productName" class="form-control" value="<%=p.getProductName()%>">
								

							</div>

							<div class="mb-3">
								<label class="form-label">Product Qty</label><input
									type="number" required name="productQty" class="form-control"
									value="<%=p.getProductQty()%>">
								

							</div>
							<div class="mb-3">
								<label class="form-label">Product Unit</label><input
									type="text" required name="productUnit"
									class="form-control" value="<%=p.getProductUnit()%>">
								

							</div>
							<div class="mb-3">
								<label class="form-label">Date</label><input type="date"
									required name="pdate" class="form-control" value="<%=p.getPdate()%>">
								
							</div>
							<div class="mb-3">
								<label class="form-label">Product Buy Price</label><input
									type="text" required name="buyprice"
									class="form-control" value="<%=p.getBuyprice()%>">
						

							</div>
							<div class="mb-3">
								<label class="form-label">Product Sell Price</label><input type="text"
									required name="sellprice" class="form-control" value="<%=p.getSellprice()%>">
								

							</div>
							 <input type="hidden" name="order_no" value="<%=p.getOrder_no()%>">
							

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
