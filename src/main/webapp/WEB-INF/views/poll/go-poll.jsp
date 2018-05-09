<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Go Poll</title>
</head>
<body>
 	<h2>Hello here will be a our poll</h2>
 	<form:form 
 			action="${ rootUrl }/poll/add"
 			method="POST"
 			modelAttribute="pollModel"
 			>
 		FUll Name: <form:input path="fullName"/> <br>
 		Age: <form:select path="age">
 				  <form:options items="${ ages }"/>
 			 </form:select> <br>
 		
 		Gender: <form:radiobuttons path="gender" items="${ genders }"/><br>
 		
 		Email: <input type="email" name="email"><br>
 		Education:  <form:select path="education">
 						<form:options items="${ education }"/>
 					</form:select> <br>
 		Social Networks: <form:checkboxes items="${ soNet }" path="socialNetworks"/><br>
 		Favourite Programming Language: <form:radiobuttons path="favProgLang" items="${ progLang }"/><br>
 		Operation System:<form:checkboxes items="${ opSys }" path="opSystem"/><br>
 		Experience: <form:radiobuttons path="experience" items="${ exp }"/> <br>
 		Profesional Rank: <form:radiobuttons path="profRank" items="${ prRank }"/> <br>
 		Technologies: <form:checkboxes items="${ tech }" path="technologies"/><br>
 		Where did you find our poll: <form:radiobuttons path="wdyf" items="${ wdyf }"/> <br>
 		
 		<button type="submit">Reg you Poll</button>
 	</form:form>
</body>
</html>