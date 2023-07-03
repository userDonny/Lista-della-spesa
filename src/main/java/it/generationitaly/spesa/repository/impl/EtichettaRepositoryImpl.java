package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.Etichetta;
import it.generationitaly.spesa.repository.EtichettaRepository;

public class EtichettaRepositoryImpl extends JpaRepositoryImpl<Etichetta, Integer> implements EtichettaRepository{
	
	private static EtichettaRepositoryImpl instance = new EtichettaRepositoryImpl();
	
	private EtichettaRepositoryImpl () {}
	
	public static EtichettaRepositoryImpl getInstance () {
		return instance;
	}
}
