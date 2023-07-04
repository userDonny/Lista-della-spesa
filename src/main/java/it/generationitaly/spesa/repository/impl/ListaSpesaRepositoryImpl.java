package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.ListaSpesa;
import it.generationitaly.spesa.entity.Utente;
import it.generationitaly.spesa.repository.ListaSpesaRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;

public class ListaSpesaRepositoryImpl extends JpaRepositoryImpl<ListaSpesa, Integer> implements ListaSpesaRepository{
	
private static ListaSpesaRepositoryImpl instance = new ListaSpesaRepositoryImpl();
	
	private ListaSpesaRepositoryImpl () {}
	
	public static ListaSpesaRepositoryImpl getInstance () {
		return instance;
	}
	
	@Override
	public ListaSpesa findByUtente(Utente utente) {
		EntityManager em = null;
		EntityTransaction tx = null;
		ListaSpesa listaSpesa = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			listaSpesa = em.createQuery("SELECT l FROM ListaSpesa l WHERE l.utente =: utente", ListaSpesa.class).setParameter("utente", utente).getSingleResult();
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return listaSpesa;
	}
}
