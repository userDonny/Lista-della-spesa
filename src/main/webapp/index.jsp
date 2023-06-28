<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
				<th>CATEGORIE</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="categoria" items="${requestScope.categorie}">
				<tr>
					<td>${categoria.nome}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>