package it.generationitaly.spesa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "prodotto")
public class Prodotto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome", length = 45)
	private String nome;

	@Column(name = "marca", length = 45, unique = true, nullable = false)
	private String marca;

	@Column(name = "prezzo", nullable = false)
	private double prezzo;

	@Column(name = "descrizione", length = 500, nullable = true)
	private String descrizione;

	@Column(name = "peso", nullable = false)
	private double peso;
	
	@Column(name = "link_foto_detail", length = 4000)
	private String linkFotoDetail;
	
	@Column(name = "link_foto_small", length = 4000)
	private String linkFotoSmall;

	@ManyToOne
	@JoinColumn(name = "catena_id", nullable = false)
	private Catena catena;

	@OneToOne
	@JoinColumn(name = "etichetta_id",nullable = false)
	private Etichetta etichetta;

	@ManyToOne
	@JoinColumn(name = "categoria_id", nullable = false)
	private Categoria categoria;

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

	public String getLinkFotoDetail() {
		return linkFotoDetail;
	}

	public void setLinkFotoDetail(String linkFotoDetail) {
		this.linkFotoDetail = linkFotoDetail;
	}

	public String getLinkFotoSmall() {
		return linkFotoSmall;
	}

	public void setLinkFotoSmall(String linkFotoSmall) {
		this.linkFotoSmall = linkFotoSmall;
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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "Prodotto [id=" + id + ", marca=" + marca + ", prezzo=" + prezzo + ", descrizione=" + descrizione
				+ ", peso=" + peso + ", linkFotoDetail=" + linkFotoDetail + ", linkFotoSmall=" + linkFotoSmall + "]";
	}

}
