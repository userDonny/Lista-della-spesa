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
				<a class = "btn btn-danger" href="prodotto?searchTerm=<%= prodotti.get(1).getNome()%>">RIMUOVI</a>
			</div>
			<div class="col-lg-5 col-md-5">
				<a class = "btn btn-danger mb-1" href="prodotto?idProdotto1=<%= prodotti.get(0).getId()%>">RIMUOVI</a>
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
										<td><%= prodotti.get(0).getEtichetta().getValoreEnergetico()%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotti.get(0).getEtichetta().getProteine()%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotti.get(0).getEtichetta().getCarboidrati()%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotti.get(0).getEtichetta().getGrassi()%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotti.get(0).getEtichetta().getGrassiSaturi()%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotti.get(0).getEtichetta().getFibre()%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotti.get(0).getEtichetta().getSodio()%></td>

									</tr>
								</tbody>
							</table>
							</div>
				<div class="col-lg-5 col-md-5">
							<table class="table border">
								<tbody>
									<tr>
										<th>VALORE ENERGETICO</th>
										<td><%= prodotti.get(1).getEtichetta().getValoreEnergetico()%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotti.get(1).getEtichetta().getProteine()%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotti.get(1).getEtichetta().getCarboidrati()%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotti.get(1).getEtichetta().getGrassi()%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotti.get(1).getEtichetta().getGrassiSaturi()%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotti.get(1).getEtichetta().getFibre()%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotti.get(1).getEtichetta().getSodio()%></td>
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
											<td><%= p.getPrezzo() %></td>
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
											<td><%= p1.getPrezzo() %></td>
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
										<td><%= prodotto.getEtichetta().getValoreEnergetico()%></td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td><%= prodotto.getEtichetta().getProteine()%></td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td><%= prodotto.getEtichetta().getCarboidrati()%></td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td><%= prodotto.getEtichetta().getGrassi()%></td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td><%= prodotto.getEtichetta().getGrassiSaturi()%></td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td><%= prodotto.getEtichetta().getFibre()%></td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td><%= prodotto.getEtichetta().getSodio()%></td>

									</tr>
								</tbody>
							</table>
							</div>
			</div>
			<div class = "row">
			<div class = "col-5 mt-5">
								<form method="get" action="prodotto" role="search">
          								<input type="search" class="form-control" placeholder="Confronta con..." aria-label="Search" name="searchTerm">
          								<input type = "hidden" name = "idProdotto1" value = "<%= prodotto.getId()%>">
        						</form>
        						 <form class = "mt-5" method = "post" action="lista-spesa-prodotto">
        						 	<% for(int i = 0; i < prodotto.getCatenaProdotto().size(); i++) {%>
        						 	<input type = "hidden" name = "prezzo<%= i%>" value = "<%= prodotto.getCatenaProdotto().get(i).getPrezzo()%>">
        						 	<% }%>
        						 	<label for = "formQuantità">Quantità</label> <br>			 	
        							<input class = "" id = "formQuantità" type= "number" value = "1" name = "quantita" placeholder="quantità">
        							<input type = "hidden" name = "id" value = "<%= prodotto.getId()%>">
        							<button class = "btn btn-primary" type="submit">Aggiungi alla lista</button>
        						</form>  
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
									<% for(CatenaProdotto p : prodotto.getCatenaProdotto()) { %>
										<tr>
											<td><%= p.getCatena().getDenominazione() %></td>
											<td><%= p.getPrezzo() %></td>
										</tr>
									<%} %>
								</tbody>
							</table>
							</div>
			</div>
			</div>			
			<% } %>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>