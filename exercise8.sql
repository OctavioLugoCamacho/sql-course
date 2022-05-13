-- Máximo absoluto de la tabla
SELECT	fecha_incorporacion
FROM	platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

-- Intento por GROUP BY
SELECT	carrera_id, fecha_incorporacion
FROM	platzi.alumnos
GROUP BY carrera_id, fecha_incorporacion
ORDER BY fecha_incorporacion DESC;

-- Funcion MAX
SELECT	carrera_id, MAX(fecha_incorporacion)
FROM	platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;

-- Ordenar de menor a mayor nombres por tutor
SELECT tutor_id,
	MIN (nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;