CREATE DATABASE sistema_puntoventa;
USE sistema_puntoventa;

CREATE TABLE oficinas (
    ID_oficinas INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    codpostal VARCHAR(50) NOT NULL,
    continente VARCHAR(50) NOT NULL,
	sucursal VARCHAR (50) UNIQUE NOT NULL,
    activo ENUM('TRUE', 'FALSE')

);

INSERT INTO oficinas (ID_oficinas, ciudad, telefono, direccion, departamento, pais, codpostal, continente, sucursal, activo) VALUES
(1, 'Madrid', '912345678', 'Calle Mayor 1', 'Marketing', 'España', '28013', 'Europa', 'Sucursal1', 'TRUE'),
(2, 'Sídney', '61212345678', 'George Street 100', 'Ventas', 'Australia', '2000', 'Oceanía', 'Sucursal2', 'TRUE'),
(3, 'Tokio', '81312345678', 'Shinjuku 5-7', 'IT', 'Japón', '160-0022', 'Asia', 'Sucursal3', 'TRUE'),
(4, 'Londres', '442012345678', 'Oxford Street 200', 'Finanzas', 'Reino Unido', 'W1D 1NS', 'Europa', 'Sucursal4', 'FALSE'),
(5, 'Porto', '351223456789', 'Avenida dos Aliados 20', 'Ventas', 'Portugal', '4000-064', 'Europa', 'Sucursal5', 'TRUE');




CREATE TABLE empleados (
    documento INT AUTO_INCREMENT PRIMARY KEY,
    apellido VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    jefe INT NOT NULL,
    ID_oficinas INT,
    expulsado ENUM('TRUE', 'FALSE'),
    FOREIGN KEY (ID_oficinas) REFERENCES oficinas(ID_oficinas)
    
);

INSERT INTO empleados (documento, apellido, nombre, extension, email, cargo, jefe, ID_oficinas, expulsado) VALUES
(60, 'Wang', 'Li', '7890', 'liwang@gmail.com', 'Gerente Regional', 1, 5, 'FALSE'),
(61, 'Zhang', 'Wei', '2345', 'weizhang@gmail.com', 'Asistente de Gerente', 1, 5, 'FALSE'),
(67, 'Fernández', 'Marta', '2345', 'martafernandez@gmail.com', 'Gerente de Ventas', 1, 1, 'TRUE'),
(70, 'Castro', 'Claudia', '9012', 'claudiacastro@gmail.com', 'Gerente de Marketing', 1, 2, 'FALSE'),
(71, 'García', 'Pedro', '5678', 'pedrogarcia@gmail.com', 'Coordinador de IT', 1, 3, 'TRUE');




CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    empresa VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nombre VARCHAR(10) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    departamento VARCHAR(10) NOT NULL,
    codipostal VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    empleadoAtiende INT NOT NULL,
    limiteCredito DOUBLE NOT NULL,
    activo ENUM('TRUE', 'FALSE'),
    codigo_cliente VARCHAR(50) UNIQUE NOT NULL
    
);

INSERT INTO clientes VALUES
('Microsoft Corporation', 'Gómez', 'María', '123456789', 'Calle Principal 123', 'Madrid', 'Ventas', '28001', 'España', 89, 5000.00, 'TRUE', 'MSFT-001'),
('Apple Inc.', 'López', 'Pedro', '987654321', 'Avenida Central 456', 'Nueva York', 'Marketing', '10001', 'Estados Unidos', 90, 7500.00, 'TRUE', 'AAPL-002'),
('Amazon.com, Inc.', 'Martínez', 'Ana', '55555555', 'Rua das Flores 789', 'Lisboa', 'RRHH', '1100-050', 'Portugal', 91, 10000.00, 'TRUE', 'AMZN-003'),
('Google LLC', 'Rodríguez', 'Luis', '999999999', 'Plaza Mayor 456', 'Madrid', 'Finanzas', '28080', 'España', 67, 12000.00, 'FALSE', 'GOOG-004'),
('Facebook, Inc.', 'González', 'Jorge', '11111111', 'Calle Principal 987', 'Buenos Aires', 'IT', '1000', 'Argentina', 78, 8000.00, 'TRUE', 'FB-005');



DROP TABLE IF EXISTS pagos;
CREATE TABLE pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    NumeroFactura VARCHAR(50) NOT NULL,
    fechapago DATE NOT NULL,
    totalPago DOUBLE NOT NULL,
    pago_aprobado ENUM('TRUE', 'FALSE') NOT NULL,
    UNIQUE KEY uk_NumeroFactura (NumeroFactura),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO pagos (id_cliente, NumeroFactura, fechapago, totalPago, pago_aprobado) VALUES
