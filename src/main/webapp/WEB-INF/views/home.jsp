<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> Home page </h2>
	
	<a href="${pageContext.request.contextPath }/user/add"> Go to registration</a>
	<a href="${ rootUrl }/user/add_spring"> Spring-form registration</a>
	<a href="${ rootUrl }/user/users"> Watch List of Users</a>
	<a href="${ rootUrl }/poll/add">Go to add poll</a>
	<a href="${ rootUrl }/poll/list"> Show Poll's</a>
</body>
</html>