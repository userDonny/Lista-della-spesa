package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.Date;
import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.entity.Utente;
import it.generationitaly.spesa.repository.ListaSpesaProdottoRepository;
import it.generationitaly.spesa.repository.ListaSpesaRepository;
import it.generationitaly.spesa.repository.ProdottoRepository;
import it.generationitaly.spesa.repository.UtenteRepository;
import it.generationitaly.spesa.repository.impl.ListaSpesaProdottoRepositoryImpl;
import it.generationitaly.spesa.repository.impl.ListaSpesaRepositoryImpl;
import it.generationitaly.spesa.repository.impl.ProdottoRepositoryImpl;
import it.generationitaly.spesa.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/lista-spesa")
public class ListaSpesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private ProdottoRepository prodottoRepository = ProdottoRepositoryImpl.getInstance();
	private ListaSpesaRepository listaSpesaRepository = ListaSpesaRepositoryImpl.getInstance();
	private UtenteRepository utenteRepository = UtenteRepositoryImpl.getInstance();
	private ListaSpesaProdottoRepository listaSpesaProdottoRepository = ListaSpesaProdottoRepositoryImpl.getInstance();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int quantita = Integer.parseInt(request.getParameter("quantita"));
		if (quantita <= 0) {
			response.sendRedirect("prodotto?errorQuantita=" + true);
			return;
		}
		int id = Integer.parseInt(request.getParameter("id"));
		int idUtente = (int) request.getSession().getAttribute("idUtente");
		Utente utente = utenteRepository.findById(idUtente);
		ListaSpesa listaSpesa = listaSpesaRepository.findByUtente(utente); 
		if (listaSpesa == null) {
			listaSpesa = new ListaSpesa();
			listaSpesa.setData(new Date());
			listaSpesa.setUtente(utente);
			Prodotto prodotto = prodottoRepository.findById(id);
			ListaSpesaProdotto listaSpesaProdotto = new ListaSpesaProdotto();
			listaSpesaProdotto.setProdotto(prodotto);
			listaSpesaProdotto.setListaSpesa(listaSpesa);
			listaSpesaProdotto.setQuantita(quantita);		
			listaSpesa.getListaSpesaProdotto().add(listaSpesaProdotto);
			listaSpesaRepository.save(listaSpesa);
			listaSpesaProdottoRepository.save(listaSpesaProdotto);
		} else {
			Prodotto prodotto = prodottoRepository.findById(id);
			if(listaSpesaProdottoRepository.findByProdotto(prodotto, listaSpesa.getId()) != null) {
				ListaSpesaProdotto lista = listaSpesaProdottoRepository.findByProdotto(prodotto, listaSpesa.getId());
				lista.setQuantita(quantita);
				listaSpesaProdottoRepository.update(lista);
			} else {
			ListaSpesaProdotto listaSpesaProdotto = new ListaSpesaProdotto();
			listaSpesaProdotto.setProdotto(prodotto);
			listaSpesaProdotto.setListaSpesa(listaSpesa);
			listaSpesaProdotto.setQuantita(quantita);		
			listaSpesa.getListaSpesaProdotto().add(listaSpesaProdotto);
			listaSpesaProdottoRepository.save(listaSpesaProdotto);
			}
		}
		//request.setAttribute("listaSpesa", listaSpesa);
		//request.getRequestDispatcher("lista-spesa.jsp").forward(request, response);
		response.sendRedirect("totali");
	}
}
