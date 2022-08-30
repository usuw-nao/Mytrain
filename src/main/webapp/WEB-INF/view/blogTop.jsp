<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>駅長ブログ</title>
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link rel="stylesheet" href="css/reverseLNavigation.css">
</head>
<body>

	<header>
	<div class="center-container">
	<div class="flex-container">
	<h1><a href="/TrainApp/top.jsp"> <img class="img-thumbnail" width="96"
		height="27" alt="NT" src="image/tn2.png"></a></h1>
		<nav>
		<ul class="flex-container">
		<li><a href="weather.html">天気確認</a></li>
		<li><a href="">電車状況</a></li>
		</ul>
		</nav>
	</div><!-- flex-->
	<div class="hero">
	
	<h2>ネコ駅長のブログ</h2>	
	</div>
	</div><!-- center- -->
	</header>
	
	
	
	<main class="main">

		<div class="center-container flex-container">
		
			<h1>ネコ駅長のブログ</h1>
			<c:forEach items="${blogTopList}" var="blogTop">
			
				<table border="1" >

					<tr>
						<th class="caption">名前</th>
						<td><strong><c:out value="${blogTop.name}" /></strong></td>
					</tr>
					<tr>
						<th class="caption">題名</th>
						<td><strong><c:out value="${blogTop.title}" /></strong></td>
					</tr>
					<tr>
						<th class="caption">内容</th>
						<td><strong><c:out value="${blogTop.text}" /></strong></td>
					</tr>
					<tr>
						<th class="caption">カテゴリー</th>
						<td><strong><c:out value="${blogTop.idType}" /></strong></td>
					</tr>
					<tr>
						<th class="caption">日にち</th>
						<td><strong><c:out value="${blogTop.bday}" /></strong></td>
					</tr>
				</table>
			</c:forEach>
		
		</div><!-- center-flex- -->
	</main>
	
	<footer>
	<div class="center-container">
	🐈
	<a href="AddBlog">記事を書く</a>
	
	🐱<a href="/TrainApp/top.jsp">戻る</a>
	
	
	</div>
	</footer>

</body>
</html>