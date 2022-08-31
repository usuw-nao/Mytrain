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
					<li class="nav-item"><a href="/TrainApp/top.jsp"
						class="nav-link">ホーム</a></li>
					<li class="nav-item"><a href="PhotoTop" class="nav-link">フォトギャラリー</a></li>
					<li class="nav-item"><a href="BlogTop" class="nav-link">駅長ブログ</a></li>
					<li class="nav-item"><a href="Inf" class="nav-link">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>
<h4 class="col-12 col-md-2 text-center pt-3">天気を確認</h4>
<div id="weather-info" class="container mt-3">
    <div id="area-buttons" class="mb-4">
    <a class="btn btn-info" href="/TrainApp/top.jsp" type="button" >クリア</a>
        <!-- 地域ボタン -->
    </div>
    <!-- 1 地域、3 日分の天気情報 -->
</div>
<!-------------------
    テンプレート
    --------------------->
<!-- 地域ボタン -->

<template id="area-button-template">
    <button class="btn btn-primary me-3"></button>
</template>
<!-- 1 地域、1 日分の天気情報 -->
<template id="weather-unit-template">
    <div class="col-12 col-md-2 text-center pt-3">
        <p class="h6 date">
            <!-- 日付 -->
        </p>
        <p>
            <!-- 天気画像 -->
            <img class="icon" src="">
        </p>
        <p>最低気温: <span class="min-temp"></span>℃</p>
        <p>最高気温: <span class="max-temp"></span>℃</p>
    </div>
</template>
<!-- 1 地域、3 日分の天気情報 -->
<template id="weather-area-template">
    <div class="row mb-5">
        <div class="col-12">
            <p class="h3 title">
                <!-- 〇〇県 〇〇 の天気 -->
            </p>
            <p class="headline">
                <!-- ヘッドライン情報(無い時もある) -->
            </p>
        </div>
        <!-- 3 日分の天気: weather-unit-template × 3-->
    </div>
</template>



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
				</div>
				<!-- .row メニュー内での横並び -->
			</div>
			<!-- メニューここまで -->

			<!-- インフォメーション -->
			<div class="col-lg-4">
			
			
			
			
			
			
			
				<h2>Infomation~お知らせ~</h2>
				<p>
					現在お知らせはありません
				</p>

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
			<li>電車検索: <a class="text-white" href="Search">TNSearch</a>
			</li>

		</ul>
		<p>
			<small>&copy Train_Net：TN All Rights Reserved.</small>
		</p>
	</footer>


<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script>
    /**
    * 1 地域、1 日分の天気をHTML 要素で返す関数
    * @param forecast 1 日分の天気データ
    */
    function getWeatherUnit(forecast) {
        const clone = $($('#weather-unit-template').html());
        clone.find('.date').text(forecast.date);
        clone.find('.icon').attr('src', forecast.image.url);
        clone.find('.min-temp').text(forecast.temperature.min.celsius);
        clone.find('.max-temp').text(forecast.temperature.max.celsius);
        return clone;
    }
    /**
     * 1 地域、3 日分の天気を表示する関数
     * @param weather 天気予報API から取得できるデータ
     */
     function createWeatherRow(weather) {
         const clone = $($('#weather-area-template').html());
         clone.find('.title').text(weather.title);
         clone.find('.headline').text(weather.description.headline);
         // 3 日分の天気
         for (let forecast of weather.forecasts) {
             clone.append(getWeatherUnit(forecast));
         }
         $('#weather-info').append(clone);
     }
     /**
      * 地域ID を元に、天気予報を取得・表示する関数
      * @param areaId 地域ID
      */
      function showWeather(areaId) {
          $.ajax({
              url: 'https://weather.tsukumijima.net/api/forecast/city/' + areaId,
              type: 'GET',
              dataType: 'JSON'
          })
              .done(function (res) {
                  console.log(res);
                  createWeatherRow(res);
              })
              .fail(function () {
                  console.log('通信に失敗しました')
              });
      }
      /**
       * 地域ボタンを動的に生成する関数
       * @param areas 地域ID と地域名のリスト
       */
       function createButtons(areas) {
           for (let area of areas) {
               const clonedButton = $($('#area-button-template').html());
               clonedButton.text(area.name).attr('data-area-id', area.id);
               // 地域ボタンクリック時の処理
               clonedButton.click(function () {
                   $(this).attr('disabled', 'disabled');
                   showWeather($(this).attr('data-area-id'));
               });
               $('#area-buttons').append(clonedButton);
           }
       }
       /**
        * メイン処理: 地域ボタンの生成
        */
        $(document).ready(function () {
            // 地点定義表: https://weather.tsukumijima.net/primary_area.xml
            const areas = [
                { name: '札幌', id: '016010' },
                { name: '仙台', id: '040010' },
                { name: '東京', id: '130010' },
                { name: '大阪', id: '270000' },
                { name: '福岡', id: '400010' },
                { name: '那覇', id: '471010' }
            ];
            // 地域ボタンの作成
            createButtons(areas);
        });
    </script>
	
	
	
	
</body>
</html>

