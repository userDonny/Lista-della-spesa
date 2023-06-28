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


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UtenteRepository utenteRepository = UtenteRepositoryImpl.getInstance();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Utente utente = utenteRepository.findByUsername(username);
		if (utente != null && password.equals(utente.getPassword())) {
				request.getSession().setAttribute("idUtente", utente.getId());
				request.getSession().setAttribute("username", utente.getUsername());
				response.sendRedirect("categoria");
		} else {
			request.setAttribute("error", true);
			request.getRequestDispatcher("login.jsp").forward(request, response);;
		}
	}
}
