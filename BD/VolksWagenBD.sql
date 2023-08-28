-- Eliminar la base de datos si existe
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'VolksWagen')
    DROP DATABASE VolksWagen;

GO

-- Crear la base de datos
CREATE DATABASE VolksWagen;

GO

-- Usar la base de datos creada
USE VolksWagen;

GO

-- Tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY IDENTITY(1,1),
    nombre_usuario VARCHAR(150),
    contraseña VARCHAR(150),
    rol VARCHAR(150),
    estatus VARCHAR(150)
);

GO

-- Tabla de errores
CREATE TABLE errores (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo_error VARCHAR(150),
    descripción VARCHAR(MAX),
    fecha DATE,
    hora VARCHAR(10),
    usuario_reporte VARCHAR(150),
    estado VARCHAR(150),
    prioridad VARCHAR(150),
    notas_solución VARCHAR(MAX),
    causa_raíz VARCHAR(MAX),
    nivel INT,
    impacto VARCHAR(150),
    frecuencia VARCHAR(150)
);

GO

-- Tabla de errores personales
CREATE TABLE error_personal (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo_error VARCHAR(150),
    descripción VARCHAR(MAX),
    fecha DATE,
    hora VARCHAR(10),
    usuario_reporte VARCHAR(150),
    estado VARCHAR(150),
    prioridad VARCHAR(150),
    notas_solución VARCHAR(MAX),
    causa_raíz VARCHAR(MAX),
    nivel INT,
    impacto VARCHAR(150),
    frecuencia VARCHAR(150)
);

GO

-- Tabla de errores de herramienta
CREATE TABLE error_herramienta (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo_error VARCHAR(150),
    descripción VARCHAR(MAX),
    fecha DATE,
    hora VARCHAR(10),
    usuario_reporte VARCHAR(150),
    estado VARCHAR(150),
    prioridad VARCHAR(150),
    notas_solución VARCHAR(MAX),
    causa_raíz VARCHAR(MAX),
    nivel INT,
    impacto VARCHAR(150),
    frecuencia VARCHAR(150)
);

GO

-- Tabla de errores de línea de producción
CREATE TABLE error_linea_produccion (
    id INT PRIMARY KEY IDENTITY(1,1),
    tipo_error VARCHAR(150),
    descripción VARCHAR(MAX),
    fecha DATE,
    hora VARCHAR(10),
    usuario_reporte VARCHAR(150),
    estado VARCHAR(150),
    prioridad VARCHAR(150),
    notas_solución VARCHAR(MAX),
    causa_raíz VARCHAR(MAX),
    nivel INT,
    impacto VARCHAR(150),
    frecuencia VARCHAR(150)
);
