CREATE TABLE IF NOT EXISTS pacientes(
	id serial PRIMARY KEY,
	nome varchar(40) NOT NULL,
	sexo varchar(1),
	obito boolean,
	insertedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS profissionais(
	id serial PRIMARY KEY,
	nome varchar(50)
);

CREATE TABLE IF NOT EXISTS especialidades(
	id serial PRIMARY KEY,
	nome varchar(50)
);

CREATE TABLE IF NOT EXISTS consultas(
	id serial PRIMARY KEY,
    
	especialidade_id integer,
	pac_id integer,
	profiss_id integer	
);

CREATE TABLE IF NOT EXISTS obitos(
	id serial PRIMARY KEY,
	obs text
);

