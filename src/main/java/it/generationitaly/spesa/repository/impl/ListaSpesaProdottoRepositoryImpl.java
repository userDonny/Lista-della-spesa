package it.generationitaly.spesa.repository.impl;

import it.generationitaly.spesa.entity.ListaSpesaProdotto;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.ListaSpesaProdottoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;

public class ListaSpesaProdottoRepositoryImpl extends JpaRepositoryImpl<ListaSpesaProdotto, Integer> implements ListaSpesaProdottoRepository{
	
	private static ListaSpesaProdottoRepositoryImpl instance = new ListaSpesaProdottoRepositoryImpl();
	
	private ListaSpesaProdottoRepositoryImpl () {}
	
	public static ListaSpesaProdottoRepositoryImpl getInstance () {
		return instance;
	}
	
	@Override
	public ListaSpesaProdotto findByProdotto(Prodotto prodotto, int id) {
		EntityManager em = null;
		EntityTransaction tx = null;
		ListaSpesaProdotto listaSpesaProdotto = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			listaSpesaProdotto = em.createQuery("SELECT ls FROM ListaSpesaProdotto ls JOIN FETCH ls.listaSpesa l WHERE ls.prodotto =: prodotto AND l.id =: id", ListaSpesaProdotto.class).setParameter("prodotto", prodotto).setParameter("id", id).getSingleResult();
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return listaSpesaProdotto;
	}
}


