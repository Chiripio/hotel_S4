-------------------------------------------------------
-- LIMPIEZA: borrar tablas si existen
-------------------------------------------------------
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Reserva CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN
   IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Habitacion CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN
   IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Cliente CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN
   IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Hotel CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN
   IF SQLCODE != -942 THEN RAISE; END IF;
END;
/
-------------------------------------------------------
-- CREACIÓN DE TABLAS
-------------------------------------------------------
-- Usar el esquema HOTEL
ALTER SESSION SET CURRENT_SCHEMA=hotel;

-- Tabla Hotel
CREATE TABLE Hotel (
    hotel_id        NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre          VARCHAR2(100) NOT NULL,
    direccion       VARCHAR2(200),
    categoria       VARCHAR2(50)
);

-- Tabla Habitación
CREATE TABLE Habitacion (
    habitacion_id   NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    hotel_id        NUMBER NOT NULL,
    tipo            VARCHAR2(50),
    capacidad       NUMBER,
    precio          NUMBER(10,2),
    CONSTRAINT fk_hotel FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

-- Tabla Cliente
CREATE TABLE Cliente (
    cliente_id      NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre          VARCHAR2(100) NOT NULL,
    apellido        VARCHAR2(100),
    correo          VARCHAR2(150) UNIQUE,
    telefono        VARCHAR2(20)
);

-- Tabla Reserva
CREATE TABLE Reserva (
    reserva_id      NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cliente_id      NUMBER NOT NULL,
    habitacion_id   NUMBER NOT NULL,
    fecha_entrada   DATE NOT NULL,
    fecha_salida    DATE NOT NULL,
    cantidad_personas NUMBER,
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    CONSTRAINT fk_habitacion FOREIGN KEY (habitacion_id) REFERENCES Habitacion(habitacion_id)
);

-------------------------------------------------------
-- CRUD DE EJEMPLO
-------------------------------------------------------
-- INSERT: crear registros
INSERT INTO Hotel (nombre, direccion, categoria)
VALUES ('Hotel Central', 'Av. Principal 123', '4 Estrellas');

INSERT INTO Habitacion (hotel_id, tipo, capacidad, precio)
VALUES (1, 'Doble', 2, 55000);

INSERT INTO Cliente (nombre, apellido, correo, telefono)
VALUES ('Eduardo', 'Guerrero', 'eduardo@example.com', '+56911112222');

INSERT INTO Reserva (cliente_id, habitacion_id, fecha_entrada, fecha_salida, cantidad_personas)
VALUES (1, 1, DATE '2025-09-10', DATE '2025-09-12', 2);

-- SELECT: leer registros
SELECT * FROM Hotel;
SELECT * FROM Habitacion;
SELECT * FROM Cliente;
SELECT * FROM Reserva;

-- UPDATE: modificar un registro
UPDATE Habitacion
SET precio = 60000
WHERE habitacion_id = 1;

-- DELETE: eliminar un registro
DELETE FROM Reserva
WHERE reserva_id = 1;

COMMIT;
-------------------------------------------------------

-------------------------------------------------------

-------------------------------

-------------------------------------------------------
-- OPCIONAL: Limpieza de registros (sin borrar tablas)
-------------------------------------------------------
DELETE FROM Reserva;
DELETE FROM Habitacion;
DELETE FROM Cliente;
DELETE FROM Hotel;

COMMIT;

----------------------
---- Tablas Creadas--
------------------------
SELECT table_name FROM user_tables;