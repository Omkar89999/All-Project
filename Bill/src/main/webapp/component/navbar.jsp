<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-light
	bg-info"><!-- style="background-color: #e3f2fd;" -->
	<div class="container-fluid">
		<a class="navbar-brand" href="/Bill/index.jsp"><i
			class="fa-solid fa-house-chimney-medical"></i>Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Master </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/Bill/master/addCategory.jsp">Add
								Category</a></li>
						<li><a class="dropdown-item" href="/Bill/master/viewlist.jsp">View
								Category</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/Bill/master/subCategory.jsp">Add
								SubCategory</a></li>
						<li><a class="dropdown-item" href="/Bill/master/viewSubCat.jsp">View
								SubCategory</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/Bill/master/addUnit.jsp">Add
								Unit</a></li>
								<!-- <li><a class="dropdown-item" href="/Bill/master/viewUnit.jsp">View
								Unit</a></li> -->
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="/Bill/master/add_Product.jsp">Add
								Product</a></li>
						<li><a class="dropdown-item" href="/Bill/master/viewproductList.jsp">View
								Product</a></li>
					</ul></li>
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Purchase </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/Bill/purchase/app.jsp">Purchase
								Product</a></li>
						<li><a class="dropdown-item" href="/Bill/purchase/ppl.jsp">Purchase
								Product List</a></li>
							
								</ul>
								</li>		
								
								
								

				<!-- <li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/Bill/purchase/p.jsp"> <i class="fa-solid "></i>
						Purchase
				</a></li> -->

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Stock</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Sell</a></li>

				<!--  <li class="nav-item"><a class="nav-link active"
					aria-current="page" href="master/master.jsp">Master</a></li> -->

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Report</a></li>


			</ul>

		</div>
	</div>
</nav>