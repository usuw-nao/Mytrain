<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>ScheduleTop</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- jQuery UI -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script>
	$(function() {
		$("#datepicker").datepicker(
				{

					dateFormat : 'yy-mm-dd',
					/*初期値*/
					defaultDate : '{month}/01/{year}',
					/*月の表示を日本語に*/
					monthNames : [ "1月", "2月", "3月", "4月", "5月", "6月", "7月",
							"8月", "9月", "10月", "11月", "12月" ],
					iventDay : [ "2022-09-10", "2022-08-31", "2022-08-10",
							"2022-08-23" ]
				});
		option = {
			beforeShowDay : function(date) {
				current = $.datepicker.formatDate(dateFormat, date);
				return [ (hilidays.indexOf(current) == -1), "", "" ];
			}
		}
		$("#datepicker").datepicker(option);
	});
</script>

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


	<form action="" >

		<p>
			日付を選択してください。 <input type="text" name="sday" id="datepicker">
		</p>
		<input type="submit" value="決定">
	</form>

	<hr color="blue">

	<h1>イベント情報</h1>
	<h2>お知らせ</h2>
	<p>～現在はありません～</p>
	<br>
	
	<h2>開催予定イベント</h2>
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



	<hr color="blue">

	<h2>${adult.name}さんの参加予定イベント</h2>
	<table border="1">
		<tr>
			<th>NO.</th>
			<th>イベント名</th>
			<th>日にち</th>
			<th>場所</th>
			<th>詳細</th>
		</tr>
		<c:forEach items="${planList}" var="ivent">

			<tr>
				<td><c:out value="${ivent.id }" /></td>
				<td><c:out value="${ivent.name }" /></td>
				<td><c:out value="${ivent.day }" /></td>
				<td><c:out value="${ivent.place}" /></td>
				<td><a href="IventDo?id=<c:out value="${ivent.id }" />">詳細</a></td>

			</tr>
		</c:forEach>
	</table>

	<hr color="blue">
	<p>
		<a href="AdultMypage">マイページに戻る</a>
	</p>
	<footer class="bg-primary">
		<ul class="list-style-none">
			<li><a class="text-white" href="/TrainApp/top.jsp" target="_blank">TrainNet</a>
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







