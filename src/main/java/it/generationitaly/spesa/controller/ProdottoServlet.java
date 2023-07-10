package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.ProdottoRepository;
import it.generationitaly.spesa.repository.impl.ProdottoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/prodotto")
public class ProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProdottoRepository prodottoRepository = ProdottoRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if ((request.getParameter("idProdotto1") != null) && (request.getParameter("searchTerm") != null)) {
			int idProdotto1 = Integer.parseInt(request.getParameter("idProdotto1"));
			Prodotto prodotto = prodottoRepository.prodottoJoinCatenaProdottoJoinEtichetta(idProdotto1);
			String searchTerm = request.getParameter("searchTerm");
			Prodotto prodotto2 = prodottoRepository.searchByNome(searchTerm);
			prodotto2 = prodottoRepository.prodottoJoinCatenaProdottoJoinEtichetta(prodotto2.getId());
			List<Prodotto> prodotti = new ArrayList<Prodotto>();
			prodotti.add(prodotto);
			prodotti.add(prodotto2);
			if ((prodotto2.getCategoria().getId() != prodotto.getCategoria().getId())) {
				request.setAttribute("errorConfronto", 1);
				request.setAttribute("prodotto", prodotto);
				request.getRequestDispatcher("infoProdotto.jsp").forward(request, response);
				return;
				
			} else {
				request.setAttribute("prodotti", prodotti);
				request.getRequestDispatcher("infoProdotto.jsp").forward(request, response);
				return;
			}
		} else if (request.getParameter("idProdotto1") != null) {
			int idProdotto1 = Integer.parseInt(request.getParameter("idProdotto1"));
			Prodotto prodotto = prodottoRepository.prodottoJoinCatenaProdottoJoinEtichetta(idProdotto1);
			request.setAttribute("prodotto", prodotto);
			request.getRequestDispatcher("infoProdotto.jsp").forward(request, response);
			return;
		} else {
			String searchTerm = request.getParameter("searchTerm");
			Prodotto prodotto2 = prodottoRepository.searchByNome(searchTerm);
			prodotto2 = prodottoRepository.prodottoJoinCatenaProdottoJoinEtichetta(prodotto2.getId());
			request.setAttribute("prodotto", prodotto2);
			request.getRequestDispatcher("infoProdotto.jsp").forward(request, response);
		}
	}
}
