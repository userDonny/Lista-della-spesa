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
@Table(name = "catena_prodotto")
public class CatenaProdotto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "prezzo", nullable = false)
	private double prezzo;
	
	@Column(name = "quantita", nullable = false)
	private int quantita;
	
	@ManyToOne
	@JoinColumn(name = "catena_id", nullable = false, unique = true)
	private Catena catena;
	
	@ManyToOne
	@JoinColumn(name = "prodotto_id", nullable = false, unique = true)
	private Prodotto prodotto;
	
	private transient double prezzoTotaleProdotto;
	
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
		this.prezzo = prezzo * quantita;
	}

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public Catena getCatena() {
		return catena;
	}

	public void setCatena(Catena catena) {
		this.catena = catena;
	}

	public Prodotto getProdotto() {
		return prodotto;
	}

	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}
	
	public double getPrezzoTotaleProdotto() {
		return prezzoTotaleProdotto;
	}

	public void setPrezzoTotaleProdotto() {
		this.prezzoTotaleProdotto = prezzo * quantita;
	}

	@Override
	public String toString() {
		return "CatenaProdotto [id=" + id + ", prezzo=" + prezzo + ", quantita=" + quantita + ", catena=" + catena
				+ ", prodotto=" + prodotto + ", prezzoTotaleProdotto=" + prezzoTotaleProdotto + "]";
	}
}
