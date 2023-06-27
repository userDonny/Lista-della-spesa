package it.generationitaly.spesa.repository;

import java.util.List;

public interface JpaRepository<T,K> {
	
	void save (T entity);
	
	void update(T entity);
	
	void delete(T entity);
	
	void deleteById(K id);
	
	List<T> findAll();
	
	T findById (K id);
	
	long count();
}
