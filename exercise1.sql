-- Seleccionar un renglón
SELECT *
FROM platzi.alumnos
FETCH FIRST 1 ROWS ONLY;

SELECT *
FROM platzi.alumnos
LIMIT 1;

-- Seleccionar alumnos con el número de renglón
SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id <= 5;