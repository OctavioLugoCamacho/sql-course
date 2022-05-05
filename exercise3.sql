-- Filtrar una lista de valores
SELECT *
FROM(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id IN (1,5,10,12,15,20);

-- Devuelve lista de alumnos con el tutor que tiene id 30
SELECT *
FROM platzi.alumnos
WHERE id IN (
	SELECT id
	FROM platzi.alumnos
	WHERE tutor_id = 30
);