<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>

    <head>
        <meta charset="utf-8"/>
        <title>BicycleParts</title>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="shortcut icon" href="/pics/icon_bicycle.ico" type="image/x-icon">

    </head>
    
    <body>
        <div class="wp80 m-0-a">
                                            <!--HEADER-DEDER-->
            <div class="wp100 h60">

                <div class="float-l wp10 hp100 bg-grey">
                    <img class="logo" src="/pics/logo.jpg">
                </div>

                <div class="float-l wp40 hp100 bg-grey">
                    <h1 class="pdg10">BICYCLEPARTS</h1>
                </div>

                <div class="float-l wp30 hp100 bg-grey text-c bg-green">
                    <sec:authorize access="isAnonymous()">
                        <a href="/login" class="c">Sign in</a>
                        <a href="/registration" class="c">Sign up</a>
                    </sec:authorize>

                    <sec:authorize access="isAuthenticated()">
                        <form action="/logoutMe" method="post">
                            <input type="submit" name="" placeholder="" value="Log out" class="c" style="background-color: inherit">
                            <input type="hidden"
                                   name="${_csrf.parameterName}"
                                   value="${_csrf.token}"/>
                        </form>
                    </sec:authorize>

                </div>
                <div class="float-l wp20 hp100 bg-red text-c">
                    <h2 class="pdg10">SEARCH</h2>
                </div>

            </div>
                <%--Title--%>
                <div id="title" class="wp100 h500">
                    <div id="title1" class="wp100 h500"></div>
                </div>
            <!-- Builds -->
            <div id="builds" class="h700">
                <div class="hp100 wp20 bg-green float-l"></div>
                <div class="hp100 wp20 float-l">
                    <a href="/parts/derailleurs_rear"><div id="derailleurs_rear" class="wp100 hp50 parts float-l"></div></a>
                    <a href=""><div id="" class="wp100 hp50 float-l parts"></div></a>
                </div>
                <div class="h700 wp40 float-l">
                    <div class="hp30 wp100 float-l">
                        <a href="/parts/saddle"><div id="saddle" class="hp100 wp50 parts float-l"></div></a>
                        <a href="/parts/derailleurs_front"><div id="derailleurs_front" class="hp100 wp50 parts float-l"></div></a>
                    </div>
                    <a href="/parts/frame"><div id="frame" class="wp100 hp40 parts float-l"></div></a>
                    <div class="hp30 wp100 float-l">
                        <a href="/parts/cassette"><div id="cassette" class="hp100 wp50 parts float-l"></div></a>
                        <a href="/parts/cranks"><div id="cranks" class="hp100 wp50 parts float-l"></div></a>
                    </div>
                </div>
                <div class="hp100 wp20 float-l">
                    <a><div class="wp100 hp50 parts"></div></a>
                    <a href="/parts/fork"><div id="fork" class="wp100 hp50 parts"></div></a>
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
        </div>
    </body>
</html>