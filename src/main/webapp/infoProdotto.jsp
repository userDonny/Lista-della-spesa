<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body
	style="background-image: linear-gradient(to bottom right, #5ac7ed, #ffab38, #6ccdef) !important">
	<%@ include file="navbar.jsp"%>
	<div class="text-center container">
		<div class="row">
			<div class="col-lg-6 col-md-8 mx-auto">
			<img src="${prodotto.linkFotoDetail}" class="img-fluid">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-md-8 mx-auto">
							<table class="table table-hover">
								<tbody>
									<tr>
										<th>VALORE ENERGETICO</th>
										<td>${prodotto.etichetta.valoreEnergetico}klcal</td>
									</tr>
									<tr>
										<th>PROTEINE</th>
										<td>${prodotto.etichetta.proteine}g</td>
									</tr>
									<tr>
										<th>CARBOIDRATI</th>
										<td>${prodotto.etichetta.carboidrati}g</td>
									</tr>
									<tr>
										<th>GRASSI</th>
										<td>${prodotto.etichetta.grassi}g</td>
									</tr>
									<tr>
										<th>GRASSI SATURI</th>
										<td>${prodotto.etichetta.grassiSaturi}g</td>
									</tr>
									<tr>
										<th>FIBRE</th>
										<td>${prodotto.etichetta.fibre}g</td>
									</tr>
									<tr>
										<th>SODIO</th>
										<td>${prodotto.etichetta.sodio}mg</td>

									</tr>
								</tbody>
							</table>
						<div class = "mt-5">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>PREZZO</th>
										<th>QUANTITA</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var = "prezzoQuantita" items = "${prodotto.catenaProdotto}">
										<tr>
											<td>${prezzoQuantita.prezzo}</td>
											<td>${prezzoQuantita.quantita}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						</div>
			</div>
	<footer class="text-body-secondary py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="prodotti.jsp">Torna su</a>
			</p>
			<p class="mb-1">&copy; List&lt;Prodotto&gt;</p>
			<p class="mb-0">
				Torna alla home <a href="index.jsp">qui</a>.
			</p>
		</div>
	</footer>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>