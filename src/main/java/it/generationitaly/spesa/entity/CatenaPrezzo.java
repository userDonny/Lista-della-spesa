package it.generationitaly.spesa.entity;

public class CatenaPrezzo {

	private Catena catena;

	private double prezzoTotale;

	public Catena getCatena() {
		return catena;
	}

	public void setCatena(Catena catena) {
		this.catena = catena;
	}

	public double getPrezzoTotale() {
		return prezzoTotale;
	}

	public void setPrezzoTotale(double prezzoTotale) {
		this.prezzoTotale = prezzoTotale;
	}

	@Override
	public String toString() {
		return "CatenaPrezzo [catena=" + catena.getDenominazione() + ", prezzoTotale=" + prezzoTotale + "]";
	}
}
