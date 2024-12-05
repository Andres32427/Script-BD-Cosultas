-- Consultas Tabla Cita

DELETE FROM cita
WHERE id_persona = 10;

DELETE FROM cita
WHERE id_consultorio IN (
SELECT id FROM consultorio WHERE estado = 'inactivo'
);

DELETE FROM cita
WHERE motivo_consulta LIKE '%seguimiento%';

DELETE FROM cita
WHERE id_receta IS NULL;

DELETE FROM cita
WHERE id_consultorio = 10;

-- Consulta Tabla Consultorio

DELETE FROM consultorio
WHERE capacidad < 5;

DELETE FROM consultorio
WHERE ubicacion = 'tercer piso';

DELETE FROM consultorio
WHERE estado = 'inactivo'
AND id NOT IN (SELECT id_consultorio FROM cita);

DELETE FROM consultorio
WHERE ubicacion IS NULL;

DELETE FROM consultorio 
WHERE especialidad IN ('odontologia', 'pediatria');

--Consulta Tabla Persona

DELETE FROM persona
WHERE id = 3;

DELETE FROM persona
WHERE nombre = 'Antonio Sanchez';

DELETE FROM persona 
WHERE id 
IN ( SELECT id_persona FROM cita WHERE id_consultorio = 5 );

DELETE FROM persona 
WHERE id 
IN ( SELECT id_persona FROM cita WHERE id_medico = 1 );

DELETE FROM persona 
WHERE TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) > 10;








