-- Crear base de datos
CREATE DATABASE Clinica;

-- Conectar a base de datos
\c Clinica;

-- Se crea tabla Especialidad
CREATE TABLE Especialidad (Codigo SERIAL PRIMARY KEY, Descripcion VARCHAR(100) NOT NULL);

-- Se crea tabla Medico
CREATE TABLE Medico (RUT VARCHAR(12) PRIMARY KEY, Nombre VARCHAR(100) NOT NULL, Direccion VARCHAR(150), Codigo_Especialidad INT, FOREIGN KEY (Codigo_Especialidad) REFERENCES Especialidad(Codigo));

-- Se crea tabla Paciente
CREATE TABLE Paciente (RUT VARCHAR(12) PRIMARY KEY, Nombre VARCHAR(100) NOT NULL, Direccion VARCHAR(150));

-- Se crea tabla Consulta
CREATE TABLE Consulta (id SERIAL PRIMARY KEY, Fecha DATE NOT NULL, Hora_Atencion TIME NOT NULL, Numero_Box INT NOT NULL, RUT_Medico VARCHAR(12), RUT_Paciente VARCHAR(12), FOREIGN KEY (RUT_Medico) REFERENCES Medico(RUT), FOREIGN KEY (RUT_Paciente) REFERENCES Paciente(RUT));

-- Se crea tabla Licencia
CREATE TABLE Licencia (Codigo SERIAL PRIMARY KEY, Diagnostico VARCHAR(255) NOT NULL, Fecha_Inicio DATE NOT NULL, Fecha_Termino DATE NOT NULL, RUT_Medico VARCHAR(12), RUT_Paciente VARCHAR(12), FOREIGN KEY (RUT_Medico) REFERENCES Medico(RUT), FOREIGN KEY (RUT_Paciente) REFERENCES Paciente(RUT));

