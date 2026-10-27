CREATE TABLE ciudades (
    id_ciudades INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado_id INT NOT NULL,
    CONSTRAINT fk_ciudades_estado FOREIGN KEY (estado_id) REFERENCES estados(id_estados)
);

INSERT INTO ciudades (nombre, estado_id) VALUES
    ('Guadalajara', 1),
    ('Zapopan', 1),
    ('Tijuana', 2),
    ('Mexicali', 2),
    ('Chihuahua', 3),
    ('Ciudad Juárez', 3),
    ('Morelia', 4),
    ('Uruapan', 4),
    ('Acapulco', 5),
    ('Saltillo', 6),
    ('Querétaro', 7),
    ('Veracruz', 8),
    ('CDMX', 9),
    ('Mérida', 10),
    ('Culiacán', 11),
    ('Monterrey', 12),
    ('Puebla', 13),
    ('Hermosillo', 14),
    ('León', 15),
    ('Aguascalientes', 16),
    ('San Luis Potosí', 17);

UPDATE clientes SET ciudad = '1' WHERE ciudad = 'Guadalajara';
UPDATE clientes SET ciudad = '2' WHERE ciudad = 'Tijuana';
UPDATE clientes SET ciudad = '3' WHERE ciudad = 'Chihuahua';
UPDATE clientes SET ciudad = '4' WHERE ciudad = 'Morelia';
UPDATE clientes SET ciudad = '5' WHERE ciudad = 'Acapulco';
UPDATE clientes SET ciudad = '6' WHERE ciudad = 'Saltillo';
UPDATE clientes SET ciudad = '7' WHERE ciudad = 'Querétaro';
UPDATE clientes SET ciudad = '8' WHERE ciudad = 'Veracruz';
UPDATE clientes SET ciudad = '9' WHERE ciudad = 'CDMX';
UPDATE clientes SET ciudad = '10' WHERE ciudad = 'Mérida';
UPDATE clientes SET ciudad = '11' WHERE ciudad = 'Culiacán';
UPDATE clientes SET ciudad = '12' WHERE ciudad = 'Monterrey';
UPDATE clientes SET ciudad = '13' WHERE ciudad = 'Puebla';
UPDATE clientes SET ciudad = '14' WHERE ciudad = 'Hermosillo';
UPDATE clientes SET ciudad = '15' WHERE ciudad = 'León';
UPDATE clientes SET ciudad = '16' WHERE ciudad = 'Aguascalientes';
UPDATE clientes SET ciudad = '17' WHERE ciudad = 'San Luis Potosí';


ALTER TABLE clientes 
ALTER COLUMN ciudad TYPE INTEGER USING ciudad::integer;

ALTER TABLE clientes 
ADD CONSTRAINT fk_clientes_ciudad FOREIGN KEY (ciudad) REFERENCES ciudades(id_ciudades);