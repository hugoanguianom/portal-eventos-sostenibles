CREATE TABLE USUARIOS (
    ID_USUARIO VARCHAR(10) PRIMARY KEY,
    NOMBRE VARCHAR(30),
    CORREO VARCHAR(50),
    CONTRASEÑA VARCHAR(20)
);

CREATE TABLE ORGANIZADORES (
    ID_ORGANIZADOR VARCHAR(10) PRIMARY KEY,
    NOMBRE VARCHAR(30),
    CONTACTO VARCHAR(50)
);

CREATE TABLE UBICACIONES (
    ID_UBICACION VARCHAR(10) PRIMARY KEY,
    TIPO VARCHAR(30),
    DIRECCIÓN VARCHAR(100)
);

CREATE TABLE CATEGORIAS (
    NOMBRE_CATEGORIA VARCHAR(50) PRIMARY KEY
);

CREATE TABLE EVENTOS (
    ID_EVENTO VARCHAR(10) PRIMARY KEY,
    NOMBRE VARCHAR(100),
    FECHA DATE,
    DURACION INT,
    ESTADO VARCHAR(50),
    ID_UBICACION VARCHAR(10),
    NOMBRE_CATEGORIA VARCHAR(50),
    ID_ORGANIZADOR VARCHAR(10),
    CONSTRAINT fk_ubicacion_ev FOREIGN KEY (ID_UBICACION) REFERENCES UBICACIONES(ID_UBICACION),
    CONSTRAINT fk_categoria_ev FOREIGN KEY (NOMBRE_CATEGORIA) REFERENCES CATEGORIAS(NOMBRE_CATEGORIA),
    CONSTRAINT fk_organizador_ev FOREIGN KEY (ID_ORGANIZADOR) REFERENCES ORGANIZADORES(ID_ORGANIZADOR)
);

CREATE TABLE INSCRIPCIONES (
    ID_EVENTO VARCHAR(10),
    ID_USUARIO VARCHAR(10),
    PRIMARY KEY (ID_EVENTO, ID_USUARIO),
    CONSTRAINT evento_ins FOREIGN KEY (ID_EVENTO) REFERENCES EVENTOS(ID_EVENTO),
    CONSTRAINT usuario_ins FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);


