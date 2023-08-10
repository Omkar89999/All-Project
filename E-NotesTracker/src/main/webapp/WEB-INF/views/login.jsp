<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<%@include file="/WEB-INF/resources/component/allcss.jsp"%>

</head>
<body style="background-color: #f0f0f0">
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
						<h2 class="text-center">Login Page</h2>
						<c:if test="${not empty msg }">
							<h5 class="text-danger text-center">${msg}</h5>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="loginUser" method="post">
							<div class="mb-3">
								<label>Enter Email</label><input type="text" name="email"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Password</label><input type="password"
									name="password" class="form-control">
							</div>
							<button class="btn btn-primary col-md-12">Login</button>
						</form>
					</div>
					<div class="card-footer">
						<p class="fs-6">
							if don't have an account create <a href="${pageContext.request.contextPath}/register"
								class="text-decoration-none">Register</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>