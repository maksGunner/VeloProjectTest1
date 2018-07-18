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



    <!--Header-->


    <div class="wp80 h100">

        <div class="wp80 h20 bg-white">

            <div class="wp22 hp100 float-l">
                <a href="/"><img src="/pics/logo_bicycle.jpg" class="logo"></a>
            </div>

            <div class="wp24 hp100 float-r bg-white">

                <form class="text-c pdg-t-43">
                    <input type="search" name="search" placeholder="..." class="border pdg-l-5">
                    <input type="submit" value="SEARCH" class="search">
                </form>

            </div>

        </div>
    </div>


                                             <%--REGISTRATION--%>

    <div class="wp80 h500">

        <h1 class="text-c font color-grey pdg20">Registration page</h1>

        <div class="RegistPage">
            <form action="/sendEmail" method="post">
                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
                <input type="" name="name" placeholder="name" class="label1">
                <input type="" name="surname" placeholder="surname" class="label1">
                <input type="" name="username" placeholder="username" class="label1">
                <input type="" name="password" placeholder="password" class="label1">
                <input type="submit" name="" placeholder="" value="Sign up" class="submit1">
            </form>
            <h3>${message}</h3>
        </div>

    </div>

    <div class="wp80 h100 footer bg-white border-t">
        <h1 class="text-c font color-grey pdg-t-30">FOOTER</h1>
    </div>

    </body>
</html>


