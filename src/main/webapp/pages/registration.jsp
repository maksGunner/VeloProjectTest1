<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 09.07.2018
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Registration</title>
        <link rel="stylesheet" href="/css/main.css">
        <style>
            .c {
                border: 1px solid #333; /* Рамка */
                display: inline-block;
                padding: 5px 15px; /* Поля */
                text-decoration: none; /* Убираем подчёркивание */
                color: #000; /* Цвет текста */
            }
            .c:hover {
                box-shadow: 0 0 5px rgba(0,0,0,0.3); /* Тень */
                background: linear-gradient(to bottom, #fcfff4, #e9e9ce); /* Градиент */
                color: #a00;
            }
        </style>
    </head>
    <body>
        <h1>
            Registration page
        </h1>

    <form action="/saveUser" method="post">
        <input type="hidden"
            name="${_csrf.parameterName}"
            value="${_csrf.token}"/>
        <input type="" name="name" placeholder="name" class="c">
        <input type="" name="surname" placeholder="surname" class="c">
        <input type="" name="username" placeholder="username" class="c">
        <input type="" name="password" placeholder="password" class="c">
        <input type="submit" name="" placeholder="" class="c">
    </form>


    </body>
</html>
