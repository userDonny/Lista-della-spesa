package it.generationitaly.spesa.entity;

import java.util.ArrayList;
import java.util.List;

public class ListaSpesa {
	
	private List<Prodotto> listaSpesa = new ArrayList<Prodotto>();

	public List<Prodotto> getListaSpesa() {
		return listaSpesa;
	}

	public void setListaSpesa(List<Prodotto> listaSpesa) {
		this.listaSpesa = listaSpesa;
	}
	
	public double prezzoTotale() {
		double tot = 0;
		for (Prodotto prodotto : listaSpesa) {
			tot += (prodotto.getPrezzo() * prodotto.getQuantita());
		}
		return tot;
	}
}
