CREATE OR REPLACE  FUNCTION trgValidadeDadosConsulta() 
RETURNS trigger AS $$

DECLARE
pac_row record;
espec_row record;

BEGIN
    SELECT INTO pac_row
        *  FROM pacientes as p where p.id = NEW.pac_id;

        SELECT INTO espec_row
        *  FROM especialidades as esp where esp.id = NEW.especialidade_id;

        IF pac_row.sexo = 'm' AND espec_row.nome = 'ginecologista' THEN
           RAISE EXCEPTION 'Ginecologista apenas para pacientes do sexo feminino';
        ELSEIF pac_row.sexo = 'f' AND espec_row.nome = 'urologista' THEN
           RAISE EXCEPTION 'Urologista apenas para pacientes do sexo masculino';
        END IF;
RETURN new;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ValidadeDadosConsulta
BEFORE INSERT OR UPDATE ON consultas
FOR EACH ROW
EXECUTE PROCEDURE trgValidadeDadosConsulta();