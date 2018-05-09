<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css">
</head>
<body>

	<h2>Add user to DB</h2>

	<form class="form-horizontal"
		action="${ pageContext.request.contextPath }/user/add" method="post">

		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="email" name="email"> <br>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">First Name</label>
			<div class="col-sm-10">
				<input type="text" name="firstName"> <br>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Last Name</label>
			<div class="col-sm-10">
				<input type="text" name="lastName"> <br>
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">English level</label>
			<div class="col-sm-10">
				<select name="englishLevel">
					<option value="Beginner">Beginner</option>
					<option value="Pre-Intermediate">Pre-Intermediate</option>
					<option value="Intermediate">Intermediate</option>
					<option value="Native">Native</option>
				</select> <br>
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">Gender</label>
			<div class="col-sm-10">
				MALE <input type="radio" name="userGender" value="MALE">
				FEMALE <input type="radio" name="userGender" value="FAMALE">
				UNKNOWN <input type="radio" name="userGender" value="UNKNOWN" checked="checked">
			</div>
		</div>

		<div class="form-group">
			<div class="col-md-4">
				<button id="confirmation" name="confirmation"
					class="btn btn-primary">Submit</button>
			</div>
		</div>

	</form>

</body>
</html>