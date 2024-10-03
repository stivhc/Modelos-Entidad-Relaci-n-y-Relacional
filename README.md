# Desafío sobre Modelos Entidad-Relación y Relacional

## Gestión de Consultas Médicas

## Descripción
Este proyecto se enfoca en la práctica de modelado de datos utilizando los conceptos de Entidad-Relación y Normalización en bases de datos. Esto a través del modelamiento de un sistema de consultas méditas en una clínica, donde se capturan las relaciones entre médicos, especialidades, pacientes, consultas y licencias médicas.

## Estructuras Principales

* Médico: Representa a los médicos de la clínica, con atributos clave como el RUT, Nombre y Dirección.
* Especialidad: Cada médico tiene una especialidad, y una especialidad puede ser compartida por varios médicos.
* Paciente: Representa a los pacientes atendidos, con datos como Nombre, RUT y Dirección.
* Consulta: Registra las consultas realizadas, incluyendo Fecha, Hora de atención y Número de box (consultorio).
* Licencia Médica: Opcionalmente, un médico puede entregar una licencia a un paciente, registrando datos como Código, Diagnóstico, Fecha de inicio y Fecha de término.

## Relaciones

* Un médico puede tener varias consultas.
* Un paciente puede tener varias consultas.
* Un médico puede entregar una licencia médica a un paciente.
