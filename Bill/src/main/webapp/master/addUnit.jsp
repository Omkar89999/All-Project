<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="com.bill.dao.CategoryDao"%>
<%@page import="com.bill.entity.AddCategoryE"%>
<%@page import="java.util.List"%>
<%@ page import="com.bill.dao.ProductUnitDao"%>
<%@ page import="com.bill.entity.AddUnitE"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Unit</title>
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

	<div class="container p-5">
		<form action="../addUnit" method="post">
			<div class="card paint-card">
				<div class="card-body">
					<h1 class="text-center">Add Unit</h1>

					<div class="row">
						<div class="col">

							<h5>
								<label for="unitId" class="form-label">Product Unit
									</label> <input type="number" class="form-control" id="productUnit"
									name="productUnit" />
							</h5>
						</div>
						</div>
					<div class="row">
						<div class="col">

							<h5>
								<label for="unitName" class="form-label">Unit Name</label>
								<input type="text" class="form-control" id="unitName"
									name="unitName" />
							</h5>
						</div>
						</div>
						
					<button type="submit" class="btn btn-success">Add Unit</button>
					<button type="reset" class="btn btn-danger">Reset Form</button>

				</div>
			</div>
			<br>
			
			
		<div class="row">

			<div class="col">
				<div class="card paint-card">
					<div class="card-body">
						<h1 class="text-center">Unit Details</h1>


						<table class="table">
							<thead>
								<tr>
									<th scope="col">Unit No</th>
									<th scope="col">Unit Name</th>
									
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								ProductUnitDao dao2 = new ProductUnitDao(DBConnect.getConn());
								List<AddUnitE> list2 = dao2.getUnitId();
								for (AddUnitE p : list2) {
								%>
								<tr>
									<td><%=p.getProductUnit()%></td>
									<td><%=p.getUnitName()%></td>
									
														
									<td><a href="editUnit.jsp?productUnit=<%=p.getProductUnit()%>"
										class="btn btn-sm btn-primary">Edit</a>
										 <a
										href="../deleteUnit?productUnit=<%=p.getProductUnit()%>"
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
	
			
		</form>
	</div>

</body>
</html>