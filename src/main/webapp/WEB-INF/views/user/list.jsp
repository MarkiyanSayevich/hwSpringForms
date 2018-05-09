<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ rootUrl }/resources/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>ID</th>
						<th>Email</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th class="text-center">Action</th>
						<th>Edit page</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${ usersList }" var="user">

						<tr>
							<td>${ user.id }</td>
							<td><a href="${ rootUrl }/user/email?userEmail=${ user.email }"> ${ user.email } </a></td>
							<td>${ user.firstName }</td>
							<td>${ user.lastName }</td>
							<td class="text-center">
								<a class='btn btn-info btn-xs'
									href="${ rootUrl }/user/info/${ user.id }"><span class="glyphicon glyphicon-edit">
									</span> Info </a>
								<a href="${ rootUrl }/user/delete/${ user.id }" class="btn btn-danger btn-xs">
									<span class="glyphicon glyphicon-remove"></span> Del</a>
							</td>
							<td><a href="${ rootUrl }/user/edit/${ user.id }">Edit user</a></td>
						</tr>

					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

</body>
</html>