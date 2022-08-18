<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>駅長ブログ</title>
</head>
<body>

	<h1>ネコ駅長のブログ</h1>
	<table border="3">
		<tr>
			<th>名前</th>
			<th>題名</th>
			<th>内容</th>
			<th>日にち</th>

		</tr>
		<c:forEach items="${blogTopList }" var="watch">
			<tr>
				<td><c:out value="${blogTopList.name }" /></td>
				<td><c:out value="${blogTopList.title }" /></td>
				<td><c:out value="${blogTopList.text }" /></td>
				<td><c:out value="${blogTopList.bday }" /></td>

			</tr>
		</c:forEach>
	</table>



</body>
</html>