<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>   
</head>
  <body>
  <%@ include file = "navbar.jsp" %>
    <div class="container">
      <div class="row">
      <c:forEach var="prodotto" items="${prodotti}">
        <div class="col-3">
          <a class="card rounded btn border-3" href="prodotto?idProdotto1=${prodotto.id }">
          <img class = "mx-auto" src="${prodotto.linkFotoSmall}" height= "225" width = "225">
          	<p>${prodotto.nome}</p>
          		 <p style = "font-weight: 4">${prodotto.marca}</p> 
          		 <form class = "text-end" method = "post" action = "lista-spesa">
          		 	<input type= "hidden" value = "1" name = "quantita">
          		 	<input type = "hidden" name = "id" value = "${prodotto.id}">
        				<button class = "btn btn-primary ms-2" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
  							<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
						</svg></button>
          		 </form>      	
          	</a>
           </div>
        </c:forEach>
        <c:if test="${prodotti.isEmpty()}">
        	<h4 style = "color: red">Nessun risultato secondo la ricerca effettuata</h4>
        </c:if>
        </div>          
     </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>