<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "navbar.jsp" %>
	<div class = "container">
    <div class="row">
    	<c:forEach var="categoria" items="${requestScope.categorie}">
      <div class="col-lg-2 mt-3">
      <a class = "card rounded btn btn-primary" href="categoria?categoriaId=${categoria.id}">
         <img src="${categoria.linkFoto}" height ="120" width="150">
        <h6 class = "mt-1"> ${categoria.nome}</h6>
        </a>
      </div>
      </c:forEach>
      </div>
      <div class = "row mt-3">
      	<h1 style = "background-color: rgb(235, 196, 113)" class = "text-center">TUTTI I PRODOTTI</h1>
      	<c:forEach var = "prodotto" items = "${allProdotti}">
      		<div class = "col-3 mt-3">
      		<a class="card rounded btn border-3" href="prodotto?idProdotto1=${prodotto.id }">
          <img class = "mx-auto" src="${prodotto.linkFotoSmall}" height= "225" width = "225">
          	<p>${prodotto.nome}</p>
          		 <p style = "font-weight: 4">${prodotto.marca}</p>       	
          	</a>
          	</div>
      	</c:forEach>
      </div>
    </div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>

