package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table (name = "lista_spesa")
public class ListaSpesa {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Temporal(TemporalType.DATE)
	@Column (name = "data_lista_spesa", nullable = false)
	private Date data;
	
	@Column (name = "prezzo_totale", nullable = false)
	private double prezzoTotale;
	
	@OneToOne 
	@JoinColumn(name = "utente_id", unique = true, nullable = false)
	private Utente utente;
	
	@OneToMany (mappedBy = "listaSpesa")
	private List<ListaSpesaProdotto> listaSpesaProdotto = new ArrayList<ListaSpesaProdotto>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public double getPrezzoTotale() {
		return prezzoTotale;
	}

	public void setPrezzoTotale(double prezzoTotale) {
		this.prezzoTotale = prezzoTotale;
	}

	public Utente getUtente() {
		return utente;
	}

	public void setUtente(Utente utente) {
		this.utente = utente;
	}

	public List<ListaSpesaProdotto> getListaSpesaProdotto() {
		return listaSpesaProdotto;
	}

	public void setListaSpesaProdotto(List<ListaSpesaProdotto> listaSpesaProdotto) {
		this.listaSpesaProdotto = listaSpesaProdotto;
	}
	
	public List<ListaSpesa> calcolaPrezzoTotale (List<ListaSpesaProdotto> totProdotto){
		return null;
	}

	/*

	public double prezzoTotale() {
		double tot = 0;
		for (CatenaProdotto prodotto: listaSpesa) {
			tot += (prodotto.getPrezzo() * prodotto.getQuantita());
		}
		return tot;
	}
	
	public double confrontaPrezzi (List<Double> totale) {
		double min = totale.get(0);
		for (int i = 1; i < totale.size(); i++) {
			if(totale.get(i) < min) {
				min = totale.get(i);
			}
		}
		return min;
	}*/
}
