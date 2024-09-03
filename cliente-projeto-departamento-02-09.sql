CREATE DATABASE consultor;
USE consultor;

CREATE TABLE projeto (
id_projeto INT NOT NULL AUTO_INCREMENT,
codigo_projeto INT NOT NULL,
data_inicio_projeto DATE NOT NULL,
data_fim_projeto DATE NOT NULL,
valor_projeto DECIMAL(8,2) NOT NULL,
PRIMARY KEY (id_projeto)
);
CREATE TABLE cliente (
id_cliente INT NOT NULL AUTO_INCREMENT,
codigo_cliente INT NOT NULL,
nome_cliente VARCHAR (45) NOT NULL,
rua_cliente VARCHAR (45) NOT NULL,
numero_cliente INT NOT NULL,
bairro_cliente VARCHAR (45) NOT NULL,
cidade_cliente VARCHAR (45) NOT NULL,
estado_cliente VARCHAR (45) NOT NULL,
cep_cliente INT NOT NULL,
PRIMARY KEY (id_cliente)
);
CREATE TABLE consultor (
id_consultor INT NOT NULL AUTO_INCREMENT,
nome_consultor VARCHAR (45) NOT NULL,
cpf_consultor BIGINT (11) NOT NULL,
especializacao_consultor VARCHAR (45) NOT NULL,
funcao_exercida_consultor VARCHAR (45) NOT NULL,
PRIMARY KEY (id_consultor)
);
CREATE TABLE unidade (
id_unidade INT NOT NULL AUTO_INCREMENT,
nome_gerente_unidade VARCHAR (45) NOT NULL,
nome_supervisor_unidade VARCHAR (45) NOT NULL,
PRIMARY KEY (id_unidade)
);
CREATE TABLE departamento (
id_departamento INT NOT NULL AUTO_INCREMENT,
nome_departamento VARCHAR (45) NOT NULL,
sigla_departamento VARCHAR (45) NOT NULL,
centro_custo_departamento DECIMAL (8,2),
PRIMARY KEY (id_departamento)
);

ALTER TABLE departamento
ADD COLUMN	unidade_id INT,
ADD FOREIGN KEY (unidade_id)
REFERENCES unidade (id_unidade);

ALTER TABLE projeto
ADD COLUMN	consultor_id INT,
ADD FOREIGN KEY (consultor_id)
REFERENCES consultor (id_consultor);

ALTER TABLE projeto
ADD COLUMN	departamento_id INT,
ADD FOREIGN KEY (departamento_id)
REFERENCES departamento (id_departamento);

ALTER TABLE projeto
ADD COLUMN	cliente_id INT,
ADD FOREIGN KEY (cliente_id)
REFERENCES cliente (id_cliente);