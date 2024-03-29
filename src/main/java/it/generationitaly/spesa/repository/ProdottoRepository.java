package it.generationitaly.spesa.repository;

import java.util.List;

import it.generationitaly.spesa.entity.Prodotto;

public interface ProdottoRepository extends JpaRepository<Prodotto, Integer> {

	List<Prodotto> prodottoJoinFetchCategoria(int id);
	
	Prodotto prodottoJoinCatenaProdottoJoinEtichetta(int id);
	
	List<Prodotto> searchByNomeOrSearchByMarca(String searchTerm);
	
	Prodotto searchByNome(String searchTerm);
}
