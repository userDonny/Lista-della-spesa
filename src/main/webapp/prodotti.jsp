<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<c:forEach var="prodotto" items="${prodotti}">
				<tr>
					<td>${prodotto.nome}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>