<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>おとなマイページ</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style2.css" rel="stylesheet">

</head>
<body>
	<div class="container-fluid header-outer">
		<header class="text-light py-3">
			<h1 class="display-1">
				<a href="/TrainApp/top.jsp"><img class="img-thumbnail"
					width="96" height="27" alt="NT" src="image/tn2.png"></a>
			</h1>

		</header>
	</div>

	<nav class="navbar navbar-expand-md navbar-dark bg-primary sticky-top">
		<div class="container">
			<a class="navbar-brand" href="/TrainApp/top.jsp">Train-Net</a>
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

	<main class="container mt-5">
		<div class="row">
			<!-- メニュー -->
			<div class="col-lg-8">
				<h2>メニュー</h2>
				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4">
						<a href="AdultInf" class="btn btn-primary">個人情報確認・変更</a>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">


						<p>
							<a href="AdultRange" class="btn btn-primary">定期の範囲</a>
						</p>
						<div class="alert alert-danger">定期終了日確認してください</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<a href="ScheduleTop" class="btn btn-primary">スケジュール</a>
					</div>

					<div class="col-md-6 col-lg-4 mb-4">
						<a href="IventTop" class="btn btn-primary">みんなのイベント情報交換所</a>
					</div>


				</div>
				<!-- .row メニュー内での横並び -->
			</div>
			<!-- メニューここまで -->

			<!-- クイズ -->
			<div class="col-lg-4">
				<h1>ようこそ</h1>
				<h2>クイズに答えて１０ポイント</h2>
				<form action="" method="post">
					<c:forEach items="${AQList}" var="adultQuiz">
						<p>
							Q!
							<c:out value="${adultQuiz.content}" />
						</p>
						<br>
						<p>
							<input type="radio" name="choice" value="choice1">
							<c:out value="${adultQuiz.choice1}" />
						</p>
						<p>
							<input type="radio" name="choice" value="choice2">
							<c:out value="${adultQuiz.choice2}" />
						</p>
						<input type="hidden" name="id" value="${adultQuiz.id}">

						<p>
							<input type="submit" value="決定">
						</p>
					</c:forEach>
				</form>
			</div>
			<!-- インフォメーションここまで -->
		</div>
		<!-- ./row メニューとインフォメーションを横並び -->
	</main>





	<footer class="bg-primary">
		<ul class="list-style-none">
			<li><a class="text-white" href="/TrainApp/top.jsp"
				target="_blank">TrainNet</a></li>
			<li><a class="text-white" href="AdultLogin">大人会員様ログイン</a></li>
			<li><a class="text-white" href="">子ども会員様ログイン</a></li>
			<li>電車検索: <a class="text-white" href="#">TNSearch</a>
			</li>

		</ul>
		<p>
			<small>&copy Train_Net：TN All Rights Reserved.</small>
		</p>
	</footer>





	<p>
		<a href="AdultLogout">ログアウト</a>
	</p>

	<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>