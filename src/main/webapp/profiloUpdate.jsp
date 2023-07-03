<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="form-floating">
		<div class="row">
			<div class="col-sm-2 col-md-4 col-lg-4">
				<form action="profiloUpdate" method="post">
					<label for="nome">NOME</label> <input type="text" id="nome"
						class="form-control" name="nome" placeholder="${profilo.nome}"
						readonly="readonly"> <label for="cognome">COGNOME</label>
					<input type="text" id="cognome" name="cognome"
						placeholder="${profilo.cognome}" readonly="readonly"
						class="form-control"> <label for="dataNascita">DATA
						NASCITA</label> <input type="date" id="dataNascita" name="dataNascita"
						value="${profilo.dataNascita}" readonly="readonly"
						class="form-control"> <label for="sesso">SESSO</label> <input
						type="text" id="sesso" name="sesso" placeholder="${profilo.sesso}"
						readonly="readonly" class="form-control"> <label
						for="email">E-MAIL</label> <input type="email" id="email"
						name="email" value="${profilo.email }" class="form-control">
					<label for="username">USERNAME</label> <input type="text"
						id="username" name="username" value="${profilo.username}"
						class="form-control"> <label for="password">PASSWORD</label>
					<input type="password" id="password" name="password"
						value="${profilo.password}" class="form-control">
					
					<button type="button">SALVA MODIFICHE</button>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>
