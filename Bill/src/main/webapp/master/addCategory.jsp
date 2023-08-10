<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container p-5">
		<form action="../addCategory" method="post">
		<div class="row">
					<div class="col-md-5 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<h1 class="text-center"><em>Add Category</em></h1>
					
					<div class="form-group">
						<!-- <h5><label>Category Id</label> <input type="text" name="cateId"
							class="form-control"></h5> --><h5> <label>
							Category Name</label> <input
							type="text" name="cateName" class="form-control"></h5>
							<h5> <label
							for="description" class="form-label">Description</label>
						<textarea class="form-control" id="description" name="cateDesc"></textarea></h5>

					</div>
					
					</div>
					<div class="mt-3 text-center">
						<button type="submit" class="btn btn-primary">Add</button>
						<button type="reset" class="btn btn-danger">Reset Form</button>
					</div>
				</div>
				
				
			</div>
			</div>
		</form>
	</div>
</body>
</html>