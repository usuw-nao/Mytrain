<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>お問い合わせ</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<h3>お問い合わせフォーム</h3>
	<p>お返事まで１週間ほどかかる場合がございます。</p>
	<p>お急ぎの方はフリーダイヤルをご利用ください。</p>
	<form action="" method="post">
		<p>
			お名前：<input type="text" name="name">
		</p>
		<p>
			お問い合わせの種類：<select name="value" size="1">
				<option value="value">駅の場所について</option>
				<option value="value">ログインについて</option>
				<option value="value">料金体系について</option>
				<option value="value">ポイントについて</option>
				<option value="value">定期券について</option>
				<option value="value">イベントについて</option>
				<option value="value">ご意見</option>

			</select>
		</p>
		<p>お問い合わせ内容：
		<p>
			<textarea name="inf" rows="15" cols="70"></textarea>
		</p>
		</p>
		<p>
			メールアドレス：<input type="email" name="mail">
		</p>
		<p>
		<div class="alert alert-danger">必要な方のみで構いません</div>
		</p>
		<p>
			<input type="submit" 
        value="送信">
		</p>
	</form>
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