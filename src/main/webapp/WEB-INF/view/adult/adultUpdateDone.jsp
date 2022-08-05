<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>編集完了</title>
</head>
<body>
	<h1>変更を保存しました</h1>
	<table border="3">

		<tr>
			<th>住所</th>
			<td><c:out value="${adult.address }" /></td>
		</tr>
		<tr>
			<th>メールアドレス</th>
			<td><c:out value="${adult.email }" /></td>
		</tr>
		<tr>
			<th>ニックネーム</th>
			<td><c:out value="${adult.nickName}" /></td>
		</tr>
		<tr>
			<th>ログインID</th>
			<td><c:out value="${adult.login}" /></td>
		</tr>

	</table>


	<p>
		<a href="AdultMypage">戻る</a>
	</p>

</body>
</html>