<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
	<html>
	<head>
	 	<meta charset="utf-8"/>
		<title>BicycleFilters</title>
		<link rel="stylesheet" href="/css/main.css">
	</head>
    <body>

    <div class="wp80">
        <div class="wp100 h100 bg-white">

            <div class="wp22 hp100 float-l">
                <a href="/"><img src="/pics/logo_bicycle.jpg" class="logo"></a>
            </div>

            <div class="wp30 hp100 float-l text-c bg-white">
                <h3 class="pdg-t-30 font color-grey">
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


        <div class="wp30 h500 float-l pdg-t-50 bg-white">

            <ul class="filter">
                <h3 class="font">PRICE:</h3>
                <li class="filter font"><label class="pdg5">OVER: </label><input class="border pdg5 wp70" type="text" name="" ></li>
                <li class="filter font"><label class="pdg5">UNDER:</label><input class="border pdg5 wp70" type="text" name="" ></li>
                <li class="filter font"><input class="border pdg5" type="submit" name="" value="APPLY" ></li>
            </ul>

            <ul class="filter">
                <h3 class="font">MATERIAL:</h3>
                <li class="font pdg-t-5"><input type="checkbox" name="aluminium"><label class="pdg5">Aluminium</label></li>
                <li class="font"><input type="checkbox" name="steel"><label class="pdg5">Steel</label></li>
                <li class="font"><input type="checkbox" name="carbon"><label class="pdg5">Carbon</label></li>
            </ul>

            <ul class="filter">
                <h3 class="font">SIZE:</h3>
                <li class="font pdg-t-5"><input type="checkbox" name="xs"><label class="pdg5">XS</label></li>
                <li class="font"><input type="checkbox" name="s"><label class="pdg5">S</label></li>
                <li class="font"><input type="checkbox" name="m"><label class="pdg5">M</label></li>
                <li class="font"><input type="checkbox" name="l"><label class="pdg5">L</label></li>
                <li class="font"><input type="checkbox" name="xl"><label class="pdg5">XL</label></li>
            </ul>

            <ul class="filter">
                <h3 class="font">BRAND:</h3>
                <li class="font pdg-t-5"><input type="checkbox" name="gt"><label class="pdg5">GT</label></li>
                <li class="font"><input type="checkbox" name="cube"><label class="pdg5">Cube</label></li>
                <li class="font"><input type="checkbox" name="merida"><label class="pdg5">Merida</label></li>
                <li class="font"><input type="checkbox" name="comanche"><label class="pdg5">Comanche</label></li>
                <li class="font"><input type="checkbox" name="giant"><label class="pdg5">Giant</label></li>
            </ul>



        </div>
        <div class="wp70 float-l pdg-t-50 bg-white">

            <div class="wp90 h150 m-b-20 border"></div>
            <div class="wp90 h150 m-b-20 border"></div>
            <div class="wp90 h150 m-b-20 border"></div>
            <div class="wp90 h150 m-b-20 border"></div>
            <div class="wp90 h150 m-b-20 border"></div>

        </div>




    </div>
    </body>
    </html>