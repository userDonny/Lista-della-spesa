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

@WebServlet("/profilo")
public class ProfiloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteRepository ur = UtenteRepositoryImpl.getInstance();


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = (Integer) request.getSession().getAttribute("idUtente");
		Utente utente = ur.findById(id);

		request.setAttribute("profilo", utente);
//		request.getRequestDispatcher("profilo.jsp", "profiloUpdate.jsp").forward(request, response);
		request.getRequestDispatcher("profiloUpdate.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}

}
