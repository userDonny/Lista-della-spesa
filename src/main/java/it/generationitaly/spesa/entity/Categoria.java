package it.generationitaly.spesa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "categoria")
public class Categoria {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome", length = 45, unique = true, nullable = false)
	private String nome;
	
	
	@OneToOne(mappedBy = "categoria")
	private Prodotto prodotto;

	
	

	public Categoria() {
		super();
	}


	public Categoria(int id, String nome) {
		super();
		this.id = id;
		this.nome = nome;
	}


	public Categoria(int id, String nome, Prodotto prodotto) {
		super();
		this.id = id;
		this.nome = nome;
		this.prodotto = prodotto;
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


	public Prodotto getProdotto() {
		return prodotto;
	}


	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}


	@Override
	public String toString() {
		return "Categoria [id=" + id + ", nome=" + nome + "]";
	}
	
	
	

}
