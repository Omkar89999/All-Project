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
<title>View CategoryList</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="../component/navbar.jsp" %>


	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Category Details</p>


						<table class="table">
							<thead>
								<tr>
									<th scope="col">Category Id</th>
									<th scope="col">Category Name</th>
									<th scope="col">Category Description</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								CategoryDao dao2 = new CategoryDao(DBConnect.getConn());
								List<AddCategoryE> list2 = dao2.getAllCategory();
								for (AddCategoryE p : list2) {
								%>
								<tr>
									<td><%=p.getCateId()%></td>
									<td><%=p.getCateName()%></td>
									<td><%=p.getCateDesc()%></td>
									
									
									<td><a href="editCategory.jsp?cateId=<%=p.getCateId()%>"
										class="btn btn-sm btn-primary">Edit</a>
										 <a
										href="../deleteCategory?cateId=<%=p.getCateId()%>"
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