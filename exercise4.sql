-- Extraer fecha
SELECT EXTRACT (YEAR FROM fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos

SELECT
	DATE_PART ('YEAR', fecha_incorporacion) AS anio_incorporacion,
	DATE_PART ('MONTH', fecha_incorporacion) AS mes_incorporacion,
	DATE_PART ('DAY', fecha_incorporacion) AS dia_incorporacion,
	DATE_PART ('HOUR', fecha_incorporacion) AS hora_incorporacion,
	DATE_PART ('MINUTE', fecha_incorporacion) AS minuto_incorporacion,
	DATE_PART ('SECOND', fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;

