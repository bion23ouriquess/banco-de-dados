CREATE DATABASE peca;
USE peca;

CREATE TABLE peca (
id_peca INT NOT NULL AUTO_INCREMENT,
nome_peca VARCHAR (45) NOT NULL,
ano_fabricacao_peca DATE NOT NULL,
PRIMARY KEY (id_peca)
);
CREATE TABLE fornecedor (
id_fornecedor INT NOT NULL AUTO_INCREMENT,
nome_fornecedor VARCHAR (45) NOT NULL,
nacionalidade_fornecedor VARCHAR (45) NOT NULL,
PRIMARY KEY (id_fornecedor)
);
CREATE TABLE categoria (
id_categoria INT NOT NULL AUTO_INCREMENT,
descricao_categoria VARCHAR (45) NOT NULL,
PRIMARY KEY (id_categoria)
);
ALTER TABLE peca
ADD COLUMN fornecedor_id INT,
ADD FOREIGN KEY (fornecedor_id)
REFERENCES fornecedor (id_fornecedor);

ALTER TABLE peca
ADD COLUMN categoria_id INT,
ADD FOREIGN KEY (categoria_id)
REFERENCES categoria (id_categoria);