<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body></body>
<table>
	<tbody>
		<tr>
			<th>NOME</th>
			<td>${profilo.nome}</td>
		</tr>
		<tr>
			<th>COGNOME</th>
			<td>${profilo.cognome}</td>
		</tr>
		<tr>
			<th>USERNAME</th>
			<td>${profilo.username}</td>
		</tr>
		<tr>
			<th>EMAIL</th>
			<td>${profilo.email}</td>
		</tr>
		<tr>
			<th>DATA DI NASCITA</th>
			<td>${profilo.dataNascita}</td>
		</tr>
		<tr>
			<th>SESSO</th>
			<td>${profilo.sesso}</td>
		</tr>
	</tbody>
</table>
<a href="profiloUpdate.jsp"><input type="submit"
	class="btn btn-primary" value="MODIFICA"></a>

</html>