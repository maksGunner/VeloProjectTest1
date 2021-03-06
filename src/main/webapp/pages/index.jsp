<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>BicycleParts</title>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="shortcut icon" href="/pics/icon_bicycle.ico" type="image/x-icon">
        <%--<link rel="stylesheet"--%>
              <%--href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"--%>
              <%--integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"--%>
              <%--crossorigin="anonymous">--%>
        <%--<script--%>
                <%--src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
                <%--integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
                <%--crossorigin="anonymous">--%>
        <%--</script>--%>
        <%--<script--%>
                <%--src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"--%>
                <%--integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"--%>
                <%--crossorigin="anonymous">--%>
        <%--</script>--%>
        <%--<script--%>
                <%--src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"--%>
                <%--integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"--%>
                <%--crossorigin="anonymous">--%>
        <%--</script>--%>


    </head>
    <body>
        <!--Header-->
        <div class="wp80 h100 bg-white">
            <a href="/"><div class="wp22 hp100 float-l">
                <img src="/pics/logo_bicycle.jpg" class="logo">
            </div></a>
            <div class="wp30 hp100 float-l text-c bg-white">
                <h3 class="pdg-t-30 fontIndex color-grey">
                    CONTACTS: <br> <a href="https://www.google.com.ua/maps" target="_blank">
                    NEW YORK, NY 10001 </a> <br> +380 77 77 777
                </h3>
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
        <div class="wp80 h50 bg-white">
            <ul class="pdg10 pdg-l-30 m-0-a font color-grey">
                <li class="navig border text-c"><a href="/boxes/partAndComp">BIKE PARTS &amp; COMPONENTS</a></li>
                <li class="navig border text-c"><a href="/boxes/accessories">CYCLING ACCESORIES</a></li>
                <li class="navig border text-c"><a href="/boxes/maintenance">BIKE MAINTENANCE</a></li>
                <li class="navig border text-c"><a href="/boxes/tools">BIKE TOOLS</a></li>
                <li class="navig border text-c"><a href="/boxes/cyclingApparel">CYCLING APPAREL</a></li>
                <li class="navig border text-c"><a href="/boxes/completeBicycles">COMLETE BICYCLES</a></li>
            </ul>
        </div>


                                                        <!--Ad-->



        <div class="carousel-wrapper" style="height: 420px;">

            <span id="target-item-1"></span>
            <span id="target-item-2"></span>
            <span id="target-item-3"></span>

            <div class="carousel-item item-1">
                <a href="/login"><img src="/pics/bike-panorama.jpg" class="ad"></a>
                <a class="arrow arrow-prev" href="#target-item-3"></a>
                <a class="arrow arrow-next" href="#target-item-2"></a>
            </div>

            <div class="carousel-item item-2 light">
                <a href="/login"><img src="/pics/bike-panorama.jpg" class="ad"></a>
                <a class="arrow arrow-prev" href="#target-item-1"></a>
                <a class="arrow arrow-next" href="#target-item-3"></a>
            </div>

            <div class="carousel-item item-3">
                <a href="/login"><img src="/pics/bike-panorama.jpg" class="ad"></a>
                <a class="arrow arrow-prev" href="#target-item-2"></a>
                <a class="arrow arrow-next" href="#target-item-1"></a>
            </div>
        </div>


                                    <%----------------------------%>

        <%--<div class="wp100 hp40 bg-white">--%>
            <%--<img src="/pics/bike-panorama.jpg" class="ad">--%>
        <%--</div>--%>
        <!--Second view-->
        <div class="wp80">
        <div class="wp80 h500 m-t-70 font">

            <a href="/boxes/partAndComp">
                <div class="box hp40">
                    <h2 class="pdg10">BIKE PARTS &amp; COMPONENTS</h2>
                    <img src="/pics/bike_parst.png" class="logo">
                </div>
            </a>

            <a href="/boxes/accessories">
                <div class="box hp40">
                    <h2 class="pdg10">CYCLING ACCESORIES</h2>
                    <img src="/pics/Accessories.png" class="logo">
                </div>
            </a>

            <a href="/boxes/maintenance">
                <div class="box hp40">
                    <h2 class="pdg10">BIKE MAINTENANCE</h2>
                    <img src="/pics/bike-maintenance.png" class="logo">
                </div>
            </a>

            <a href="/boxes/tools">
                <div class="box hp40">
                    <h2 class="pdg10">BIKE TOOLS</h2>
                    <img src="/pics/bike-tools.png" class="logo">
                </div>
            </a>

            <a href="/boxes/cyclingApparel">
                <div class="box hp40">
                    <h2 class="pdg10">CYCLING APPAREL</h2>
                    <img src="/pics/BeFunky-Collage.png" class="logo">
                </div>
            </a>

            <a href="/boxes/completeBicycles">
                <div class="box hp40">
                    <h2 class="pdg10">COMLETE BICYCLES</h2>
                    <img src="/pics/complete_bike.png" class="logo">
                </div>
            </a>

        </div>
        </div>


        <!--FOOTER-->
        <div class="wp80 h100 border-t">
            <h1 class="text-c font color-grey pdg-t-30">FOOTER</h1>
        </div>


    </body>
</html>