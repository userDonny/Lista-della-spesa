package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.List;
import it.generationitaly.spesa.entity.Categoria;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.CategoriaRepository;
import it.generationitaly.spesa.repository.ProdottoRepository;
import it.generationitaly.spesa.repository.impl.CategoriaRepositoryImpl;
import it.generationitaly.spesa.repository.impl.ProdottoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/categoria")
public class CategoriaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CategoriaRepository categoriaRepository = CategoriaRepositoryImpl.getInstance();
	private ProdottoRepository prodottoRepository = ProdottoRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("categoriaId") != null) {
			int id = Integer.parseInt(request.getParameter("categoriaId"));
			List<Prodotto> prodotti = prodottoRepository.prodottoJoinFetchCategoria(id);
			request.setAttribute("prodotti", prodotti);
			request.getRequestDispatcher("prodotti.jsp").forward(request, response);
			return;
		}
		List<Categoria> categorie = categoriaRepository.findAll();
		List<Prodotto> allProdotti = prodottoRepository.findAll();
		request.setAttribute("allProdotti", allProdotti);
		request.setAttribute("categorie", categorie);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
