<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
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

		<div class="row text-center">

			<div class="col-md-6 ">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModel">
					<div class="card-body">
					<h1>Add Category</h1>
					 <h4>Click</h4>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card paint-card"> <!-- data-bs-toggle="modal" data-bs-target="#exampleList" -->
					<div class="card-body">
					<h1>View List</h1>
				 <h4><a href="viewlist.jsp">Click Here</a></h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModel" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<form action="../addCategory" method="post">
				<div class="form-group">
				<label>Category Id</label>
				<input type="text" name="cateId" class="form-control">
				
				<label>Category Name</label>
				<input type="text" name="cateName" class="form-control">
				
				<label for="description" class="form-label">Description</label>
							<textarea class="form-control" id="description"
								name="cateDesc"></textarea>
				
				</div>
				<div class="mt-3"><button type="submit" class="btn btn-primary">Add</button>
				<button type="reset" class="btn btn-danger">Reset Form</button></div>
				</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	

<!-- 
	 Modal List 
	<div class="modal fade" id="exampleList" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<form action="../addCategory" method="post">
				<div class="form-group">
				<label>Category Id</label>
				<input type="text" name="cateid" class="form-control">
				
				<label>Category Name</label>
				<input type="text" name="cateName" class="form-control">
				
				<label>Description</label>
				<input type="text" name="cateDesc" class="form-control">
				
				</div>
				<div class="text-center mt-3"><button type="submit" class="btn btn-primary">Add</button></div>
				<div class="text-center mt-3"><button type="reset" class="btn btn-danger">Reset Form</button></div>
				</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div> -->
	


</body>
</html>