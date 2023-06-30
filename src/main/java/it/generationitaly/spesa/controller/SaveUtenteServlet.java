package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		String email = request.getParameter("email");
		Utente utente = ur.findByUsernameOrEmail(username, email);
		if(utente == null) {
		String password = request.getParameter("password");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		char sesso = request.getParameter("sesso").charAt(0);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    	Date data = new Date();
		try {
			data = formatter.parse(request.getParameter("data"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		utente = new Utente();
		utente.setUsername(username);
		utente.setPassword(password);
		utente.setCognome(cognome);
		utente.setNome(nome);
		utente.setDataNascita(data);
		utente.setSesso(sesso);
		utente.setEmail(email);
		ur.save(utente);
		response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("errorUser", true);
			request.getRequestDispatcher("form-crea-account.jsp").forward(request, response);
		}
	}
}
