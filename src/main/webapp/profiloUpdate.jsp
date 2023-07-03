<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="utente" value="${requestScope.profilo}"></c:set>
	<form action="profilo" method="post">
	<label for="nome">NOME</label>
	<input type="text" id="nome" name="nome" placeholder="${utente.nome}"
		readonly="readonly">
	<label for="cognome">COGNOME</label>
	<input type="text" id="cognome" name="cognome"
		placeholder="${utente.cognome}" readonly="readonly">
		<label for="dataNascita">DATA NASCITA</label>
	<input type="date" id="dataNascita" name="data"
		placeholder="${utente.dataNascita}" readonly="readonly">
		<label for="sesso">SESSO</label>
	<input type="checkbox" id="sesso" name="sesso"
		placeholder="${utente.sesso}" readonly="readonly">
	<label for="email">E-MAIL</label>
	<input type="email" id="email" name="username"
		value=>
	<label for="username">USERNAME</label>
	<input type="text" id="username" name="username"
		value="${utente.username}">
	<label for="password">PASSWORD</label>
	<input type="password" id="password" name="password"
		value="${utente.username}">
		<button type="button" >SALVA</button>
		</form>
</body>
</html>