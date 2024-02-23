
CREATE TABLE IF NOT EXISTS Libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor_nombre VARCHAR(255) NOT NULL,
    autor_apellido VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    paginas INT,
    edicion INT,
    editorial VARCHAR(255),
    lugarCiudad VARCHAR(255),
    lugarPais VARCHAR(255),
    fechaEdicion DATE
);

DELIMITER //
CREATE PROCEDURE InsertarLibro(
    IN titulo_param VARCHAR(255),
    IN autor_nombre_param VARCHAR(255),
    IN autor_apellido_param VARCHAR(255),
    IN ISBN_param VARCHAR(20),
    IN paginas_param INT,
    IN edicion_param INT,
    IN editorial_param VARCHAR(255),
    IN lugarCiudad_param VARCHAR(255),
    IN lugarPais_param VARCHAR(255),
    IN fechaEdicion_param DATE
)
BEGIN
    INSERT INTO Libros (titulo, autor_nombre, autor_apellido, ISBN, paginas, edicion, editorial, lugarCiudad, lugarPais, fechaEdicion)
    VALUES (titulo_param, autor_nombre_param, autor_apellido_param, ISBN_param, paginas_param, edicion_param, editorial_param, lugarCiudad_param, lugarPais_param, fechaEdicion_param);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE ActualizarLibro(
    IN id_param INT,
    IN titulo_param VARCHAR(255),
    IN autor_nombre_param VARCHAR(255),
    IN autor_apellido_param VARCHAR(255),
    IN ISBN_param VARCHAR(20),
    IN paginas_param INT,
    IN edicion_param INT,
    IN editorial_param VARCHAR(255),
    IN lugarCiudad_param VARCHAR(255),
    IN lugarPais_param VARCHAR(255),
    IN fechaEdicion_param DATE
)
BEGIN
    UPDATE Libros
    SET titulo = titulo_param,
        autor_nombre = autor_nombre_param,
        autor_apellido = autor_apellido_param,
        ISBN = ISBN_param,
        paginas = paginas_param,
        edicion = edicion_param,
        editorial = editorial_param,
        lugarCiudad = lugarCiudad_param,
        lugarPais = lugarPais_param,
        fechaEdicion = fechaEdicion_param
    WHERE id = id_param;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE EliminarLibro(
    IN id_param INT
)
BEGIN
    DELETE FROM Libros
    WHERE id = id_param;
END //
DELIMITER ;

