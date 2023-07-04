package it.generationitaly.spesa.repository;

import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.entity.Utente;

public interface ListaSpesaRepository extends JpaRepository<ListaSpesa,Integer>{
	
	 ListaSpesa findByUtente(Utente utente);
}
