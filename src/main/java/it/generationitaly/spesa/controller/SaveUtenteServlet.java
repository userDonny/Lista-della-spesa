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


@WebServlet("/save-utente")
public class SaveUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UtenteRepository ur = UtenteRepositoryImpl.getInstance();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("usernameNuovo");
		Utente utente = ur.findByUsername(username);
		if(utente == null) {
		String password = request.getParameter("password");
		utente = new Utente();
		utente.setUsername(username);
		utente.setPassword(password);
		ur.save(utente);
		response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("errorUser", true);
			request.getRequestDispatcher("form-crea-account.jsp").forward(request, response);
		}
	}
}
