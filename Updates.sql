-- Consulta Tabla Cita

UPDATE cita
SET motivo_consulta = 'Control de rutina'
WHERE id = 1;

UPDATE cita
SET id_consultorio = 3
WHERE id_medico = 2;

UPDATE cita
SET motivo_consulta = 'Seguimiento programado'
WHERE id BETWEEN 5 AND 10;

UPDATE cita
SET motivo_consulta = 'control rutina'
WHERE motivo_consulta = 'revision mensual';

UPDATE cita
SET id_consultorio = 1
WHERE id_consultorio IS NULL;


-- Consulta Tabla Consulta

UPDATE consultorio
SET estado = 'inactivo'
WHERE id = 4;

UPDATE consultorio
SET capacidad = capacidad + 5
WHERE ubicacion LIKE '%primer piso%';

UPDATE consultorio
SET especialidad = 'medicina interna'
WHERE id = 7;

UPDATE consultorio
SET nombre = 'Centro de radiología avanzada'
WHERE especialidad LIKE '%rayosx%';

UPDATE consultorio
SET telefono = '0000000000'
WHERE estado = 'inactivo';

-- Consulta Tabla Departamento

UPDATE departamento
SET nombre_departamento = 'VALLE DEL CAUCA'
WHERE id = 76;

UPDATE departamento
SET nombre_departamento = CONCAT(nombre_departamento, ' - Región Central')
WHERE nombre_departamento LIKE '%CUNDINAMARCA%';

UPDATE departamento
SET nombre_departamento = CONCAT('Región ', nombre_departamento)
WHERE nombre_departamento LIKE 'A%';

UPDATE departamento
SET nombre_departamento = 'Zona Caribe'
WHERE nombre_departamento IN ('ATLÁNTICO', 'BOLÍVAR', 'CÓRDOBA', 'LA GUAJIRA', 'MAGDALENA', 'SUCRE');

UPDATE departamento
SET nombre_departamento = UPPER(nombre_departamento);
