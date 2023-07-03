package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.Catena;
import it.generationitaly.spesa.repository.CatenaRepository;

public class CatenaRepositoryImpl extends JpaRepositoryImpl<Catena, Integer> implements CatenaRepository{
	
	private static CatenaRepositoryImpl instance = new CatenaRepositoryImpl();
	
	private CatenaRepositoryImpl () {}
	
	public static CatenaRepositoryImpl getInstance () {
		return instance;
	}
}
