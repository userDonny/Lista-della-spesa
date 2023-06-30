package it.generationitaly.spesa.controller;

import java.io.IOException;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			Prodotto prodotto = prodottoRepository.prodottoJoinCatenaProdottoJoinEtichetta(id);
			request.setAttribute("prodotto", prodotto);
			request.getRequestDispatcher("infoProdotto.jsp").forward(request, response);
		}
	}
}
