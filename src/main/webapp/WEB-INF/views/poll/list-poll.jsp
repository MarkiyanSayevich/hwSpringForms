<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show list of pool's</title>
</head>
<body>
	<h1 style="text-align: center"> List of peoples that make poll's</h1>
		
		<table>
				<thead>
					<tr>
						<th> Id: </th>
						<th> Full Name </th>
						<th> Email </th>
						<th>Other</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${ pollList }" var="poll">

						<tr>
							<td>${ poll.id }</td>
							<td>${ poll.fullName }</td>
							<td>${ poll.email }</td>
							<td><a href="${ rootUrl }/poll/info/${ poll.id }">Show answers</a></td>
						</tr>

					</c:forEach>

				</tbody>
			</table>
</body>
</html>