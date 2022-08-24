<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>電車検索</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"
	type="text/javascript"></script>

<script type="text/javascript"><!--
var xml={};

function StationGroup(code){
	if (code==0){
	document.getElementById("s_group").innerHTML = "";
	} else {
	var s = document.getElementsByTagName("head")[0].appendChild(document.createElement("script"));
	s.type = "text/javascript";
	s.charset = "utf-8";
	s.src = "http://www.ekidata.jp/api/g/" + code + ".json";    //駅グループJSONデータURL

	var str = "";
	xml.onload = function(data){
	var station_g = data["station_g"];
	if(station_g != null){
	for( i=0; i<station_g.length; i++){
	str = str + station_g[i].line_name + " ";
	str = str + station_g[i].station_name + "<br />";
	}
	}
	document.getElementById("s_group").innerHTML = str;
	}
	}
	}

	// --></script>
	</head>
	<body>
	乗換駅表示<br>
	<a href="#" OnClick="StationGroup(1130620)">八王子駅</a> | 
	<a href="#" OnClick="StationGroup(1130325)">立川駅</a> | 
	<a href="#" OnClick="StationGroup(1131105)">三鷹駅</a> | 
	<a href="#" OnClick="StationGroup(1130208)">新宿駅</a> | 
	<a href="#" OnClick="StationGroup(1130101)">東京駅</a> | 
	<a href="#" OnClick="StationGroup(0)">クリア</a><br />
	<div id="s_group"></div>
	</body>
	</html>