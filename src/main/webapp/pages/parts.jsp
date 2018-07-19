<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: On1yWay
  Date: 17.07.2018
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>parts</title>
        <link rel="stylesheet" href="/css/main.css">
    </head>
    <body>
    <div class="wp80">

        <!--Header-->

        <div class="wp100 hp20">


            <div class="wp22 float-l">
                <a href="/"><img src="/pics/logo_bicycle.jpg" class="logo"></a>
            </div>

            <div class="wp30 float-l text-c bg-white">
                <h3 class="pdg-t-30 font color-grey">
                    CONTACTS: <br> <a href="https://www.google.com.ua/maps" target="_blank">
                    NEW YORK, NY 10001 </a> <br> +380 77 77 777
                </h3>
            </div>

            <div class="wp23 float-l bg-white">

                <sec:authorize access="isAnonymous()">
                    <ul class="font color-grey text-c">

                        <li><a href="/login"><h2 class="pdg-t-20">SIGN IN</h2></a></li>
                        <li><a href="/registration"><h2 class="pdg-t-20">SIGN UP</h2></a></li>

                    </ul>
                </sec:authorize>

                <sec:authorize access="isAuthenticated()">
                    <form action="/logoutMe" method="post">
                        <input type="submit" name="" placeholder="" value="LOG OUT" class="c">
                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>
                    </form>
                </sec:authorize>


            </div>

            <div class="wp24 float-l bg-white">

                <form class="text-c pdg-t-43">
                    <input type="search" name="search" placeholder="..." class="border pdg-l-5">
                    <input type="submit" value="SEARCH" class="search">
                </form>

            </div>

        </div>

        <div class="wp100 h50 bg-white">
            <ul class="pdg10 pdg-l-30 m-0-a font color-grey">
                <li class="navig border text-c"><a href="/boxes/partAndComp">BIKE PARTS &amp; COMPONENTS</a></li>
                <li class="navig border text-c"><a href="/boxes/accessories">CYCLING ACCESORIES</a></li>
                <li class="navig border text-c"><a href="/boxes/maintenance">BIKE MAINTENANCE</a></li>
                <li class="navig border text-c"><a href="/boxes/tools">BIKE TOOLS</a></li>
                <li class="navig border text-c"><a href="/boxes/cyclingApparel">CYCLING APPAREL</a></li>
                <li class="navig border text-c"><a href="/boxes/completeBicycles">COMLETE BICYCLES</a></li>
            </ul>
        </div>

        <div class="wp80">
            <h2 class="text-c pdg20 font">BIKE PARTS & COMPONENTS</h2>

            <a href="/parts/frame"><div class="box">
                <h2 class="pdg10 font">FRAME</h2>
                <img src="/pics/frame.png">
            </div></a>

            <a href="/parts/handlebars"><div class="box">
                <h2 class="pdg10 font">HANDLEBARS</h2>
                <img src="/pics/handlebars.png">
            </div></a>

            <a href="/parts/wheels"><div class="box">
                <h2 class="pdg10 font">WHEELS</h2>
                <img src="/pics/wheels.png">
            </div></a>

            <a href="/parts/fork"><div class="box">
                <h2 class="pdg10 font">FORK</h2>
                <img src="/pics/fork.png">
            </div></a>

            <a href="/parts/saddle"><div class="box">
                <h2 class="pdg10 font">SADDLE</h2>
                <img src="/pics/saddle.png">
            </div></a>

            <a href="/parts/cranks"><div class="box">
                <h2 class="pdg10 font">CRANKS</h2>
                <img src="/pics/cranks.png">
            </div></a>

            <a href="/parts/cassette"><div class="box">
                <h2 class="pdg10 font">CASSETTE</h2>
                <img src="/pics/cassette.png">
            </div></a>

            <a href="/parts/derailleurs_front"><div class="box">
                <h2 class="pdg10 font">DERAILLEURS FRONT</h2>
                <img src="/pics/derailleurs_front.png">
            </div></a>

            <a href="/parts/derailleurs_rear"><div class="box">
                <h2 class="pdg10 font">DERAILLEURS REAR</h2>
                <img src="/pics/derailleurs_rear.png">
            </div></a>

            <!--FOOTER-->

            <div class="h100 wp100 float-l">
                <h1 class="text-c font color-grey pdg-t-30">FOOTER</h1>
            </div>
        </div>
    </div>
    </body>
</html>
