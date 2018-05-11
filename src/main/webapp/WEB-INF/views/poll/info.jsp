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
 		
 		<p>
 		 <c:forEach var="soc" items="${pollModel.socialNetworks}" 
                                                             varStatus="loop">
					${soc}
    				        <c:if test="${not loop.last}">,</c:if>
				  </c:forEach>
 		</p>
 		
 		
 		
 		<p>Favourite Programming Language:${ pollModel.favProgLang }</p>
 		
 		
 		
 		<p>
 		
 		<c:forEach var="soc" items="${ pollModel.opSystem }" varStatus="loop">
 			${ soc } 
 						<c:if test="${ not loop.last }">,</c:if>
 		</c:forEach>
 		
 		
 		</p>
 		
 		
 		
 		<p>Experience:${ pollModel.experience }</p>
 		<p>Profesional Rank:${ pollModel.profRank }</p>
 		
 		
 		
 		
 		<p>
 		
 			<c:forEach var="technologia" items="${ pollModel.technologies }" varStatus="loop">
 			
 				  ${ technologia }
 				  					
 				  					<c:if test="${ not loop.last }">,</c:if>
 			</c:forEach>
 		
 		</p>
 		
 		
 		
 		
 		
 		<p>Where did you find our poll:${ pollModel.wdyf }</p>
</body>
</html>