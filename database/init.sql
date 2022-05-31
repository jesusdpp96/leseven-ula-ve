--
-- Grados
--

INSERT INTO public.grado(id, nombre)
	VALUES (0, 'Preescolar');

INSERT INTO public.grado(id, nombre)
	VALUES (1, 'Primer grado');

INSERT INTO public.grado(id, nombre)
	VALUES (2, 'Segundo grado');

INSERT INTO public.grado(id, nombre)
	VALUES (3, 'Tercer grado');

INSERT INTO public.grado(id, nombre)
	VALUES (4, 'Cuarto grado');

INSERT INTO public.grado(id, nombre)
	VALUES (5, 'Quinto grado');

INSERT INTO public.grado(id, nombre)
	VALUES (6, 'Sexto grado');

--
-- Temas
--

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (1, 'ARBOLES', '/assets/images/image1.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (2, 'ALIMENTOS', '/assets/images/image2.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (3, 'ANIMALES', '/assets/images/image3.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (4, 'COLORES', '/assets/images/image4.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (5, 'DÍAS DE LA SEMANA', '/assets/images/image5.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (6, 'ENFERMEDADES', '/assets/images/image6.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (7, 'FIGURAS GEOMÉTRICAS', '/assets/images/image7.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (8, 'FRUTAS', '/assets/images/image8.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (9, 'JUGUETES/JUEGOS/DEPORTES', '/assets/images/image9.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (10, 'LUGARES', '/assets/images/image10.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (11, 'LUGARES DE MERIDA', '/assets/images/image11.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (12, 'MEDIOS DE TRANSPORTE', '/assets/images/image12.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (13, 'MESES DEL AÑO', '/assets/images/image13.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (14, 'NOCIÓN DE CANTIDAD', '/assets/images/image14.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (15, 'NOCIÓN DE TAMAÑO', '/assets/images/image15.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (16, 'NOCION ESPACIAL', '/assets/images/image16.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (17, 'NOCIÓN TEMPORAL', '/assets/images/image17.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (18, 'NUMEROS', '/assets/images/image18.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (19, 'OBJETOS DEL HOGAR', '/assets/images/image19.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (20, 'OFICIOS Y PROFESIONES', '/assets/images/image20.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (21, 'PARTES DEL CUERPO', '/assets/images/image21.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (22, 'PERSONAJES HISTORICOS', '/assets/images/image22.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (23, 'PERSONAS', '/assets/images/image23.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (24, 'ROPA', '/assets/images/image24.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (25, 'SIMBOLOS', '/assets/images/image25.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (26, 'SINTOMAS', '/assets/images/image26.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (27, 'UTENSILIOS DE LA COCINA', '/assets/images/image27.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (28, 'UTILES ESCOLARES', '/assets/images/image28.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (29, 'VERDURAS Y HORTALIZAS', '/assets/images/image29.png');


--
-- Vocablos
--

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (1, 'Araguaney', 1);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (2, 'Agua', 2);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (3, 'Arepa', 3);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (4, 'Jugo', 4);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (5, 'Leche', 5);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (6, 'Pan', 6);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (7, 'Carne', 7);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (8, 'pasta', 8);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (9, 'Pollo', 9);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (10, 'Queso', 10);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (11, 'Torta', 11);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (12, 'Gato', 12);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (13, 'Perro', 13);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (14, 'Pato', 14);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (15, 'Oso', 15);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (16, 'Cóndor', 16);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (17, 'Gallina', 17);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (18, 'Gallo', 18);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (19, 'Pájaro', 19);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (20, 'Ratón', 20);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (21, 'Sapo', 21);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (22, 'Vaca', 22);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (23, 'Amarillo', 23);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (24, 'Azul', 24);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (25, 'Rojo', 25);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (26, 'Verde', 26);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (27, 'Lunes', 27);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (28, 'Martes', 28);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (29, 'Viernes', 29);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (30, 'Cólera', 1);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (31, 'Dengue', 2);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (32, 'Gripe', 3);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (33, 'Circulo', 4);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (34, 'triángulo', 5);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (35, 'cuadrado', 6);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (36, 'Uva', 7);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (37, 'Coco', 8);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (38, 'Cambur', 9);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (39, 'Mango', 10);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (40, 'Mora', 11);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (41, 'Piña', 12);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (42, 'Pelota', 13);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (43, 'Muñeca', 14);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (44, 'Metra', 15);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (45, 'Pito', 16);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (46, 'Trompo', 17);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (47, 'Baño', 18);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (48, 'Casa', 19);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (49, 'Escuela', 20);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (50, 'Parque', 21);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (51, 'Plaza', 22);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (52, 'Cocina', 23);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (53, 'Cancha', 24);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (54, 'Cbit', 25);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (55, 'Escuela Ofelia Tancredi', 26);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (56, 'Zoológico', 27);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (57, 'Parque “Chorros de Milla”', 28);

INSERT INTO public.vocablo(id, palabra, tema_id)
	VALUES (58, 'Parque La Isla', 29);

--
-- Recursos
--

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (1, 'image', '/assets/images/image1.png', 1);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (2, 'image', '/assets/images/image2.png', 2);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (3, 'image', '/assets/images/image3.png', 3);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (4, 'image', '/assets/images/image4.png', 4);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (5, 'image', '/assets/images/image5.png', 5);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (6, 'image', '/assets/images/image6.png', 6);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (7, 'image', '/assets/images/image7.png', 7);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (8, 'image', '/assets/images/image8.png', 8);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (9, 'image', '/assets/images/image9.png', 9);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (10, 'image', '/assets/images/image10.png', 10);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (11, 'image', '/assets/images/image11.png', 11);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (12, 'image', '/assets/images/image12.png', 12);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (13, 'image', '/assets/images/image13.png', 13);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (14, 'image', '/assets/images/image14.png', 14);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (15, 'image', '/assets/images/image15.png', 15);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (16, 'image', '/assets/images/image16.png', 16);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (17, 'image', '/assets/images/image17.png', 17);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (18, 'image', '/assets/images/image18.png', 18);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (19, 'image', '/assets/images/image19.png', 19);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (20, 'image', '/assets/images/image20.png', 20);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (21, 'image', '/assets/images/image21.png', 21);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (22, 'image', '/assets/images/image22.png', 22);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (23, 'image', '/assets/images/image23.png', 23);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (24, 'image', '/assets/images/image24.png', 24);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (25, 'image', '/assets/images/image25.png', 25);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (26, 'image', '/assets/images/image26.png', 26);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (27, 'image', '/assets/images/image27.png', 27);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (28, 'image', '/assets/images/image28.png', 28);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (29, 'image', '/assets/images/image29.png', 29);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (30, 'image', '/assets/images/image30.png', 30);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (31, 'image', '/assets/images/image31.png', 31);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (32, 'image', '/assets/images/image32.png', 32);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (33, 'image', '/assets/images/image33.png', 33);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (34, 'image', '/assets/images/image34.png', 34);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (35, 'image', '/assets/images/image35.png', 35);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (36, 'image', '/assets/images/image36.png', 36);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (37, 'image', '/assets/images/image37.png', 37);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (38, 'image', '/assets/images/image38.png', 38);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (39, 'image', '/assets/images/image39.png', 39);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (40, 'image', '/assets/images/image40.png', 40);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (41, 'image', '/assets/images/image41.png', 41);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (42, 'image', '/assets/images/image42.png', 42);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (43, 'image', '/assets/images/image43.png', 43);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (44, 'image', '/assets/images/image44.png', 44);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (45, 'image', '/assets/images/image45.png', 45);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (46, 'image', '/assets/images/image46.png', 46);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (47, 'image', '/assets/images/image47.png', 47);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (48, 'image', '/assets/images/image48.png', 48);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (49, 'image', '/assets/images/image49.png', 49);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (50, 'image', '/assets/images/image50.png', 50);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (51, 'image', '/assets/images/image51.png', 51);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (52, 'image', '/assets/images/image52.png', 52);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (53, 'image', '/assets/images/image53.png', 53);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (54, 'image', '/assets/images/image54.png', 54);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (55, 'image', '/assets/images/image55.png', 55);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (56, 'image', '/assets/images/image56.png', 56);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (57, 'image', '/assets/images/image57.png', 57);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (58, 'image', '/assets/images/image58.png', 58);

  INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (59, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 1);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (60, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 2);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (61, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 3);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (62, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 4);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (63, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 5);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (64, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 6);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (65, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 7);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (66, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 8);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (67, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 9);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (68, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 10);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (69, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 11);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (70, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 12);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (71, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 13);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (72, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 14);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (73, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 15);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (74, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 16);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (75, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 17);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (76, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 18);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (77, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 19);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (78, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 20);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (79, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 21);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (80, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 22);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (81, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 23);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (82, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 24);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (83, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 25);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (84, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 26);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (85, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 27);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (86, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 28);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (87, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 29);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (88, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 30);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (89, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 31);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (90, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 32);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (91, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 33);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (92, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 34);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (93, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 35);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (94, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 36);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (95, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 37);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (96, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 38);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (97, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 39);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (98, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 40);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (99, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 41);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (100, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 42);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (101, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 43);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (102, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 44);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (103, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 45);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (104, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 46);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (105, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 47);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (106, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 48);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (107, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 49);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (108, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 50);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (109, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 51);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (110, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 52);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (111, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 53);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (112, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 54);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (113, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 55);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (114, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 56);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (115, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 57);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (116, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 58);


--
-- Grados-temas
--

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (0, 1);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (1, 2);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (2, 3);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (3, 4);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (4, 5);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (5, 6);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (6, 7);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (0, 8);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (1, 9);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (2, 10);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (3, 11);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (4, 12);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (5, 13);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (6, 14);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (0, 15);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (1, 16);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (2, 17);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (3, 18);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (4, 19);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (5, 20);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (6, 21);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (0, 22);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (1, 23);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (2, 24);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (3, 25);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (4, 26);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (5, 27);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (6, 28);

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (0, 29);

--
-- Grados-temas-vocablos
--

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 1, 1);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 2, 2);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 3, 3);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 4, 4);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 5, 5);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 6, 6);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 7, 7);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 8, 8);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 9, 9);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 10, 10);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 11, 11);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 12, 12);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 13, 13);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 14, 14);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 15, 15);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 16, 16);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 17, 17);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 18, 18);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 19, 19);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 20, 20);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 21, 21);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 22, 22);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 23, 23);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 24, 24);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 25, 25);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 26, 26);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 27, 27);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 28, 28);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 29, 29);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 1, 30);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 2, 31);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 3, 32);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 4, 33);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 5, 34);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 6, 35);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 7, 36);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 8, 37);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 9, 38);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 10, 39);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 11, 40);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 12, 41);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 13, 42);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 14, 43);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 15, 44);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 16, 45);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 17, 46);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 18, 47);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 19, 48);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 20, 49);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 21, 50);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 22, 51);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (1, 23, 52);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (2, 24, 53);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (3, 25, 54);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (4, 26, 55);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (5, 27, 56);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 28, 57);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (0, 29, 58);



