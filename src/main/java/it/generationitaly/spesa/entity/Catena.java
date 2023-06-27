package it.generationitaly.spesa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

public class Catena {

	@Entity
	@Table(name = "catena")
	public class Catena {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;

		@Column(name = "denominazione", length = 45, unique = true, nullable = false)
		private String denominazione;

		
		
		
		
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
		
		
		@Override
		public String toString() {
			return "Catena [id=" + id + ", denominazione=" + denominazione +  "]";
		}
}
}