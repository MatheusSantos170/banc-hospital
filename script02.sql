ALTER TABLE consultas  
   ADD CONSTRAINT FkEspecialidadeDaConsulta
      FOREIGN KEY (especialidade_id) REFERENCES especialidades (ID);


ALTER TABLE consultas  
   ADD CONSTRAINT FkProfissionalDaConsulta 
      FOREIGN KEY (profiss_id) REFERENCES profissionais (ID);