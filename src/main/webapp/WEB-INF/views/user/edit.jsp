<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Student</title>
</head>
<body>

	<form:form 
	 action="${ rootUrl }/user/edit"
	 method="POST"
	 modelAttribute="editUserModel"
	 >
	
	 	<%-- <form:hidden path="id"/> --%>
		First Name: <form:input path="firstName"/> <br>
		Last Name: <form:input path="lastName"/> <br>
		Email: <form:input path="email"/> <br>
	
		<button type="submit"> Edit Student </button>
	
	</form:form>

</body>
</html>