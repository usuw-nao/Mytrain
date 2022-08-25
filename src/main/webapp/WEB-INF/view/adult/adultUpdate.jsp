<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登録情報の変更</title>
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
						<li class="nav-item"><a href="" class="nav-link active">切符表</a></li>
						<li class="nav-item"><a href="search.html" class="nav-link">フォトギャラリー</a></li>
						<li class="nav-item"><a href="search.html" class="nav-link">駅長ブログ</a></li>
						<li class="nav-item"><a href="search.html" class="nav-link">お問い合わせ</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<h1>登録情報の変更</h1>
	<p>${adult.name }さん</p>

	<form action="" method="post">




		<p>
			ログインID <input type="text" name="login">
		</p>
		<p>
			ニックネーム <input type="text" name="nick_name">
		</p>

		<p>
			メールアドレス <input type="email" name="email">
		</p>
		<p>
			住所 <input type="text" name="address">
		</p>
		<input type="hidden" name="id" value="${adult.id}">




		<p>
			<input type="submit" value="完了する">
		</p>
	</form>
	<a href="AdultInf">戻る</a>
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