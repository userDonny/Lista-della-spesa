package it.generationitaly.spesa.controller;

import java.io.IOException;

import it.generationitaly.spesa.entity.Utente;
import it.generationitaly.spesa.repository.UtenteRepository;
import it.generationitaly.spesa.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/profiloUpdate")
public class ProfiloUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteRepository ur = UtenteRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = (Integer) request.getSession().getAttribute("idUtente");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
	
		Utente utente = ur.findById(id);

		utente.setUsername(username);
		utente.setPassword(password);
		utente.setEmail(email);

		ur.update(utente);
		response.sendRedirect("profilo");
	}

}
