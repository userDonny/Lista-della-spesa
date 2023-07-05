package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
	
	@OneToOne 
	@JoinColumn(name = "utente_id", unique = true ,nullable = false)
	private Utente utente;
	
	@OneToMany (mappedBy = "listaSpesa",  fetch = FetchType.EAGER)
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

	public double prezziTotali (int idCatena, int id, double prezzo){
		if(idCatena == id) {
			return prezzo;
		}
		return 0;
	}

	@Override
	public String toString() {
		return "ListaSpesa [id=" + id + ", data=" + data + ", utente=" + utente  + "]";
	}
}
