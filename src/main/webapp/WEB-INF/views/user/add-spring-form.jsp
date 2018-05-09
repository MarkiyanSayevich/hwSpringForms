<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Spring form</title>
</head>
<body>

	<form:form 
		action="${ rootUrl }/user/add_spring"
		method="POST"
		modelAttribute="userModel"
		>
	
			<form:input path="firstName"/> <br>
			<form:input path="lastName"/> <br>
			<form:input path="email"/> <br>
			
			<button type="submit"> Add User</button>
	</form:form>

</body>
</html>