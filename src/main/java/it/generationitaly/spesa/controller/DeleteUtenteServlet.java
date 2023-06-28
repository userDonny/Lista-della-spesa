package it.generationitaly.spesa.controller;

import java.io.IOException;

import it.generationitaly.spesa.repository.UtenteRepository;
import it.generationitaly.spesa.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/delete-utente")
public class DeleteUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UtenteRepository ur= new UtenteRepositoryImpl();
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = (int) request.getSession().getAttribute("idUtente");
		ur.deleteById(id);
		response.sendRedirect("login.jsp");
	}
}
