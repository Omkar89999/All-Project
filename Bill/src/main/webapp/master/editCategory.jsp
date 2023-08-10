<%@page import="com.bill.entity.AddProductE"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.bill.db.DBConnect"%>
<%@ page import="com.bill.dao.CategoryDao"%>
<%@ page import="com.bill.entity.AddCategoryE"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Category</title>
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
						<p class="fs-3 text-center">Edit Category Details</p>

					<%--  <c:if test="${not empty succMsg }">
							<p class="fs-4 text-center text-success" role="alert">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="fs-4 text-center text-danger">${errorMsg }</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>  --%>

						<%
						int cateId = Integer.parseInt(request.getParameter("cateId"));
						CategoryDao dao2 = new CategoryDao(DBConnect.getConn());
						AddCategoryE d = dao2.getCategoryById(cateId);
						%>
						<form action="../updateCategory" method="post">
							
							<%-- <div class="mb-3">
								<label class="form-label">Category Id</label><input
									type="number" required name="cateId" class="form-control"
									value="<%=d.getCateId()%>">

							</div> --%>
							<div class="mb-3">
								<label class="form-label">Category Name</label><input
									type="text" required name="cateName" class="form-control"
									value="<%=d.getCateName()%>">


							</div>

							<div class="mb-3">
								<label class="form-label">Category Description</label><input
									type="text" required name="cateDesc" class="form-control"
									value="<%=d.getCateDesc()%>">


							</div>
							<input type="hidden" name="cateId"
								value="<%=d.getCateId()%>">


							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
