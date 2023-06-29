package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.Prezzo;
import it.generationitaly.spesa.repository.PrezzoRepository;

public class PrezzoRepositoryImpl extends JpaRepositoryImpl<Prezzo, Integer> implements PrezzoRepository{
	
	private static PrezzoRepositoryImpl instance = new PrezzoRepositoryImpl();
	
	private PrezzoRepositoryImpl () {}
	
	public static PrezzoRepositoryImpl getInstance () {
		return instance;
	}
}
