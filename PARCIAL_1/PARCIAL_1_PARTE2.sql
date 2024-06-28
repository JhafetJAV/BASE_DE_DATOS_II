create database pixel_security;

use pixel_security;
 

CREATE TABLE usuarios(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    token VARCHAR(255) NOT NULL,
    contrasena VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    estado_civil ENUM('CASADO', 'SOLTERO', 'VIUDO', 'DIVORCIADO') NOT NULL,
    tipo_empresa ENUM('PUBLICA','PRIVADA'),
    direccion VARCHAR(80) NOT NULL
);

INSERT INTO `usuarios` VALUES
(1,'Eliane Kilback','Kuhic','lonzo.rippin','c2e96577-ef0e-3c81-aff1-d41975aac755','aut','190 Jodie Burg\nMannmouth, IA 90799','M','DIVORCIADO','PUBLICA','8993 Darius Brook\nGoldaview, WA 98137'),
(2,'Johnnie Bahringer','Becker','burley19','12c3c8fa-387c-3c41-9add-e95464991d0c','voluptatem','287 Elouise Ramp\nHirtheview, NE 79428-9301','M','VIUDO','PRIVADA','728 O\'Keefe Lake Apt. 306\nNew Bernadinechester, WA 96791-1769'),
(3,'Lavonne Walter','Denesik','serenity.metz','e9e2c19f-411d-3bb8-8898-8f9efb852770','consequatur','52891 Batz Summit Suite 919\nVonmouth, TX 78565-934','F','SOLTERO','PRIVADA','766 Littel Island\nSouth Marilyne, OK 04533'),
(4,'Kayli Purdy','Okuneva','nkunze','b3181d05-f5d0-35f4-8a28-c9b45eaae350','qui','47414 Timothy Plains Suite 546\nPort Prudence, ME 6','F','DIVORCIADO','PUBLICA','032 Jaylin Street\nLake Theodoreport, TN 93626-0812'),
(5,'Allie Abernathy','Hirthe','sylvan.collier','2c0245e4-ab8e-3940-9ede-e374f927203f','qui','76388 Kihn Mount Apt. 370\nLakinborough, GA 90490-0','M','SOLTERO','PUBLICA','9444 Francesca Underpass\nHermannfurt, TN 98858-9631'),
(6,'Meredith Ritchie','Mante','chadrick77','330d9716-4730-3f41-abbc-6eef6b35426b','quos','7109 Tamia Plains\nWest Shaynaland, AR 93241','M','VIUDO','PUBLICA','98747 Phoebe Track Suite 318\nIssacberg, MA 19941-3478'),
(7,'Miss Rosa Altenwerth II','Wilkinson','lulu79','2ee1aee3-99f0-34de-ab80-443a16fb6477','incidunt','2706 Cummings Mountain\nWest Cole, MD 97805','F','DIVORCIADO','PUBLICA','1515 Joany Gardens\nWest Hayley, FL 65226-8048'),
(8,'Leon Sauer','Adams','igrady','c76bb783-6492-3def-a705-69bea497242a','quidem','6666 Eichmann Vista\nZoeybury, MN 16760-7783','F','DIVORCIADO','PUBLICA','790 Luisa Branch\nLianachester, MS 90446'),
(9,'Leanne Luettgen I','Littel','dasia26','8dfda282-2540-351d-aab7-e568f55f58b5','dolore','850 Schoen Coves\nLudieton, MN 48134','F','DIVORCIADO','PRIVADA','427 Jarrell Corners\nNew Luz, PA 85831-3645'),
(10,'Mr. Brian Zemlak','Terry','kihn.danielle','2602ffda-6199-3b7e-9b0f-96e41d2e0808','velit','133 Ondricka Wall Suite 142\nWest Jean, NY 95491-16','M','DIVORCIADO','PUBLICA','1515 Delaney Crossing\nNorth Wilsonborough, NV 92400-4628'),
(11,'Larue O\'Reilly','Sauer','nestor64','bfad0409-bf38-3ea3-bfaf-ebea5c1f0253','repellat','8592 Kayli Street Suite 646\nKreigerfort, KY 42189','F','CASADO','PUBLICA','8407 Jacobson Avenue Suite 678\nSouth Edgarbury, WY 36477'),
(12,'Hattie Stark','Marquardt','dheller','0affd506-ec28-3652-a9ea-4f2979b38196','impedit','27469 Jaylin Turnpike\nPort Alexannetown, NH 99738-','F','DIVORCIADO','PUBLICA','42349 Morar Villages Apt. 262\nEmanuelchester, MO 26624'),
(13,'Ms. Blanche Schulist','Orn','cromaguera','604815e6-6359-3b3a-94b4-b7bcd832b609','qui','8525 Gutkowski Fords\nLake Elibury, UT 28505','M','CASADO','PUBLICA','01635 Crist Stravenue Apt. 816\nLaurenmouth, WA 61351'),
(14,'Prof. Iliana Lindgren','Harber','davis.anna','aa2c80ce-c825-32ca-8415-cf705b4bf37f','eum','7162 German Hill\nPort Ashly, RI 00477','M','VIUDO','PRIVADA','01699 Morissette Lakes\nEast Zane, SD 11369-3683'),
(15,'Mrs. Ofelia Schmeler IV','Senger','enrique90','b245d204-a5b4-3caf-98aa-89b3e0ebfb12','at','2044 Leonard Ridge Suite 606\nNorth Mara, RI 81009-','M','CASADO','PUBLICA','4853 Stracke Loop Apt. 933\nMaggiestad, RI 53598'),
(16,'Jeanie Ferry','Kuphal','crist.ambrose','fbd37ff4-79c0-32ef-8ada-2dc15c3fe7c2','architecto','23272 Reinger Prairie Suite 050\nWest Kayaborough, ','F','CASADO','PRIVADA','70390 Herman Square\nEast Haskell, DE 79882-2772'),
(17,'Albina Nienow','Sawayn','bvon','33a21f54-682f-3315-88dc-485892b4b2c1','id','7090 O\'Keefe Corner\nHickleview, NV 83300','F','VIUDO','PRIVADA','1544 Matilde Terrace Suite 367\nWest Wilfredoton, GA 46053-1400'),
(18,'Dr. Adolfo Jaskolski','Hoeger','hans29','cda2bcc9-2ded-3f0c-b9e3-c97b716a2313','est','454 Hagenes Junctions Apt. 873\nLambertland, AK 972','F','DIVORCIADO','PUBLICA','634 Nelson Trace\nWest Rodrigo, KY 42204'),
(19,'Ludwig Pagac','Kertzmann','laney.bogisich','b0173f14-6621-38d6-a77b-868d28be60ed','quaerat','3276 Cummings Groves\nSouth Zane, RI 24831','F','SOLTERO','PRIVADA','184 May Walk Apt. 059\nHudsonbury, WI 25672-4965'),
(20,'Hester Sanford','Mayer','beer.orland','9601829a-d97a-309a-8455-4270c38ae70a','ut','918 Abshire Street\nJosefatown, MT 01813-8846','F','DIVORCIADO','PRIVADA','567 Spinka Expressway Suite 084\nLuluside, AK 54975-8310');




