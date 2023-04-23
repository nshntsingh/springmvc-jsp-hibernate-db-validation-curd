<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container m-3">
		<div class="row">
			<div class="col-md-6offset-md-3">
				<h1 class="text-center-mb-3">Update Form Detail</h1>

				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				
				
			<input type="hidden" value="${product.id}" name="id">

				
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" value="${product.name}"
							placeholder="Enter the name">
					</div>

					<div class="form-group">
						<label for="email">Email</label>
						<textarea class="form-control" name="email"  id="email"
						 row="5" placeholder="Enter the email ">${product.email}
						 </textarea>
					</div>

					<div class="form-group">
						<label for="age">Age</label> <input type="text"
							class="form-control" id="age" name="age"
							value="${product.age}">

					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>