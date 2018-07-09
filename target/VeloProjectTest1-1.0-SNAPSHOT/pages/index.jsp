<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>

    <head>
        <meta charset="utf-8"/>
        <title>BicycleParts</title>
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
                                    <!--HEADER-DEDER-->
        <div class="wp100 bg-grey h60">
                <div class="float-l wp50 hp100 bg-pink">
                    <h1 class="pdg10">BICYCLEPARTS</h1>
                </div>
            <div class="float-l wp30 hp100 bg-grey text-c bg-green">
                <sec:authorize access="isAnonymous()">
                    <a href="/login" class="c">Sign in</a>
                    <a href="/registration" class="c">Sign up</a>
                </sec:authorize>

                <sec:authorize access="isAuthenticated()">
                    <a href="" class="c">Logout</a>
                </sec:authorize>

                <%--<div>Sign In</div>--%>
                <%--<div>Sign Up</div>--%>
            </div>
                <div class="float-l wp20 hp100 bg-red text-c">
                    <h2 class="pdg10">SEARCH</h2>
                </div>


        </div>
                                    <!-- Builds -->
        <div class="h700">
            <div class="hp100 wp20 bg-green float-l"></div>
            <div class="hp100 wp20 float-l">
                <div class="wp100 hp50 bg-orange"></div>
                <div class="wp100 hp50 bg-pink"></div>
            </div>
            <div class="h700 wp40 float-l">
                <div class="hp30 wp100 float-l">
                    <div class="hp100 wp50 bg-grey float-l"></div>
                    <div class="hp100 wp50 bg-green float-l"></div>
                </div>
                <div class="wp100 hp40 bg-aqua float-l"></div>
                <div class="hp30 wp100 float-l">
                    <div class="hp100 wp50 bg-grey float-l"></div>
                    <div class="hp100 wp50 bg-green float-l"></div>
                </div>
            </div>
            <div class="hp100 wp20 float-l">
                <div class="wp100 hp50 bg-orange float-l"></div>
                <div class="wp100 hp50 bg-pink float-l"></div>
            </div>
        </div>
                                            <!--PARTS-->
        <div class="wp100">
            <div class="float-l wp33 bg-green h150 text-c">
                <h3 class="pdg10">BIKE PARTS &amp; COMPONENTS</h3></div>            
            <div class="float-l wp33 bg-red h150 text-c">
                <h3 class="pdg10">CYCLING ACCESORIES</h3></div>
            <div class="float-l wp33 bg-pink h150 text-c">
                <h3 class="pdg10">BIKE MAINTENANCE</h3></div>
            <div class="float-l wp33 bg-grey h150 text-c">
                <h3 class="pdg10">BIKE TOOLS</h3></div>
            <div class="float-l wp33 bg-aqua h150 text-c">
                <h3 class="pdg10">CYCLING APPAREL</h3></div>
            <div class="float-l wp33 bg-orange h150 text-c">
                <h3 class="pdg10">COMLETE BICYCLES</h3></div>
       </div>
                                    <!-- Footer -->
        <div class="wp100 h150 bg-red float-l">Footer</div>
    </body>
</html>