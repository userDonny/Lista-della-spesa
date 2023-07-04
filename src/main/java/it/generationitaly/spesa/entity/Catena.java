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

	@Override
	public String toString() {
		return "Catena [id=" + id + ", denominazione=" + denominazione + ", catenaProdotto=" + catenaProdotto + "]";
	}
}
