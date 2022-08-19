<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>記事を書く</title>
</head>
<body>
	<form action="" method="post">
		<p>
			名前:<input type="text" name="name">
		</p>
		<p>
			題名:<input type="text" name="title">
		</p>
		<p>
			内容:
			<textarea name="text" rows="15" cols="70"></textarea>
		</p>
		<p>
			種類<input type="text" name="id_type">
		</p>
		
		<p>
			<input type="submit" value="投稿">
		</p>

	</form>
	

</body>
</html>