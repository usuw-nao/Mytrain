<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="domain.Adult,domain.IventMutter,java.util.List"%>
<%
Adult login = (Adult) session.getAttribute("login");
String errorMsg = (String) request.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>イベント情報交換所</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

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

 <div class="text-primary">
<h1>イベント情報交換所</h1>
	<h2>開催イベント</h2>
	<p>みんなの感想を読んで気になったら参加しよう☆彡</p>
	<p>参加にはログインIDが必要です</p></div>
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
				<td><a href="IventDo?id=<c:out value="${ivent.id }" />">詳細</a></td>

			</tr>
		</c:forEach>

	</table>
	
	<br>
	<div class="p-3 mb-2 bg-primary bg-gradient text-white">
	<h1>みんなの感想☆彡</h1>
	<p>イベントに参加した感想を自由に教えてね！</p>
	<form action="/TrainApp/IventTop" method="post" class="form-control w-50 ">
		<p>
			お名前<input type="text" name="name" value="${adult.nickName }">さん
		</p>
		<p>
			イベント名<select name="ivent_name" id="ivent_name">
				<c:forEach items="${iventList}" var="ivent">
					<option>
						<c:out value="${ivent.name }" />
					</option>
				</c:forEach>
			</select>
		<p>
			感想<input type="text" name="text">
		</p>
		<input type="hidden" name="id" value="${iventMutter.id }">
		<p>

			<input type="submit" value="投稿する">
		</p>
	</form>

	<hr color=blue>


	<c:forEach var="iventMutter" items="${iventMutterList}">


		<p>
			<!--<c:out value="${iventMutter.id}" />
			<c:if test="${not empty nameError}">
				<p>
					※<c:out value="${nameError}" />
				</p>
			</c:if>-->
			： お名前▶
			<c:out value="${iventMutter.name}" />
			さん 
			:参加イベント名▶
			<c:out value="${iventMutter.iventName}" />

			<!--<c:if test="${not empty textError}"><p>※
			<c:out value="${textError}" /></p></c:if>-->
			:感想▶
			<c:out value="${iventMutter.text}" />
		</p>

	</c:forEach>
	</div>
	<p>
		<a href="AdultMypage">マイページに戻る</a>
	</p>
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