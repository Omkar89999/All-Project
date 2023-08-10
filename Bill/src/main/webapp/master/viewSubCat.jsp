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
<title>View SubCategory</title>
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
						<p class="fs-3 text-center">SubCategory Details</p>


						<table class="table">
							<thead>
								<tr>
									<th scope="col">SubCategory Id</th>
									<th scope="col">Category Id</th>
									<th scope="col">SubCategory Name</th>
									<th scope="col">SubCategory Desc</th>
									
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								SubCategoryDao dao2 = new SubCategoryDao(DBConnect.getConn());
								List<SubCategory> list2 = dao2.getAllSubCategory();
								for (SubCategory p : list2) {
								%>
								<tr>
									<td><%=p.getSubCateId()%></td>
									<td><%=p.getCateId()%></td>
									<td><%=p.getSubCateName() %></td>
									<td><%=p.getSubCateDesc() %></td>
									
									<td><a href="editsubCategory.jsp?subcateId=<%=p.getSubCateId()%>"
										class="btn btn-sm btn-primary">Edit</a>
										 <a
										href="../deleteSubCategory?subcateId=<%=p.getSubCateId()%>"
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