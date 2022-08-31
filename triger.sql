CREATE OR REPLACE  FUNCTION trgValidadeDadosConsulta() RETURNS trigger $trgValidadeDadosConsulta;

DECLARE
pac_row record;
espec_row record;
BEGIN
    RAISE NOTICE 'nossa trigger rodou!!!';
RETURN new;

END;
$trgValidadeDadosConsulta LANGUAGE plpgsql;

CREATE TRIGGER ValidadeDadosConsulta
BEFORE INSERT OR UPDATE ON consultas
FOR EACH ROW
EXECUTE PROCEDURE trgValidadeDadosConsulta();