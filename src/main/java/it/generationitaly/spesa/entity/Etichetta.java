package it.generationitaly.spesa.entity;

import jakarta.persistence.OneToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import it.generationitaly.spesa.entity.Prodotto;




@Entity
@Table(name = "etichetta")
public class Etichetta {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "proteine" , nullable = false )
	private double proteine;
	
	@Column(name = "carboidrati" , nullable = false )
	private double carboidrati;
	
	@Column(name = "grassi" , nullable = false )
	private double grassi;
	
	@Column(name = "grassi_saturi" , nullable = false )
	private double grassiSaturi;
	
	@Column(name = "fibre" , nullable = false )
	private double fibre;
	
	@Column(name = "sodio" , nullable = false )
	private double sodio;
	
	@Column(name = "valore_energetico" , nullable = false )
	private double valoreEnergetico;
	
	@OneToOne(mappedBy = "etichetta")
	private Prodotto prodotto;

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getProteine() {
		return proteine;
	}

	public void setProteine(double proteine) {
		this.proteine = proteine;
	}

	public double getCarboidrati() {
		return carboidrati;
	}

	public void setCarboidrati(double carboidrati) {
		this.carboidrati = carboidrati;
	}

	public double getGrassi() {
		return grassi;
	}

	public void setGrassi(double grassi) {
		this.grassi = grassi;
	}

	public double getGrassiSaturi() {
		return grassiSaturi;
	}

	public void setGrassiSaturi(double grassiSaturi) {
		this.grassiSaturi = grassiSaturi;
	}

	public double getFibre() {
		return fibre;
	}

	public void setFibre(double fibre) {
		this.fibre = fibre;
	}

	public double getSodio() {
		return sodio;
	}

	public void setSodio(double sodio) {
		this.sodio = sodio;
	}

	public double getValoreEnergetico() {
		return valoreEnergetico;
	}

	public void setValoreEnergetico(double valoreEnergetico) {
		this.valoreEnergetico = valoreEnergetico;
	}

	public Prodotto getProdotto() {
		return prodotto;
	}

	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}

	@Override
	public String toString() {
		return "Etichetta [id=" + id + ", proteine=" + proteine + ", carboidrati=" + carboidrati + ", grassi=" + grassi
				+ ", grassiSaturi=" + grassiSaturi + ", fibre=" + fibre + ", sodio=" + sodio + ", valoreEnergetico="
				+ valoreEnergetico + "]";
	}
	
	
	

}
