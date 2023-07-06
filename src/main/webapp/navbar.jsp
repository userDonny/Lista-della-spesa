<header class="p-3 mb-3 border-bottom" style = "background-color: rgb(235, 196, 113)">
    <div class="container-fluid">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <a href ="categoria"> <img src="immagini/navbar.png" width="80" height="80"> </a> 
          <li class="nav-item dropdown">
          <a class="nav-link px-2 dropdown-toggle link-body-emphasis ms-4 mt-3" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categorie
          </a>
          <ul class="dropdown-menu">
          <c:forEach var="categoria" items = "${sessionScope.categorie}">
            <li><a class="dropdown-item" href="categoria?categoriaId=${categoria.id}">${categoria.nome}</a></li>
           </c:forEach>
          </ul>
        </li>
        </ul>  
        <form method="get" action="search" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control" placeholder="Cerca prodotto" aria-label="Search" name="q">
        </form>
        <a href="totali" class="d-block link-body-emphasis text-decoration-none me-2">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
  			<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
			</svg>
		</a>
        <div class="dropdown text-end">
          <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  			<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			</svg>
          </a>
          <ul class="dropdown-menu text-small" style="">
            <li> <a class="dropdown-item" href="profilo">Profilo</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><form method="post" action="logout"><input class="dropdown-item" value="Logout" type="submit" ></form></li>
          </ul>
        </div>
      </div>
    </div>
  </header>