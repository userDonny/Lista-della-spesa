package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import it.generationitaly.spesa.entity.Prodotto;
import jakarta.persistence.Table;

@Entity
@Table(name = "categoria")
public class Categoria {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome", length = 45, unique = true, nullable = false)
	private String nome;
	
	
	@OneToMany(mappedBy = "categoria") //, fetch = FetchType.EAGER)
	private List<Prodotto> prodotti = new ArrayList<Prodotto>();


	
	
	
	public Categoria() {
		super();
	}


	public Categoria(int id, String nome, List<Prodotto> prodotti) {
		super();
		this.id = id;
		this.nome = nome;
		this.prodotti = prodotti;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public List<Prodotto> getProdotti() {
		return prodotti;
	}


	public void setProdotti(List<Prodotto> prodotti) {
		this.prodotti = prodotti;
	}


	@Override
	public String toString() {
		return "Categoria [id=" + id + ", nome=" + nome + "]";
	}

	
	

	
	

}
