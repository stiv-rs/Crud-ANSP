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

