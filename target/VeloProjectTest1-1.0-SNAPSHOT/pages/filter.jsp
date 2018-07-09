<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
	<head>
	 	<meta charset="utf-8"/>
		<title>BicycleFilters</title>
		<link rel="stylesheet" href="/css/main.css">
	</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<body>
					<!-- Header -->
		<div class="wp100 bg-grey h150">
			
		</div>
		<div>
			<form action="/searchAllCategories">
				<input type="search" name="search" placeholder="search" class="bor wp100 h40">
			</form>
		</div>
					<!-- Body -->
		<div class="h2140 wp100">
			<div class="wp20 hp100 bg-grey float-l" >
				
			</div>
			<div class="wp80 hp100 float-l text-c">
				<div class="h40 wp100 bg-red">TYPE OF PRODUCTS</div>
				<div class="h60 wp100 bg-orange"></div>

				<c:forEach items="things" var="one">
					<div class="h200 wp100">
						<div class="wp20 hp100 bg-aqua float-l"></div>
						<div class="wp80 hp100 bg-green float-l"></div>
					</div>
				</c:forEach>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-green float-l"></div>
					<div class="wp80 hp100 bg-aqua float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-aqua float-l"></div>
					<div class="wp80 hp100 bg-green float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-green float-l"></div>
					<div class="wp80 hp100 bg-aqua float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-aqua float-l"></div>
					<div class="wp80 hp100 bg-green float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-green float-l"></div>
					<div class="wp80 hp100 bg-aqua float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-aqua float-l"></div>
					<div class="wp80 hp100 bg-green float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-green float-l"></div>
					<div class="wp80 hp100 bg-aqua float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-aqua float-l"></div>
					<div class="wp80 hp100 bg-green float-l"></div>
				</div>
				<div class="h200 wp100">
					<div class="wp20 hp100 bg-green float-l"></div>
					<div class="wp80 hp100 bg-aqua float-l"></div>
				</div>
				<div class="h40 wp100 bg-red"></div>
			</div>
		</div>
		<div class="wp100 h575 bg-orange"></div>
		<div class="wp100 h60 bg-aqua"></div>
		<%--<script>--%>
			<%--$.ajax({--%>
			    <%----%>
			<%--})--%>
		<%--</script>--%>
	</body>
</html>