CREATE TABLE metodos_pago(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    usuario_id BIGINT NOT NULL,
    card_number VARCHAR(16) NOT NULL UNIQUE,
    cardholder_name VARCHAR(50) NOT NULL,
    cvc VARCHAR(3) NOT NULL,
    expiration DATE NOT NULL,
    CONSTRAINT metodos_pago_usuarios FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
);

INSERT INTO `metodos_pago` VALUES
(1,1,'320319','Alessandro Ruecker','7','2020-10-03'),
(2,2,'4444','Prof. Else Kling','6','2016-02-15'),
(3,3,'900999','Vincent West','2','2013-02-10'),
(4,4,'5678','Prof. Kayley Hahn I','9','2014-10-05'),
(5,5,'344650897','Ernie Ankunding','312','2004-11-18'),
(6,6,'9020573','Simone Dare II','','1982-11-20'),
(7,7,'927211269','Jamil Kunde','1','2011-06-03'),
(8,8,'833962','Mr. Coty Boehm II','3','2006-01-09'),
(9,9,'129','Camila Rodriguez','2','2006-12-26'),
(10,10,'50353','Theo Lebsack','','1983-01-21'),
(11,11,'998','Alex Senger','1','1995-01-09'),
(12,12,'30972','Joan Jaskolski','5','1986-01-23'),
(13,13,'26058127','Hector Hilpert','3','2017-10-31'),
(14,14,'48593','Wilbert Schaefer MD','7','2020-09-10'),
(15,15,'2342342', 'Abigale O Conner DVM', 4,'1973-10-05'),
(16,16,'340736','Nicholas Vandervort','865','1989-02-05'),
(17,17,'650418','Bill Hickle','1','2007-04-04'),
(18,18,'87800794','Jeramie Metz','4','2021-12-23'),
(19,19,'494','Audrey Powlowski','6','2014-10-04'),
(20,20,'83887577','Damion Beer','2','2010-08-02');


