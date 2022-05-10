-- Seleccionar registros que se incorporaron en 2019
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2019;

SELECT *
FROM (
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2019;

-- Seleccionar registros que se incorporaron en MAYO DEL 2018
SELECT *
FROM (
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2018
	AND mes_incorporacion = 05;