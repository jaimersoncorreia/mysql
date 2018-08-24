DROP DATABASE IF EXISTS cadastro;

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL, 
	nascimento DATE, 
	sexo ENUM('M','F'), 
	peso DECIMAL(5,2),
	altura DECIMAL(3,2), 
	nacionalidade VARCHAR(20) DEFAULT 'Brasil', 
	PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

INSERT INTO pessoas VALUES
(DEFAULT, 'Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil'),
(DEFAULT, 'Maria','1999-12-30','F','55.2','1.65','Portugal'),
(DEFAULT, 'Creuza','1920-12-30','F','50.2','1.65',DEFAULT),
(DEFAULT, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda'),
(DEFAULT, 'Cládio', '1975-4-22', 'M', '99.0', 2.15,DEFAULT),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87.0', 2,DEFAULT),
(DEFAULT, 'Janaína', '1987-11-12', 'F', '75.0', 1.66, 'EUA');

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(20) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

UPDATE pessoas SET profissao = 'Não Informado' WHERE profissao IS NULL;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT 'Não Informado';

ALTER TABLE pessoas
RENAME TO gafanhotos;

CREATE TABLE IF NOT EXISTS cursos(
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2016'
)DEFAULT CHARSET=utf8;

ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

INSERT INTO cursos VALUES
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PHP','Curso de PHP para Iniciantes','40','20','2015'),
('5','Java','Introduçao à Linguagem Java','40','29','2015'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016');





