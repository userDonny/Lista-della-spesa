CREATE TABLE utente (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(45) UNIQUE NOT NULL,
	password VARCHAR(45) NOT NULL
);

CREATE TABLE catena (
	id INT PRIMARY KEY AUTO_INCREMENT,
	denominazione VARCHAR(45) UNIQUE NOT NULL
);

CREATE TABLE categoria (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45) UNIQUE NOT NULL
);

CREATE TABLE etichetta (
	id INT PRIMARY KEY AUTO_INCREMENT,
    proteine DOUBLE NOT NULL,
    carboidrati DOUBLE NOT NULL,
    grassi  DOUBLE NOT NULL,
    grassi_saturi DOUBLE NOT NULL,
    fibre DOUBLE NOT NULL,
    sodio DOUBLE NOT NULL,
    valore_energetico DOUBLE NOT NULL
);

CREATE TABLE prodotto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    marca VARCHAR(45) NOT NULL,
    prezzo DOUBLE NOT NULL CHECK (prezzo > 0),
    descrizione VARCHAR(500),
    peso double not null,
    etichetta_id INT UNIQUE NOT NULL REFERENCES etichetta(id) ON DELETE CASCADE,
    categoria_id INT NOT NULL REFERENCES categoria(id),
    catena_id INT NOT NULL REFERENCES catena(id)
);