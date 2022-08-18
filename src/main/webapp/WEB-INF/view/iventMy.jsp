<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>参加予定のイベント</title>
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
					<li class="nav-item"><a href="/TrainApp/top.jsp" class="nav-link">ホーム</a></li>
					<li class="nav-item"><a href="" class="nav-link active">切符表</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">フォトギャラリー</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">駅長ブログ</a></li>
					<li class="nav-item"><a href="search.html" class="nav-link">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>
	</header>
	<h1>参加予定のイベント</h1>
	<table border="1">
		<tr>
			<th>NO.</th>
			<th>イベント名</th>
			<th>日にち</th>
			<th>場所</th>
			<th>詳細</th>
		</tr>
		<c:forEach items="${iventList}" var="ivent">

			<tr>
				<td><c:out value="${ivent.id }" /></td>
				<td><c:out value="${ivent.name }" /></td>
				<td><c:out value="${ivent.day }" /></td>
				<td><c:out value="${ivent.place}" /></td>
				<td><c:out value="${ivent.detail }" /></td>

			</tr>
		</c:forEach>

	</table>
	<button id="btn">ボタン</button>



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	$(document).ready(function(){
		$('#btn').click(function(){
			$('h1').html();
		});// #btn.click
	});// ready
	</script>
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