package it.generationitaly.spesa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name = "lista_spesa_prodotto")
public class ListaSpesaProdotto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "prezzo", nullable = false)
	private double prezzo;
	
	@Column(name = "quantita", nullable = false)
	private int quantita;
	
	@Column(name = "prezzo_totale", nullable = false)
	private double prezzoTotale;
	
	@ManyToOne
	@JoinColumn(name = "lista_spesa_id", nullable = false)
	private ListaSpesa listaSpesa;

	@ManyToOne
	@JoinColumn(name = "prodotto_id", nullable = false)
	private Prodotto prodotto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public double getPrezzoTotale() {
		return prezzoTotale;
	}

	public void setPrezzoTotale() {
		this.prezzoTotale = prezzo * quantita;
	}

	public ListaSpesa getListaSpesa() {
		return listaSpesa;
	}

	public void setListaSpesa(ListaSpesa listaSpesa) {
		this.listaSpesa = listaSpesa;
	}

	public Prodotto getProdotto() {
		return prodotto;
	}

	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}

	@Override
	public String toString() {
		return "ListaSpesaProdotto [prezzo=" + prezzo + ", quantita=" + quantita + ", prezzoTotale=" + prezzoTotale
				+ "]";
	}
}
