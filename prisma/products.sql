-- Crear la tabla de productos
CREATE TABLE Product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT,
    quantity INTEGER,
    available BOOLEAN,
    createdAt INTEGER NOT NULL,
    updatedAt INTEGER NOT NULL
);

-- Insertar algunos productos de ejemplo con valores aleatorios
INSERT INTO Product (name, price, description, quantity, available, createdAt, updatedAt) VALUES
    ('Teclado', 75.25, 'Teclado mecánico para juegos', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049027545, 1709049027545),
    ('Mouse', 150.0, 'Ratón inalámbrico ergonómico', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049041977, 1709049041977),
    ('Monitor', 150.0, 'Monitor LED de 27 pulgadas', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049047955, 1709049047955),
    ('Audifonos', 50.0, 'Auriculares inalámbricos con micrófono', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049048406, 1709049048406),
    ('Laptop', 1000.0, 'Portátil de 15 pulgadas con i7', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049048754, 1709049048754),
    ('Smartphone', 800.0, 'Teléfono móvil de última generación', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049058406, 1709049058406),
    ('Tablet', 300.0, 'Tableta de 10 pulgadas con Android', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049063205, 1709049063205),
    ('Impresora', 200.0, 'Impresora multifunción con Wi-Fi', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049068123, 1709049068123),
    ('Altavoces', 150.0, 'Altavoces Bluetooth portátiles', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049073021, 1709049073021),
    ('Cámara', 400.0, 'Cámara réflex digital', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049077943, 1709049077943),
    ('Televisor', 700.0, 'Televisor LED de 55 pulgadas', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049082912, 1709049082912),
    ('Router', 80.0, 'Router Wi-Fi de doble banda', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049087876, 1709049087876),
    ('Reproductor Blu-ray', 180.0, 'Reproductor Blu-ray 4K', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049092805, 1709049092805),
    ('Teclado inalámbrico', 60.0, 'Teclado inalámbrico compacto', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049097701, 1709049097701),
    ('Mouse inalámbrico', 80.0, 'Ratón inalámbrico para oficina', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049102663, 1709049102663),
    ('Webcam', 70.0, 'Cámara web HD 1080p', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049107602, 1709049107602),
    ('Tarjeta de video', 250.0, 'Tarjeta gráfica para juegos', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049112487, 1709049112487),
    ('Memoria RAM', 120.0, 'Módulo de memoria RAM DDR4 16GB', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049117415, 1709049117415),
    ('Disco duro externo', 150.0, 'Disco duro externo de 1TB', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049122337, 1709049122337),
    ('Tarjeta madre', 350.0, 'Placa base para PC', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049127245, 1709049127245),
    ('Procesador', 300.0, 'Procesador Intel Core i5', CAST(RANDOM() * 100 AS INTEGER), RANDOM() > 0.5, 1709049132156, 1709049132156);