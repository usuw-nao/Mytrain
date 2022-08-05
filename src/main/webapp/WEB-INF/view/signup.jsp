<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
</head>
<body>
<h1>新規登録</h1>
<form action="" method="post">
<p>
<input type="text" value="${name}" name="name" placeholder="名前"/>
</p>
<p>
<input type="number" value="${age}" name="age" placeholder="年齢"/>
</p>
<p>
<input type="text" value="${address}" name="address" placeholder="住所"/>
</p>
<p>
<input type="email" value="${email}" name="email" placeholder="email"/>
</p>
<p>
<input type="text" value="${login}" name="login_id" placeholder="ログインID"/>
</p>



</form>

</body>
</html>