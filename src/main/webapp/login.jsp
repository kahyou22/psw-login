<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>로그인</title>
    </head>

    <body>

        <h2>로그인</h2>
        <form action="login" method="post">
            아이디: <input type="text" name="username" required><br>
            비밀번호: <input type="password" name="password" required><br>
            <button type="submit">로그인</button>
        </form>

        <a href="register.jsp">회원가입</a> |
        <a href="users">유저 목록</a>

    </body>

    </html>