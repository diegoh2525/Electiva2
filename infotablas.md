## PUNTO 1. Genere la lista de 10 oyentes con datos aleatorios, para registrar en la base de datos de la entidad Oyente.

1. Tabla Oyente

    lo que genero fue:
    ```sql
        INSERT INTO Oyente (Nombre, Correo_Electronico, Telefono) VALUES
        ('Mariana López', 'mariana.lopez@hotmail.com', '3104567890'),
        ('Pedro García', 'pedrogarcia@yahoo.com', '3123456789'),
        ('Camila Díaz', 'camila_diaz@gmail.com', '3132345678'),
        ('Santiago Martínez', 'santiago.martinez@outlook.com', '3141234567'),
        ('Laura Pérez', 'lauraperez@hotmail.com', '3150987654'),
        ('David Restrepo', 'davidrestrepo@gmail.com', '3164567890'),
        ('Ana Rodríguez', 'anarodriguez@yahoo.com', '3177890123'),
        ('Miguel Torres', 'migueltorres@hotmail.com', '3186789012'),
        ('Sofía Vargas', 'sofiavargas@gmail.com', '3195678901'),
        ('Alejandro Gómez', 'alejandro.gomez@outlook.com', '3204567890');
    ```

## PUNTO 2. Genere la lista de 10 canciones con datos aleatorios, para registrar en la base de datos de la entidad Cancion.

2. Tabla Cancion

    lo que genero fue:
    ```sql
        INSERT INTO Cancion (Nombre, Artista, Genero) VALUES
        ('Tacones Rojos', 'Sebastian Yatra', 'Pop latino'),
        ('Hawái', 'Maluma', 'Reggaeton'),
        ('Pareja del Año', 'Sebastian Yatra & Myke Towers', 'Pop latino'),
        ('Todo de Ti', 'Rauw Alejandro', 'Reggaeton'),
        ('Pepas', 'Farruko', 'Reggaeton'),
        ('Yonaguni', 'Bad Bunny', 'Reggaeton'),
        ('Me Porto Bonito', 'Bad Bunny & Chencho Corleone', 'Reggaeton'),
        ('Fuera del Mercado', 'Danny Ocean', 'Pop latino'),
        ('Despacito', 'Luis Fonsi & Daddy Yankee', 'Pop latino'),
        ('Miénteme', 'TINI & Maria Becerra', 'Pop latino');
    ```

## PUNTO 3. Genere la lista de 10 encuestas con datos aleatorios, para registrar en la base de datos de la entidad Encuesta.

3. Tabla Encuesta

    lo que genero fue:
    ```sql
        INSERT INTO Encuesta (Fecha, ID_Oyente, Cancion_1, Cancion_2, Cancion_3) VALUES
        ('2024-03-05', 1, 2, 4, 7),
        ('2024-03-06', 2, 3, 5, 8),
        ('2024-03-07', 3, 1, 6, 9),
        ('2024-03-08', 4, 4, 7, 10),
        ('2024-03-09', 5, 2, 5, 8),
        ('2024-03-10', 6, 3, 6, 9),
        ('2024-03-11', 7, 1, 7, 10),
        ('2024-03-12', 8, 4, 8, 1),
        ('2024-03-13', 9, 2, 9, 2),
        ('2024-03-14', 10, 3, 10, 3);
    ```

## PUNTO 4. Genere la lista de 10 boletas con datos aleatorios, para registrar en la base de datos de la entidad Boleta.

4. Tabla Boleta

    lo que genero fue:
    ```sql
        INSERT INTO Boleta (Numero_Aleatorio, Color, ID_Encuesta) VALUES
        (789456, 'Verde', 1),
        (123789, 'Morado', 2),
        (456123, 'Naranja', 3),
        (789012, 'Azul', 4),
        (456789, 'Amarillo', 5),
        (123456, 'Rojo', 6),
        (789456, 'Verde', 7),
        (123789, 'Morado', 8),
        (456123, 'Naranja', 9),
        (789012, 'Azul', 10);
    ```

## PUNTO 5. Genere la lista de 10 sorteos con datos aleatorios, para registrar en la base de datos de la entidad Sorteo.

5. Tabla Sorteo

    lo que genero fue:
    ```sql
        INSERT INTO Sorteo (Fecha, Color, Premio_1, Premio_2, Premio_3) VALUES
        ('2024-03-08', 'Verde', 'Smartphone', 'Bicicleta', 'Entradas para concierto'),
        ('2024-03-15', 'Morado', 'Tablet', 'Cámara fotográfica', 'Vale de compra'),
        ('2024-03-22', 'Naranja', 'Smartwatch', 'Auriculares inalámbricos', 'Cena para dos'),
        ('2024-03-29', 'Azul', 'Libro electrónico', 'Curso online', 'Suscripción a streaming'),
        ('2024-04-05', 'Rojo', 'Kit de herramientas', 'Set de jardinería', 'Bono de descuento'),
        ('2024-04-12', 'Amarillo', 'Bote de perfume', 'Maquillaje', 'Ropa'),
        ('2024-04-19', 'Verde', 'Utensilios de cocina', 'Electrodomésticos', 'Muebles'),
        ('2024-04-26', 'Morado', 'Juguetes', 'Videojuegos', 'Libros para niños'),
        ('2024-05-03', 'Naranja', 'Mascota', 'Accesorios para mascotas', 'Alimento para mascotas'),
        ('2024-05-10', 'Azul', 'Donación a una ONG', 'Voluntariado', 'Productos ecológicos');
    ```

## PUNTO 6. Genere la lista de 10 ganadores con datos aleatorios, para registrar en la base de datos de la entidad Ganador.

6. Tabla Ganador

    lo que genero fue:
    ```sql
        INSERT INTO Ganador (ID_Sorteo, ID_Oyente, ID_Boleta) VALUES
        (1, 2, 5),
        (2, 3, 6),
        (3, 4, 7),
        (4, 5, 8),
        (5, 6, 9),
        (6, 7, 10),
        (7, 8, 11),
        (8, 9, 12),
        (9, 10, 13),
        (10, 1, 14);
    ```