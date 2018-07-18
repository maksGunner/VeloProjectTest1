<%--
  Created by IntelliJ IDEA.
  User: gunner
  Date: 09.07.2018
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Login</title>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="shortcut icon" href="/pics/icon_bicycle.ico" type="image/x-icon">
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


                                                        <%--LOGIN--%>

    <div class="wp80">

        <h1 class="text-c font color-grey pdg20">Login page</h1>

        <div class="loginPage">
        <form action="/logMe" method="post">
            <input type="hidden"
                   name="${_csrf.parameterName}"
                   value="${_csrf.token}"/>
            <input type="" name="username" placeholder="username" class="label1">
            <input type="" name="password" placeholder="password" class="label1">
            <input type="submit" name="" placeholder="" class="submit1" value="Login in">
        </form>
        </div>

    </div>



    <div class="wp80 h100 footer bg-white border-t">
        <h1 class="text-c font color-grey pdg-t-30">FOOTER</h1>
    </div>




    </body>
</html>
