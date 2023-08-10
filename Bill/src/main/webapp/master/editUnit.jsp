<%@page import="com.bill.entity.AddProductE"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.ProductUnitDao"%>
<%@ page import="com.bill.entity.AddUnitE"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Unit</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container-fluid p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Unit Details</p>

						<%
						int productUnit = Integer.parseInt(request.getParameter("productUnit"));
						ProductUnitDao dao2 = new ProductUnitDao(DBConnect.getConn());
						AddUnitE d = dao2.getUnitById(productUnit);
						%>
						<form action="../updateUnit" method="post">
							
							<%-- <div class="mb-3">
								<label class="form-label">Category Id</label><input
									type="number" required name="cateId" class="form-control"
									value="<%=d.getCateId()%>">

							</div> --%>
							<div class="mb-3">
								<label class="form-label">Category Name</label><input
									type="text" required name="unitName" class="form-control"
									value="<%=d.getUnitName()%>">


							</div>

							<%-- <div class="mb-3">
								<label class="form-label">Category Description</label><input
									type="text" required name="cateDesc" class="form-control"
									value="<%=d.getCateDesc()%>">


							</div> --%>
							<input type="hidden" name="productUnit"
								value="<%=d.getProductUnit()%>">


							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
