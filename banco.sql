CREATE DATABASE hospital;

CREATE TABLE IF NOT EXISTS pacientes(
	id serial PRIMARY KEY,
	nome varchar(40) NOT NULL,
	sexo varchar(1),
	obito boolean,
	insertedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS profissionais(
	id serial PRIMARY KEY,
	nome varchar(50),
	insertedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS especialidades(
	id serial PRIMARY KEY,
	nome varchar(50),
	insertedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS consultas(
	id serial PRIMARY KEY,
	especialidade_id integer,
	pac_id integer,
	profiss_id integer,
	insertedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS obitos(
	id serial PRIMARY KEY,
	obs text
);



--------------------------------------------------------------------------------



ALTER TABLE consultas  
   ADD CONSTRAINT FkEspecialidadeDaConsulta
      FOREIGN KEY (especialidade_id) REFERENCES especialidades (ID);


ALTER TABLE consultas  
   ADD CONSTRAINT FkProfissionalDaConsulta 
      FOREIGN KEY (profiss_id) REFERENCES profissionais (ID);

----------------------------------------------------------------------------------

INSERT INTO `especialidades`(`id`, `nome`, `insertedAt`) VALUES ('','urologista','2020-07-03 10:49:30.047896');
INSERT INTO `especialidades`(`id`, `nome`, `insertedAt`) VALUES ('','ginecologista','2020-07-03 10:49:30.047896');
INSERT INTO `especialidades`(`id`, `nome`, `insertedAt`) VALUES ('','clinica geral','2020-07-03 10:49:30.047896');

INSERT INTO `profissionais`(`id`, `nome`, `insertedAt`) VALUES ('','DrFeelGoodUro','2020-07-03 10:49:30.068635');
INSERT INTO `profissionais`(`id`, `nome`, `insertedAt`) VALUES ('','DrJekyllGineco','2020-07-03 10:49:30.068635');
INSERT INTO `profissionais`(`id`, `nome`, `insertedAt`) VALUES ('','DrRay','2020-07-03 10:49:30.068635');

INSERT INTO `pacientes`(`id`, `nome`, `sexo`, `obito`) VALUES ('','Ada Lovelace','f','f');
INSERT INTO `pacientes`(`id`, `nome`, `sexo`, `obito`) VALUES ('','Donald Knuth','m','f');
INSERT INTO `pacientes`(`id`, `nome`, `sexo`, `obito`) VALUES ('','Grace Hopper','f','f');
INSERT INTO `pacientes`(`id`, `nome`, `sexo`, `obito`) VALUES ('','Dennis Ritchie','m','f');

INSERT INTO `consultas`(`id`, `especialidade_id`, `pac_id`, `profiss_id`, `insertedAt`) VALUES ('1','1','1','1','2020-07-03 10:10:49:30.089271');
------------------------------------------------------------------------------------

SELECT * FROM  `especialidades`;
SELECT * FROM  `profissionais`;
SELECT * FROM  `pacientes`;
SELECT * FROM  `consultas`;