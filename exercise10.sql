-- Alumnos por carrera
SELECT	carrera_id, count(*) AS cuenta
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;

-- Borrar carreras con id entre 30 y 40
DELETE FROM platzi.carreras
WHERE id BETWEEN 30 AND 40;

-- Exlusive left join
SELECT
  a.nombre,
  a.apellido,
  a.carrera_id,
  c.id,
  c.carrera
FROM	platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL;

-- Seleccionar los registros de ambas tablas sin importar si tienen contraparte
SELECT
  a.nombre,
  a.apellido,
  a.carrera_id,
  c.id,
  c.carrera
FROM	platzi.alumnos AS a
	FULL OUTER JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
ORDER BY a.carrera_id DESC, c.id DESC;