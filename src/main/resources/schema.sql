CREATE TABLE catena (
	id INT PRIMARY KEY AUTO_INCREMENT,
	denominazione VARCHAR(45) UNIQUE NOT NULL
);

-- Tabella intermedia di join per mappare sia la tabella prodotto che la tabella catena
-- relazioni Prezzo N -- Catena 1 , Prezzo N -- Prodotto 1

CREATE TABLE prezzo (

id int primary key not null auto_increment,
prezzo DOUBLE NOT NULL CHECK (prezzo > 0), 
quantita INT NOT NULL default 1,
catena_id INT NOT NULL REFERENCES catena(id),
prodotto_id INT NOT NULL REFERENCES prodotto(id),
UNIQUE (catena_id , prodotto_id)
);



CREATE TABLE prodotto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    marca VARCHAR(45) NOT NULL,
    descrizione VARCHAR(500),
    peso double not null,
    link_foto_detail varchar(4000),
    link_foto_small varchar(4000),
    etichetta_id INT NOT NULL REFERENCES etichetta(id) ON DELETE CASCADE,
    categoria_id INT NOT NULL REFERENCES categoria(id)
  
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



CREATE TABLE utente (
id int primary key auto_increment,
username VARCHAR(45) unique not null,
password varchar (45) not null
);