package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.spesa.entity.Catena;
import it.generationitaly.spesa.entity.CatenaPrezzo;
import it.generationitaly.spesa.entity.CatenaProdotto;
import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.entity.Utente;
import it.generationitaly.spesa.repository.ListaSpesaRepository;
import it.generationitaly.spesa.repository.UtenteRepository;
import it.generationitaly.spesa.repository.impl.ListaSpesaRepositoryImpl;
import it.generationitaly.spesa.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/totali")
public class TotaleListaSpesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ListaSpesaRepository listaSpesaRepository = ListaSpesaRepositoryImpl.getInstance();
	private UtenteRepository utenteRepository = UtenteRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idUtente = (int) request.getSession().getAttribute("idUtente");
		Utente utente = utenteRepository.findById(idUtente);
		ListaSpesa listaSpesa = listaSpesaRepository.findByUtente(utente);
		List<CatenaPrezzo> catenaPrezzoList = new ArrayList<CatenaPrezzo>();
		for (ListaSpesaProdotto listaSpesaProdotto : listaSpesa.getListaSpesaProdotto()) {
			Prodotto prodotto = listaSpesaProdotto.getProdotto();
			for (CatenaProdotto catenaProdotto : prodotto.getCatenaProdotto()) {
				Catena catena = catenaProdotto.getCatena();
				double prezzo = catenaProdotto.getPrezzo();
				int quantita = listaSpesaProdotto.getQuantita();
				double prezzoTotale = prezzo * quantita;
				CatenaPrezzo catenaPrezzo = getOrCreateCatenaPrezzo(catenaPrezzoList, catena);
				catenaPrezzo.setPrezzoTotale(catenaPrezzo.getPrezzoTotale() + prezzoTotale);
			}
		}
		CatenaPrezzo catenaPrezzoMin = cercaMin(catenaPrezzoList);
		request.setAttribute("catenaPrezzoMin", catenaPrezzoMin);
		request.setAttribute("catenaPrezzoList", catenaPrezzoList);
		request.setAttribute("listaSpesa", listaSpesa);
		request.getRequestDispatcher("lista-spesa.jsp").forward(request, response);
	}

	private CatenaPrezzo getOrCreateCatenaPrezzo(List<CatenaPrezzo> catenaPrezzoList, Catena catena) {
		if (!catenaPrezzoList.isEmpty()) {
			for (CatenaPrezzo catenaPrezzo : catenaPrezzoList) {
				if (catenaPrezzo.getCatena().getId() == catena.getId()) {
					return catenaPrezzo;
				}
			}
		}
		CatenaPrezzo catenaPrezzo = new CatenaPrezzo();
		catenaPrezzo.setCatena(catena);
		catenaPrezzoList.add(catenaPrezzo);
		return catenaPrezzo;
	}

	private CatenaPrezzo cercaMin(List<CatenaPrezzo> catenaPrezzoList) {
		CatenaPrezzo catenaPrezzoMin = catenaPrezzoList.get(0);
		for (int i = 1; i < catenaPrezzoList.size(); i++) {
			if (catenaPrezzoList.get(i).getPrezzoTotale() < catenaPrezzoMin.getPrezzoTotale()) {
				catenaPrezzoMin = catenaPrezzoList.get(i);
			}
		}
		return catenaPrezzoMin;
	}
}
