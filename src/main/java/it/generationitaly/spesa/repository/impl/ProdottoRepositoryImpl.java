package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.ProdottoRepository;

public class ProdottoRepositoryImpl extends JpaRepositoryImpl<Prodotto, Integer> implements ProdottoRepository{
	
	private static ProdottoRepositoryImpl instance = new ProdottoRepositoryImpl();
	
	private ProdottoRepositoryImpl () {}
	
	public static ProdottoRepositoryImpl getInstance () {
		return instance;
	}
}