(1, '1001', '2024-06-01', 500.00, 'TRUE'),
(2, '1002', '2024-07-05', 750.00, 'TRUE'),
(3, '1003', '2024-08-10', 1000.00, 'FALSE'),
(4, '1004', '2024-09-15', 1200.00, 'TRUE'),
(5, '1005', '2024-10-20', 800.00, 'FALSE');



CREATE TABLE ordenes (
    id_orden INT AUTO_INCREMENT PRIMARY KEY,
    FechaRecibido DATE NOT NULL,
    FechaLimiteEntrega DATE NOT NULL,
    FechaEntrega DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    observacion TEXT NOT NULL,
    id_cliente INT NOT NULL,
    orden_aprobada ENUM('TRUE', 'FALSE') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO ordenes (id_orden, FechaRecibido, FechaLimiteEntrega, FechaEntrega, estado, observacion, id_cliente) VALUES
(10, '2024-06-01', '2024-06-10', '2024-06-08', 'Estado1', 'Orden recibida correctamente', 1),
(11, '2024-07-05', '2024-07-15', '2024-07-12', 'Estado2', 'Entrega urgente', 2),
(12, '2024-08-10', '2024-08-20', '2024-08-18', 'Estado3', 'Cliente solicita cambios en el pedido', 3),
(13, '2024-09-15', '2024-09-25', '2024-09-22', 'Estado1', 'Orden lista para entrega', 4),
(14, '2024-10-20', '2024-10-30', '2024-10-22', 'Estado4', 'Problemas de logística', 5);



DROP TABLE IF EXISTS detalle_ordenes;
CREATE TABLE detalle_ordenes (
    id_orden INT NOT NULL,
    id_producto VARCHAR(50) NOT NULL,
    cantidadPedida INT NOT NULL,
    valorUnitario DOUBLE NOT NULL,
    OrdenEntrega VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_orden, id_producto),
    UNIQUE KEY jb_OrdenEntrega (OrdenEntrega),
    FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden)
);

INSERT INTO detalle_ordenes (id_orden, id_producto, CantidadPedida, ValorUnitario, OrdenEntrega) VALUES
(10, 'P001', 5, 10.50, 1),
(11, 'A002', 10, 15.75, 2),
(12, 'B003', 3, 20.00, 3),
(13, 'C004', 8, 12.00, 4),
(14, 'D005', 6, 8.99, 5);



CREATE TABLE lineasproductos (
    id_lineaproducto INT PRIMARY KEY,
    nombrelinea VARCHAR(50) NOT NULL,
    textodescripcion VARCHAR(4000) NOT NULL,
    htmldescripcion VARCHAR(200) NOT NULL,
    imagen VARCHAR(200) NOT NULL,
    activo ENUM('TRUE', 'FALSE') NOT NULL
);

INSERT INTO lineasproductos VALUES
(1, 'Electrónicos', 'Productos electrónicos de última generación.', '<p>Productos electrónicos de última generación.</p>', 'imagen1.jpg', 'TRUE'),
(2, 'Ropa', 'Ropa de moda para todas las edades.', '<p>Ropa de moda para todas las edades.</p>', 'imagen2.jpg', 'TRUE'),
(3, 'Hogar', 'Artículos para el hogar y decoración.', '<p>Artículos para el hogar y decoración.</p>', 'imagen3.jpg', 'TRUE'),
(4, 'Juguetes', 'Juguetes para niños y niñas.', '<p>Juguetes para niños y niñas.</p>', 'imagen4.jpg', 'TRUE'),
(5, 'Herramientas', 'Herramientas de alta calidad para bricolaje.', '<p>Herramientas de alta calidad para bricolaje.</p>', 'imagen5.jpg', 'TRUE');





CREATE TABLE productos (
  id_producto VARCHAR(50) PRIMARY KEY,
  nombreProducto VARCHAR(50) NOT NULL,
  id_lineaProducto INT NOT NULL,
  escala VARCHAR(50) NOT NULL,
  cantidad INT NOT NULL,
  precioVenta DOUBLE NOT NULL,
  MSRP DOUBLE NOT NULL,
  disponible ENUM('TRUE', 'FALSE') NOT NULL,
  FOREIGN KEY (id_lineaProducto) REFERENCES lineasproductos(id_lineaproducto)
);

INSERT INTO productos VALUES
('P001', 'Laptop HP Pavilion', 1, 'Unidad', 100, 800.00, 999.00, 'true'),
('A002', 'Smartphone Samsung Galaxy S21', 2, 'Unidad', 200, 1200.00, 1499.00,'true'),
('B003', 'Tablet Apple iPad Air', 4, 'Unidad', 50, 700.00, 899.00,'true'),
('C004', 'Monitor Dell UltraSharp 27"', 3, 'Unidad', 80, 400.00, 499.00,'true'),
('D005', 'Impresora Epson EcoTank L3150', 5, 'Unidad', 30, 300.00, 399.00,'true');