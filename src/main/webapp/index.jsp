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
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="categoria" items="${requestScope.categorie}">
				<tr>
					<td>${categoria.nome}</td>
					<td><form method="get" action="categoria">
						<input type = "hidden" name = "categoriaId" value = "${categoria.id}">
						<button type="submit"> PRODOTTI</button>
					</form> </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>