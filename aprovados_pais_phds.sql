CREATE OR REPLACE PROCEDURE aprovados_pais_phds()
LANGUAGE plpgsql
AS $$
DECLARE
    count_aprovados INTEGER;
BEGIN
    SELECT COUNT(*) INTO count_aprovados
    FROM estudantes
    WHERE educacao_mae = 6 AND educacao_pai = 6 AND nota_final IN (5, 6, 7);
    RAISE NOTICE 'Número de alunos aprovados com pais PhDs: %', count_aprovados;
END;
$$;