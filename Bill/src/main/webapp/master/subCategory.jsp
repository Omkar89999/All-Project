<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="com.bill.dao.CategoryDao"%>
<%@page import="com.bill.entity.AddCategoryE"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sub Category</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>

	<div class="container-fluide p-5">
		<form action="../subCateSer" method="post">
			<div class="card paint-card">
				<div class="card-body">
					<h1 class="text-center">Add Sub Category</h1>

					<!-- <div class="row">
						<div class="col">

							<h5>
								<label for="subcateId" class="form-label">Sub Category
									Id</label> <input type="number" class="form-control" id="subcateId"
									name="subcateId" />
							</h5>
						</div>
						</div> -->
						<div class="row">

						<div class="col">
							<h5>
								<label for="cate_id" class="form-label">Category Name</label> <select
									name="cateId" required class="form-control">
									<option>--select--</option>

									<%
									CategoryDao dao2 = new CategoryDao(DBConnect.getConn());
									List<AddCategoryE> list2 = dao2.getId();
									for (AddCategoryE d : list2) {
									%>
									<option value="<%=d.getCateId()%>"><%=d.getCateName() %></option>
									<%
									}
									%>
								</select>
							</h5>
						</div>
					</div>
					<div class="row">
						<div class="col">

							<h5>
								<label for="subcateName" class="form-label">Sub Category Name</label>
								<input type="text" class="form-control" id="subcateName"
									name="subcateName" />
							</h5>
						</div>
						</div>
						<div class="row">


						<div class="col">
							<h5>
								<label for="subcateDesc" class="form-label">Sub
									Category Description</label> <input type="text" class="form-control"
									id="subcateDesc" name="subcateDesc" />
							</h5>
						</div>
					</div>
					<button type="submit" class="btn btn-success">Add Category</button>
					<button type="reset" class="btn btn-danger">Reset Form</button>

				</div>
			</div>
		</form>
	</div>

</body>
</html>