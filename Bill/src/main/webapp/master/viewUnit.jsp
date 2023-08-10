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
<title>View Unit</title>
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
						<p class="fs-3 text-center">Unit Details</p>


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
	</div>
</body>
</html>