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
<body>
	<table>
		<thead>
			<tr>
				<th>NOME</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="prodotto" items="${requestScope.prodotti}">
				<tr>
					<td>${prodotto.nome}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>