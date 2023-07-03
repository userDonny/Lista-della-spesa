package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.repository.ListaSpesaRepository;

public class ListaSpesaRepositoryImpl extends JpaRepositoryImpl<ListaSpesa, Integer> implements ListaSpesaRepository{
	
private static ListaSpesaRepositoryImpl instance = new ListaSpesaRepositoryImpl();
	
	private ListaSpesaRepositoryImpl () {}
	
	public static ListaSpesaRepositoryImpl getInstance () {
		return instance;
	}
}
