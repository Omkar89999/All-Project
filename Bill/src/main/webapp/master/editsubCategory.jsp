<%@page import="com.bill.entity.AddProductE"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.SubCategoryDao"%>
<%@ page import="com.bill.entity.SubCategory"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit SubCategory</title>
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
						<p class="fs-3 text-center">Edit SubCategory Details</p>

						<%
						int subcateId = Integer.parseInt(request.getParameter("subcateId"));
						SubCategoryDao dao2 = new SubCategoryDao(DBConnect.getConn());
						SubCategory d = dao2.getsubCategoryById(subcateId);
						
						%>
						<form action="../updatesubCategory" method="post">
							
							<div class="mb-3">
								<label class="form-label">Category Id</label><input
									type="number" required name="cateId" class="form-control"
									value="<%=d.getCateId()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">SubCategory Name</label><input
									type="text" required name="subcateName" class="form-control"
									value="<%=d.getSubCateName()%>">


							</div>

							<div class="mb-3">
								<label class="form-label">SubCategory Description</label><input
									type="text" required name="subcateDesc" class="form-control"
									value="<%=d.getSubCateDesc()%>">


							</div>
							<input type="hidden" name="subcateId"
								value="<%=d.getSubCateId()%>">


							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
