CREATE TABLE utente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(45) UNIQUE NOT NULL,
    password VARCHAR(45) NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    cognome VARCHAR(45) NOT NULL,
    data_nascita DATE NOT NULL,
    sesso CHAR(1) NOT NULL CHECK (sesso = 'M' OR sesso = 'F')
);

CREATE TABLE catena (
	id INT PRIMARY KEY AUTO_INCREMENT,
	denominazione VARCHAR(45) UNIQUE NOT NULL,
    link_foto varchar(4000),
	descrizione varchar(4000),
    link_sito varchar(4000)
);

CREATE TABLE categoria (
	id INT PRIMARY KEY AUTO_INCREMENT,
    link_foto VARCHAR(4000),
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
    descrizione VARCHAR(500),
    peso DOUBLE NOT NULL,
    link_foto_detail VARCHAR(4000),
    link_foto_small VARCHAR(4000),
    etichetta_id INT UNIQUE NOT NULL REFERENCES etichetta (id) ON DELETE CASCADE,
    categoria_id INT NOT NULL REFERENCES categoria (id)
);

CREATE TABLE catena_prodotto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    prezzo DOUBLE NOT NULL CHECK (prezzo > 0),
    quantita INT NOT NULL DEFAULT 1,
    catena_id INT NOT NULL REFERENCES catena (id),
    prodotto_id INT NOT NULL REFERENCES prodotto (id),
    UNIQUE (catena_id , prodotto_id)
);

CREATE TABLE lista_spesa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_lista_spesa DATE,
    utente_id INT UNIQUE NOT NULL REFERENCES utente(id)
);

CREATE TABLE lista_spesa_prodotto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    prodotto_id INT NOT NULL REFERENCES prodotto(id),
    lista_spesa_id INT NOT NULL REFERENCES lista_spesa(id),
    quantita INT,
    UNIQUE(lista_spesa_id, prodotto_id)
);