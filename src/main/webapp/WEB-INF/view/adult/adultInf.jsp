<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>おとな個人情報</title>
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






	<h1>登録情報</h1>
	<table border="1">

		<tr>
			<th>ID</th>
			<td><c:out value="${adult.id }" /></td>
		</tr>


		<tr>
			<th>名前</th>
			<td><c:out value="${adult.name }" /></td>
		</tr>
		<tr>
			<th>住所</th>
			<td><c:out value="${adult.address }" /></td>
		</tr>
		<tr>
			<th>年齢</th>
			<td><c:out value="${adult.age }" /></td>
		</tr>
		<tr>
			<th>メールアドレス</th>
			<td><c:out value="${adult.email }" /></td>
		</tr>
		<tr>
			<th>イベント参加回数</th>
			<td><c:out value="${adult.ivent}" /></td>
		</tr>
		<tr>
			<th>保有ポイント</th>
			<td><c:out value="${adult.point}" /></td>
		</tr>
		<tr>
			<th>定期範囲</th>
			<td><c:out value="${adult.distance}" /></td>
		</tr>
		<tr>
			<th>定期開始日</th>
			<td><c:out value="${adult.startDate}" /></td>
		</tr>
		<tr>
			<th>定期終了日</th>
			<td><c:out value="${adult.endDate}" /></td>
		</tr>
		<tr>
			<th>ニックネーム</th>
			<td><c:out value="${adult.nickName}" /></td>
		</tr>
		<tr>
			<th>ログインID</th>
			<td><c:out value="${adult.login}" /></td>
		</tr>
		<tr>

			<th><a href="AdultUpdate">会員情報の変更</a></th>

		</tr>

		


	</table>
	<p>
		<a href="AdultLogin">ログイン</a>画面に戻る
	</p>
	<p>
		<a href="AdultMypage">マイページ</a>
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