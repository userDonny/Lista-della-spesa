package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.List;
import it.generationitaly.spesa.entity.Catena;
import it.generationitaly.spesa.repository.CatenaRepository;
import it.generationitaly.spesa.repository.impl.CatenaRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/catene")
public class CatenaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CatenaRepository catenaRepository = CatenaRepositoryImpl.getInstance();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("catenaId") != null) {
			int id = Integer.parseInt(request.getParameter("catenaId"));
			Catena catena = catenaRepository.findById(id);
			request.setAttribute("catena", catena);
			request.getRequestDispatcher("catene.jsp").forward(request, response);
			return;
		}
		List<Catena> catene = catenaRepository.findAll();
		request.setAttribute("catene", catene);
		request.getRequestDispatcher("all-catene.jsp").forward(request, response);
	}
}

