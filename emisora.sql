DROP DATABASE IF EXISTS emisora1
CREATE DATABASE emisora1
USE emisora1

-- Creación de las entidades

CREATE TABLE Oyente (
    ID_Oyente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Correo_Electronico VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20) NOT NULL
);

CREATE TABLE Cancion (
    ID_Cancion INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Artista VARCHAR(255) NOT NULL,
    Genero VARCHAR(255) NOT NULL
);

CREATE TABLE Encuesta (
    ID_Encuesta INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    ID_Oyente INT NOT NULL,
    Cancion_1 INT NOT NULL,
    Cancion_2 INT NOT NULL,
    Cancion_3 INT NOT NULL,
    FOREIGN KEY (ID_Oyente) REFERENCES Oyente(ID_Oyente),
    FOREIGN KEY (Cancion_1) REFERENCES Cancion(ID_Cancion),
    FOREIGN KEY (Cancion_2) REFERENCES Cancion(ID_Cancion),
    FOREIGN KEY (Cancion_3) REFERENCES Cancion(ID_Cancion)
);

CREATE TABLE Boleta (
    ID_Boleta INT PRIMARY KEY AUTO_INCREMENT,
    Numero_Aleatorio INT NOT NULL,
    Color VARCHAR(255) NOT NULL,
    ID_Encuesta INT NOT NULL,
    FOREIGN KEY (ID_Encuesta) REFERENCES Encuesta(ID_Encuesta)
);

CREATE TABLE Sorteo (
    ID_Sorteo INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Color VARCHAR(255) NOT NULL,
    Premio_1 VARCHAR(255) NOT NULL,
    Premio_2 VARCHAR(255) NOT NULL,
    Premio_3 VARCHAR(255) NOT NULL
);

CREATE TABLE Ganador (
    ID_Ganador INT PRIMARY KEY AUTO_INCREMENT,
    ID_Sorteo INT NOT NULL,
    ID_Oyente INT NOT NULL,
    ID_Boleta INT NOT NULL,
    FOREIGN KEY (ID_Sorteo) REFERENCES Sorteo(ID_Sorteo),
    FOREIGN KEY (ID_Oyente) REFERENCES Oyente(ID_Oyente),
    FOREIGN KEY (ID_Boleta) REFERENCES Boleta(ID_Boleta)
);
