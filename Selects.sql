-- Consultas de Select Utilizando los Join

SELECT c.id, c.motivo_consulta, co.nombre AS consultorio, co.ubicacion
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.estado = 'activo';

SELECT c.id, c.motivo_consulta, c.id_medico, p.nombre
FROM cita c
JOIN persona p ON c.id_persona = p.id
WHERE c.id_medico = 2;

SELECT c.id, c.motivo_consulta, co.nombre AS consultorio, co.ubicacion
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.ubicacion LIKE '%primer piso%';

SELECT c.id, c.motivo_consulta, co.especialidad
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.especialidad = 'odontologia';

SELECT c.id_persona, c.id_consultorio, co.estado
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.estado = 'inactivo';

SELECT co.nombre, COUNT(c.id) AS total_citas
FROM consultorio co
LEFT JOIN cita c ON co.id = c.id_consultorio
WHERE co.estado = 'activo'
GROUP BY co.nombre;

SELECT co.nombre, co.especialidad
FROM consultorio co
LEFT JOIN cita c ON co.id = c.id_consultorio
WHERE c.id IS NULL;

SELECT c.id, c.motivo_consulta, co.nombre AS consultorio
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE c.motivo_consulta LIKE '%rayos x%';

SELECT c.id, c.motivo_consulta, d.nombre_departamento
FROM cita c
JOIN departamento d ON c.id_consultorio = d.id
WHERE d.nombre_departamento = 'ANTIOQUIA';

SELECT co.id, co.nombre, co.estado
FROM consultorio co
LEFT JOIN cita c ON co.id = c.id_consultorio
WHERE co.estado = 'inactivo' AND c.id IS NULL;

SELECT c.id AS cita_id, c.motivo_consulta, co.nombre AS consultorio, co.capacidad
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.capacidad >= 5;

SELECT c.id AS cita_id, c.id_medico, c.motivo_consulta, co.nombre AS consultorio
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE c.id_medico BETWEEN 3 AND 7;

SELECT c.id AS cita_id, co.nombre AS consultorio, co.especialidad
FROM cita c
JOIN consultorio co ON c.id_consultorio = co.id
WHERE co.especialidad = 'radiologia' AND co.estado = 'activo';

SELECT co.id, co.nombre, c.motivo_consulta
FROM consultorio co
JOIN cita c ON co.id = c.id_consultorio
WHERE c.motivo_consulta LIKE '%revisión%';

SELECT c.id_persona, d.nombre_departamento
FROM cita c
JOIN departamento d ON c.id_consultorio = d.id
WHERE d.id IN (5, 8, 11);