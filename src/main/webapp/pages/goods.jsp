<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>

    <head>
        <meta charset="utf-8"/>
        <title>Some goods</title>
        <link rel="stylesheet" href="/css/main.css">
    </head>
    <body>
        <div class="wp80">
            <!--Header-->
            <div class="h100 bg-white">
                <a href="/"><div class="wp22 hp100 float-l">
                    <img src="/pics/logo_bicycle.jpg" class="logo">
                </div></a>
                <div class="wp30 hp100 float-l text-c bg-white">
                    <h3 class="pdg-t-30 font color-grey">CONTACTS:</h3>
                    <a href="https://www.google.com.ua/maps" target="_blank" class="font color-grey">NEW YORK, NY 10001 </a>
                    <h3 class="font color-grey"> +380 77 77 777</h3>
                </div>
                <div class="hp100 wp23 float-l bg-white">
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
                <div class="wp24 hp100 float-l bg-white">
                    <form class="text-c pdg-t-43">
                        <input type="search" name="search" placeholder="..." class="border pdg-l-5">
                        <input type="submit" value="SEARCH" class="search">
                    </form>
                </div>
            </div>
            <div class="h50 bg-white">
                <ul class="pdg10 pdg-l-30 m-0-a font color-grey">
                    <li class="navig border text-c"><a href="/boxes/partAndComp">BIKE PARTS &amp; COMPONENTS</a></li>
                    <li class="navig border text-c"><a href="/boxes/accessories">CYCLING ACCESORIES</a></li>
                    <li class="navig border text-c"><a href="/boxes/maintenance">BIKE MAINTENANCE</a></li>
                    <li class="navig border text-c"><a href="/boxes/tools">BIKE TOOLS</a></li>
                    <li class="navig border text-c"><a href="/boxes/cyclingApparel">CYCLING APPAREL</a></li>
                    <li class="navig border text-c"><a href="/boxes/completeBicycles">COMLETE BICYCLES</a></li>
                </ul>
            </div>
                                                        <!--GOODS-->
            <div class="h600">
                <div class="wp40 hp100 float-l text-c">
                    <div class="m-t-20 pdg20 wp80 h260 border">
                        <img src="${thing.img}">
                    </div>
                </div>
                <div class="wp60 hp100 float-l">
                    <div class="m-t-20 hp20 wp100 border">
                        <h3>ID: "${thing.id}"</h3>
                    </div>
                    <div class="hp20 wp100 border">
                        <h3>TITLE: "${thing.title}"</h3>
                    </div>
                    <div class="hp20 wp100 border">
                        <h3>PRICE: "${thing.price}"</h3>
                    </div>
                </div>
            </div>
                                                    <!-- Footer -->

            <div class="h100 clear-b">
                <h1 class="text-c font color-grey pdg-t-30">FOOTER</h1>
            </div>
        </div>
    </body>
    
</html>