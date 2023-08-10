<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bill.dao.PDao"%>
<%@page import="com.bill.entity.PE"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Purchase Order</title>
<%@include file="../component/allcss.jsp"%>
<link rel="stylesheet" href="path/to/bootstrap.min.css">
<!-- Add your custom CSS files here -->

<script src="path/to/jquery.min.js"></script>
<script src="path/to/bootstrap.min.js"></script>
<!-- Add your custom JavaScript files here -->

<!-- Include your CSS and JavaScript files -->
<style type="text/css">
.paint-card {
	box-shadow: 0 0 3px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container-fluide p-5">
		<div class="card paint-card">
			<div class="card-body">

				<h1 class="text-center text-info">
					<em>Purchase Order</em>
				</h1>

				<form id="purchaseForm" action="../pp" method="post">
					<div class="row">
						<!-- <div class="col-md-2">
							<div class="form-group">
								<label for="orderNo">Purchase Order No:</label> <input
									type="text" id="order_no" name="order_no" class="form-control"
									required>
							</div>
						</div>
 -->
						<div class="col-md-2">
							<div class="form-group">
								<label for="orderNo">Purchase Order No:</label> <input
									type="text" id="order_no" name="order_no" class="form-control"
									required>
							</div>
						</div>

						<div class="col-md-2">
							<br> <a id="addListButton" class="btn btn-primary"
								href="../pp" onclick="addNewList()">Add New List</a>
						</div>


						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
						<div class="col-md-2">
							<div class="form-group">
								<label for="date">Date:</label> <input type="date" id="date"
									name="pdate" class="form-control" required>
							</div>
						</div>
					</div>

					<h3>Product Details</h3>
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label for="productName">Product Name:</label> <input
									name="productName" type="text" list="productName"
									class="form-control" required>
								<datalist id="productName">
									<option value="Shirt">
									<option value="Pant">
									<option value="Night Pant">
									<option value="T-Shirt">
									<option value="Shorts">
									<option value="Jacket">
									<option value="Hoodie">
									<option value="Armany">
								</datalist>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="qty">Quantity:</label> <input type="number" id="qty"
									name="productQty" class="form-control" required>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="unit">Unit:</label> <input name="productUnit"
									type="text" list="productUnit" class="form-control" required>
								<datalist id="productUnit">
									<option value="Peace">
									<option value="Box">
								</datalist>
							</div>
						</div>
						 <div class="col-md-3">
							<br>
							<button type="submit" class="btn btn-primary">Add
								Product</button>
						</div> 
					</div>
				</form>
				<hr>

				<h3>Purchase Order Summary</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Purchase Order No</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="purchase" items="${purchases}">
							<tr>
								<td>${purchase.order_no}</td>
								<td>${purchase.productName}</td>
								<td>${purchase.productQty}</td>
								<td>${purchase.productUnit}</td>
								<td>${purchase.pdate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<button id="printButton" onclick="printReport()"
					class="btn btn-primary">Print</button>
			</div>
		</div>
	</div>

	<script>
	
	 var order_no = 1;

	    function addProduct() {
	        // Increment the purchase order number count
	        order_no++;

	        // Update the purchase order number field in the form
	        document.getElementById("order_no").value = order_no;
	    }

	
		/* 		var order_no = 1;

		 function addNewList() {
		 // Increment the purchase order number count
		 order_no++;

		 // Update the purchase order number field in the form
		 document.getElementById("order_no").value = order_no;
		 }  */

		function printReport() {
			// Hide the form and other elements
			document.getElementById("purchaseForm").style.display = "none";
			document.getElementById("printButton").style.display = "none";

			// Print the purchase order summary table
			window.print();

			// Restore the hidden elements after printing
			document.getElementById("purchaseForm").style.display = "block";
			document.getElementById("printButton").style.display = "block";
		}
	</script>
	<script type="text/javascript">
		var currentDate = new Date().toISOString().split('T')[0];
		document.getElementById('date').value = currentDate;
	</script>

</body>
</html>







<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bill.dao.PDao"%>
<%@page import="com.bill.entity.PE"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Purchase Order</title>
<%@include file="../component/allcss.jsp"%>
<link rel="stylesheet" href="path/to/bootstrap.min.css">
<!-- Add your custom CSS files here -->

<script src="path/to/jquery.min.js"></script>
<script src="path/to/bootstrap.min.js"></script>
<!-- Add your custom JavaScript files here -->

<!-- Include your CSS and JavaScript files -->
<style type="text/css">
.paint-card {
	box-shadow: 0 0 3px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container-fluid p-5">
		<div class="card paint-card">
			<div class="card-body">

				<h1 class="text-center ">Purchase Order</h1>

				<form id="purchaseForm" action="../pp" method="post">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label for="orderNo">Purchase Order No:</label> <input
									type="text" id="order_no" name="order_no" class="form-control"
									required>
							</div>
						</div>

						<div class="col-md-2">
							<br> <a id="addListButton" class="btn btn-primary"
								href="../pp" onclick="addNewList()">Add New List</a>
						</div>

						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
						<div class="col-md-2">
							<div class="form-group">
								<label for="date">Date:</label> <input type="date" id="date"
									name="pdate" class="form-control" required>
							</div>
						</div>
					</div>

					<h3>Product Details</h3>
					<div id="productLists">
						<div class="row product-row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="productName">Product Name:</label> <input
										name="productName" type="text" list="productName"
										class="form-control" required>
									<datalist id="productName">
										<option value="Shirt">
										<option value="Pant">
										<option value="Night Pant">
										<option value="T-Shirt">
										<option value="Shorts">
										<option value="Jacket">
										<option value="Hoodie">
										<option value="Armany">
									</datalist>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="qty">Quantity:</label> <input type="number"
										name="productQty" class="form-control" required>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="unit">Unit:</label> <input name="productUnit"
										type="text" list="productUnit" class="form-control" required>
									<datalist id="productUnit">
										<option value="Peace">
										<option value="Box">
									</datalist>
								</div>
							</div>
							<div class="col-md-3">
								<br>
								<button type="button" class="btn btn-primary remove-product"
									onclick="removeProduct(this)">Remove</button>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<button type="button" class="btn btn-primary"
								onclick="addProductRow()">Add Another Product</button>
						</div>
					</div>

					<button type="submit" class="btn btn-primary">Add Product</button>
				</form>
				<hr>

				<h3>Purchase Order Summary</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Purchase Order No</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="purchase" items="${purchases}">
							<tr>
								<td>${purchase.order_no}</td>
								<td>${purchase.productName}</td>
								<td>${purchase.productQty}</td>
								<td>${purchase.productUnit}</td>
								<td>${purchase.pdate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<button id="printButton" onclick="printReport()"
					class="btn btn-primary">Print</button>
			</div>
		</div>
	</div>

	<script>
		var order_no = 1;

		function addNewList() {
			// Increment the purchase order number count
			order_no++;

			// Update the purchase order number field in the form
			document.getElementById("order_no").value = order_no;
		}

		function addProductRow() {
			var productRow = document.createElement("div");
			productRow.classList.add("row", "product-row");

			var productNameCol = document.createElement("div");
			productNameCol.classList.add("col-md-3");
			var productNameGroup = document.createElement("div");
			productNameGroup.classList.add("form-group");
			var productNameLabel = document.createElement("label");
			productNameLabel.setAttribute("for", "productName");
			productNameLabel.textContent = "Product Name:";
			var productNameInput = document.createElement("input");
			productNameInput.setAttribute("name", "productName");
			productNameInput.setAttribute("type", "text");
			productNameInput.setAttribute("list", "productName");
			productNameInput.classList.add("form-control");
			productNameInput.required = true;
			var productNameDatalist = document.createElement("datalist");
			productNameDatalist.setAttribute("id", "productName");
			productNameDatalist.innerHTML = `
				<option value="Shirt">
				<option value="Pant">
				<option value="Night Pant">
				<option value="T-Shirt">
				<option value="Shorts">
				<option value="Jacket">
				<option value="Hoodie">
				<option value="Armany">
			`;
			productNameGroup.appendChild(productNameLabel);
			productNameGroup.appendChild(productNameInput);
			productNameGroup.appendChild(productNameDatalist);
			productNameCol.appendChild(productNameGroup);

			var quantityCol = document.createElement("div");
			quantityCol.classList.add("col-md-3");
			var quantityGroup = document.createElement("div");
			quantityGroup.classList.add("form-group");
			var quantityLabel = document.createElement("label");
			quantityLabel.setAttribute("for", "qty");
			quantityLabel.textContent = "Quantity:";
			var quantityInput = document.createElement("input");
			quantityInput.setAttribute("name", "productQty");
			quantityInput.setAttribute("type", "number");
			quantityInput.classList.add("form-control");
			quantityInput.required = true;
			quantityGroup.appendChild(quantityLabel);
			quantityGroup.appendChild(quantityInput);
			quantityCol.appendChild(quantityGroup);

			var unitCol = document.createElement("div");
			unitCol.classList.add("col-md-3");
			var unitGroup = document.createElement("div");
			unitGroup.classList.add("form-group");
			var unitLabel = document.createElement("label");
			unitLabel.setAttribute("for", "unit");
			unitLabel.textContent = "Unit:";
			var unitInput = document.createElement("input");
			unitInput.setAttribute("name", "productUnit");
			unitInput.classList.add("form-control");
			unitInput.required = true;
			unitGroup.appendChild(unitLabel);
			unitGroup.appendChild(unitInput);
			unitCol.appendChild(unitGroup);

			var removeButtonCol = document.createElement("div");
			removeButtonCol.classList.add("col-md-3");
			var removeButton = document.createElement("button");
			removeButton.setAttribute("type", "button");
			removeButton.classList.add("btn", "btn-primary", "remove-product");
			removeButton.textContent = "Remove";
			removeButton.setAttribute("onclick", "removeProduct(this)");
			removeButtonCol.appendChild(removeButton);

			productRow.appendChild(productNameCol);
			productRow.appendChild(quantityCol);
			productRow.appendChild(unitCol);
			productRow.appendChild(removeButtonCol);

			document.getElementById("productLists").appendChild(productRow);
		}

		function removeProduct(button) {
			var productRow = button.closest(".product-row");
			productRow.parentNode.removeChild(productRow);
		}

		function printReport() {
			// Hide the form and other elements
			document.getElementById("purchaseForm").style.display = "none";
			document.getElementById("printButton").style.display = "none";

			// Print the purchase order summary table
			window.print();

			// Restore the hidden elements after printing
			document.getElementById("purchaseForm").style.display = "block";
			document.getElementById("printButton").style.display = "block";
		}
	</script>
	<script type="text/javascript">
		var currentDate = new Date().toISOString().split('T')[0];
		document.getElementById('date').value = currentDate;
	</script>

</body>
</html>
 









<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bill.dao.PDao"%>
<%@page import="com.bill.entity.PE"%>
<%@page import="com.bill.db.DBConnect"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Purchase Order</title>
<%@include file="../component/allcss.jsp"%>
<link rel="stylesheet" href="path/to/bootstrap.min.css">
<!-- Add your custom CSS files here -->

<script src="path/to/jquery.min.js"></script>
<script src="path/to/bootstrap.min.js"></script>
<!-- Add your custom JavaScript files here -->

<!-- Include your CSS and JavaScript files -->
<style type="text/css">
.paint-card {
	box-shadow: 0 0 3px 0 rgba(0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="../component/navbar.jsp"%>
	<div class="container-fluid p-5">
		<div class="card paint-card">
			<div class="card-body">

				<h1 class="text-center ">Purchase Order</h1>

				<form id="purchaseForm" action="../pp" method="post">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label for="orderNo">Purchase Order No:</label> <input
									type="text" id="order_no" name="order_no" class="form-control"
									required>
							</div>
						</div>

						<div class="col-md-2">
							<br> <a id="addListButton" class="btn btn-primary"
								href="../pp" onclick="addNewList()">Add New List</a>
						</div>

						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
						<div class="col-md-2">
							<div class="form-group">
								<label for="date">Date:</label> <input type="date" id="date"
									name="pdate" class="form-control" required>
							</div>
						</div>
					</div>

					<h3>Product Details</h3>
					<div id="productLists">
						<div class="row product-row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="productName">Product Name:</label> <input
										name="productName" type="text" list="productName"
										class="form-control" required>
									<datalist id="productName">
										<option value="Shirt">
										<option value="Pant">
										<option value="Night Pant">
										<option value="T-Shirt">
										<option value="Shorts">
										<option value="Jacket">
										<option value="Hoodie">
										<option value="Armany">
									</datalist>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="qty">Quantity:</label> <input type="number"
										name="productQty" class="form-control" required>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label for="unit">Unit:</label> <input name="productUnit"
										type="text" list="productUnit" class="form-control" required>
									<datalist id="productUnit">
										<option value="Peace">
										<option value="Box">
									</datalist>
								</div>
							</div>
							<div class="col-md-1">
								<br>
								<button type="button" class="btn btn-success"
									onclick="addProductRow()">
									<i class="fa-solid fa-plus"></i>
								</button>
							</div>
							<div class="col-md-2">
								<br>
								<button type="button" class="btn btn-danger remove-product"
									onclick="removeProduct(this)">Remove</button>
							</div>
						</div>
					</div>

					<button type="submit" class="btn btn-primary">Add List</button>
				</form>
				<hr>

				<h3>Purchase Order Summary</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Purchase Order No</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="purchase" items="${purchases}">
							<tr>
								<td>${purchase.order_no}</td>
								<td>${purchase.productName}</td>
								<td>${purchase.productQty}</td>
								<td>${purchase.productUnit}</td>
								<td>${purchase.pdate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<button id="printButton" onclick="printReport()"
					class="btn btn-primary">Print</button>
			</div>
		</div>
	</div>
	<script>
// Existing functions (addProductRow, removeProduct, printReport)...

// Function to add the current product list to the Purchase Order Summary
function addListToSummary() {
    // Get the values from the current product list
    var order_no = document.getElementById("order_no").value;
    var productName = document.getElementsByName("productName");
    var productQty = document.getElementsByName("productQty");
    var productUnit = document.getElementsByName("productUnit");
    var pdate = document.getElementById("date").value;

    // Get the table body where the summary rows will be added
    var tableBody = document.getElementById("purchaseSummaryTableBody");

    // Loop through the product lists and create rows in the summary table
    for (var i = 0; i < productName.length; i++) {
        var productNameValue = productName[i].value;
        var productQtyValue = productQty[i].value;
        var productUnitValue = productUnit[i].value;

        // Create a new row for the summary table
        var newRow = document.createElement("tr");
        newRow.innerHTML = `
            <td>${order_no}</td>
            <td>${productNameValue}</td>
            <td>${productQtyValue}</td>
            <td>${productUnitValue}</td>
            <td>${pdate}</td>
        `;

        // Append the new row to the table body
        tableBody.appendChild(newRow);
    }
}

// Attach the function to the "Add List" button click event
document.getElementById("addListButton").addEventListener("click", addListToSummary);
</script>



	<script type="text/javascript">
	function addProductRow() {
	    var productRow = document.createElement("div");
	    productRow.classList.add("row", "product-row");

	    var productNameCol = document.createElement("div");
	    productNameCol.classList.add("col-md-3");
	    var productNameGroup = document.createElement("div");
	    productNameGroup.classList.add("form-group");
	    var productNameLabel = document.createElement("label");
	    productNameLabel.setAttribute("for", "productName");
	    productNameLabel.textContent = "Product Name:";
	    var productNameInput = document.createElement("input");
	    productNameInput.setAttribute("name", "productName");
	    productNameInput.setAttribute("type", "text");
	    productNameInput.setAttribute("list", "productName");
	    productNameInput.classList.add("form-control");
	    productNameInput.required = true;
	    var productNameDatalist = document.createElement("datalist");
	    productNameDatalist.setAttribute("id", "productName");
	    productNameDatalist.innerHTML = `
	        <option value="Shirt">
	        <option value="Pant">
	        <option value="Night Pant">
	        <option value="T-Shirt">
	        <option value="Shorts">
	        <option value="Jacket">
	        <option value="Hoodie">
	        <option value="Armany">
	    `;
	    productNameGroup.appendChild(productNameLabel);
	    productNameGroup.appendChild(productNameInput);
	    productNameGroup.appendChild(productNameDatalist);
	    productNameCol.appendChild(productNameGroup);

	    var quantityCol = document.createElement("div");
	    quantityCol.classList.add("col-md-3");
	    var quantityGroup = document.createElement("div");
	    quantityGroup.classList.add("form-group");
	    var quantityLabel = document.createElement("label");
	    quantityLabel.setAttribute("for", "qty");
	    quantityLabel.textContent = "Quantity:";
	    var quantityInput = document.createElement("input");
	    quantityInput.setAttribute("name", "productQty");
	    quantityInput.setAttribute("type", "number");
	    quantityInput.classList.add("form-control");
	    quantityInput.required = true;
	    quantityGroup.appendChild(quantityLabel);
	    quantityGroup.appendChild(quantityInput);
	    quantityCol.appendChild(quantityGroup);

	    var unitCol = document.createElement("div");
	    unitCol.classList.add("col-md-3");
	    var unitGroup = document.createElement("div");
	    unitGroup.classList.add("form-group");
	    var unitLabel = document.createElement("label");
	    unitLabel.setAttribute("for", "unit");
	    unitLabel.textContent = "Unit:";
	    var unitInput = document.createElement("input");
	    unitInput.setAttribute("name", "productUnit");
	    unitInput.classList.add("form-control");
	    unitInput.required = true;
	    unitGroup.appendChild(unitLabel);
	    unitGroup.appendChild(unitInput);
	    unitCol.appendChild(unitGroup);

	    var addButtonCol = document.createElement("div");
	    addButtonCol.classList.add("col-md-1");
	    var addButton = document.createElement("button");
	    addButton.setAttribute("type", "button");
	    addButton.classList.add("btn", "btn-success");
	    addButton.setAttribute("onclick", "addProductRow()");
	    addButton.innerHTML = '<i class="fa-solid fa-plus"></i>';
	    addButtonCol.appendChild(addButton);

	    var removeButtonCol = document.createElement("div");
	    removeButtonCol.classList.add("col-md-1");
	    var removeButton = document.createElement("button");
	    removeButton.setAttribute("type", "button");
	    removeButton.classList.add("btn", "btn-danger", "remove-product");
	    removeButton.textContent = "Remove";
	    removeButton.setAttribute("onclick", "removeProduct(this)");
	    removeButtonCol.appendChild(removeButton);

	    productRow.appendChild(productNameCol);
	    productRow.appendChild(quantityCol);
	    productRow.appendChild(unitCol);
	    productRow.appendChild(addButtonCol);
	    productRow.appendChild(removeButtonCol);

	    var productLists = document.getElementById("productLists");
	    productLists.appendChild(productRow);

	    // Remove the top "Add Product Row" button
	    var topAddButton = document.getElementById("addListButton");
	    topAddButton.parentNode.removeChild(topAddButton);
	}

	function removeProduct(button) {
		var productRow = button.closest(".product-row");
		productRow.parentNode.removeChild(productRow);
	}

	function printReport() {
		// Hide the form and other elements
		document.getElementById("purchaseForm").style.display = "none";
		document.getElementById("printButton").style.display = "none";

		// Print the purchase order summary table
		window.print();

		// Restore the hidden elements after printing
		document.getElementById("purchaseForm").style.display = "block";
		document.getElementById("printButton").style.display = "block";
	}
</script>
	<script type="text/javascript">
	var currentDate = new Date().toISOString().split('T')[0];
	document.getElementById('date').value = currentDate;
</script>


</body>
</html> --%>
