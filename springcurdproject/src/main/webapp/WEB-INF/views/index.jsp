<html>
<head>
<%@ include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to page</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Age</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.name}</td>
							<td>${p.email}</td>
							<td>${p.age}</td>
							<td>
							<a href="delete/${p.id}"><i class="fas fa-trash text-danger"></i></a>
							<a href="update/${p.id}"><i class="fas fa-pen-nib primary"></i></a>

							</td>
						</tr>
						</c:forEach>
						
					 
					</tbody>
				</table>

				
				<div class="container text-center">
				<a href="add-product" class=btn btn-outline-success>Add Product</a>
				
				
			</div>
		</div>
	</div>
</body>
</html>