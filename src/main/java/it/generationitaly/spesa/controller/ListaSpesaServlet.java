package it.generationitaly.spesa.controller;

import java.io.IOException;
import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.repository.ProdottoRepository;
import it.generationitaly.spesa.repository.impl.ProdottoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/listaspesa")
public class ListaSpesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ProdottoRepository prodottoRepository = ProdottoRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("prodottoid") != null) {
			int prodottoid = Integer.parseInt(request.getParameter("prodottoId"));
			ListaSpesa listaSpesa = new ListaSpesa();
			listaSpesa.getListaSpesa().add(prodottoRepository.findById(prodottoid));
			double prezzoTot = listaSpesa.prezzoTotale();
			request.setAttribute("listaSpesa", listaSpesa);
			request.setAttribute("prezzoTot", prezzoTot);
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
