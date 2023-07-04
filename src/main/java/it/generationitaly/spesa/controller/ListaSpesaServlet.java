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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * List<Prodotto> prodottiSpesa = prodottoRepository.findByListaSpesa();
		 * request.setAttribute("prodottiSpesa", prodottiSpesa);
		 * request.getRequestDispatcher("listaSpesa.jsp").forward(request, response);
		 */
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int quantita = Integer.parseInt(request.getParameter("quantita"));
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
		} else {
			Prodotto prodotto = prodottoRepository.findById(id);
			ListaSpesaProdotto listaSpesaProdotto = new ListaSpesaProdotto();
			listaSpesaProdotto.setProdotto(prodotto);
			listaSpesaProdotto.setListaSpesa(listaSpesa);
			listaSpesaProdotto.setQuantita(quantita);		
			listaSpesa.getListaSpesaProdotto().add(listaSpesaProdotto);
			listaSpesaProdottoRepository.save(listaSpesaProdotto);
		}
	}
	
	/*private void leggiParameters(double prezzo, CatenaProdotto aggiunta, HttpServletRequest request, int quantita, 
			List<CatenaProdotto> catenaProdotto, Prodotto prodotto, int i) {
		prezzo = Double.parseDouble(request.getParameter("prezzo" + i));
		aggiunta = new CatenaProdotto();
		aggiunta.setPrezzo(prezzo);
		aggiunta.setQuantita(quantita);
		aggiunta.setPrezzoTotaleProdotto();
		catenaProdotto = new ArrayList<CatenaProdotto>();
		catenaProdotto.add(aggiunta);
		prodotto.setCatenaProdotto(catenaProdotto);
	}*/
}
