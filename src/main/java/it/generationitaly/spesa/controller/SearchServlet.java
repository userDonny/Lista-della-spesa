package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.List;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.ProdottoRepository;
import it.generationitaly.spesa.repository.impl.ProdottoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProdottoRepository prodottoRepository = ProdottoRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String q = request.getParameter("q");
		List<Prodotto> prodotti = prodottoRepository.searchByNomeOrSearchByMarca(q);
		request.setAttribute("prodotti", prodotti);
		request.getRequestDispatcher("prodotti.jsp").forward(request, response);
	}
}