CREATE TABLE autenticaciones(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_agent VARCHAR(255) NOT NULL,
   user_id BIGINT NOT NULL,
    fecha DATE NOT NULL, 
    CONSTRAINT autenticaciones_usuarios FOREIGN KEY(user_id) REFERENCES usuarios(id)
);

INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('1', 'Opera/8.74 (Windows NT 5.2; en-US) Presto/2.9.166 Version/12.00',1, '1983-11-05');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('2', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_7 rv:3.0) Gecko/20140908 Firefox/3.6.6',2, '1988-04-20');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('3', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)',3, '1997-07-19');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('4', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8 rv:4.0; en-US) AppleWebKit/534.20.7 (KHTML, like Gecko) Version/4.0.2 Safari/534.20.7',4, '1974-10-31');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('5', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_2 rv:2.0) Gecko/20230506 Firefox/11.0',5, '1992-07-25');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('6', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/535.44.4 (KHTML, like Gecko) Version/4.0.2 Safari/535.44.4',6, '2009-02-10');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('7', 'Mozilla/5.0 (X11; Linuxx86_64; rv:7.0) Gecko/20200531 Firefox/15.0',7, '1982-11-10');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('8', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.2; Trident/3.0)',8, '1986-05-23');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('9', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5331 (KHTML, like Gecko) Chrome/15.0.861.0 Safari/5331',9, '2013-03-17');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('10', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 4.0; Trident/3.0)',10, '1986-01-23');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('11', 'Opera/8.19 (Windows NT 6.2; sl-SI) Presto/2.9.172 Version/12.00',11, '2019-12-09');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('12', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/532.20.2 (KHTML, like Gecko) Version/4.0.4 Safari/532.20.2',12, '2008-06-28');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('13', 'Mozilla/5.0 (iPod; U; CPU iPhone OS 4_0 like Mac OS X; sl-SI) AppleWebKit/532.7.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B114 Safari/6532.7.7',13, '1984-08-21');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('14', 'Opera/8.65 (X11; Linuxx86_64; sl-SI) Presto/2.9.167 Version/10.00',14, '1976-08-21');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('15', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/534.31.2 (KHTML, like Gecko) Version/4.0 Safari/534.31.2',15, '2015-03-14');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('16', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/4.0)',16, '2013-04-25');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('17', 'Opera/9.53 (Windows NT 6.2; en-US) Presto/2.9.188 Version/11.00',17, '2013-06-21');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('18', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_1 rv:4.0) Gecko/20230731 Firefox/3.6.3',18, '1979-02-28');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('19', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/531.44.5 (KHTML, like Gecko) Version/5.1 Safari/531.44.5',19, '1994-10-17');
INSERT INTO `autenticaciones` (`id`, `user_agent`,user_id, `fecha`) VALUES ('20', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.2; Trident/4.1)',20,'2012-01-05');


CREATE TABLE pruebas(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    referencia VARCHAR(250) NOT NULL UNIQUE,
    nombre VARCHAR(80) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('A','I')
);

INSERT INTO pruebas (id, referencia, nombre, descripcion, fecha_ingreso, estado) VALUES
(1, 'REF001', 'Prueba de Software', 'Evaluación del software para detección de errores', '2023-03-15', 'A'),
(2, 'REF002', 'Prueba de Hardware', 'Verificación del funcionamiento del hardware', '2022-06-21', 'A'),
(3, 'REF003', 'Prueba de Integración', 'Integración de diferentes módulos del sistema', '2021-09-30', 'I'),
(4, 'REF004', 'Prueba de Carga', 'Prueba del sistema bajo condiciones de carga alta', '2020-11-12', 'A'),
(5, 'REF005', 'Prueba de Seguridad', 'Evaluación de las medidas de seguridad del sistema', '2019-05-27', 'A'),
(6, 'REF006', 'Prueba de Rendimiento', 'Medición del rendimiento del sistema', '2024-01-14', 'I'),
(7, 'REF007', 'Prueba de Usabilidad', 'Evaluación de la facilidad de uso del sistema', '2018-07-04', 'A'),
(8, 'REF008', 'Prueba de Compatibilidad', 'Verificación de la compatibilidad con otros sistemas', '2017-10-20', 'A'),
(9, 'REF009', 'Prueba de Regresión', 'Reevaluación de funcionalidades tras cambios', '2016-12-01', 'I'),
(10, 'REF010', 'Prueba de Instalación', 'Evaluación del proceso de instalación del sistema', '2025-03-18', 'A'),
(11, 'REF011', 'Prueba de Configuración', 'Prueba de diferentes configuraciones del sistema', '2021-08-09', 'A'),
(12, 'REF012', 'Prueba de Recuperación', 'Evaluación de la capacidad de recuperación del sistema', '2023-11-23', 'I'),
(13, 'REF013', 'Prueba de Estabilidad', 'Prueba de la estabilidad del sistema bajo condiciones normales', '2022-04-14', 'A'),
(14, 'REF014', 'Prueba de Interfaz', 'Evaluación de la interfaz de usuario', '2020-06-05', 'A'),
(15, 'REF015', 'Prueba de Base de Datos', 'Verificación del funcionamiento de la base de datos', '2019-01-11', 'I'),
(16, 'REF016', 'Prueba de Mantenimiento', 'Evaluación de la facilidad de mantenimiento del sistema', '2024-02-28', 'A'),
(17, 'REF017', 'Prueba de Portabilidad', 'Prueba de la capacidad del sistema para funcionar en diferentes entornos', '2018-05-22', 'A'),
(18, 'REF018', 'Prueba de Conformidad', 'Verificación de la conformidad con normas y estándares', '2017-09-10', 'I'),
(19, 'REF019', 'Prueba de Funcionalidad', 'Evaluación de las funcionalidades principales del sistema', '2016-11-15', 'A'),
(20, 'REF020', 'Prueba de Documentación', 'Evaluación de la calidad y completitud de la documentación', '2025-01-19', 'A');


-- primera vista pedida en el requerimiento
CREATE OR REPLACE VIEW v_usuarios_empresas AS SELECT nombre_usuario, apellido, tipo_empresa FROM usuarios;
select * from v_usuarios_empresas;

-- segundo requerimiento 
CREATE OR REPLACE VIEW v_usuarios_metodos_pago AS
SELECT nombre_usuario, nombre, apellido, direccion, card_number,cardholder_name, cvc, expiration
FROM usuarios
INNER JOIN
metodos_pago ON usuarios.id = metodos_pago.usuario_id;

select *from v_usuarios_metodos_pago;



-- tercer requrimiento del proyecto
CREATE OR REPLACE VIEW v_usuarios_autenticaciones AS
SELECT fecha, nombre_usuario, apellido, ciudad, tipo_empresa, user_agent
FROM usuarios
INNER JOIN
autenticaciones ON usuarios.id = autenticaciones.user_id;

select *from v_usuarios_autenticaciones;


-- cuarto requerimiento

CREATE OR REPLACE VIEW v_pruebas AS
SELECT * FROM pruebas
WHERE estado = 'A';

select *from v_pruebas