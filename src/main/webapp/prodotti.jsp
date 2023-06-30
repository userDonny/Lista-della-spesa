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
  <body style="background-image: linear-gradient(to bottom right, #5ac7ed, #ffab38, #6ccdef) !important">
  <%@ include file = "navbar.jsp" %>
  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">Risultati della ricerca</h1>
        <p class="lead text-body-secondary">Ecco la lista dei risultati per la categoria...</p>
      </div>
    </div>
  </section>

  <div class="album py-5 bg-body-tertiary">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5 g-3">
      <c:forEach var="prodotto" items="${prodotti}">
        <div class="col">
          <div class="card shadow-sm">
          <img src="${prodotto.linkFotoSmall}" height= "225" width = "225">
             <!--  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">/Immagine Prodotto/</text></svg> -->
            <div class="card-body">
              <p class="card-text"><b>${prodotto.nome}</b></p>
              <small class="text-body-secondary">${prodotto.marca}</small>
              <ul class="list-style">
              	<li>
	              <p class="card-text">${prodotto.peso} g</p>
	            </li>
	           </ul>
	              <p class="card-text-right"><span style="font-size:30px"><b></b></span></p>
              <div class="d-flex justify-content-between align-items-center">
                  <form action="prodotto" method="get">
						<input type="hidden" name="id"
							value="${prodotto.id }">
						<button class="btn btn-sm btn-outline-secondary" type="submit">Info
							</button>
					</form>
              </div>
            </div>
            </div>
          </div>
           </c:forEach>
        </div>
       </div>
    </div>
<footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="prodotti.jsp">Torna su</a>
    </p>
    <p class="mb-1">&copy; List&lt;Prodotto&gt;</p>
    <p class="mb-0">Torna alla home <a href="index.jsp">qui</a>.</p>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </body>
</html>