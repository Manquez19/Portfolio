Tablaempleados Empleados (
  id_empleado INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  -- otros campos
);

CREATE TABLE Registro (
  id_registro INT PRIMARY KEY,
  id_empleado INT,
  fecha_hora_entrada DATETIME,
  fecha_hora_salida DATETIME,
  FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
  -- Insertar una entrada para el empleado con id_empleado = 1
INSERT INTO Registro (id_empleado, fecha_hora_entrada)
VALUES (1, CURRENT_TIMESTAMP);

-- Insertar una salida para el empleado con id_empleado = 1
INSERT INTO Registro (id_empleado, fecha_hora_salida)
VALUES (1, CURRENT_TIMESTAMP);