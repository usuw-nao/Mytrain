<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>参加予定のイベント</title>
</head>
<body>
<h1>参加予定のイベント</h1>
<table border="1">
		<tr>
			<th>NO.</th>
			<th>イベント名</th>
			<th>日にち</th>
			<th>場所</th>
			<th>詳細</th>
		</tr>
		<c:forEach items="${iventList}" var="ivent">

			<tr>
				<td><c:out value="${ivent.id }" /></td>
				<td><c:out value="${ivent.name }" /></td>
				<td><c:out value="${ivent.day }" /></td>
				<td><c:out value="${ivent.place}" /></td>
				<td><c:out value="${ivent.detail }" /></td>

			</tr>
		</c:forEach>

	</table>

	

</body>
</html>