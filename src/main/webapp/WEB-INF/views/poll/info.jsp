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
	<h1> User answers: </h1>
		<p>FUll Name: ${ pollModel.fullName }</p>
 		<p>Age: ${ pollModel.age }</p>
 		<p>Gender:${ pollModel.gender }</p>
 		<p>Email:${ pollModel.email }</p>
 		<p>Education:${ pollModel.education }</p>
 		<p>Social Networks:${ pollModel.socialNetworks }</p>
 		<p>Favourite Programming Language:${ pollModel.favProgLang }</p>
 		<p>Operation System:${ pollModel.opSystem }</p>
 		<p>Experience:${ pollModel.experience }</p>
 		<p>Profesional Rank:${ pollModel.profRank }</p>
 		<p>Technologies:${ pollModel.technologies }</p>
 		<p>Where did you find our poll:${ pollModel.wdyf }</p>
</body>
</html>