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
	<c:forEach items="${blogTopList}" var="blogTop">
	<table border="3">
		
			<tr>
				<th>名前</th>
				<td><c:out value="${blogTop.name}" /></td>
			</tr>
			<tr>
				<th>題名</th>
				<td><c:out value="${blogTop.title}" /></td>
			</tr>
			<tr>
				<th>内容</th>
				<td><c:out value="${blogTop.text}" /></td>
			</tr>
			<tr>
				<th>カテゴリー</th>
				<td><c:out value="${blogTop.idType}" /></td>
			</tr>
			<tr>
				<th>日にち</th>
				<td><c:out value="${blogTop.bday}" /></td>
			</tr>
	</table>
	</c:forEach>
	→
	<a href="AddBlog">記事を書く</a>



</body>
</html>