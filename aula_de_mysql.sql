CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

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

INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES 
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');


INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES 
('Maria','1999-12-30','F','55.2','1.65','Portugal')


INSERT INTO pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES 
(DEFAULT, 'Creuza','1920-12-30','F','50.2','1.65',DEFAULT);


INSERT INTO pessoas VALUES 
(DEFAULT, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');


INSERT INTO pessoas VALUES
(DEFAULT, 'Cládio', '1975-4-22', 'M', '99.0', 2.15,DEFAULT),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87.0', 2,DEFAULT),
(DEFAULT, 'Janaína', '1987-11-12', 'F', '75.0', 1.66, 'EUA');


--Alterando Tabela(final)
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

--Apagando Tabela
ALTER TABLE pessoas
DROP profissao;

-- Alterando Tabela(depois de uma coluna)
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Alterando Tabela(primeira)
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

--Modificando
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT'';


-- Trocando o nome
UPDATE pessoas SET profissao = 'Não Informado' WHERE profissao IS NULL;

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20) NOT NULL DEFAULT 'Não Informado';

-- Renomeando Tabela
ALTER TABLE pessoas
RENAME TO gafanhotos;

-- Criando uma nova tabela
CREATE TABLE IF NOT EXISTS cursos(
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totaulas INT UNSIGNED,
ano YEAR DEFAULT '2016'
)DEFAULT CHARSET=utf8;

-- Alterando cursos
ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

DROP TABLE cursos;

-- Inserindo dados na tabela cursos
INSERT INTO cursos VALUES
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para Iniciantes','40','20','2010'),
('5','Java','Introduçao à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateando','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

-- Inserindo dados na tabela cursos(certos)
INSERT INTO cursos VALUES
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PHP','Curso de PHP para Iniciantes','40','20','2015'),
('5','Java','Introduçao à Linguagem Java','40','29','2015'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateando','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso ='1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso ='5'
LIMIT 1;

UPDATE cursos
SET ano = '2050', carga = '800'
WHERE ano = '2018';

UPDATE cursos 
SET ano = '2019', carga = '0' 
WHERE ano = '2050' LIMIT 1;

DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE ano = '2050'
LIMIT 2;

-- Apagando todos os registros da tabela
TRUNCATE TABLE cursos;

--DDL	-> Data Definition Language
--	CREATE DATABASE
--	CREATE TABLE
--	ALTER TABLE
--	DROP TABLE

--DML	-> Data Manipulation Language
--		INSERT INTO
--		UPDATE
--		DELETE
--		TRUNCATE


























