<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditNotes</title>
<%@include file="/WEB-INF/resources/component/allcss.jsp"%>

</head>
<body style="background-color: #f0f0f0">
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header">
						<h2 class="text-center">Edit Your Notes</h2>
					</div>
					<div class="card-body">
						<form action="updateNotes" method="post">
							<div class="mb-3">
								<label>Enter Title</label><input type="text" name="title"
									class="form-control" value="${notes.title}">
							</div>
							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="6" cols="" class="form-control" name="description">${notes.description }</textarea>
							</div>
							<input type="hidden" name="id" value="${notes.id}">
							<button class="btn btn-primary col-md-12 mt-4">Update</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>