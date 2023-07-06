package it.generationitaly.spesa.controller;

import java.io.IOException;

import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.repository.ListaSpesaProdottoRepository;
import it.generationitaly.spesa.repository.ListaSpesaRepository;
import it.generationitaly.spesa.repository.impl.ListaSpesaProdottoRepositoryImpl;
import it.generationitaly.spesa.repository.impl.ListaSpesaRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/delete-lista-spesa-prodotto")
public class DeleteListaSpesaProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ListaSpesaProdottoRepository listaSpesaProdottoRepository = ListaSpesaProdottoRepositoryImpl.getInstance();
	private ListaSpesaRepository listaSpesaRepository = ListaSpesaRepositoryImpl.getInstance();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idListaSpesaProdotto = Integer.parseInt(request.getParameter("idListaSpesaProdotto"));
		listaSpesaProdottoRepository.deleteById(idListaSpesaProdotto);
		int idListaSpesa = Integer.parseInt(request.getParameter("idListaSpesa"));
		ListaSpesa l = listaSpesaRepository.findById(idListaSpesa);
		if (l.getListaSpesaProdotto().isEmpty()) {
			listaSpesaRepository.deleteById(idListaSpesa);
			response.sendRedirect("lista-spesa.jsp");
		}
		response.sendRedirect("totali");
	}
}
