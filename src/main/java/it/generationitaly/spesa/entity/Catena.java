package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.OneToMany;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "catena")
public class Catena {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "denominazione", length = 45, unique = true, nullable = false)
	private String denominazione;
	
	@OneToMany(mappedBy = "catena") //, fetch = FetchType.EAGER)
	private List<Prodotto> prodotti = new ArrayList<Prodotto>();

	
	
	
	public Catena() {
		super();
	}

	public Catena(int id, String denominazione, List<Prodotto> prodotti) {
		super();
		this.id = id;
		this.denominazione = denominazione;
		this.prodotti = prodotti;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDenominazione() {
		return denominazione;
	}

	public void setDenominazione(String denominazione) {
		this.denominazione = denominazione;
	}

	public List<Prodotto> getProdotti() {
		return prodotti;
	}

	public void setProdotti(List<Prodotto> prodotti) {
		this.prodotti = prodotti;
	}

	@Override
	public String toString() {
		return "Catena [id=" + id + ", denominazione=" + denominazione + "]";
	}
	
	
	
}
