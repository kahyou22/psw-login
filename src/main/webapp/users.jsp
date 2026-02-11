<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>유저 목록</title>
        </head>

        <body>

            <h2>유저 목록</h2>

            <table>
                <tr>
                    <th>번호</th>
                    <th>아이디</th>
                </tr>
                <c:forEach var="user" items="${userList}" varStatus="s">
                    <tr>
                        <td>${s.count}</td>
                        <td>${user}</td>
                    </tr>
                </c:forEach>
            </table>

            <br>
            <a href="login.jsp">로그인</a> |
            <a href="register.jsp">회원가입</a>

        </body>

        </html>