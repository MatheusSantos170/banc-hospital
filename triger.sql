CREATE OR REPLACE  FUNCTION trgValidadeDadosConsulta() 
RETURNS trigger AS $$

DECLARE
pac_row record;
espec_row record;

BEGIN
    RAISE NOTICE 'nossa trigger rodou!!!';
RETURN new;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ValidadeDadosConsulta
BEFORE INSERT OR UPDATE ON consultas
FOR EACH ROW
EXECUTE PROCEDURE trgValidadeDadosConsulta();