--
-- Grados-temas-vocablos complemento para pruebas de practicass
--

INSERT INTO public.grado_tema(grado_id, tema_id)
	VALUES (6, 1);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 41);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 42);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 43);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 44);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 45);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 46);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 47);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 48);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 49);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 50);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 51);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 52);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 53);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 54);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 55);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 56);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 57);

INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
	VALUES (6, 1, 58);


--
-- Roles de usuario
--

INSERT INTO public.rol_usuario(id, nombre)
	VALUES (1, 'profesor');

INSERT INTO public.rol_usuario(id, nombre)
	VALUES (2, 'aprendiz');

--
-- Funcionalidades del sistema
--

INSERT INTO public.funcionalidad_sistema(id, nombre, rol_usuario_id)
	VALUES (1, 'panel-practica', 1);

INSERT INTO public.funcionalidad_sistema(id, nombre, rol_usuario_id)
	VALUES (2, 'panel-profesor', 1);

INSERT INTO public.funcionalidad_sistema(id, nombre, rol_usuario_id)
	VALUES (3, 'panel-practica', 2);

--
-- Usuarios
--
INSERT INTO public.usuario_metadatos( id, practicas_realizadas, consultas_correctas, consultas_incorrectas, puntos_acumulados, trofeos_imparables, trofeos_leal, trofeos_agil)
	VALUES (1, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id, genero)
	VALUES (1, 'Maria', 'Gonzalez', 'mariagozanlez@dominio.com', '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'profesor', 'Graduado', '1990-03-20', 1, '2022-05-23T13:40:20.920Z', 1, 'femenino');

INSERT INTO public.usuario_metadatos( id, practicas_realizadas, consultas_correctas, consultas_incorrectas, puntos_acumulados, trofeos_imparables, trofeos_leal, trofeos_agil)
	VALUES (2, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id, genero)
	VALUES (2, 'Carlos', 'Perez', 'carlosperez@dominio.com', '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'aprendiz', 'Graduado', '2005-01-10', 2, '2022-05-23T13:40:20.920Z', 2, 'masculino');

--
-- Paises
--
INSERT INTO public.pais(nombre) VALUES ('Afganistán');
INSERT INTO public.pais(nombre) VALUES ('Albania');
INSERT INTO public.pais(nombre) VALUES ('Alemania');
INSERT INTO public.pais(nombre) VALUES ('Andorra');
INSERT INTO public.pais(nombre) VALUES ('Angola');
INSERT INTO public.pais(nombre) VALUES ('Antigua y Barbuda');
INSERT INTO public.pais(nombre) VALUES ('Arabia Saudita / Arabia Saudí');
INSERT INTO public.pais(nombre) VALUES ('Argelia');
INSERT INTO public.pais(nombre) VALUES ('Argentina');
INSERT INTO public.pais(nombre) VALUES ('Armenia');
INSERT INTO public.pais(nombre) VALUES ('Australia');
INSERT INTO public.pais(nombre) VALUES ('Austria');
INSERT INTO public.pais(nombre) VALUES ('Azerbaiyán');
INSERT INTO public.pais(nombre) VALUES ('Bahamas');
INSERT INTO public.pais(nombre) VALUES ('Bangladés');
INSERT INTO public.pais(nombre) VALUES ('Barbados');
INSERT INTO public.pais(nombre) VALUES ('Baréin');
INSERT INTO public.pais(nombre) VALUES ('Bélgica');
INSERT INTO public.pais(nombre) VALUES ('Belice');
INSERT INTO public.pais(nombre) VALUES ('Benín');
INSERT INTO public.pais(nombre) VALUES ('Bielorrusia');
INSERT INTO public.pais(nombre) VALUES ('Birmania / Myanmar');
INSERT INTO public.pais(nombre) VALUES ('Bolivia');
INSERT INTO public.pais(nombre) VALUES ('Bosnia y Herzegovina / Bosnia-Herzegovina');
INSERT INTO public.pais(nombre) VALUES ('Botsuana');
INSERT INTO public.pais(nombre) VALUES ('Brasil');
INSERT INTO public.pais(nombre) VALUES ('Brunéi');
INSERT INTO public.pais(nombre) VALUES ('Bulgaria');
INSERT INTO public.pais(nombre) VALUES ('Burkina Faso');
INSERT INTO public.pais(nombre) VALUES ('Burundi');
INSERT INTO public.pais(nombre) VALUES ('Bután');
INSERT INTO public.pais(nombre) VALUES ('Cabo Verde');
INSERT INTO public.pais(nombre) VALUES ('Camboya');
INSERT INTO public.pais(nombre) VALUES ('Camerún');
INSERT INTO public.pais(nombre) VALUES ('Canadá');
INSERT INTO public.pais(nombre) VALUES ('Catar');
INSERT INTO public.pais(nombre) VALUES ('República Centroafricana');
INSERT INTO public.pais(nombre) VALUES ('Chad');
INSERT INTO public.pais(nombre) VALUES ('República Checa / Chequia');
INSERT INTO public.pais(nombre) VALUES ('Chile');
INSERT INTO public.pais(nombre) VALUES ('China');
INSERT INTO public.pais(nombre) VALUES ('Chipre');
INSERT INTO public.pais(nombre) VALUES ('Colombia');
INSERT INTO public.pais(nombre) VALUES ('Comoras');
INSERT INTO public.pais(nombre) VALUES ('República del Congo');
INSERT INTO public.pais(nombre) VALUES ('República Democrática del Congo');
INSERT INTO public.pais(nombre) VALUES ('Corea del Norte');
INSERT INTO public.pais(nombre) VALUES ('Corea del Sur');
INSERT INTO public.pais(nombre) VALUES ('Costa de Marfil');
INSERT INTO public.pais(nombre) VALUES ('Costa Rica');
INSERT INTO public.pais(nombre) VALUES ('Croacia');
INSERT INTO public.pais(nombre) VALUES ('Cuba');
INSERT INTO public.pais(nombre) VALUES ('Dinamarca');
INSERT INTO public.pais(nombre) VALUES ('Dominica');
INSERT INTO public.pais(nombre) VALUES ('República Dominicana');
INSERT INTO public.pais(nombre) VALUES ('Ecuador');
INSERT INTO public.pais(nombre) VALUES ('Egipto');
INSERT INTO public.pais(nombre) VALUES ('El Salvador');
INSERT INTO public.pais(nombre) VALUES ('Emiratos Árabes Unidos');
INSERT INTO public.pais(nombre) VALUES ('Eritrea');
INSERT INTO public.pais(nombre) VALUES ('Eslovaquia');
INSERT INTO public.pais(nombre) VALUES ('Eslovenia');
INSERT INTO public.pais(nombre) VALUES ('España');
INSERT INTO public.pais(nombre) VALUES ('Estados Unidos');
INSERT INTO public.pais(nombre) VALUES ('Estonia');
INSERT INTO public.pais(nombre) VALUES ('Etiopía');
INSERT INTO public.pais(nombre) VALUES ('Filipinas');
INSERT INTO public.pais(nombre) VALUES ('Finlandia');
INSERT INTO public.pais(nombre) VALUES ('Fiyi');
INSERT INTO public.pais(nombre) VALUES ('Francia');
INSERT INTO public.pais(nombre) VALUES ('Gabón');
INSERT INTO public.pais(nombre) VALUES ('Gambia');
INSERT INTO public.pais(nombre) VALUES ('Georgia');
INSERT INTO public.pais(nombre) VALUES ('Ghana');
INSERT INTO public.pais(nombre) VALUES ('Granada');
INSERT INTO public.pais(nombre) VALUES ('Grecia');
INSERT INTO public.pais(nombre) VALUES ('Guatemala');
INSERT INTO public.pais(nombre) VALUES ('Guinea');
INSERT INTO public.pais(nombre) VALUES ('Guinea-Bisáu');
INSERT INTO public.pais(nombre) VALUES ('Guinea Ecuatorial');
INSERT INTO public.pais(nombre) VALUES ('Guyana');
INSERT INTO public.pais(nombre) VALUES ('Haití');
INSERT INTO public.pais(nombre) VALUES ('Honduras');
INSERT INTO public.pais(nombre) VALUES ('Hungría');
INSERT INTO public.pais(nombre) VALUES ('India');
INSERT INTO public.pais(nombre) VALUES ('Indonesia');
INSERT INTO public.pais(nombre) VALUES ('Irak');
INSERT INTO public.pais(nombre) VALUES ('Irán');
INSERT INTO public.pais(nombre) VALUES ('Irlanda');
INSERT INTO public.pais(nombre) VALUES ('Islandia');
INSERT INTO public.pais(nombre) VALUES ('Israel');
INSERT INTO public.pais(nombre) VALUES ('Italia');
INSERT INTO public.pais(nombre) VALUES ('Jamaica');
INSERT INTO public.pais(nombre) VALUES ('Japón');
INSERT INTO public.pais(nombre) VALUES ('Jordania');
INSERT INTO public.pais(nombre) VALUES ('Kazajistán');
INSERT INTO public.pais(nombre) VALUES ('Kenia');
INSERT INTO public.pais(nombre) VALUES ('Kirguistán');
INSERT INTO public.pais(nombre) VALUES ('Kiribati');
INSERT INTO public.pais(nombre) VALUES ('Kuwait');
INSERT INTO public.pais(nombre) VALUES ('Laos');
INSERT INTO public.pais(nombre) VALUES ('Lesoto');
INSERT INTO public.pais(nombre) VALUES ('Letonia');
INSERT INTO public.pais(nombre) VALUES ('Líbano');
INSERT INTO public.pais(nombre) VALUES ('Liberia');
INSERT INTO public.pais(nombre) VALUES ('Libia');
INSERT INTO public.pais(nombre) VALUES ('Liechtenstein');
INSERT INTO public.pais(nombre) VALUES ('Lituania');
INSERT INTO public.pais(nombre) VALUES ('Luxemburgo');
INSERT INTO public.pais(nombre) VALUES ('Macedonia del Norte');
INSERT INTO public.pais(nombre) VALUES ('Madagascar');
INSERT INTO public.pais(nombre) VALUES ('Malasia');
INSERT INTO public.pais(nombre) VALUES ('Malaui');
INSERT INTO public.pais(nombre) VALUES ('Maldivas');
INSERT INTO public.pais(nombre) VALUES ('Mali / Malí');
INSERT INTO public.pais(nombre) VALUES ('Malta');
INSERT INTO public.pais(nombre) VALUES ('Marruecos');
INSERT INTO public.pais(nombre) VALUES ('Islas Marshall');
INSERT INTO public.pais(nombre) VALUES ('Mauricio');
INSERT INTO public.pais(nombre) VALUES ('Mauritania');
INSERT INTO public.pais(nombre) VALUES ('México');
INSERT INTO public.pais(nombre) VALUES ('Micronesia');
INSERT INTO public.pais(nombre) VALUES ('Moldavia');
INSERT INTO public.pais(nombre) VALUES ('Mónaco');
INSERT INTO public.pais(nombre) VALUES ('Mongolia');
INSERT INTO public.pais(nombre) VALUES ('Montenegro');
INSERT INTO public.pais(nombre) VALUES ('Mozambique');
INSERT INTO public.pais(nombre) VALUES ('Namibia');
INSERT INTO public.pais(nombre) VALUES ('Nauru');
INSERT INTO public.pais(nombre) VALUES ('Nepal');
INSERT INTO public.pais(nombre) VALUES ('Nicaragua');
INSERT INTO public.pais(nombre) VALUES ('Níger');
INSERT INTO public.pais(nombre) VALUES ('Nigeria');
INSERT INTO public.pais(nombre) VALUES ('Noruega');
INSERT INTO public.pais(nombre) VALUES ('Nueva Zelanda / Nueva Zelandia');
INSERT INTO public.pais(nombre) VALUES ('Omán');
INSERT INTO public.pais(nombre) VALUES ('Países Bajos');
INSERT INTO public.pais(nombre) VALUES ('Pakistán');
INSERT INTO public.pais(nombre) VALUES ('Palaos');
INSERT INTO public.pais(nombre) VALUES ('Palestina');
INSERT INTO public.pais(nombre) VALUES ('Panamá');
INSERT INTO public.pais(nombre) VALUES ('Papúa Nueva Guinea');
INSERT INTO public.pais(nombre) VALUES ('Paraguay');
INSERT INTO public.pais(nombre) VALUES ('Perú');
INSERT INTO public.pais(nombre) VALUES ('Polonia');
INSERT INTO public.pais(nombre) VALUES ('Portugal');
INSERT INTO public.pais(nombre) VALUES ('Reino Unido');
INSERT INTO public.pais(nombre) VALUES ('Ruanda');
INSERT INTO public.pais(nombre) VALUES ('Rumania / Rumanía');
INSERT INTO public.pais(nombre) VALUES ('Rusia');
INSERT INTO public.pais(nombre) VALUES ('Islas Salomón');
INSERT INTO public.pais(nombre) VALUES ('Samoa');
INSERT INTO public.pais(nombre) VALUES ('San Cristóbal y Nieves');
INSERT INTO public.pais(nombre) VALUES ('San Marino');
INSERT INTO public.pais(nombre) VALUES ('San Vicente y las Granadinas');
INSERT INTO public.pais(nombre) VALUES ('Santa Lucía');
INSERT INTO public.pais(nombre) VALUES ('Santo Tomé y Príncipe');
INSERT INTO public.pais(nombre) VALUES ('Senegal');
INSERT INTO public.pais(nombre) VALUES ('Serbia');
INSERT INTO public.pais(nombre) VALUES ('Seychelles');
INSERT INTO public.pais(nombre) VALUES ('Sierra Leona');
INSERT INTO public.pais(nombre) VALUES ('Singapur');
INSERT INTO public.pais(nombre) VALUES ('Siria');
INSERT INTO public.pais(nombre) VALUES ('Somalia');
INSERT INTO public.pais(nombre) VALUES ('Sri Lanka');
INSERT INTO public.pais(nombre) VALUES ('Suazilandia / Esuatini');
INSERT INTO public.pais(nombre) VALUES ('Sudáfrica');
INSERT INTO public.pais(nombre) VALUES ('Sudán');
INSERT INTO public.pais(nombre) VALUES ('Sudán del Sur');
INSERT INTO public.pais(nombre) VALUES ('Suecia');
INSERT INTO public.pais(nombre) VALUES ('Suiza');
INSERT INTO public.pais(nombre) VALUES ('Surinam');
INSERT INTO public.pais(nombre) VALUES ('Tailandia');
INSERT INTO public.pais(nombre) VALUES ('Tanzania');
INSERT INTO public.pais(nombre) VALUES ('Tayikistán');
INSERT INTO public.pais(nombre) VALUES ('Timor Oriental');
INSERT INTO public.pais(nombre) VALUES ('Togo');
INSERT INTO public.pais(nombre) VALUES ('Tonga');
INSERT INTO public.pais(nombre) VALUES ('Trinidad y Tobago');
INSERT INTO public.pais(nombre) VALUES ('Túnez');
INSERT INTO public.pais(nombre) VALUES ('Turkmenistán');
INSERT INTO public.pais(nombre) VALUES ('Turquía');
INSERT INTO public.pais(nombre) VALUES ('Tuvalu');
INSERT INTO public.pais(nombre) VALUES ('Ucrania');
INSERT INTO public.pais(nombre) VALUES ('Uganda');
INSERT INTO public.pais(nombre) VALUES ('Uruguay');
INSERT INTO public.pais(nombre) VALUES ('Uzbekistán');
INSERT INTO public.pais(nombre) VALUES ('Vanuatu');
INSERT INTO public.pais(nombre) VALUES ('Ciudad del Vaticano');
INSERT INTO public.pais(nombre) VALUES ('Venezuela');
INSERT INTO public.pais(nombre) VALUES ('Vietnam');
INSERT INTO public.pais(nombre) VALUES ('Yemen');
INSERT INTO public.pais(nombre) VALUES ('Yibuti');
INSERT INTO public.pais(nombre) VALUES ('Zambia');
INSERT INTO public.pais(nombre) VALUES ('Zimbabue');
--
-- Ciudades
--

INSERT INTO public.ciudad(nombre) VALUES ('Mérida');

--
-- Escuelas
--

INSERT INTO public.escuela(nombre) VALUES ('UEEB “Ofelia Tancredi de Corredor”');

--
-- x
--






