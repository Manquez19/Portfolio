Base de datos de gestión hospitalaria  
CREATE TABLE Pacientes (
  paciente_id INT PRIMARY KEY,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  género VARCHAR(10),
  fecha_nacimiento DATE,
  dirección VARCHAR(255),
  teléfono VARCHAR(20)
);

CREATE TABLE Doctores (
  doctor_id INT PRIMARY KEY,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  especialización VARCHAR(255),
  teléfono VARCHAR(20)
);

CREATE TABLE Citas (
  cita_id INT PRIMARY KEY,
  paciente_id INT,
  doctor_id INT,
  fecha_cita DATE,
  hora_cita TIME,
  FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id)
);

CREATE TABLE HistoriasClinicas (
  historia_id INT PRIMARY KEY,
  paciente_id INT,
  doctor_id INT,
  diagnóstico VARCHAR(255),
  tratamiento VARCHAR(255),
  FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id)
);