package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "catena")
public class Catena {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "denominazione", length = 45, unique = true, nullable = false)
	private String denominazione;

	@Column(name = "link_foto", length = 4000)
	private String linkFoto;

	@Column(name = "descrizione", length = 4000)
	private String descrizione;

	@Column(name = "link_sito", length = 4000)
	private String linkSito;

	@OneToMany(mappedBy = "catena")
	private List<CatenaProdotto> catenaProdotto = new ArrayList<CatenaProdotto>();

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

	public List<CatenaProdotto> getCatenaProdotto() {
		return catenaProdotto;
	}

	public void setCatenaProdotto(List<CatenaProdotto> catenaProdotto) {
		this.catenaProdotto = catenaProdotto;
	}

	public String getLinkFoto() {
		return linkFoto;
	}

	public void setLinkFoto(String linkFoto) {
		this.linkFoto = linkFoto;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getLinkSito() {
		return linkSito;
	}

	public void setLinkSito(String linkSito) {
		this.linkSito = linkSito;
	}

	@Override
	public String toString() {
		return "Catena [id=" + id + ", denominazione=" + denominazione + ", linkFoto=" + linkFoto + ", descrizione="
				+ descrizione + ", linkSito=" + linkSito + "]";
	}

}
