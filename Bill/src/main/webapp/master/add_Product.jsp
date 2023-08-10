<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="com.bill.dao.CategoryDao"%>
<%@page import="com.bill.entity.AddCategoryE"%>
<%@page import="com.bill.dao.SubCategoryDao"%>
<%@page import="com.bill.entity.SubCategory"%>
<%@page import="com.bill.entity.AddUnitE"%>
<%@page import="com.bill.dao.ProductUnitDao"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 5px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<%-- <%CategoryDao dao=new CategoryDao(DBConnect.getConn());
	AddCategoryE d=(AddCategoryE) session.getAttribute("catObj");
	%> --%>

	<div class="container-fluide p-5">
		<form action="../addProduct" method="post">
			<div class="card paint-card">
				<div class="card-body">
					<h1 class="text-center text-primary"><em>Add Product</em></h1>

					<div class="row">
						<!-- <div class="col-6">

							<h5>
								<label for="productid" class="form-label">Product Id</label> <input
									type="number" class="form-control" id="productid"
									name="productid" />
							</h5>
						</div> -->

						<div class="col-6">
							<h5>
								<label for="cate_id" class="form-label">Category Name</label> <select
									name="cateId" required class="form-control">
									<option>--select--</option>
									<%
									CategoryDao dao2 = new CategoryDao(DBConnect.getConn());
									List<AddCategoryE> list2 = dao2.getId();
									for (AddCategoryE d : list2) {
									%>
									<option value="<%=d.getCateId()%>"><%=d.getCateName()%>
									</option>
									<%
									}
									%>
								</select>
							</h5>
						</div>
						<div class="col-6">
							<h5>
								<label for="productCompany" class="form-label">Sub
									CategoryId</label> <select name="subcateId" required
									class="form-control">
									<option>--select--</option>
									<%
									SubCategoryDao dao3 = new SubCategoryDao(DBConnect.getConn());
									List<SubCategory> list3 = dao3.getSubCatId();
									for (SubCategory d : list3) {
									%>
									<option value="<%=d.getSubCateId()%>"><%=d.getSubCateName()%></option>
									<%
									}
									%>
								</select>
							</h5>
						</div>

					</div>
					<div class="row">
						<div class="col-6">
							<h5>
								<label for="productName" class="form-label">Product Name</label>
								<input type="text" class="form-control" id="productName"
									name="productName" />
							</h5>
						</div>
						<div class="col-6">
							<h5>
								<label for="productUnits" class="form-label">Product
									Units</label> <select name="productUnits" required class="form-control">
									<option>--select--</option>
									<%
									ProductUnitDao dao4 = new ProductUnitDao(DBConnect.getConn());
									List<AddUnitE> list4 = dao4.getUnitId();
									for (AddUnitE d : list4) {
									%>
									<option value="<%=d.getProductUnit()%>"><%=d.getUnitName()%>
									</option>
									<%
									}
									%>
								</select>
							</h5>
						</div>

					</div>
					<div class="row">
						<div class="col-6">
							<h5>
								<label for="productBuyingPrice" class="form-label">Product
									Buying Price</label> <input type="number" class="form-control"
									id="productBuyingPrice" name="productBuyingPrice" />
							</h5>
						</div>
						<div class="col-6">
							<h5>
								<label for="productSize" class="form-label">Product Size</label>
								<!-- <input type="text" class="form-control" id="productSize"
									name="productSize" /> -->

								<input list=productSize name="productSize" id="productSize"  class="form-control">
								<datalist id="productSize">
									<option value="S">
									<option value="M">
									<option value="L">
									<option value="XL">
									<option value="XXL">
								</datalist>


							</h5>
						</div>

					</div>
					<div class="row">
						<div class="col-6">

							<h5>
								<label for="productSellingPrice" class="form-label">Product
									Selling Price</label> <input type="number" class="form-control"
									id="productSellingPrice" name="productSellingPrice" />
							</h5>
						</div>
						<div class="col-6">
							<h5>
								<label for="description" class="form-label">Description</label>
								<textarea class="form-control" id="description"
									name="description"></textarea>
							</h5>
						</div>


					</div>

					<button type="submit" class="btn btn-success">Add Product</button>
					<button type="reset" class="btn btn-danger">Reset Form</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>
<%-- 
<%
CategoryDao dao2 = new CategoryDao(DBConnect.getConn());
List<AddCategoryE> list2 = dao2.getId();
for (AddCategoryE d : list2) {
%>
	<div class="col-6">
		<h5>
			<label for="cate_id" class="form-label">Category Id<%=d.getCateId()%></label>
			<input type="text" class="form-control" id="cate_id" name="cate_id" />
		</h5>
	</div>
	</div>
	<% --%>