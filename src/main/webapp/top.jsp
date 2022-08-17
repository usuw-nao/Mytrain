<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>トップ</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>

	<div class="container-fluid header-outer">
		<header class="text-light py-3">
			<h1 class="display-1">
				<img class="img-thumbnail" width="96" height="27" alt="NT"
					src="image/tn2.png">~tRAIN nET~
			</h1>
			<p class="lead">電車でどこいく？</p>
		</header>
	</div>


	<nav class="navbar navbar-expand-md navbar-dark bg-primary sticky-top">
		<div class="container">
			<a class="navbar-brand" href="">Train-Net</a>
			<button class="navbar-toggler" data-bs-toggle="collapse"
				data-bs-target="#menu">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav">
					<li class="nav-item"><a href="/TrainApp/top.jsp" class="nav-link">ホーム</a></li>
					<li class="nav-item"><a href="" class="nav-link active">切符表</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">フォトギャラリー</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">駅長ブログ</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<main class="container mt-5">
		<div class="row">
			<!-- メニュー -->
			<div class="col-lg-8">
				<h2>メニュー</h2>
				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4">
						<img class="img-thumbnail w-50" src="image/otona.png">
						<h3>大人はこちら</h3>
						おとなのひと<a href="AdultLogin" class="btn btn-primary">ログイン</a>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<img class="img-thumbnail w-50" src="image/kodomo.png">
						<h3>子どもの人はこちら</h3>
						<p>
							こどものひと<a href="" class="btn btn-primary">ろぐいん</a>
						</p>
						<div class="alert alert-danger">申し訳ありません。 現在、子どもログイン工事中です。</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<img class="img-thumbnail w-50" src="image/neko.png">
						<h3>新規登録はこちらから</h3>
						<a href="Signup" class="btn btn-primary">新規登録</a>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<img class="img-thumbnail w-50" src="image/seiretu.png">
						<h3>電車の発車確認</h3>
						<a href="" class="btn btn-primary">電車発車確認</a>
					</div>
				</div><!-- .row メニュー内での横並び -->
			</div>
			<!-- メニューここまで -->
			
			<!-- インフォメーション -->
			<div class="col-lg-4">
				<h2>Infomation~お知らせ~</h2>
				<p>
				イベントスケジュールをチェックしよう！ ▶<a href="ScheduleTop">スケジュール</a>◀
				</p>
			</div>
			<!-- インフォメーションここまで -->
		</div><!-- ./row メニューとインフォメーションを横並び -->
	</main>





	<footer class="bg-primary">
		<ul class="list-style-none">
			<li>
				<a class="text-white" href="/TrainApp/top.jsp" target="_blank">TrainNet</a>
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



	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>

