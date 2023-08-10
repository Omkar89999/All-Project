<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view notes</title>
<%@include file="/WEB-INF/resources/component/allcss.jsp"%>

</head>
<body style="background-color: #f0f0f0">
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>

	<div class="container p-4">
		<h4 class="text-center">View All Notes</h4>
		<c:if test="${not empty msg }">
					<h5 class="text-success text-center">${msg}</h5>
						<c:remove var="msg"/>
					</c:if>
		<div class="row">
		<c:forEach items="${list}" var="n">
			<!-- <div class="col-md-5 offset-md-3 mt-2"> -->
			<div class="col-md-6 mt-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<img alt="notes_img"
								src="<c:url value="/resources/img/notes2.jpg" />" width="70px"
								height="70px">
						</div>
					<h5><p>${n.title}</p></h5>
						<p>${n.description}</p>
						<%--  <p>Publish Date: ${n.date}</p> --%>
 
						<div class="text-center">
							<a href="editNotes?id=${n.id}" class="btn btn-primary btn-sm">Edit</a> <a
								href="deleteNotes?id=${n.id}" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>
				</div>

			</div>
			</c:forEach>

			
		</div>
	</div>


</body>
</html>