<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.bill.dao.ProductDao" %>
	<%@page import="com.bill.db.DBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
		<%ProductDao dao=new ProductDao(DBConnect.getConn()); %>
	

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
					<i class="fa-solid fa-bolt fa-3x"></i>
						
						<p class="fs-4 txt-center">
						Category<br><%=dao.countCategory() %>
						
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-regular fa-circle-down fa-3x"></i>
						<p class="fs-4 txt-center">
							Sub Category<br><%=dao.countSubCategory() %>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-brands fa-product-hunt fa-3x	"></i>
						<p class="fs-4 txt-center">
							Product<br><%=dao.countProduct() %>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-share-from-square fa-3x"></i>
						<p class="fs-4 txt-center">
							Unit<br><%=dao.countUnit() %>
						</p>
					</div>
				</div>
			</div>
			
			
		</div>


	</div>

</body>
</html>