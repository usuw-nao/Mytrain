<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>イベント情報</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
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

		<p>参加する際はログインIDを入力してください</p>
		<p>ログインID:
		<input type="text" name="login" value="<c:out value="${login}" />"></p>
			<p><input type="submit" value="参加する">
		</p>

		<input type="hidden" name="name"  value="${name }" > 
		<input type="hidden" name="day" value="${day}" >
		<input	type="hidden" name="place"  value="${place }" > 
		<input	type="hidden" name="detail"  value="${detail}" > 
	</form>
	<p>
		<a href="AdultMypage">マイページに戻る</a>
	</p>
	<footer class="bg-primary">
		<ul class="list-style-none">
			<li><a class="text-white" href="https://www.p/" target="_blank">TrainNet</a>
			</li>
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