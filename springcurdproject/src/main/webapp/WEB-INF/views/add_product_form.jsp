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
				<h1 class="text-center-mb-3">Fill the details</h1>

				<form action="handle-product" name="myform"
					onsubmit="return validate1()" onsubmit="return ValidateEmail()"  
					method="post">

					<div class="form-group">
						<label for="name">Name</label> <font color="red">*</font> <input
							type="text" class="form-control" id="name" 
							aria-describedby="emailHelp" name="name" placeholder="Enter name" pattern="[a-z]{1,15}"
		                    title="Username should only contain lowercase letters. e.g. john"
							required>
					</div>

					<div class="form-group">
						<label for="email">Email</label> <font color="red">*</font>
						<input type="text" class="form-control" name="email" id="email"
							row="5" placeholder="Enter the email" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
							required>
					</div>

					<div class="form-group">
						<label for="age">Age</label> <font color="red">*</font> <input
							type="text" class="form-control" id="age" name="age"
							placeholder="Enter the age "  required>

					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
						
					</div>

				</form>
				<form action="/validate">
				<button type ="submit" class="btn btn-primary">Validate</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>