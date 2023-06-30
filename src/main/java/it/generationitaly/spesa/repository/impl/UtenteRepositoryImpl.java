package it.generationitaly.spesa.repository.impl;

import java.util.List;
import it.generationitaly.spesa.entity.Utente;
import it.generationitaly.spesa.repository.UtenteRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;

public class UtenteRepositoryImpl extends JpaRepositoryImpl<Utente, Integer> implements UtenteRepository{
	
	private static UtenteRepositoryImpl instance = new UtenteRepositoryImpl();
	
	private UtenteRepositoryImpl () {}
	
	public static UtenteRepositoryImpl getInstance () {
		return instance;
	}
	
	@Override
	public void deleteByUsername(String username) {
		EntityTransaction tx = null;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			Utente utente = findByUsername(username);
			em.remove(em.contains(utente)? utente: em.merge(utente));
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
	}

	@Override
	public Utente findByUsername(String username) {
		Utente utente = null;
		EntityTransaction tx = null;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			List<Utente> utenti = em.createQuery("SELECT u FROM Utente u WHERE u.username =: username", clazz).setParameter("username", username).getResultList();
			if(!utenti.isEmpty()) {
				utente = utenti.get(0);
			}
			tx.commit();	
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return utente;
	}
	
	@Override
	public Utente findByUsernameOrEmail(String username, String email) {
		Utente utente = null;
		EntityTransaction tx = null;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			List<Utente> utenti = em.createQuery("SELECT u FROM Utente u WHERE u.username =: username OR u.email =: email", clazz).setParameter("username", username).setParameter("email", email).getResultList();
			if(!utenti.isEmpty()) {
				utente = utenti.get(0);
			}
			tx.commit();	
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return utente;
	}
}
