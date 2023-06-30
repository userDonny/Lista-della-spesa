<header class="p-3 mb-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 link-secondary">Overview</a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis">Inventory</a></li>
          <li><a href="#" class="nav-link px-2 link-body-emphasis">Customers</a></li>
          <li class="nav-item dropdown">
          <a class="nav-link px-2 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
          <c:forEach var="categoria" items="${requestScope.categorie}">
            <li><a class="dropdown-item" href="#">${categoria.nome}</a></li>
           </c:forEach>
          </ul>
        </li>
        </ul>  

        <form action="searchNav" method="get" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control" placeholder="Search..." aria-label="Search" value="${prodotto.nome}">
        </form>
        

        <div class="dropdown text-end">
          <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  			<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			</svg>
          </a>
          <ul class="dropdown-menu text-small" style="">
            <li><a class="dropdown-item" href="#">Profilo</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><form method="post" action="logout"><input class="dropdown-item" value="Logout" type="submit" ></form></li>
          </ul>
        </div>
      </div>
    </div>
  </header>