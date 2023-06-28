package it.generationitaly.spesa.entity;

import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;

import jakarta.persistence.OneToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import it.generationitaly.spesa.entity.Etichetta;


@Entity
@Table(name = "prodotto")
public class Prodotto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "marca", length = 45, unique = true, nullable = false)
	private String marca;
	
	@Column(name = "prezzo" , nullable = false )
	private double prezzo;
	
	@Column(name = "descrizione", length = 500, nullable = true)
	private String descrizione;
	
	@Column(name = "peso" , nullable = false )
	private double peso;
	
	@ManyToOne           
	@JoinColumn( name = "catena_id" , nullable = false)
	private Catena catena;
	
	
	@OneToOne
	@JoinColumn( name = "etichetta_id" , unique = true, nullable = false)
	private Etichetta etichetta;
	
	
	@ManyToOne
	@JoinColumn( name = "categoria_id" ,nullable = false)
	private Categoria categoria;

	
	

	public Prodotto() {
		super();
	}


	public Prodotto(int id, String marca, double prezzo, String descrizione, double peso) {
		super();
		this.id = id;
		this.marca = marca;
		this.prezzo = prezzo;
		this.descrizione = descrizione;
		this.peso = peso;
	}


	public Prodotto(int id, String marca, double prezzo, String descrizione, double peso, Catena catena,
			Etichetta etichetta, Categoria categoria) {
		super();
		this.id = id;
		this.marca = marca;
		this.prezzo = prezzo;
		this.descrizione = descrizione;
		this.peso = peso;
		this.catena = catena;
		this.etichetta = etichetta;
		this.categoria = categoria;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getMarca() {
		return marca;
	}


	public void setMarca(String marca) {
		this.marca = marca;
	}


	public double getPrezzo() {
		return prezzo;
	}


	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}


	public String getDescrizione() {
		return descrizione;
	}


	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}


	public double getPeso() {
		return peso;
	}


	public void setPeso(double peso) {
		this.peso = peso;
	}


	public Catena getCatena() {
		return catena;
	}


	public void setCatena(Catena catena) {
		this.catena = catena;
	}


	public Etichetta getEtichetta() {
		return etichetta;
	}


	public void setEtichetta(Etichetta etichetta) {
		this.etichetta = etichetta;
	}


	public Categoria getCategoria() {
		return categoria;
	}


	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}


	@Override
	public String toString() {
		return "Prodotto [id=" + id + ", marca=" + marca + ", prezzo=" + prezzo + ", descrizione=" + descrizione
				+ ", peso=" + peso + "]";
	}
	
	
	

}
