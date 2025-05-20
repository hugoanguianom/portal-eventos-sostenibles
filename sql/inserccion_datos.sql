
INSERT INTO USUARIOS (ID_USUARIO, NOMBRE, CORREO, CONTRASEÑA) VALUES
("USER001", "Hugo Anguiano", "hugo@example.com", "hola123"),
("USER002", "Fran Torres", "fran@example.com", "circodelsol000"),
("USER003", "Pedro Jimenez", "pedro@example.com", "contrasenafacil");

INSERT INTO ORGANIZADORES (ID_ORGANIZADOR, NOMBRE, CONTACTO) VALUES
("ORG001", "LosOrganizadoresES", "contacto@gmail.com"),
("ORG002", "SeTuJefe", "+34 123 523 231");


INSERT INTO UBICACIONES (ID_UBIICACION, TIPO, DIRECCIÓN) VALUES
("UBIC001", "Online", "www.meet.com/1sd1m"),
("UBIC002", "Presencial", "Calle Córdoba/Málaga"),
("UBIC003", "Presencial", "Plaza Mayor, Málaga");


INSERT INTO CATEGORIAS (NOMBRE_CATEGORIA) VALUES
("Reciclaje"),
("Energías Renovables"),
("Conservación");

INSERT INTO EVENTOS (ID_EVENTO, NOMBRE, FECHA, DURACION, ESTADO, ID_UBIICACION, NOMBRE_CATEGORIA, ID_ORGANIZADOR) VALUES
("EV001", "Reciclado express", "2025-06-10", 2, "Activo", "UBIC001", "Reciclaje", "ORG001"),
("EV002", "Charla sobre las energias fosiles", "2025-07-15", 4, "Activo", "UBIC002", "Energías Renovables", "ORG002"),
("EV003", "Como conservar el medio ambiente", "2025-08-20", 1, "Pendiente", "UBIC003", "Conservación", "ORG001");

INSERT INTO INSCRIPCIONES (ID_EVENTO, ID_USUARIO) VALUES
("EV001", "USER001"),
("EV001", "USER002"),
("EV002", "USER003"),
("EV003", "USER001");
