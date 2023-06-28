package it.generationitaly.spesa.controller;

import java.io.IOException;
import java.util.List;
import it.generationitaly.spesa.entity.Categoria;
import it.generationitaly.spesa.repository.CategoriaRepository;
import it.generationitaly.spesa.repository.impl.CategoriaRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/categoria")
public class CategoriaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CategoriaRepository categoriaRepository = CategoriaRepositoryImpl.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Categoria> categorie = categoriaRepository.findAll();
		request.setAttribute("categorie", categorie);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
