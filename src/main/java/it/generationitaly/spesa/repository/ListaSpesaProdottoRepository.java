package it.generationitaly.spesa.repository;

import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.entity.Prodotto;

public interface ListaSpesaProdottoRepository extends JpaRepository<ListaSpesaProdotto,Integer>{

	ListaSpesaProdotto findByProdotto(Prodotto prodotto, int id);
	
}
