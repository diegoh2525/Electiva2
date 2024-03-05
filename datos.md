# Promt: De acuerdo al siguiente contexto, primero leer todo y luego realizar

## PUNTO 1. Genere la lista de 10 oyentes con datos aleatorios, para registrar en la base de datos de la entidad Oyente.


1. Estructura de la entidad sql: 
    ```sql
        CREATE TABLE Oyente (
        ID_Oyente INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(255) NOT NULL,
        Correo_Electronico VARCHAR(255) NOT NULL,
        Telefono VARCHAR(20) NOT NULL);
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Oyente (Nombre,Correo_Electronico,Telefono)VALUES
        ('Juan Herrera','juan123@gmail.com','3175986132'),
        ('Carlos Gonzalez','carlos2525@gmail.com','3144586165'),
        ('Sebastian Hernandez','sebas323@gmail.com','3154436198');
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.

## PUNTO 2. Genere la lista de 10 canciones con datos aleatorios, para registrar en la base de datos de la entidad Cancion.


1. Estructura de la entidad sql: 
    ```sql
        CREATE TABLE Cancion (
        ID_Cancion INT PRIMARY KEY AUTO_INCREMENT,
        Nombre VARCHAR(255) NOT NULL,
        Artista VARCHAR(255) NOT NULL,
        Genero VARCHAR(255) NOT NULL);
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Cancion (Nombre,Artista,Genero)VALUES
        ('Crimen','Gustavo Cerati','Rock en español'),
        ('Exclusive','Blessd','Urbano'),
        ('Mariposas','Los Enanitos Verdes','Rock en español');
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.

## PUNTO 3. Genere la lista de 10 encuestas con datos aleatorios, para registrar en la base de datos de la entidad Encuesta.


1. Estructura de la entidad sql: 
    ```sql
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
        FOREIGN KEY (Cancion_3) REFERENCES Cancion(ID_Cancion));
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Encuesta (Fecha, ID_Oyente, Cancion_1, Cancion_2, Cancion_3)VALUES
        ('2024-03-05',1,1,2,3),
        ('2024-10-23',2,5,2,3),
        ('2024-08-13',3,3,2,6);
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.

## PUNTO 4. Genere la lista de 10 boletas con datos aleatorios, para registrar en la base de datos de la entidad Boleta.


1. Estructura de la entidad sql: 
    ```sql
        CREATE TABLE Boleta (
        ID_Boleta INT PRIMARY KEY AUTO_INCREMENT,
        Numero_Aleatorio INT NOT NULL,
        Color VARCHAR(255) NOT NULL,
        ID_Encuesta INT NOT NULL,
        FOREIGN KEY (ID_Encuesta) REFERENCES Encuesta(ID_Encuesta));
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Boleta (Numero_Aleatorio,Color,ID_Encuesta)VALUES
        (123456,'Azul',1),
        (323243,'Amarillo',2),
        (132689,'Rojo',3);
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.

## PUNTO 5. Genere la lista de 10 sorteos con datos aleatorios, para registrar en la base de datos de la entidad Sorteo.


1. Estructura de la entidad sql: 
    ```sql
        CREATE TABLE Sorteo (
        ID_Sorteo INT PRIMARY KEY AUTO_INCREMENT,
        Fecha DATE NOT NULL,
        Color VARCHAR(255) NOT NULL,
        Premio_1 VARCHAR(255) NOT NULL,
        Premio_2 VARCHAR(255) NOT NULL,
        Premio_3 VARCHAR(255) NOT NULL);
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Sorteo (Fecha, Color, Premio_1, Premio_2, Premio_3)VALUES
        ('2024-03-04', 'Rojo', 'Auto', 'Lavadora', 'Viaje a Peru'),
        ('2024-04-02', 'Amarillo', 'Moto', 'TV', 'PS4'),
        ('2024-08-07', 'Azul', 'PC', 'Dulces', 'Dinero');
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.

## PUNTO 6. Genere la lista de 10 ganadores con datos aleatorios, para registrar en la base de datos de la entidad Ganador.


1. Estructura de la entidad sql: 
    ```sql
        CREATE TABLE Ganador (
        ID_Ganador INT PRIMARY KEY AUTO_INCREMENT,
        ID_Sorteo INT NOT NULL,
        ID_Oyente INT NOT NULL,
        ID_Boleta INT NOT NULL,
        FOREIGN KEY (ID_Sorteo) REFERENCES Sorteo(ID_Sorteo),
        FOREIGN KEY (ID_Oyente) REFERENCES Oyente(ID_Oyente),
        FOREIGN KEY (ID_Boleta) REFERENCES Boleta(ID_Boleta));
    ```
    
2. Ejemplo de insercion de datos:
    ```sql
        INSERT INTO Ganador (ID_Sorteo, ID_Oyente, ID_Boleta)VALUES
        (1, 1, 1),
        (2, 4, 2),
        (3, 5, 3);
    ```
3. Ahora generar los datos de esta solicitud con la sentencia SQL que permita insertar los 10 registros.