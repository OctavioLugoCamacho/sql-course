-- ¿En rango? --
SELECT int4range(10, 20) @> 3;

-- ¿Se solapan? --
SELECT numrange(11.1, 22.2) && numrange(20.0, 30.0);

-- Obtener el límite superior --
SELECT upper(int8range(15, 25));

-- Calcular la intersección --
SELECT int4range(10, 20) * int4range(15, 25);

-- ¿Rango vacío?
SELECT isempty(numrange(1, 5));

-- Filtrar alumnos cuyo tutor_id esté entre 1 y 10 --
SELECT *
FROM platzi.alumnos
WHERE int4range(10, 20) @> tutor_id;

-- Filtrar los id que son en común entre tutor y carrera
SELECT numrange(
  (SELECT MIN(tutor_id) FROM platzi.alumnos),
  (SELECT MAX(tutor_id) FROM platzi.alumnos)
) * numrange(
  (SELECT MIN(carrera_id) FROM platzi.alumnos),
  (SELECT MAX(carrera_id) FROM platzi.alumnos)
);