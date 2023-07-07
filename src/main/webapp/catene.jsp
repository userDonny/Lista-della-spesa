<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>   
</head>
  <body>
  <%@ include file = "navbar.jsp" %>
    <div class="container">
      <div class="row">
      <c:forEach var="catena" items="${catene}">
        <div class="col-3">
          <a class="card rounded btn border-3" href="catene?catenaId1=${catena.id}">
          <img class = "mx-auto" src="${catena.linkFoto}" height= "225" width = "225">
          	<p>${catena.denominazione}</p>
          		 <p style = "font-weight: 4">${catena.descrizione}</p>       	
          	</a>
           </div>
        </c:forEach>
        </div>          
     </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>