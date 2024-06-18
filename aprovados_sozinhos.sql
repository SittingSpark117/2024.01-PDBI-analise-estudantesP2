CREATE OR REPLACE PROCEDURE aprovados_sozinhos(OUT num_aprovados INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
  SELECT COUNT(*) INTO num_aprovados
  FROM estudantes
  WHERE tem_parceiro = 2 AND nota_final IN (5, 6, 7);
END;
$$;