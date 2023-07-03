package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.repository.ListaSpesaProdottoRepository;
import it.generationitaly.spesa.repository.impl.ListaSpesaProdottoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/lista-spesa-prodotto")
public class ListaSpesaProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ListaSpesaProdottoRepository lspr = ListaSpesaProdottoRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*List<Prodotto> prodottiSpesa = prodottoRepository.findByListaSpesa();
		request.setAttribute("prodottiSpesa", prodottiSpesa);
		request.getRequestDispatcher("listaSpesa.jsp").forward(request, response);*/
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantita = Integer.parseInt(request.getParameter("quantita"));
		int id = Integer.parseInt(request.getParameter("id"));
		List<ListaSpesaProdotto> listaSpesaProdotto = new ArrayList<ListaSpesaProdotto>();
		for (int i = 0; i < 4; i++) {
			double prezzo = Double.parseDouble(request.getParameter("prezzo" + i));
			ListaSpesaProdotto aggiunta = new ListaSpesaProdotto();
			aggiunta.setPrezzo(prezzo);
			aggiunta.setQuantita(quantita);
			aggiunta.setId(id);
			aggiunta.setPrezzoTotale();
			listaSpesaProdotto.add(aggiunta);
			lspr.save(aggiunta);
			System.out.println(aggiunta);
		}
	}
}
