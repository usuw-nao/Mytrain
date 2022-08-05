<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>イベント詳細</title>
</head>
<body>
	<h1>イベント詳細</h1>
	<form action="" method="post">
		<p>
			イベント名:
			<c:out value="${name }" />
		</p>
		<p>
			日にち:
			<c:out value="${day }" />
		</p>
		<p>
			場所:
			<c:out value="${place}" />
		</p>
		<p>
			詳細:
			<c:out value="${detail }" />
		</p>

		<p>
			<input type="submit" value="参加する" >
		</p>
	</form>
	<p>
		<a href="AdultMypage">マイページに戻る</a>
	</p>



</body>
</html>