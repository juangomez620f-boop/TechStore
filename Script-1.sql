CREATE TABLE estados (
    id_estados INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO estados (nombre) VALUES
    ('Jalisco'), ('Baja California'), ('Chihuahua'), ('Michoacán'), 
    ('Guerrero'), ('Coahuila'), ('Querétaro'), ('Veracruz'), 
    ('CDMX'), ('Yucatán'), ('Sinaloa'), ('Nuevo León'), 
    ('Puebla'), ('Sonora'), ('Guanajuato'), ('Aguascalientes'), 
    ('San Luis Potosí');

UPDATE clientes SET estado = '1' WHERE estado = 'Jalisco';
UPDATE clientes SET estado = '2' WHERE estado = 'Baja California';
UPDATE clientes SET estado = '3' WHERE estado = 'Chihuahua';
UPDATE clientes SET estado = '4' WHERE estado = 'Michoacán';
UPDATE clientes SET estado = '5' WHERE estado = 'Guerrero';
UPDATE clientes SET estado = '6' WHERE estado = 'Coahuila';
UPDATE clientes SET estado = '7' WHERE estado = 'Querétaro';
UPDATE clientes SET estado = '8' WHERE estado = 'Veracruz';
UPDATE clientes SET estado = '9' WHERE estado = 'CDMX';
UPDATE clientes SET estado = '10' WHERE estado = 'Yucatán';
UPDATE clientes SET estado = '11' WHERE estado = 'Sinaloa';
UPDATE clientes SET estado = '12' WHERE estado = 'Nuevo León';
UPDATE clientes SET estado = '13' WHERE estado = 'Puebla';
UPDATE clientes SET estado = '14' WHERE estado = 'Sonora';
UPDATE clientes SET estado = '15' WHERE estado = 'Guanajuato';
UPDATE clientes SET estado = '16' WHERE estado = 'Aguascalientes';
UPDATE clientes SET estado = '17' WHERE estado = 'San Luis Potosí';

ALTER TABLE clientes 
ALTER COLUMN estado TYPE INTEGER USING estado::integer;

ALTER TABLE clientes 
ADD CONSTRAINT fk_clientes_estado FOREIGN KEY (estado) REFERENCES estados(id_estados);