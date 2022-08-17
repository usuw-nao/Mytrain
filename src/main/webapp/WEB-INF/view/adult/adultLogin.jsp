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

<a href="/TrainApp/top.jsp">
<img class="img-thumbnail" width="96" height="27" alt="NT"
					src="image/tn2.png"></a>
					
<hr color="blue">


	<h1>大人の人</h1>
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
	<footer class="bg-primary">
		<ul class="list-style-none">
			<li>
				<a class="text-white" href="https://www.p/" target="_blank">TrainNet</a>
			</li>
			<li>
				<a class="text-white" href="AdultLogin">大人会員様ログイン</a>
			</li>
			<li>
				<a class="text-white" href="">子ども会員様ログイン</a>
			</li>
			<li>
				電車検索: <a class="text-white" href="#">TNSearch</a>
			</li>
			<li>
				<a class="text-white" href="#">料金表</a>
			</li>
		</ul>
		<p>
			<small>&copy Train_Net：TN All Rights Reserved.</small>
		</p>
	</footer>

</body>
</html>