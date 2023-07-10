<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "navbar.jsp" %>
	<div class = "container">
		<div class = "row">
			<div class = "col-12">
	<div id="carouselExampleDark" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://primadituttoverona.it/media/2019/12/Carrefour.jpg" class="d-block w-100" alt="carrefour" height="540" width="700">
      <div class="carousel-caption d-none d-md-block">
      <a href="https://www.carrefour.it/" class="link-underline link-underline-opacity-0" style="color: white; font-size: 30px; background-image:radial-gradient(grey 40%, rgba(255,255,255,0) 80%)" >Carrefour</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://informatorecoopfi.it/wp-content/uploads/2022/12/coop.jpg" class="d-block w-100" alt="coop" height="540" width="700">
      <div class="carousel-caption d-none d-md-block">
        <a href="https://www.coop.it/" class="link-underline link-underline-opacity-0" style="color: white; font-size: 30px; background-image:radial-gradient(grey 40%, rgba(255,255,255,0) 80%)">Coop</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://i0.wp.com/www.fruitbookmagazine.it/wp-content/uploads/2020/06/Pam-1.jpg?ssl=1" class="d-block w-100" alt="pam" height="540" width="700">
      <div class="carousel-caption d-none d-md-block">
        <a a href="https://www.pampanorama.it/" class="link-underline link-underline-opacity-0" style="color: white; font-size: 30px; background-image:radial-gradient(grey 40%, rgba(255,255,255,0) 80%)">Pam</a>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://www.giuseppecaprotti.it/2019/wp-content/uploads/Esselunga-sottocasa-1.jpg" class="d-block w-100" alt="esselunga" height="540" width="700">
      <div class="carousel-caption d-none d-md-block">
        <a href="https://www.esselunga.it/cms/homepage.html" class="link-underline link-underline-opacity-0" style="color: white; font-size: 30px; background-image:radial-gradient(grey 40%, rgba(255,255,255,0) 80%)">Esselunga</a>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
</div>
	<!-- carosello -->
	<!--  <div class="carrello">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
  <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
</svg>
</div>-->
	
	<div class="row mt-3">
	<c:forEach var="catena" items="${catene}">
	<div class="col-6 mb-2">
	<a href = "catene?catenaId=${catena.id}" class = "card rounded btn">
	<img class = "mx-auto" src="${catena.linkFoto}" height="200" width = "300">
		<h4 class = "mt-2">Scopri di più</h4>
		</a>
		</div>
	</c:forEach>	
	</div>
	</div>
	<!--  <div class="col-lg-1" style="background-image:linear-gradient(#ebc471,#ffffff)"></div>
	</div>
	</div>-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>