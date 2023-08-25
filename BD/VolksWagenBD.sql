-- Eliminar la base de datos si existe
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'VolksWagen')
    DROP DATABASE VolksWagen;

go

-- Crear la base de datos
CREATE DATABASE VolksWagen;

go

-- Usar la base de datos creada
USE VolksWagen;

go



-- Tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(50),
    contraseña VARCHAR(100),
    rol VARCHAR(20),
    estatus VARCHAR(20)
);

go

-- Tabla de errores
CREATE TABLE errores (
    id INT PRIMARY KEY,
    tipo_error VARCHAR(20),
    descripción TEXT,
    fecha DATE,
    hora TIME,
    usuario_reporte VARCHAR(50),
    estado VARCHAR(20),
    prioridad VARCHAR(10),
    notas_solución TEXT,
    causa_raíz TEXT,
    nivel INT,
    impacto VARCHAR(100),
    frecuencia VARCHAR(50)
);

go

-- Tabla de errores personales
CREATE TABLE error_personal (
    id INT PRIMARY KEY,
    tipo_error VARCHAR(20),
    descripción TEXT,
    fecha DATE,
    hora TIME,
    usuario_reporte VARCHAR(50),
    estado VARCHAR(20),
    prioridad VARCHAR(10),
    notas_solución TEXT,
    causa_raíz TEXT,
    nivel INT,
    impacto VARCHAR(100),
    frecuencia VARCHAR(50),
    FOREIGN KEY (id) REFERENCES errores(id)
);

go

-- Tabla de errores de herramienta
CREATE TABLE error_herramienta (
    id INT PRIMARY KEY,
    tipo_error VARCHAR(20),
    descripción TEXT,
    fecha DATE,
    hora TIME,
    usuario_reporte VARCHAR(50),
    estado VARCHAR(20),
    prioridad VARCHAR(10),
    notas_solución TEXT,
    causa_raíz TEXT,
    nivel INT,
    impacto VARCHAR(100),
    frecuencia VARCHAR(50),
    FOREIGN KEY (id) REFERENCES errores(id)
);

go

-- Tabla de errores de línea de producción
CREATE TABLE error_linea_produccion (
    id INT PRIMARY KEY,
    tipo_error VARCHAR(20),
    descripción TEXT,
    fecha DATE,
    hora TIME,
    usuario_reporte VARCHAR(50),
    estado VARCHAR(20),
    prioridad VARCHAR(10),
    notas_solución TEXT,
    causa_raíz TEXT,
    nivel INT,
    impacto VARCHAR(100),
    frecuencia VARCHAR(50),
    FOREIGN KEY (id) REFERENCES errores(id)
);
