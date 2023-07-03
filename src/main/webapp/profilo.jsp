<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="utente" value="${requestScope.profilo}"></c:set>
<table>
<tbody>
<tr>
<th>NOME</th>
<td>"${utente.nome}"</td>
<th>COGNOME</th>
<td>"${utente.cognome}"</td>
<th>USERNAME</th>
<td>"${utente.username}"</td>
<th>EMAIL</th>
<td>"${utente.email}"</td>
<th>DATA DI NASCITA</th>
<td>"${utente.dataNascita}"</td>
<th>SESSO</th>
<td>"${utente.sesso}"</td>
</tr>
</tbody>
</table>
</body>
</html>