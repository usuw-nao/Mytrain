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
<title>イベント情報トップ</title>
</head>
<body>
	<h1>イベント情報</h1>
	<h2>お知らせ</h2>
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
	<h1>みんなの感想☆彡</h1>
	<p>イベントに参加した感想を自由に教えてね！</p>
	<form action="/TrainApp/IventTop" method="post">
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
	
	<hr color="green">


	<c:forEach var="iventMutter" items="${iventMutterList}">


		<p>
			<c:out value="${iventMutter.id}" />
			<c:out value="${iventMutter.name}" />
			:
			<c:out value="${iventMutter.iventName}" />
			:
			<c:out value="${iventMutter.text}" />
		</p>

	</c:forEach>
	<p>
		<a href="AdultMypage">マイページに戻る</a>
	</p>



</body>
</html>