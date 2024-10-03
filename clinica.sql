-- Crear base de datos
CREATE DATABASE Clinica;

-- Conectar a base de datos
\c Clinica;

-- 1. Crear la tabla 'Consulta' con los atributos solicitados
CREATE TABLE Consulta (
    consulta_id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora_atencion TIME NOT NULL,
    numero_box INT NOT NULL
);

-- 2. Crear la tabla 'Paciente' con los atributos solicitados
CREATE TABLE Paciente (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rut VARCHAR(12) UNIQUE NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

-- 3. Crear la tabla 'Medico' con un atributo que indica si entrega licencia o no
CREATE TABLE Medico (
    medico_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rut VARCHAR(12) UNIQUE NOT NULL,
    entrega_licencia BOOLEAN DEFAULT FALSE
);

-- 4. Crear la tabla 'Licencia' con los atributos solicitados
CREATE TABLE Licencia (
    licencia_id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL,
    diagnostico VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_termino DATE NOT NULL,
    paciente_id INT,
    medico_id INT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medico(medico_id)
);

-- Relación entre consulta, paciente y médico
ALTER TABLE Consulta
ADD COLUMN paciente_id INT,
ADD COLUMN medico_id INT,
ADD CONSTRAINT fk_paciente_consulta FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
ADD CONSTRAINT fk_medico_consulta FOREIGN KEY (medico_id) REFERENCES Medico(medico_id);
