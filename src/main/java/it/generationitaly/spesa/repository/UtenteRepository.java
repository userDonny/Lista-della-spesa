package it.generationitaly.spesa.repository;

import it.generationitaly.spesa.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente,Integer>{
	
	Utente findByUsername(String username);
	
	void deleteByUsername(String username);
	
	Utente findByUsernameOrEmail(String username, String email);
}
