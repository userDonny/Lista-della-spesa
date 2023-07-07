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
        <div class="col-8 mx-auto">
          <img src="${catena.linkFoto}" height= "300" width = "500">
          		 <p class = "mt-2" style = "font-weight: 4">${catena.descrizione}</p>
          		 <h5 class = "mt-2" >Visita il sito web: <a href="${catena.linkSito}">${catena.denominazione}</a></h5>       	
          	</a>
           </div>
        </div>          
     </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>