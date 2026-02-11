<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<h2>회원가입</h2>
<form action="register" method="post">
    아이디: <input type="text" name="username" required><br>
    비밀번호: <input type="password" name="password" required><br>
    <button type="submit">회원가입</button>
</form>

<a href="login.jsp">로그인</a>

</body>
</html>