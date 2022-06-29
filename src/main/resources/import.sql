/* Populate tabla clientes */
INSERT INTO regiones (id, nombre) VALUES (1, 'Sudamerica');
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroamerica');
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteamerica');
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa');
INSERT INTO regiones (id, nombre) VALUES (5, 'Asia');
INSERT INTO regiones (id, nombre) VALUES (6, 'Africa');
INSERT INTO regiones (id, nombre) VALUES (7, 'Oceania');
INSERT INTO regiones (id, nombre) VALUES (8, 'Antartida');

INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Andrés', 'Guzmán', 'profesor@bolsadeideas.com', '2018-01-01', 1);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Mr. John', 'Doe', 'john.doe@gmail.com', '2018-01-02',2);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Linus', 'Torvalds', 'linus.torvalds@gmail.com', '2018-01-03',2);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Rasmus', 'Lerdorf', 'rasmus.lerdorf@gmail.com', '2018-01-04',3);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Erich', 'Gamma', 'erich.gamma@gmail.com', '2018-02-01',3);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Richard', 'Helm', 'richard.helm@gmail.com', '2018-02-10',4);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Ralph', 'Johnson', 'ralph.johnson@gmail.com', '2018-02-18',3);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('John', 'Vlissides', 'john.vlissides@gmail.com', '2018-02-28',2);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Dr. James', 'Gosling', 'james.gosling@gmail.com', '2018-03-03',5);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Magma', 'Lee', 'magma.lee@gmail.com', '2018-03-04',6);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Tornado', 'Roe', 'tornado.roe@gmail.com', '2018-03-05',2);
INSERT INTO clientes (nombre, apellido, email, create_at, region_id) VALUES ('Jade', 'Doe', 'jane.doe@gmail.com', '2018-03-06',7);

INSERT INTO usuarios (username, password,enabled) VALUES ('stiv','$2a$10$V8zvp2xDR60YwNHQLZPJl.1v2mUzLjw8NWwpc3wp6E1TI0k/2Guba',1);
INSERT INTO usuarios (username, password,enabled) VALUES ('admin','$2a$10$9hHMUf95K3fKC4vH6M0mROCAgNGcUd6Sr9u8Jd8Fhfio9uu4MsZ.q',1);

INSERT INTO roles (nombre) VALUES ('ROLE_USER');
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (1,1);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2,2);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2,1);

INSERT INTO productos (nombre, precio, create_at) VALUES ('Panasonic Pantalla LCD',259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Camara digital DSC-W320B',123490, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Apple iPod shuffle',1499990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Sony Notebook Z110',37990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Hewlett Packard Multifuncional F2280',70289, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Bianchi Bicicleta Aro 26',69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mica Comoda 5 cajones',299980, NOW());

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 7);

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ('Factura bicicleta', 'Alguna nota importante', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3, 2, 6);