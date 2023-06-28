<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri ="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel = "stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>
	<div class = "container-fluid">
		<div class = "row">
			<div class = "mt-2">
				<a href="login.jsp" class ="btn btn-danger"> INDIETRO </a>
			</div>
			<div class = "col-6 mt-3 mx-auto">
				<form method = "post" action= "save-utente">
					<div class="mb-3">
						  <label for="usernameNuovo" class="form-label">USERNAME</label>
						  <input type="text" class="form-control" id="usernameNuovo" name = "usernameNuovo" required>
					</div>
					<div class="mb-3">
						  <label for="password" class="form-label">PASSWORD</label>
						  <input type = "password" class="form-control" id="password" name = "password" required>
					</div>
					<button type = "submit" class = "btn btn-success"> CREA ACCOUNT</button>
				</form>
				<br>
				<c:if test="${errorUser != null}">
			 	<div class="alert alert-danger" role="alert">
			 	 Username esistente. Scegline un altro!
				</div>
			</c:if>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>