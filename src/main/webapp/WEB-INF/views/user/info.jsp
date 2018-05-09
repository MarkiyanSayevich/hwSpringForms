<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>
<link href="${ rootUrl }/resources/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="span4 well">
				<div class="row">
					<div class="span1">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRspXzSI-tN9IlnHaDrQj6OLyFd38stbXpL_eZDZow3Pw4T2ae2" alt="">
					</div>
					<div class="span3">
						<p> ${ userInfo.email }</p>
						<p>
							<strong>${ userInfo.firstName } ${ userInfo.lastName }</strong>
						</p>
						<p>
							${ userInfo.english }
							${ userInfo.gender }
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>