package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.repository.ListaSpesaProdottoRepository;

public class ListaSpesaProdottoRepositoryImpl extends JpaRepositoryImpl<ListaSpesaProdotto, Integer> implements ListaSpesaProdottoRepository{
	
	private static ListaSpesaProdottoRepositoryImpl instance = new ListaSpesaProdottoRepositoryImpl();
	
	private ListaSpesaProdottoRepositoryImpl () {}
	
	public static ListaSpesaProdottoRepositoryImpl getInstance () {
		return instance;
	}
}


