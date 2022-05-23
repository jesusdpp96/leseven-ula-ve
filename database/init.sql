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
	VALUES (1, 'ARBOLES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (2, 'ALIMENTOS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (3, 'ANIMALES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (4, 'COLORES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (5, 'DÍAS DE LA SEMANA', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (6, 'ENFERMEDADES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (7, 'FIGURAS GEOMÉTRICAS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (8, 'FRUTAS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (9, 'JUGUETES/JUEGOS/DEPORTES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (10, 'LUGARES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (11, 'LUGARES DE MERIDA', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (12, 'MEDIOS DE TRANSPORTE', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (13, 'MESES DEL AÑO', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (14, 'NOCIÓN DE CANTIDAD', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (15, 'NOCIÓN DE TAMAÑO', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (16, 'NOCION ESPACIAL', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (17, 'NOCIÓN TEMPORAL', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (18, 'NUMEROS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (19, 'OBJETOS DEL HOGAR', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (20, 'OFICIOS Y PROFESIONES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (21, 'PARTES DEL CUERPO', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (22, 'PERSONAJES HISTORICOS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (23, 'PERSONAS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (24, 'ROPA', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (25, 'SIMBOLOS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (26, 'SINTOMAS', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (27, 'UTENSILIOS DE LA COCINA', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (28, 'UTILES ESCOLARES', 'image.png');

INSERT INTO public.tema(id, nombre, image_src)
	VALUES (29, 'VERDURAS Y HORTALIZAS', 'image.png');


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
	VALUES (1, 'image', '/image1,.png', 1);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (2, 'image', '/image2,.png', 2);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (3, 'image', '/image3,.png', 3);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (4, 'image', '/image4,.png', 4);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (5, 'image', '/image5,.png', 5);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (6, 'image', '/image6,.png', 6);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (7, 'image', '/image7,.png', 7);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (8, 'image', '/image8,.png', 8);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (9, 'image', '/image9,.png', 9);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (10, 'image', '/image10.png', 10);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (11, 'image', '/image11.png', 11);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (12, 'image', '/image12.png', 12);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (13, 'image', '/image13.png', 13);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (14, 'image', '/image14.png', 14);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (15, 'image', '/image15.png', 15);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (16, 'image', '/image16.png', 16);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (17, 'image', '/image17.png', 17);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (18, 'image', '/image18.png', 18);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (19, 'image', '/image19.png', 19);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (20, 'image', '/image20.png', 20);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (21, 'image', '/image21.png', 21);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (22, 'image', '/image22.png', 22);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (23, 'image', '/image23.png', 23);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (24, 'image', '/image24.png', 24);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (25, 'image', '/image25.png', 25);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (26, 'image', '/image26.png', 26);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (27, 'image', '/image27.png', 27);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (28, 'image', '/image28.png', 28);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (29, 'image', '/image29.png', 29);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (30, 'image', '/image30.png', 30);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (31, 'image', '/image31.png', 31);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (32, 'image', '/image32.png', 32);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (33, 'image', '/image33.png', 33);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (34, 'image', '/image34.png', 34);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (35, 'image', '/image35.png', 35);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (36, 'image', '/image36.png', 36);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (37, 'image', '/image37.png', 37);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (38, 'image', '/image38.png', 38);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (39, 'image', '/image39.png', 39);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (40, 'image', '/image40.png', 40);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (41, 'image', '/image41.png', 41);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (42, 'image', '/image42.png', 42);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (43, 'image', '/image43.png', 43);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (44, 'image', '/image44.png', 44);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (45, 'image', '/image45.png', 45);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (46, 'image', '/image46.png', 46);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (47, 'image', '/image47.png', 47);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (48, 'image', '/image48.png', 48);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (49, 'image', '/image49.png', 49);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (50, 'image', '/image50.png', 50);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (51, 'image', '/image51.png', 51);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (52, 'image', '/image52.png', 52);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (53, 'image', '/image53.png', 53);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (54, 'image', '/image54.png', 54);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (55, 'image', '/image55.png', 55);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (56, 'image', '/image56.png', 56);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (57, 'image', '/image57.png', 57);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (58, 'image', '/image58.png', 58);

  INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (59, 'video', 'video.mp4', 1);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (60, 'video', 'video.mp4', 2);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (61, 'video', 'video.mp4', 3);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (62, 'video', 'video.mp4', 4);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (63, 'video', 'video.mp4', 5);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (64, 'video', 'video.mp4', 6);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (65, 'video', 'video.mp4', 7);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (66, 'video', 'video.mp4', 8);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (67, 'video', 'video.mp4', 9);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (68, 'video', 'video.mp4', 10);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (69, 'video', 'video.mp4', 11);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (70, 'video', 'video.mp4', 12);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (71, 'video', 'video.mp4', 13);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (72, 'video', 'video.mp4', 14);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (73, 'video', 'video.mp4', 15);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (74, 'video', 'video.mp4', 16);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (75, 'video', 'video.mp4', 17);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (76, 'video', 'video.mp4', 18);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (77, 'video', 'video.mp4', 19);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (78, 'video', 'video.mp4', 20);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (79, 'video', 'video.mp4', 21);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (80, 'video', 'video.mp4', 22);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (81, 'video', 'video.mp4', 23);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (82, 'video', 'video.mp4', 24);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (83, 'video', 'video.mp4', 25);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (84, 'video', 'video.mp4', 26);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (85, 'video', 'video.mp4', 27);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (86, 'video', 'video.mp4', 28);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (87, 'video', 'video.mp4', 29);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (88, 'video', 'video.mp4', 30);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (89, 'video', 'video.mp4', 31);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (90, 'video', 'video.mp4', 32);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (91, 'video', 'video.mp4', 33);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (92, 'video', 'video.mp4', 34);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (93, 'video', 'video.mp4', 35);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (94, 'video', 'video.mp4', 36);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (95, 'video', 'video.mp4', 37);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (96, 'video', 'video.mp4', 38);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (97, 'video', 'video.mp4', 39);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (98, 'video', 'video.mp4', 40);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (99, 'video', 'video.mp4', 41);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (100, 'video', 'video.mp4', 42);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (101, 'video', 'video.mp4', 43);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (102, 'video', 'video.mp4', 44);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (103, 'video', 'video.mp4', 45);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (104, 'video', 'video.mp4', 46);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (105, 'video', 'video.mp4', 47);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (106, 'video', 'video.mp4', 48);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (107, 'video', 'video.mp4', 49);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (108, 'video', 'video.mp4', 50);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (109, 'video', 'video.mp4', 51);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (110, 'video', 'video.mp4', 52);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (111, 'video', 'video.mp4', 53);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (112, 'video', 'video.mp4', 54);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (113, 'video', 'video.mp4', 55);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (114, 'video', 'video.mp4', 56);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (115, 'video', 'video.mp4', 57);

INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
	VALUES (116, 'video', 'video.mp4', 58);


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

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id)
	VALUES (1, 'Maria', 'Gonzalez', 'mariagozanlez@dominio.com', '25d55ad283aa400af464c76d713c07ad', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'profesor', 'Graduado', '1990-03-20', 1, '2022-05-23T13:40:20.920Z', 1);

INSERT INTO public.usuario_metadatos( id, practicas_realizadas, consultas_correctas, consultas_incorrectas, puntos_acumulados, trofeos_imparables, trofeos_leal, trofeos_agil)
	VALUES (2, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id)
	VALUES (2, 'Carlos', 'Perez', 'carlosperez@dominio.com', '25d55ad283aa400af464c76d713c07ad', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'aprendiz', 'Graduado', '2005-01-10', 2, '2022-05-23T13:40:20.920Z', 2);

--
-- x
--

--
-- x
--

--
-- x
--

--
-- x
--






