package it.generationitaly.spesa.repository.impl;

import java.util.List;
import it.generationitaly.spesa.entity.Prodotto;
import it.generationitaly.spesa.repository.ProdottoRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;

public class ProdottoRepositoryImpl extends JpaRepositoryImpl<Prodotto, Integer> implements ProdottoRepository{
	
	private static ProdottoRepositoryImpl instance = new ProdottoRepositoryImpl();
	
	private ProdottoRepositoryImpl () {}
	
	public static ProdottoRepositoryImpl getInstance () {
		return instance;
	}

	@Override
	public List<Prodotto> prodottoJoinFetchCategoria(int id) {
		List<Prodotto> prodotti = null;
		EntityTransaction tx = null;
		EntityManager em = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			prodotti = em.createQuery("SELECT p FROM Prodotto p JOIN FETCH p.categoria c WHERE c.id =: id", Prodotto.class).setParameter("id", id).getResultList();
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if(tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if(em != null)
				em.close();
		}
		return prodotti;
	}
}
