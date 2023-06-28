package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.Categoria;
import it.generationitaly.spesa.repository.CategoriaRepository;

public class CategoriaRepositoryImpl extends JpaRepositoryImpl<Categoria, Integer> implements CategoriaRepository{
	
	private static CategoriaRepositoryImpl instance = new CategoriaRepositoryImpl();
	
	private CategoriaRepositoryImpl () {}
	
	public static CategoriaRepositoryImpl getInstance () {
		return instance;
	}
}
