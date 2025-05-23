SELECT * FROM USUARIOS;
SELECT * FROM ORGANIZADORES;
SELECT * FROM EVENTOS;

-- Ver eventos con informacion completa
SELECT 
    E.ID_EVENTO,
    E.NOMBRE AS NOMBRE_EVENTO,
    E.FECHA,
    E.ESTADO,
    C.NOMBRE_CATEGORIA,
    O.NOMBRE AS NOMBRE_ORGANIZADOR
FROM EVENTOS E
JOIN CATEGORIAS C ON E.NOMBRE_CATEGORIA = C.NOMBRE_CATEGORIA
JOIN ORGANIZADORES O ON E.ID_ORGANIZADOR = O.ID_ORGANIZADOR;

-- eventos presenciales
SELECT 
    E.ID_EVENTO,
    E.NOMBRE,
    U.TIPO,
    U.DIRECCIÓN
FROM EVENTOS E
JOIN UBICACIONES U ON E.ID_UBICACION = U.ID_UBICACION
WHERE U.TIPO = "Presencial";

