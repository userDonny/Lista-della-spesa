<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="it.generationitaly.spesa.entity.Prodotto"%>
<%@page import="it.generationitaly.spesa.entity.CatenaProdotto"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%List<Prodotto> prodotti = (List<Prodotto>)request.getAttribute("prodotti");%>
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<%if(prodotti != null) {%>
		<div class = "row">
			<div class="col-1"><p></p></div>
			<div class="col-lg-5 col-md-5">
				<a style = "color: red" class = "btn border-danger mb-2" href="prodotto?searchTerm=<%= prodotti.get(1).getNome()%>">RIMUOVI <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill= "#d80e0e" class="bi bi-x-square-fill ms-1 mb-1" viewBox="0 0 16 16">
  			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
			</svg></a>
			</div>
			<div class="col-lg-5 col-md-5">
				<a style = "color: red" class = "btn border-danger mb-2" href="prodotto?idProdotto1=<%= prodotti.get(0).getId()%>">RIMUOVI <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill= "#d80e0e" class="bi bi-x-square-fill ms-1 mb-1" viewBox="0 0 16 16">
  			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
			</svg></a>
			</div>
			</div>
			<div class = "row">
				<div class="col-1"><p></p></div>
				<div class="col-lg-5 col-md-5">	
					<img class = "mt-2" src="<%= prodotti.get(0).getLinkFotoDetail()%>" height = "100%" width = "300">
				</div>
				<div class="col-lg-5 col-md-5">			
					<img class = "mt-2" src="<%= prodotti.get(1).getLinkFotoDetail()%>" height = "100%" width = "300">
				</div>
			</div>
			<div class = "row mt-5">
			<div class="col-1"><p></p></div>
			<div class="col-lg-5 col-md-5">
							<table class="table border">
								<tbody>
									<tr>
										<th>VALORE ENERGETICO</th>
										<td><%= prodotti.get(0).getEtichetta().getValoreEnergetico() + " Kcal"%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotti.get(0).getEtichetta().getProteine() + " g"%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotti.get(0).getEtichetta().getCarboidrati() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotti.get(0).getEtichetta().getGrassi() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotti.get(0).getEtichetta().getGrassiSaturi() + " g"%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotti.get(0).getEtichetta().getFibre() + " g"%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotti.get(0).getEtichetta().getSodio() + " g"%></td>

									</tr>
								</tbody>
							</table>
							</div>
				<div class="col-lg-5 col-md-5">
							<table class="table border">
								<tbody>
									<tr>
										<th>VALORE ENERGETICO</th>
										<td><%= prodotti.get(1).getEtichetta().getValoreEnergetico() + " Kcal"%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotti.get(1).getEtichetta().getProteine()  + " g"%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotti.get(1).getEtichetta().getCarboidrati() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotti.get(1).getEtichetta().getGrassi() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotti.get(1).getEtichetta().getGrassiSaturi() + " g"%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotti.get(1).getEtichetta().getFibre() + " g"%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotti.get(1).getEtichetta().getSodio() + " g"%></td>
									</tr>
								</tbody>
							</table>
							</div>
			</div>
			<div class = "row">
			<div class="col-1"><p></p></div>
			<div class = "col-5 mt-5">
							<table class="table border">
								<thead>
									<tr>
										<th>CATENA</th>
										<th>PREZZO</th>
									</tr>
								</thead>
								<tbody>
									<% for(CatenaProdotto p : prodotti.get(0).getCatenaProdotto()) { %>
										<tr>
											<td><%= p.getCatena().getDenominazione() %></td>
											<td><%= p.getPrezzo() + " €"%></td>
										</tr>
									<%} %>
								</tbody>
							</table>
						</div>
						<div class = "col-5 mt-5">
							<table class="table border">
								<thead>
									<tr>
										<th>CATENA</th>
										<th>PREZZO</th>
									</tr>
								</thead>
								<tbody>
									<% for(CatenaProdotto p1 : prodotti.get(1).getCatenaProdotto()) { %>
										<tr>
											<td><%= p1.getCatena().getDenominazione() %></td>
											<td><%= p1.getPrezzo() + " €"%></td>
										</tr>
									<% } %>
								</tbody>
							</table>
						</div>
						</div>	
			<% } else {
				Prodotto prodotto = (Prodotto)request.getAttribute("prodotto");
				%>
			<div class = "row">
			<div class="col-lg-5 col-md-5">
			<img src="<%= prodotto.getLinkFotoDetail()%>" height = "100%" width = "300">
			</div>
			<div class="col-lg-5 col-md-5">
							<table class="table border">
								<tbody>
									<tr>
										<th>VALORE ENERGETICO</th>
										<td><%= prodotto.getEtichetta().getValoreEnergetico() + " Kcal"%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotto.getEtichetta().getProteine() + " g"%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotto.getEtichetta().getCarboidrati() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotto.getEtichetta().getGrassi() + " g"%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotto.getEtichetta().getGrassiSaturi() + " g"%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotto.getEtichetta().getFibre() + " g"%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotto.getEtichetta().getSodio() + " g"%></td>

									</tr>
								</tbody>
							</table>
							</div>
			</div>
			<div class = "row">
			<div class = "col-5 mt-3">
								<form method="get" action="prodotto" role="search">
										<h5>Confronta:</h5>
          								<input type="search" class="form-control" placeholder="Confronta con..." aria-label="Search" name="searchTerm">
          								<input type = "hidden" name = "idProdotto1" value = "<%= prodotto.getId()%>">
        						</form>
        						<% if( request.getAttribute("errorConfronto") != null) {%>
			 						<div class="alert alert-danger" role="alert">
			 							Inserire un prodotto della stessa categoria.
									</div>
								<% } %>
        						 <form class = "mt-5" method = "post" action="lista-spesa">
        						 	<h5>Aggiungi alla lista della spesa:</h5>
        						 	<label for = "formQuantità">Quantità</label> <br>			 	
        							<input class = "form border rounded" id = "formQuantità" type= "number" value = "1" name = "quantita" placeholder="quantità" min = "1" max = "100">
        							<input type = "hidden" name = "id" value = "<%= prodotto.getId()%>">
        							<button class = "btn btn-primary ms-2" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
  										<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
									</svg></button>
        						</form> 
							</div>
				<div class = "col-5 mt-5">
							<table class="table border">
								<thead>
									<tr>
										<th></th>
										<th>CATENA</th>
										<th>PREZZO</th>
									</tr>
								</thead>
								<tbody>
									<% for(CatenaProdotto p : prodotto.getCatenaProdotto()) { %>
										<tr>
											<td><img src="<%= p.getCatena().getLinkFoto() %>" height="50" width = "90"></td> 
											<td><a href="catene?catenaId=<%= p.getCatena().getId()%>"><%= p.getCatena().getDenominazione()%></a></td>
											<td><%= p.getPrezzo()+ " €"%></td>
										</tr>
									<%} %>
								</tbody>
							</table>
							</div>
			</div>
			</div>			
			<% } %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>