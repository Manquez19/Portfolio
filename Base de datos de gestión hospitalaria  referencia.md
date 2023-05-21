Tabla: Pacientes

	• paciente_id (int, clave primaria)
	• nombre (varchar)
	• apellido (varchar)
	• género (varchar)
	• fecha_nacimiento (date)
	• dirección (varchar)
	• teléfono (varchar)

 Tabla: Doctores

	• doctor_id (int, clave primaria)
	• nombre (varchar)
	• apellido (varchar)
	• especialización (varchar)
	• teléfono (varchar)

Tabla: Citas

	• cita_id (int, clave primaria)
	• paciente_id (int, clave externa referenciando a Pacientes.paciente_id)
	• doctor_id (int, clave externa referenciando a Doctores.doctor_id)
	• fecha_cita (date)
	• hora_cita (time)

Tabla: HistoriasClinicas

	• historia_id (int, clave primaria)
	• paciente_id (int, clave externa referenciando a Pacientes.paciente_id)
	• doctor_id (int, clave externa referenciando a Doctores.doctor_id)
	• diagnóstico (varchar)
	• tratamiento (varchar)