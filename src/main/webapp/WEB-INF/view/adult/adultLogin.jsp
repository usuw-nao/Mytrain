<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>トップ</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<title>大人ログイン</title>
</head>
<body>
	<header>

		<a href="/TrainApp/top.jsp"> <img class="img-thumbnail" width="96"
			height="27" alt="NT" src="image/tn2.png"></a>
		<nav class="navbar navbar-expand-md navbar-dark bg-primary sticky-top">
			<div class="container">
				<a class="navbar-brand" href="">Train-Net</a>
				<button class="navbar-toggler" data-bs-toggle="collapse"
					data-bs-target="#menu">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="menu">
					<ul class="navbar-nav">
						<li class="nav-item"><a href="/TrainApp/top.jsp"
						class="nav-link">ホーム</a></li>
					<li class="nav-item"><a href="PhotoTop" class="nav-link">フォトギャラリー</a></li>
					<li class="nav-item"><a href="BlogTop" class="nav-link">駅長ブログ</a></li>
					<li class="nav-item"><a href="Inf" class="nav-link">お問い合わせ</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
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
	<hr color="blue">
	<h3>ゲストユーザーはこちらからどうぞ</h3>

	<form action="AdultLogout" method="post">
		<input type="hidden" name="login" value="guest"> 
		<input type="hidden" name="pass" value="pass">
		 <input type="submit" value="ゲストログイン">

	</form>

<br>
	<footer class="bg-primary">
		<ul class="list-style-none">
			<li><a class="text-white" href="/TrainApp/top.jsp"
				target="_blank">TrainNet</a></li>
			<li><a class="text-white" href="AdultLogin">大人会員様ログイン</a></li>
			<li><a class="text-white" href="">子ども会員様ログイン</a></li>
			<li>電車検索: <a class="text-white" href="#">TNSearch</a>
			</li>
			<li><a class="text-white" href="#">料金表</a></li>
		</ul>
		<p>
			<small>&copy Train_Net：TN All Rights Reserved.</small>
		</p>
	</footer>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>