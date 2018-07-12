<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 09.07.2018
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%--xmlns:th="http://www.w3.org/1999/xhtml"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Registration</title>
        <link rel="stylesheet" href="/css/main.css">

    </head>
    <body>
        <h1>
            Registration page
        </h1>

    <form action="/sendEmail" method="post">
        <input type="hidden"
            name="${_csrf.parameterName}"
            value="${_csrf.token}"/>
        <input type="" name="name" placeholder="name" class="c">
        <input type="" name="surname" placeholder="surname" class="c">
        <input type="" name="username" placeholder="username" class="c">
        <input type="" name="password" placeholder="password" class="c">
        <input type="submit" name="" placeholder="" class="c">
    </form>
        <h3>${message}</h3>
    </body>
</html>
