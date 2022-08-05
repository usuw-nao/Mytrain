<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>大人ログイン</title>
</head>
<body>
	<h1>大人の人はこちら</h1>
	<c:if test="${not empty error }">
		<p>ログインIDかパスワードが違います</p>
	</c:if>
	<form action="" method="post">
		<p>
			ID<input type="text" name="login">
		</p>
		<p>
			pass<input type="password" name="pass">
		</p>
		<p>
			<input type="submit" value="ログイン">
		</p>

	</form>

</body>
</html>