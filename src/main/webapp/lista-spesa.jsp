<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="it.generationitaly.spesa.entity.ListaSpesa"%>
<%@page import="it.generationitaly.spesa.entity.ListaSpesaProdotto"%>
<%@page import="it.generationitaly.spesa.entity.CatenaPrezzo"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>List&lt;Prodotto&gt; - Lista della Spesa</title>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
		<link href="navbar.css" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	</head>
	<body>
		<% ListaSpesa listaSpesa = (ListaSpesa) request.getAttribute("listaSpesa"); 
		   CatenaPrezzo catenaPrezzoMin = (CatenaPrezzo)request.getAttribute ("catenaPrezzoMin");
		   List<CatenaPrezzo> catenaPrezzoList = (List<CatenaPrezzo>) request.getAttribute("catenaPrezzoList");%>
	  <%@ include file = "navbar.jsp" %>
	    <div class="container-fluid">
	    <h1 style = "font-family: 'Sofia', sans-serif;background-color: rgb(235, 196, 113);" class = "text-center">Lista della spesa</h1>
	      <div class="row mt-5"> <!-- Riga totale -->
	      <div class="col-2" style="background-color:#fefcec"></div>
	      <div class="col-md-5 col-sm-12"> <!-- Spazio per Card Prodotto -->
	      <% SimpleDateFormat simpleDate = new SimpleDateFormat("dd/MM/yyyy"); %>
	      <p>Data creazione: <b><%= simpleDate.format(listaSpesa.getData())%></b></p>
	      <a class = "mt-2 btn btn-outline-info" href="categoria">Continua la spesa</a>
	      <% for (ListaSpesaProdotto element :listaSpesa.getListaSpesaProdotto()) {%>
	          <div class="card  border-0 mt-2">
	          <div class="row"> <!-- Riga lughezza card -->
	          <div class="col-3"> <!-- colonna immagine -->
	          <img class = "mx-auto" src="<%= element.getProdotto().getLinkFotoSmall()%>" height= "200" width = "200"> <!-- height= "225" width = "225" -->
	          </div>
	          <div class="col-9"> <!-- colonna Corpo Card -->
	          <div class="card-body"> <!-- Card body -->
	          	<a class="stretched-link link-underline link-underline-opacity-0" href="prodotto?idProdotto1=<%= element.getProdotto().getId()%>"><span style="color:black"><span class = "ms-4" style="font-weight: 4; font-size:20px">Nome: <b><%= element.getProdotto().getNome()%> </b>
	          	</span><br><span class = "ms-4" style="font-weight: 4; font-size:20px"> Marca: <b><%= element.getProdotto().getMarca()%> </b></span></span>
	          	<br><span class = "ms-4" style="font-weight: 4; font-size:20px"> Quantità: <b><%= element.getQuantita()%> </b></span></span></a>
	          </div> <!-- Card body -->
			 </div>
	          	</div>
	           </div>
	           <!-- X -->
	        <form method = "post" action="delete-lista-spesa-prodotto">
	        	<input type="hidden" name = "idListaSpesa" value = "<%= listaSpesa.getId()%>">
	        	<input type="hidden" name = "idListaSpesaProdotto" value = "<%= element.getId()%>">
	        	<div class = "text-end">
	        	<button class="btn border-danger btn-link link-secondary link-underline link-underline-opacity-0" type="submit"> <span style = "color: red">Rimuovi </span>
	        	<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill= "#d80e0e" class="bi bi-x-square-fill ms-1 mb-1" viewBox="0 0 16 16">
  			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
			</svg></button></div>
	        </form>
	        <!--  
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-trash-fill" viewBox="0 0 16 16">
            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
            </svg>
            -->
            </button>
            <div class="border-bottom border-3 mt-2 mb-2"></div> <!-- bordo iterato -->
	        <% } %>  
	        </div>
	        <div class="col-3" style="background-color:rgb(235, 196, 113)"> <!-- Spazio per Card Totale -->
	        	<div class = "sticky-top">
	        	<div class="card rounded border-3 mt-2 ">
	        	<h3 class="card-title ms-5" style = "color: green">Prezzo minore <span class="card-text" style = "color: green; font-weight: 4; font-size:30px;"><br>
	        	<% 	DecimalFormat df = new DecimalFormat ("0.00");
	        		if (catenaPrezzoMin != null) {%>
	        	<%= catenaPrezzoMin.getCatena().getDenominazione() + " :"%>
	        	<%= df.format(catenaPrezzoMin.getPrezzoTotale()) + " €"%>
	        	<%} %>
	        	</span></h3>
	          		<!-- <p class="card-text" style = "font-weight: 4"> &#8364;</p> -->
	        </div>
	        <br>
	        <br>
	        <div class="card rounded border-3 mt-2" style = "color : red">
	        <h3 class = "card-title ms-5">
	        	Alternative<br><span class = "card-text" style = " font-weight: 4; font-size:30px;"> 
	        	<% if (catenaPrezzoList != null) {
	        		for(CatenaPrezzo cp : catenaPrezzoList) {%>
	        	<%= cp.getCatena().getDenominazione() + " :"%>
	        	<%= df.format(cp.getPrezzoTotale()) + " €"%>
	        	<br>
	        	<%} 
	        	}%> 
	        	</span>
	        	</h3>
	        </div>
	        </div>               	
	        </div> 
	        <div class="col-2" style="background-color:#fefcec"></div>
	        </div>
	        </div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	</body>
</html>