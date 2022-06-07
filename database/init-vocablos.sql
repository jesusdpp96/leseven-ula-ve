
--
-- Grados
--
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (0, 'Preescolar', '/assets/images/preescolar.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (1, 'Primer grado', '/assets/images/primer-grado.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (2, 'Segundo grado', '/assets/images/segundo-grado.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (3, 'Tercer Grado', '/assets/images/tercer-grado.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (4, 'Cuarto Grado', '/assets/images/cuarto-grado.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (5, 'Quinto Grado', '/assets/images/quinto-grado.png');

  
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (6, 'Sexto Grado', '/assets/images/sexto-grado.png');

  


--
-- Temas
--
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (0, 'Alimentos', '/assets/images/alimentos.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (1, 'Animales', '/assets/images/animales.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (2, 'Arboles', '/assets/images/arboles.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (3, 'Articulos de uso Personal', '/assets/images/articulos-de-uso-personal.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (4, 'Colores', '/assets/images/colores.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (5, 'Días de la semana', '/assets/images/dias-de-la-semana.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (6, 'Dulces/Postres/Golosinas', '/assets/images/dulces-postres-golosinas.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (7, 'Enfermedades', '/assets/images/enfermedades.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (8, 'Figuras geométricas', '/assets/images/figuras.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (9, 'Frutas', '/assets/images/frutas.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (10, 'Flores', '/assets/images/flores.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (11, 'Juguetes/Juegos/Deportes', '/assets/images/juegos.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (12, 'Lugares', '/assets/images/lugares.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (13, 'Lugares de Mérida', '/assets/images/lugares-de-merida.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (14, 'Medios de transporte', '/assets/images/medios-de-transporte.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (15, 'Meses del año', '/assets/images/meses-del-ano.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (16, 'Noción de cantidad', '/assets/images/nocion-de-cantidad.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (17, 'Noción de tamaño', '/assets/images/nocion-de-tamano.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (18, 'Noción espacial', '/assets/images/nocion-espacial.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (19, 'Noción temporal', '/assets/images/nocion-temporal.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (20, 'Numeros', '/assets/images/numeros.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (21, 'Objetos del hogar', '/assets/images/objetos-del-hogar.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (22, 'Oficios y Profesiones', '/assets/images/oficios-y-profesiones.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (23, 'Partes del cuerpo', '/assets/images/partes-del-cuerpo.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (24, 'Personajes historicos', '/assets/images/personajes-historicos.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (25, 'Personas', '/assets/images/personas.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (26, 'Ropa', '/assets/images/ropa.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (27, 'Simbolos', '/assets/images/simbolos.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (28, 'Sintomas', '/assets/images/sintomas.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (29, 'Utensilios de cocina', '/assets/images/utensilios-de-cocina.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (30, 'Utiles escolares', '/assets/images/utiles-escolares.png');
  
  
  INSERT INTO public.tema(id, nombre, image_src)
    VALUES (31, 'Verduras y hortalizas', '/assets/images/verduras-y-hortalizas.png');
  
  


--
-- Preescolar
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (0, 'Agua', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (0, 'image', '/assets/images/agua.png', 0);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 0);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 0, 0);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (1, 'Arepa', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (2, 'image', '/assets/images/arepa.png', 1);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (3, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 0, 1);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (2, 'Jugo', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (4, 'image', '/assets/images/jugo.png', 2);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (5, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 0, 2);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (3, 'Leche', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (6, 'image', '/assets/images/leche.png', 3);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (7, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 3);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 0, 3);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (4, 'Pan', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (8, 'image', '/assets/images/pan.png', 4);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (9, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 0, 4);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (5, 'Gato', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (10, 'image', '/assets/images/gato.png', 5);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (11, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 5);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 1, 5);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (6, 'Perro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (12, 'image', '/assets/images/perro.png', 6);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (13, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 6);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 1, 6);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (7, 'Pato', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (14, 'image', '/assets/images/pato.png', 7);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (15, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 1, 7);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (8, 'Oso', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (16, 'image', '/assets/images/oso.png', 8);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (17, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 1, 8);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (9, 'Amarillo', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (18, 'image', '/assets/images/amarillo.png', 9);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (19, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 9);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 4, 9);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (10, 'Azul', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (20, 'image', '/assets/images/azul.png', 10);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (21, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 10);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 4, 10);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (11, 'Rojo', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (22, 'image', '/assets/images/rojo.png', 11);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (23, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 4, 11);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (12, 'Lunes', 5);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (24, 'image', '/assets/images/lunes.png', 12);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (25, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 12);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 5);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 5, 12);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (13, 'Martes', 5);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (26, 'image', '/assets/images/martes.png', 13);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (27, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 5, 13);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (14, 'Circulo', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (28, 'image', '/assets/images/circulo.png', 14);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (29, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 14);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 8, 14);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (15, 'Uva', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (30, 'image', '/assets/images/uva.png', 15);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (31, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 15);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 9, 15);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (16, 'Coco', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (32, 'image', '/assets/images/coco.png', 16);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (33, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 16);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 9, 16);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (17, 'Pelota', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (34, 'image', '/assets/images/pelota.png', 17);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (35, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 17);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 11, 17);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (18, 'Muñeca', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (36, 'image', '/assets/images/muneca.png', 18);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (37, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 18);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 11, 18);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (19, 'Baño', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (38, 'image', '/assets/images/bano.png', 19);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (39, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 19);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 12, 19);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (20, 'Casa', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (40, 'image', '/assets/images/casa.png', 20);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (41, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 12, 20);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (21, 'Escuela', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (42, 'image', '/assets/images/escuela.png', 21);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (43, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 12, 21);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (22, 'Parque', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (44, 'image', '/assets/images/parque.png', 22);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (45, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 12, 22);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (23, 'Escuela Ofelia Tancredi', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (46, 'image', '/assets/images/escuela-ofelia-tancredi.png', 23);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (47, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 23);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 13, 23);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (24, 'Zoológico', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (48, 'image', '/assets/images/zoologico.png', 24);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (49, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 13, 24);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (25, 'Avión', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (50, 'image', '/assets/images/avion.png', 25);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (51, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 25);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 14, 25);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (26, 'Bus', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (52, 'image', '/assets/images/bus.png', 26);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (53, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 14, 26);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (27, 'Carro', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (54, 'image', '/assets/images/carro.png', 27);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (55, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 27);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 14, 27);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (28, 'Moto', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (56, 'image', '/assets/images/moto.png', 28);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (57, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 14, 28);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (29, 'Poco', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (58, 'image', '/assets/images/poco.png', 29);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (59, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 29);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 16);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 16, 29);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (30, 'Mucho', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (60, 'image', '/assets/images/mucho.png', 30);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (61, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 16, 30);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (31, 'Nada', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (62, 'image', '/assets/images/nada.png', 31);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (63, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 16, 31);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (32, 'Grande', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (64, 'image', '/assets/images/grande.png', 32);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (65, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 32);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 17);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 32);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (33, 'Pequeño', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (66, 'image', '/assets/images/pequeno.png', 33);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (67, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 33);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 33);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (34, 'Mediano', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (68, 'image', '/assets/images/mediano.png', 34);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (69, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 34);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 34);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (35, 'Corto', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (70, 'image', '/assets/images/corto.png', 35);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (71, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 35);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 35);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (36, 'Largo', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (72, 'image', '/assets/images/largo.png', 36);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (73, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 36);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 36);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (37, 'alto', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (74, 'image', '/assets/images/alto.png', 37);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (75, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 37);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 37);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (38, 'Bajo', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (76, 'image', '/assets/images/bajo.png', 38);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (77, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 38);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 17, 38);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (39, 'Arriba', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (78, 'image', '/assets/images/arriba.png', 39);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (79, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 39);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 18);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 18, 39);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (40, 'Abajo', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (80, 'image', '/assets/images/abajo.png', 40);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (81, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 40);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 18, 40);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (41, 'Ayer', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (82, 'image', '/assets/images/ayer.png', 41);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (83, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 41);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 19);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 19, 41);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (42, 'Hoy', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (84, 'image', '/assets/images/hoy.png', 42);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (85, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 42);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 19, 42);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (43, 'Mañana', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (86, 'image', '/assets/images/manana.png', 43);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (87, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 43);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 19, 43);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (44, 'Uno', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (88, 'image', '/assets/images/uno.png', 44);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (89, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 44);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 20, 44);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (45, 'Dos', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (90, 'image', '/assets/images/dos.png', 45);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (91, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 45);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 20, 45);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (46, 'Tres', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (92, 'image', '/assets/images/tres.png', 46);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (93, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 46);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 20, 46);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (47, 'Mesa', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (94, 'image', '/assets/images/mesa.png', 47);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (95, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 47);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 21, 47);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (48, 'Silla', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (96, 'image', '/assets/images/silla.png', 48);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (97, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 48);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 21, 48);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (49, 'Doctor', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (98, 'image', '/assets/images/doctor.png', 49);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (99, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 49);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 22, 49);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (50, 'Maestra', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (100, 'image', '/assets/images/maestra.png', 50);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (101, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 50);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 22, 50);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (51, 'Boca', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (102, 'image', '/assets/images/boca.png', 51);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (103, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 51);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 23, 51);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (52, 'Mano', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (104, 'image', '/assets/images/mano.png', 52);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (105, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 52);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 23, 52);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (53, 'Nariz', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (106, 'image', '/assets/images/nariz.png', 53);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (107, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 53);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 23, 53);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (54, 'Ojos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (108, 'image', '/assets/images/ojos.png', 54);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (109, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 54);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 23, 54);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (55, 'Simón Bolívar', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (110, 'image', '/assets/images/simon-bolivar.png', 55);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (111, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 55);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 24, 55);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (56, 'Mamá', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (112, 'image', '/assets/images/mama.png', 56);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (113, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 56);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 25, 56);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (57, 'Papá', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (114, 'image', '/assets/images/papa.png', 57);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (115, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 57);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 25, 57);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (58, 'Bebé', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (116, 'image', '/assets/images/bebe.png', 58);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (117, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 58);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 25, 58);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (59, 'Niño', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (118, 'image', '/assets/images/nino.png', 59);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (119, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 59);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 25, 59);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (60, 'Niña', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (120, 'image', '/assets/images/nina.png', 60);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (121, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 60);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 25, 60);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (61, 'Camisa', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (122, 'image', '/assets/images/camisa.png', 61);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (123, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 61);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 26, 61);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (62, 'Medias', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (124, 'image', '/assets/images/medias.png', 62);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (125, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 62);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 26, 62);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (63, 'Pantalones', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (126, 'image', '/assets/images/pantalones.png', 63);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (127, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 63);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 26, 63);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (64, 'Zapatos', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (128, 'image', '/assets/images/zapatos.png', 64);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (129, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 64);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 26, 64);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (65, 'Bandera', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (130, 'image', '/assets/images/bandera.png', 65);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (131, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 65);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (0, 27);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (0, 27, 65);
    


--
-- Primer Grado
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (66, 'Carne', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (132, 'image', '/assets/images/carne.png', 66);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (133, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 66);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 0, 66);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (67, 'pasta', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (134, 'image', '/assets/images/pasta.png', 67);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (135, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 67);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 0, 67);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (68, 'Pollo', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (136, 'image', '/assets/images/pollo.png', 68);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (137, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 68);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 0, 68);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (69, 'Queso', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (138, 'image', '/assets/images/queso.png', 69);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (139, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 69);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 0, 69);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (70, 'Torta', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (140, 'image', '/assets/images/torta.png', 70);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (141, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 70);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 0, 70);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (71, 'Cóndor', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (142, 'image', '/assets/images/condor.png', 71);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (143, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 71);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 71);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (72, 'Gallina', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (144, 'image', '/assets/images/gallina.png', 72);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (145, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 72);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 72);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (73, 'Gallo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (146, 'image', '/assets/images/gallo.png', 73);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (147, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 73);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 73);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (74, 'Pájaro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (148, 'image', '/assets/images/pajaro.png', 74);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (149, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 74);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 74);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 68);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (75, 'Ratón', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (150, 'image', '/assets/images/raton.png', 75);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (151, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 75);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 75);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (76, 'Sapo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (152, 'image', '/assets/images/sapo.png', 76);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (153, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 76);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 76);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (77, 'Vaca', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (154, 'image', '/assets/images/vaca.png', 77);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (155, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 77);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 1, 77);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (78, 'Araguaney', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (156, 'image', '/assets/images/araguaney.png', 78);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (157, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 78);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 2, 78);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 4, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 4, 10);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 4, 11);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (79, 'Verde', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (158, 'image', '/assets/images/verde.png', 79);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (159, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 79);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 4, 79);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 5);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 5, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 5, 13);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (80, 'Viernes', 5);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (160, 'image', '/assets/images/viernes.png', 80);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (161, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 80);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 5, 80);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (81, 'Cólera', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (162, 'image', '/assets/images/colera.png', 81);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (163, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 81);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 7, 81);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (82, 'Dengue', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (164, 'image', '/assets/images/dengue.png', 82);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (165, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 82);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 7, 82);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (83, 'Gripe', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (166, 'image', '/assets/images/gripe.png', 83);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (167, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 83);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 7, 83);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 8, 14);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (84, 'Triángulo', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (168, 'image', '/assets/images/triangulo.png', 84);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (169, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 84);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 8, 84);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (85, 'Cuadrado', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (170, 'image', '/assets/images/cuadrado.png', 85);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (171, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 85);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 8, 85);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (86, 'Cambur', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (172, 'image', '/assets/images/cambur.png', 86);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (173, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 86);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 9, 86);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (87, 'Mango', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (174, 'image', '/assets/images/mango.png', 87);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (175, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 87);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 9, 87);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (88, 'Mora', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (176, 'image', '/assets/images/mora.png', 88);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (177, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 88);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 9, 88);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (89, 'Piña', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (178, 'image', '/assets/images/pina.png', 89);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (179, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 89);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 9, 89);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (90, 'Patilla', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (180, 'image', '/assets/images/patilla.png', 90);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (181, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 90);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 9, 90);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (91, 'Metra', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (182, 'image', '/assets/images/metra.png', 91);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (183, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 91);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 11, 91);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (92, 'Pito', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (184, 'image', '/assets/images/pito.png', 92);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (185, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 92);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 11, 92);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (93, 'Trompo', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (186, 'image', '/assets/images/trompo.png', 93);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (187, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 93);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 11, 93);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (94, 'Plaza', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (188, 'image', '/assets/images/plaza.png', 94);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (189, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 94);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 12, 94);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (95, 'Cocina', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (190, 'image', '/assets/images/cocina.png', 95);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (191, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 95);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 12, 95);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 12, 19);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (96, 'Cancha', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (192, 'image', '/assets/images/cancha.png', 96);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (193, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 96);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 12, 96);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (97, 'Cbit', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (194, 'image', '/assets/images/cbit.png', 97);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (195, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 97);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 12, 97);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 13, 23);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (98, 'Zoológico "Chorros de Milla"', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (196, 'image', '/assets/images/zoologico-chorros-de-milla.png', 98);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (197, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 98);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 13, 98);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (99, 'Parque La Isla', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (198, 'image', '/assets/images/parque-la-isla.png', 99);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (199, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 99);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 13, 99);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (100, 'Barco', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (200, 'image', '/assets/images/barco.png', 100);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (201, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 100);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 14, 100);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (101, 'Bicicleta', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (202, 'image', '/assets/images/bicicleta.png', 101);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (203, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 101);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 14, 101);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (102, 'Cohete', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (204, 'image', '/assets/images/cohete.png', 102);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (205, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 102);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 14, 102);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (103, 'Helicóptero', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (206, 'image', '/assets/images/helicoptero.png', 103);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (207, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 103);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 14, 103);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (104, 'Enero', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (208, 'image', '/assets/images/enero.png', 104);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (209, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 104);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 15);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 15, 104);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (105, 'Mayo', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (210, 'image', '/assets/images/mayo.png', 105);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (211, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 105);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 15, 105);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (106, 'Junio', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (212, 'image', '/assets/images/junio.png', 106);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (213, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 106);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 15, 106);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (107, 'Julio', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (214, 'image', '/assets/images/julio.png', 107);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (215, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 107);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 15, 107);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 16);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 16, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 16, 31);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (108, 'Número', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (216, 'image', '/assets/images/numero.png', 108);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (217, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 108);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 16, 108);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 16, 29);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 17);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 37);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 38);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 35);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 32);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 36);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 34);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 17, 33);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 18);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 40);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 39);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (109, 'Cerca', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (218, 'image', '/assets/images/cerca.png', 109);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (219, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 109);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 109);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (110, 'Debajo', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (220, 'image', '/assets/images/debajo.png', 110);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (221, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 110);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 110);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (111, 'Delante', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (222, 'image', '/assets/images/delante.png', 111);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (223, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 111);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 111);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (112, 'Detrás', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (224, 'image', '/assets/images/detras.png', 112);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (225, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 112);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 112);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (113, 'Lejos', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (226, 'image', '/assets/images/lejos.png', 113);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (227, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 113);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 113);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (114, 'Sobre', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (228, 'image', '/assets/images/sobre.png', 114);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (229, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 114);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 18, 114);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (115, 'Ahora', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (230, 'image', '/assets/images/ahora.png', 115);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (231, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 115);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 19);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 19, 115);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (116, 'Anteayer', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (232, 'image', '/assets/images/anteayer.png', 116);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (233, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 116);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 19, 116);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (117, 'Antes', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (234, 'image', '/assets/images/antes.png', 117);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (235, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 117);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 19, 117);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (118, 'Después', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (236, 'image', '/assets/images/despues.png', 118);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (237, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 118);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 19, 118);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (119, 'Pasado mañana', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (238, 'image', '/assets/images/pasado-manana.png', 119);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (239, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 119);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 19, 119);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (120, 'Cuatro', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (240, 'image', '/assets/images/cuatro.png', 120);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (241, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 120);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 120);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (121, 'Cinco', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (242, 'image', '/assets/images/cinco.png', 121);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (243, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 121);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 121);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (122, 'Seis', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (244, 'image', '/assets/images/seis.png', 122);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (245, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 122);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 122);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (123, 'Siete', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (246, 'image', '/assets/images/siete.png', 123);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (247, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 123);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 123);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (124, 'Ocho', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (248, 'image', '/assets/images/ocho.png', 124);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (249, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 124);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 124);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (125, 'Nueve', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (250, 'image', '/assets/images/nueve.png', 125);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (251, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 125);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 125);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (126, 'Diez', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (252, 'image', '/assets/images/diez.png', 126);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (253, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 126);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 20, 126);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (127, 'Cama,', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (254, 'image', '/assets/images/cama,.png', 127);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (255, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 127);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 21, 127);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (128, 'Mueble', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (256, 'image', '/assets/images/mueble.png', 128);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (257, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 128);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 21, 128);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (129, 'Bomberos', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (258, 'image', '/assets/images/bomberos.png', 129);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (259, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 129);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 129);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 49);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 50);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (130, 'Obrero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (260, 'image', '/assets/images/obrero.png', 130);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (261, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 130);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 130);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (131, 'Policía', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (262, 'image', '/assets/images/policia.png', 131);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (263, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 131);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 131);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (132, 'Panadera', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (264, 'image', '/assets/images/panadera.png', 132);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (265, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 132);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 22, 132);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (133, 'Brazo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (266, 'image', '/assets/images/brazo.png', 133);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (267, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 133);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 133);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (134, 'Cabeza', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (268, 'image', '/assets/images/cabeza.png', 134);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (269, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 134);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 134);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (135, 'Cara', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (270, 'image', '/assets/images/cara.png', 135);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (271, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 135);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 135);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (136, 'Diente', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (272, 'image', '/assets/images/diente.png', 136);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (273, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 136);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 136);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (137, 'Pelo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (274, 'image', '/assets/images/pelo.png', 137);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (275, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 137);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 137);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (138, 'Pie', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (276, 'image', '/assets/images/pie.png', 138);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (277, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 138);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 138);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (139, 'Pierna', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (278, 'image', '/assets/images/pierna.png', 139);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (279, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 139);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 23, 139);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 24, 55);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (140, 'Francisco de Mirando', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (280, 'image', '/assets/images/francisco-de-mirando.png', 140);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (281, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 140);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 24, 140);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (141, 'Simón Rodriguez', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (282, 'image', '/assets/images/simon-rodriguez.png', 141);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (283, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 141);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 24, 141);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (142, 'Abuelo', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (284, 'image', '/assets/images/abuelo.png', 142);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (285, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 142);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 142);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (143, 'Abuela', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (286, 'image', '/assets/images/abuela.png', 143);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (287, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 143);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 143);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (144, 'Hermano', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (288, 'image', '/assets/images/hermano.png', 144);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (289, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 144);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 144);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (145, 'Hermana', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (290, 'image', '/assets/images/hermana.png', 145);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (291, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 145);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 145);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (146, 'Hombre', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (292, 'image', '/assets/images/hombre.png', 146);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (293, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 146);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 146);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (147, 'Mujer', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (294, 'image', '/assets/images/mujer.png', 147);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (295, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 147);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 25, 147);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 26, 61);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 26, 62);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 26, 63);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 26, 64);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (148, 'Escudo', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (296, 'image', '/assets/images/escudo.png', 148);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (297, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 148);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 27);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 27, 148);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (149, 'Himno Nacional', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (298, 'image', '/assets/images/himno-nacional.png', 149);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (299, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 149);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 27, 149);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (150, 'Diarrea', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (300, 'image', '/assets/images/diarrea.png', 150);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (301, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 150);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 28, 150);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (151, 'Dolor', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (302, 'image', '/assets/images/dolor.png', 151);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (303, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 151);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 28, 151);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (152, 'Tos', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (304, 'image', '/assets/images/tos.png', 152);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (305, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 152);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 28, 152);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (153, 'Vómito', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (306, 'image', '/assets/images/vomito.png', 153);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (307, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 153);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 28, 153);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (154, 'Olla', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (308, 'image', '/assets/images/olla.png', 154);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (309, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 154);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 29);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 29, 154);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (155, 'Taza', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (310, 'image', '/assets/images/taza.png', 155);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (311, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 155);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 29, 155);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (156, 'Tenedor', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (312, 'image', '/assets/images/tenedor.png', 156);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (313, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 156);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 29, 156);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (157, 'Borrador', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (314, 'image', '/assets/images/borrador.png', 157);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (315, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 157);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 30, 157);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (158, 'Cuaderno', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (316, 'image', '/assets/images/cuaderno.png', 158);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (317, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 158);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 30, 158);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (159, 'Lápiz', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (318, 'image', '/assets/images/lapiz.png', 159);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (319, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 159);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 30, 159);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (160, 'Sacapunta', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (320, 'image', '/assets/images/sacapunta.png', 160);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (321, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 160);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 30, 160);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (1, 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 31, 57);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (161, 'Auyama', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (322, 'image', '/assets/images/auyama.png', 161);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (323, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 161);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 31, 161);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (162, 'Apio', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (324, 'image', '/assets/images/apio.png', 162);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (325, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 162);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (1, 31, 162);
    


--
-- Segundo Grado
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (163, 'Cafe', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (326, 'image', '/assets/images/cafe.png', 163);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (327, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 163);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 0, 163);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (164, 'Gelatina', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (328, 'image', '/assets/images/gelatina.png', 164);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (329, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 164);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 0, 164);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (165, 'Ponque', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (330, 'image', '/assets/images/ponque.png', 165);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (331, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 165);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 0, 165);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (166, 'Sopa', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (332, 'image', '/assets/images/sopa.png', 166);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (333, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 166);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 0, 166);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (167, 'Te', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (334, 'image', '/assets/images/te.png', 167);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (335, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 167);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 0, 167);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (168, 'Abeja', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (336, 'image', '/assets/images/abeja.png', 168);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (337, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 168);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 1, 168);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (169, 'Burro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (338, 'image', '/assets/images/burro.png', 169);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (339, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 169);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 1, 169);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (170, 'Cochino', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (340, 'image', '/assets/images/cochino.png', 170);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (341, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 170);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 1, 170);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (171, 'Oveja', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (342, 'image', '/assets/images/oveja.png', 171);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (343, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 171);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 1, 171);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (172, 'Paloma', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (344, 'image', '/assets/images/paloma.png', 172);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (345, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 172);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 1, 172);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (173, 'Bucare ceibo', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (346, 'image', '/assets/images/bucare-ceibo.png', 173);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (347, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 173);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 2, 173);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 4, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 4, 10);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (174, 'Morado', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (348, 'image', '/assets/images/morado.png', 174);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (349, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 174);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 4, 174);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (175, 'Negro', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (350, 'image', '/assets/images/negro.png', 175);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (351, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 175);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 4, 175);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 4, 79);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (176, 'Domingo', 5);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (352, 'image', '/assets/images/domingo.png', 176);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (353, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 176);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 5);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 5, 176);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 5, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 5, 13);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (177, 'Miercoles', 5);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (354, 'image', '/assets/images/miercoles.png', 177);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (355, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 177);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 5, 177);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 5, 80);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (178, 'Ah1n1', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (356, 'image', '/assets/images/ah1n1.png', 178);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (357, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 178);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 7, 178);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (179, 'Chikungunya', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (358, 'image', '/assets/images/chikungunya.png', 179);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (359, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 179);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 7, 179);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (180, 'Otitis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (360, 'image', '/assets/images/otitis.png', 180);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (361, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 180);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 7, 180);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 8, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 8, 85);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (181, 'Esfera', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (362, 'image', '/assets/images/esfera.png', 181);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (363, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 181);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 8, 181);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (182, 'Rectangulo', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (364, 'image', '/assets/images/rectangulo.png', 182);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (365, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 182);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 8, 182);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 8, 84);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 9, 86);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 9, 16);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (183, 'Limon', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (366, 'image', '/assets/images/limon.png', 183);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (367, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 183);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 9, 183);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (184, 'Melon', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (368, 'image', '/assets/images/melon.png', 184);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (369, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 184);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 9, 184);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 9, 15);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (185, 'Bate', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (370, 'image', '/assets/images/bate.png', 185);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (371, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 185);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 11, 185);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (186, 'Futbol', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (372, 'image', '/assets/images/futbol.png', 186);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (373, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 186);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 11, 186);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (187, 'Natacion', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (374, 'image', '/assets/images/natacion.png', 187);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (375, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 187);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 11, 187);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (188, 'Perinola', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (376, 'image', '/assets/images/perinola.png', 188);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (377, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 188);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 11, 188);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (189, 'Yoyo', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (378, 'image', '/assets/images/yoyo.png', 189);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (379, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 189);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 11, 189);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (190, 'Comedor', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (380, 'image', '/assets/images/comedor.png', 190);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (381, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 190);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 12, 190);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (191, 'Heladeria', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (382, 'image', '/assets/images/heladeria.png', 191);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (383, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 191);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 12, 191);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (192, 'Mercado', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (384, 'image', '/assets/images/mercado.png', 192);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (385, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 192);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 12, 192);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (193, 'Patio', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (386, 'image', '/assets/images/patio.png', 193);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (387, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 193);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 12, 193);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (194, 'Salon', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (388, 'image', '/assets/images/salon.png', 194);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (389, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 194);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 12, 194);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (195, 'Acuario', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (390, 'image', '/assets/images/acuario.png', 195);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (391, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 195);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 13, 195);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (196, 'Catedral', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (392, 'image', '/assets/images/catedral.png', 196);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (393, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 196);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 13, 196);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (197, 'Plaza bolivar', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (394, 'image', '/assets/images/plaza-bolivar.png', 197);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (395, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 197);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 13, 197);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 14, 25);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (198, 'Buseta', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (396, 'image', '/assets/images/buseta.png', 198);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (397, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 198);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 14, 198);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (199, 'Camion', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (398, 'image', '/assets/images/camion.png', 199);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (399, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 199);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 14, 199);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (200, 'Trolcable', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (400, 'image', '/assets/images/trolcable.png', 200);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (401, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 200);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 14, 200);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (201, 'Trolebus', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (402, 'image', '/assets/images/trolebus.png', 201);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (403, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 201);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 14, 201);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (202, 'Agosto', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (404, 'image', '/assets/images/agosto.png', 202);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (405, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 202);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 15);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 15, 202);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (203, 'Diciembre', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (406, 'image', '/assets/images/diciembre.png', 203);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (407, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 203);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 15, 203);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 15, 104);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (204, 'Febrero', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (408, 'image', '/assets/images/febrero.png', 204);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (409, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 204);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 15, 204);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (205, 'Octubre', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (410, 'image', '/assets/images/octubre.png', 205);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (411, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 205);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 15, 205);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (206, 'Cantidad', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (412, 'image', '/assets/images/cantidad.png', 206);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (413, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 206);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 16);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 16, 206);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (207, 'Cifra', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (414, 'image', '/assets/images/cifra.png', 207);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (415, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 207);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 16, 207);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (208, 'Igual que', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (416, 'image', '/assets/images/igual-que.png', 208);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (417, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 208);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 16, 208);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (209, 'Mayor que', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (418, 'image', '/assets/images/mayor-que.png', 209);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (419, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 209);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 16, 209);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (210, 'Menos que', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (420, 'image', '/assets/images/menos-que.png', 210);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (421, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 210);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 16, 210);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 17);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 17, 37);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 17, 35);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 17, 32);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 17, 36);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 17, 33);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (211, 'Fuera', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (422, 'image', '/assets/images/fuera.png', 211);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (423, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 211);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 18);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 18, 211);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (212, 'Alla', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (424, 'image', '/assets/images/alla.png', 212);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (425, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 212);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 18, 212);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (213, 'Anterior', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (426, 'image', '/assets/images/anterior.png', 213);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (427, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 213);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 18, 213);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (214, 'Aqui', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (428, 'image', '/assets/images/aqui.png', 214);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (429, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 214);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 18, 214);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (215, 'Dentro', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (430, 'image', '/assets/images/dentro.png', 215);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (431, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 215);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 18, 215);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 19);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 19, 41);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 19, 118);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 19, 42);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 19, 43);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 19, 119);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 20, 121);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 20, 125);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 20, 124);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 20, 46);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 20, 44);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (216, 'Celular', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (432, 'image', '/assets/images/celular.png', 216);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (433, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 216);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 21, 216);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (217, 'Lampara', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (434, 'image', '/assets/images/lampara.png', 217);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (435, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 217);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 21, 217);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (218, 'Radio', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (436, 'image', '/assets/images/radio.png', 218);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (437, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 218);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 21, 218);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 21, 48);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (219, 'Televisor', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (438, 'image', '/assets/images/televisor.png', 219);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (439, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 219);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 21, 219);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (220, 'Albañil', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (440, 'image', '/assets/images/albanil.png', 220);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (441, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 220);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 22, 220);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (221, 'Carnicero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (442, 'image', '/assets/images/carnicero.png', 221);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (443, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 221);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 22, 221);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (222, 'Enfermera', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (444, 'image', '/assets/images/enfermera.png', 222);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (445, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 222);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 22, 222);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (223, 'Mecanico', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (446, 'image', '/assets/images/mecanico.png', 223);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (447, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 223);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 22, 223);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (224, 'Odontologo', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (448, 'image', '/assets/images/odontologo.png', 224);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (449, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 224);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 22, 224);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (225, 'Cabello', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (450, 'image', '/assets/images/cabello.png', 225);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (451, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 225);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 23, 225);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (226, 'Dedos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (452, 'image', '/assets/images/dedos.png', 226);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (453, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 226);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 23, 226);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (227, 'Lengua', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (454, 'image', '/assets/images/lengua.png', 227);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (455, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 227);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 23, 227);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (228, 'Oreja', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (456, 'image', '/assets/images/oreja.png', 228);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (457, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 228);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 23, 228);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (229, 'Pene', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (458, 'image', '/assets/images/pene.png', 229);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (459, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 229);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 23, 229);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (230, 'Andres bello', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (460, 'image', '/assets/images/andres-bello.png', 230);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (461, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 230);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 24, 230);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (231, 'Antonio jose de sucre', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (462, 'image', '/assets/images/antonio-jose-de-sucre.png', 231);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (463, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 231);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 24, 231);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (232, 'Josefa camejo', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (464, 'image', '/assets/images/josefa-camejo.png', 232);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (465, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 232);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 24, 232);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (233, 'Negro primero', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (466, 'image', '/assets/images/negro-primero.png', 233);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (467, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 233);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 24, 233);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 24, 55);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 25, 143);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (234, 'Hija', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (468, 'image', '/assets/images/hija.png', 234);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (469, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 234);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 25, 234);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (235, 'Hijo', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (470, 'image', '/assets/images/hijo.png', 235);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (471, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 235);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 25, 235);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (236, 'Tia', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (472, 'image', '/assets/images/tia.png', 236);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (473, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 236);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 25, 236);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (237, 'Tio', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (474, 'image', '/assets/images/tio.png', 237);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (475, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 237);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 25, 237);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (238, 'Bota', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (476, 'image', '/assets/images/bota.png', 238);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (477, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 238);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 26, 238);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (239, 'Falda', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (478, 'image', '/assets/images/falda.png', 239);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (479, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 239);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 26, 239);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (240, 'Franela', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (480, 'image', '/assets/images/franela.png', 240);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (481, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 240);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 26, 240);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (241, 'Gorra', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (482, 'image', '/assets/images/gorra.png', 241);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (483, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 241);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 26, 241);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (242, 'Vestidos', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (484, 'image', '/assets/images/vestidos.png', 242);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (485, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 242);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 26, 242);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 27);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 27, 78);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 27, 65);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (243, 'Orquidea', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (486, 'image', '/assets/images/orquidea.png', 243);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (487, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 243);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 27, 243);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (244, 'Turpial', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (488, 'image', '/assets/images/turpial.png', 244);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (489, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 244);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 27, 244);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (245, 'Dolor de cabeza', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (490, 'image', '/assets/images/dolor-de-cabeza.png', 245);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (491, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 245);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 28, 245);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (246, 'Fiebre', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (492, 'image', '/assets/images/fiebre.png', 246);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (493, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 246);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 28, 246);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (247, 'Mareo', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (494, 'image', '/assets/images/mareo.png', 247);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (495, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 247);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 28, 247);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (248, 'Picazon', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (496, 'image', '/assets/images/picazon.png', 248);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (497, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 248);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 28, 248);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 28, 152);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (249, 'Cuchillo', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (498, 'image', '/assets/images/cuchillo.png', 249);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (499, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 249);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 29);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 29, 249);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (250, 'Jarra', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (500, 'image', '/assets/images/jarra.png', 250);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (501, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 250);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 29, 250);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (251, 'Sarten', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (502, 'image', '/assets/images/sarten.png', 251);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (503, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 251);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 29, 251);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (252, 'Canaima', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (504, 'image', '/assets/images/canaima.png', 252);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (505, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 252);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 30, 252);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (253, 'Libro', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (506, 'image', '/assets/images/libro.png', 253);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (507, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 253);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 30, 253);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (254, 'Morral', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (508, 'image', '/assets/images/morral.png', 254);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (509, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 254);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 30, 254);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (255, 'Pega', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (510, 'image', '/assets/images/pega.png', 255);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (511, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 255);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 30, 255);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (256, 'Regla', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (512, 'image', '/assets/images/regla.png', 256);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (513, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 256);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 30, 256);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (257, 'Cebolla', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (514, 'image', '/assets/images/cebolla.png', 257);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (515, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 257);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (2, 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 31, 257);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (258, 'Jojoto', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (516, 'image', '/assets/images/jojoto.png', 258);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (517, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 258);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 31, 258);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (259, 'Remolacha', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (518, 'image', '/assets/images/remolacha.png', 259);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (519, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 259);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 31, 259);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (260, 'Vainita', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (520, 'image', '/assets/images/vainita.png', 260);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (521, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 260);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 31, 260);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (261, 'Zanahoria', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (522, 'image', '/assets/images/zanahoria.png', 261);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (523, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 261);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (2, 31, 261);
    


--
-- Tercer Grado
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (262, 'Arroz', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (524, 'image', '/assets/images/arroz.png', 262);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (525, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 262);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 262);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (263, 'Caraota', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (526, 'image', '/assets/images/caraota.png', 263);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (527, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 263);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 263);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (264, 'Ensalada', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (528, 'image', '/assets/images/ensalada.png', 264);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (529, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 264);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 264);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (265, 'Jamon', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (530, 'image', '/assets/images/jamon.png', 265);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (531, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 265);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 265);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (266, 'Mantequilla', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (532, 'image', '/assets/images/mantequilla.png', 266);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (533, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 266);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 266);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (267, 'Pescados', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (534, 'image', '/assets/images/pescados.png', 267);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (535, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 267);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 267);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (268, 'Platano', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (536, 'image', '/assets/images/platano.png', 268);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (537, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 268);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 268);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (269, 'Salchicha', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (538, 'image', '/assets/images/salchicha.png', 269);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (539, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 269);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 269);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (270, 'Tequeno', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (540, 'image', '/assets/images/tequeno.png', 270);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (541, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 270);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 0, 270);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (271, 'Conejo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (542, 'image', '/assets/images/conejo.png', 271);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (543, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 271);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 271);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (272, 'Elefante', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (544, 'image', '/assets/images/elefante.png', 272);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (545, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 272);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 272);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (273, 'Leon', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (546, 'image', '/assets/images/leon.png', 273);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (547, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 273);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 273);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (274, 'Mariposa', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (548, 'image', '/assets/images/mariposa.png', 274);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (549, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 274);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 274);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (275, 'Pavo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (550, 'image', '/assets/images/pavo.png', 275);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (551, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 275);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 275);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (276, 'Zancudo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (552, 'image', '/assets/images/zancudo.png', 276);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (553, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 276);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 1, 276);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (277, 'Anaranjado', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (554, 'image', '/assets/images/anaranjado.png', 277);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (555, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 277);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 4, 277);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (278, 'Dorado', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (556, 'image', '/assets/images/dorado.png', 278);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (557, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 278);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 4, 278);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (279, 'Fucsia', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (558, 'image', '/assets/images/fucsia.png', 279);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (559, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 279);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 4, 279);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (280, 'Plateado', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (560, 'image', '/assets/images/plateado.png', 280);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (561, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 280);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 4, 280);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (281, 'Rosado', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (562, 'image', '/assets/images/rosado.png', 281);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (563, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 281);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 4, 281);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (282, 'Bandeja', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (564, 'image', '/assets/images/bandeja.png', 282);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (565, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 282);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 29);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 29, 282);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (283, 'Budare', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (566, 'image', '/assets/images/budare.png', 283);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (567, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 283);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 29, 283);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (284, 'Cucharon', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (568, 'image', '/assets/images/cucharon.png', 284);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (569, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 284);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 29, 284);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (285, 'Rallo', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (570, 'image', '/assets/images/rallo.png', 285);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (571, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 285);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 29, 285);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (286, 'Servilletas', 29);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (572, 'image', '/assets/images/servilletas.png', 286);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (573, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 286);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 29, 286);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (287, 'H1N1', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (574, 'image', '/assets/images/h1n1.png', 287);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (575, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 287);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 287);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 179);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 81);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (288, 'Conjutivitis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (576, 'image', '/assets/images/conjutivitis.png', 288);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (577, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 288);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 288);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 82);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 83);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 180);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (289, 'Paperas', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (578, 'image', '/assets/images/paperas.png', 289);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (579, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 289);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 7, 289);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (290, 'Cilindro', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (580, 'image', '/assets/images/cilindro.png', 290);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (581, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 290);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 8, 290);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (291, 'Cubo', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (582, 'image', '/assets/images/cubo.png', 291);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (583, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 291);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 8, 291);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (292, 'Prisma', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (584, 'image', '/assets/images/prisma.png', 292);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (585, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 292);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 8, 292);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (293, 'Rombo', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (586, 'image', '/assets/images/rombo.png', 293);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (587, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 293);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 8, 293);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (294, 'Fresas', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (588, 'image', '/assets/images/fresas.png', 294);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (589, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 294);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 9, 294);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (295, 'Manzana', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (590, 'image', '/assets/images/manzana.png', 295);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (591, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 295);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 9, 295);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (296, 'Parchita', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (592, 'image', '/assets/images/parchita.png', 296);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (593, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 296);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 9, 296);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (297, 'Pera', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (594, 'image', '/assets/images/pera.png', 297);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (595, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 297);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 9, 297);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (298, 'Tomate', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (596, 'image', '/assets/images/tomate.png', 298);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (597, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 298);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 9, 298);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (299, 'DS', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (598, 'image', '/assets/images/ds.png', 299);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (599, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 299);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 299);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (300, 'Balon', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (600, 'image', '/assets/images/balon.png', 300);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (601, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 300);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 300);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (301, 'Cometa', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (602, 'image', '/assets/images/cometa.png', 301);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (603, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 301);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 301);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (302, 'Monopatin', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (604, 'image', '/assets/images/monopatin.png', 302);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (605, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 302);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 302);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (303, 'Patin', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (606, 'image', '/assets/images/patin.png', 303);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (607, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 303);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 303);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (304, 'Patineta', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (608, 'image', '/assets/images/patineta.png', 304);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (609, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 304);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 11, 304);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (305, 'Abasto', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (610, 'image', '/assets/images/abasto.png', 305);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (611, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 305);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 305);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (306, 'Avenida', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (612, 'image', '/assets/images/avenida.png', 306);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (613, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 306);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 306);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (307, 'Biblioteca', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (614, 'image', '/assets/images/biblioteca.png', 307);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (615, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 307);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 307);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (308, 'Calle', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (616, 'image', '/assets/images/calle.png', 308);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (617, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 308);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 308);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (309, 'Consultorio', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (618, 'image', '/assets/images/consultorio.png', 309);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (619, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 309);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 309);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (310, 'Cuarto', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (620, 'image', '/assets/images/cuarto.png', 310);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (621, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 310);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 310);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (311, 'Hospital', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (622, 'image', '/assets/images/hospital.png', 311);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (623, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 311);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 311);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (312, 'Sala', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (624, 'image', '/assets/images/sala.png', 312);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (625, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 312);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 312);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (313, 'Supermercado', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (626, 'image', '/assets/images/supermercado.png', 313);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (627, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 313);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 12, 313);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (314, 'Cine', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (628, 'image', '/assets/images/cine.png', 314);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (629, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 314);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 13, 314);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (315, 'Jardin botanico', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (630, 'image', '/assets/images/jardin-botanico.png', 315);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (631, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 315);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 13, 315);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (316, 'Museo ciencias', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (632, 'image', '/assets/images/museo-ciencias.png', 316);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (633, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 316);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 13, 316);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (317, 'Teatro', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (634, 'image', '/assets/images/teatro.png', 317);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (635, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 317);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 13, 317);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 15);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 15, 203);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (318, 'Noviembre', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (636, 'image', '/assets/images/noviembre.png', 318);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (637, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 318);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 15, 318);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 15, 205);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (319, 'Septiembre', 15);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (638, 'image', '/assets/images/septiembre.png', 319);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (639, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 319);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 15, 319);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (320, 'Bastante', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (640, 'image', '/assets/images/bastante.png', 320);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (641, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 320);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 16);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 16, 320);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (321, 'Demasiado', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (642, 'image', '/assets/images/demasiado.png', 321);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (643, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 321);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 16, 321);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (322, 'Muy grande', 16);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (644, 'image', '/assets/images/muy-grande.png', 322);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (645, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 322);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 16, 322);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 18);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 40);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 212);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 213);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 214);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 39);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 109);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 110);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 111);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 215);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 112);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 211);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 113);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (323, 'Posterior', 18);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (646, 'image', '/assets/images/posterior.png', 323);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (647, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 323);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 323);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 18, 114);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (324, 'Enorme', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (648, 'image', '/assets/images/enorme.png', 324);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (649, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 324);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 17);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 17, 324);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (325, 'Gigante', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (650, 'image', '/assets/images/gigante.png', 325);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (651, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 325);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 17, 325);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (326, 'Inmenso', 17);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (652, 'image', '/assets/images/inmenso.png', 326);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (653, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 326);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 17, 326);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (327, 'Durante', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (654, 'image', '/assets/images/durante.png', 327);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (655, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 327);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 19);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 19, 327);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (328, 'Proximo', 19);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (656, 'image', '/assets/images/proximo.png', 328);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (657, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 328);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 19, 328);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (329, 'Cien', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (658, 'image', '/assets/images/cien.png', 329);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (659, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 329);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 329);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (330, 'Dieciseis', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (660, 'image', '/assets/images/dieciseis.png', 330);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (661, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 330);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 330);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (331, 'Noventa y siete', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (662, 'image', '/assets/images/noventa-y-siete.png', 331);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (663, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 331);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 331);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (332, 'Noventa y tres', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (664, 'image', '/assets/images/noventa-y-tres.png', 332);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (665, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 332);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 332);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (333, 'Ochenta y cinco', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (666, 'image', '/assets/images/ochenta-y-cinco.png', 333);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (667, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 333);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 333);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (334, 'Treinta y dos', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (668, 'image', '/assets/images/treinta-y-dos.png', 334);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (669, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 334);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 334);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (335, 'Veintiocho', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (670, 'image', '/assets/images/veintiocho.png', 335);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (671, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 335);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 20, 335);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (336, 'Lavadora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (672, 'image', '/assets/images/lavadora.png', 336);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (673, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 336);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 21, 336);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (337, 'Microondas', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (674, 'image', '/assets/images/microondas.png', 337);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (675, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 337);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 21, 337);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (338, 'Nevera', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (676, 'image', '/assets/images/nevera.png', 338);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (677, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 338);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 21, 338);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (339, 'Plancha', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (678, 'image', '/assets/images/plancha.png', 339);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (679, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 339);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 21, 339);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (340, 'Secadora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (680, 'image', '/assets/images/secadora.png', 340);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (681, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 340);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 21, 340);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (341, 'Cejas', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (682, 'image', '/assets/images/cejas.png', 341);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (683, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 341);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 341);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (342, 'Cerebro', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (684, 'image', '/assets/images/cerebro.png', 342);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (685, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 342);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 342);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (343, 'Codo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (686, 'image', '/assets/images/codo.png', 343);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (687, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 343);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 343);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (344, 'Corazon', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (688, 'image', '/assets/images/corazon.png', 344);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (689, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 344);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 344);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (345, 'Cuello', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (690, 'image', '/assets/images/cuello.png', 345);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (691, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 345);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 345);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (346, 'Gluteos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (692, 'image', '/assets/images/gluteos.png', 346);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (693, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 346);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 346);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (347, 'Huesos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (694, 'image', '/assets/images/huesos.png', 347);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (695, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 347);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 347);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (348, 'Oido', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (696, 'image', '/assets/images/oido.png', 348);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (697, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 348);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 348);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (349, 'Pestanas', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (698, 'image', '/assets/images/pestanas.png', 349);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (699, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 349);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 349);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (350, 'Rodillas', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (700, 'image', '/assets/images/rodillas.png', 350);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (701, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 350);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 350);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (351, 'Senos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (702, 'image', '/assets/images/senos.png', 351);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (703, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 351);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 351);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (352, 'Unas', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (704, 'image', '/assets/images/unas.png', 352);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (705, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 352);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 23, 352);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (353, 'Ezequiel zamora', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (706, 'image', '/assets/images/ezequiel-zamora.png', 353);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (707, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 353);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 353);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (354, 'Francisco de miranda', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (708, 'image', '/assets/images/francisco-de-miranda.png', 354);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (709, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 354);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 354);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 232);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 233);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 55);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 24, 141);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (355, 'Amiga', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (710, 'image', '/assets/images/amiga.png', 355);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (711, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 355);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 355);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (356, 'Amigo', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (712, 'image', '/assets/images/amigo.png', 356);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (713, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 356);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 356);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (357, 'Esposos', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (714, 'image', '/assets/images/esposos.png', 357);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (715, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 357);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 357);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (358, 'Nieta', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (716, 'image', '/assets/images/nieta.png', 358);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (717, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 358);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 358);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (359, 'Nieto', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (718, 'image', '/assets/images/nieto.png', 359);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (719, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 359);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 359);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (360, 'Primos', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (720, 'image', '/assets/images/primos.png', 360);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (721, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 360);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 360);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (361, 'Senor', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (722, 'image', '/assets/images/senor.png', 361);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (723, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 361);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 361);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (362, 'Senora', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (724, 'image', '/assets/images/senora.png', 362);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (725, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 362);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 362);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (363, 'Sobrino', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (726, 'image', '/assets/images/sobrino.png', 363);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (727, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 363);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 25, 363);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 131);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 220);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (364, 'Bombero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (728, 'image', '/assets/images/bombero.png', 364);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (729, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 364);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 364);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 221);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (365, 'Directora', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (730, 'image', '/assets/images/directora.png', 365);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (731, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 365);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 365);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 49);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 222);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 223);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 130);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 224);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (366, 'Panadero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (732, 'image', '/assets/images/panadero.png', 366);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (733, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 366);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 366);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (367, 'Profesora', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (734, 'image', '/assets/images/profesora.png', 367);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (735, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 367);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 367);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (368, 'Secretaria', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (736, 'image', '/assets/images/secretaria.png', 368);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (737, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 368);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 368);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (369, 'Verdulero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (738, 'image', '/assets/images/verdulero.png', 369);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (739, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 369);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 22, 369);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (370, 'Correa', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (740, 'image', '/assets/images/correa.png', 370);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (741, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 370);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 370);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (371, 'Guante', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (742, 'image', '/assets/images/guante.png', 371);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (743, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 371);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 371);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (372, 'Sosten', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (744, 'image', '/assets/images/sosten.png', 372);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (745, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 372);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 372);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (373, 'Sueter', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (746, 'image', '/assets/images/sueter.png', 373);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (747, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 373);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 373);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (374, 'Uniforme', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (748, 'image', '/assets/images/uniforme.png', 374);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (749, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 374);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 374);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (375, 'Zapato deportivo', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (750, 'image', '/assets/images/zapato-deportivo.png', 375);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (751, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 375);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 26, 375);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (376, 'Bandera de merida', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (752, 'image', '/assets/images/bandera-de-merida.png', 376);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (753, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 376);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 27);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 27, 376);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 27, 71);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (377, 'Frailejon', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (754, 'image', '/assets/images/frailejon.png', 377);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (755, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 377);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 27, 377);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (378, 'Oso frontino', 27);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (756, 'image', '/assets/images/oso-frontino.png', 378);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (757, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 378);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 27, 378);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 150);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 151);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 245);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 246);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 83);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 247);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 248);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 152);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 28, 153);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (379, 'Avioneta', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (758, 'image', '/assets/images/avioneta.png', 379);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (759, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 379);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 14, 379);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (380, 'Lancha', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (760, 'image', '/assets/images/lancha.png', 380);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (761, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 380);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 14, 380);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (381, 'Tren', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (762, 'image', '/assets/images/tren.png', 381);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (763, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 381);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 14, 381);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (382, 'Carpeta', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (764, 'image', '/assets/images/carpeta.png', 382);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (765, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 382);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 382);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (383, 'Cartuchera', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (766, 'image', '/assets/images/cartuchera.png', 383);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (767, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 383);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 383);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (384, 'Compas', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (768, 'image', '/assets/images/compas.png', 384);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (769, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 384);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 384);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (385, 'Hoja de papel', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (770, 'image', '/assets/images/hoja-de-papel.png', 385);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (771, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 385);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 385);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (386, 'Pincel', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (772, 'image', '/assets/images/pincel.png', 386);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (773, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 386);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 386);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (387, 'Pinturas', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (774, 'image', '/assets/images/pinturas.png', 387);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (775, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 387);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 387);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (388, 'Tijera', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (776, 'image', '/assets/images/tijera.png', 388);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (777, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 388);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 388);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (389, 'Tirro', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (778, 'image', '/assets/images/tirro.png', 389);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (779, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 389);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 30, 389);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (390, 'Aji', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (780, 'image', '/assets/images/aji.png', 390);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (781, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 390);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (3, 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 390);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (391, 'Ajo', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (782, 'image', '/assets/images/ajo.png', 391);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (783, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 391);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 391);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (392, 'Cebollin', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (784, 'image', '/assets/images/cebollin.png', 392);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (785, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 392);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 392);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (393, 'Lechuga', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (786, 'image', '/assets/images/lechuga.png', 393);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (787, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 393);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 393);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (394, 'Pimenton', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (788, 'image', '/assets/images/pimenton.png', 394);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (789, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 394);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 394);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (395, 'Repollo', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (790, 'image', '/assets/images/repollo.png', 395);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (791, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 395);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (3, 31, 395);
    


--
-- Cuarto Grado
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (396, 'Pino', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (792, 'image', '/assets/images/pino.png', 396);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (793, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 396);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 2, 396);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (397, 'Bambú', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (794, 'image', '/assets/images/bambu.png', 397);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (795, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 397);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 2, 397);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (398, 'Pabellón', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (796, 'image', '/assets/images/pabellon.png', 398);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (797, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 398);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 398);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (399, 'Hervido', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (798, 'image', '/assets/images/hervido.png', 399);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (799, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 399);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 399);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (400, 'Parilla', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (800, 'image', '/assets/images/parilla.png', 400);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (801, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 400);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 400);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (401, 'Mortadela', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (802, 'image', '/assets/images/mortadela.png', 401);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (803, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 401);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 401);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (402, 'Pasticho', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (804, 'image', '/assets/images/pasticho.png', 402);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (805, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 402);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 402);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (403, 'Hayaca', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (806, 'image', '/assets/images/hayaca.png', 403);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (807, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 403);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 403);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (404, 'Casabe', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (808, 'image', '/assets/images/casabe.png', 404);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (809, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 404);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 404);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (405, 'Granos', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (810, 'image', '/assets/images/granos.png', 405);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (811, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 405);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 0, 405);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (406, 'Tiburón', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (812, 'image', '/assets/images/tiburon.png', 406);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (813, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 406);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 406);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (407, 'Delfin', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (814, 'image', '/assets/images/delfin.png', 407);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (815, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 407);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 407);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (408, 'Cocodrilo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (816, 'image', '/assets/images/cocodrilo.png', 408);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (817, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 408);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 408);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (409, 'Iguana', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (818, 'image', '/assets/images/iguana.png', 409);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (819, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 409);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 409);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (410, 'Hipopótamo', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (820, 'image', '/assets/images/hipopotamo.png', 410);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (821, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 410);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 410);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (411, 'Chiguire', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (822, 'image', '/assets/images/chiguire.png', 411);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (823, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 411);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 411);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (412, 'Loro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (824, 'image', '/assets/images/loro.png', 412);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (825, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 412);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 412);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (413, 'Tucán', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (826, 'image', '/assets/images/tucan.png', 413);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (827, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 413);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 413);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (414, 'Araña', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (828, 'image', '/assets/images/arana.png', 414);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (829, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 414);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 414);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (415, 'Tortuga', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (830, 'image', '/assets/images/tortuga.png', 415);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (831, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 415);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 415);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (416, 'Hormiga', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (832, 'image', '/assets/images/hormiga.png', 416);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (833, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 416);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 416);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (417, 'Tigre', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (834, 'image', '/assets/images/tigre.png', 417);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (835, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 417);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 1, 417);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (418, 'Pupura', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (836, 'image', '/assets/images/pupura.png', 418);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (837, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 418);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 418);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (419, 'Violeta', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (838, 'image', '/assets/images/violeta.png', 419);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (839, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 419);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 419);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (420, 'Marfil', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (840, 'image', '/assets/images/marfil.png', 420);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (841, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 420);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 420);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (421, 'Cobre', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (842, 'image', '/assets/images/cobre.png', 421);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (843, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 421);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 421);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (422, 'Bronce', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (844, 'image', '/assets/images/bronce.png', 422);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (845, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 422);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 422);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (423, 'Piel', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (846, 'image', '/assets/images/piel.png', 423);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (847, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 423);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 423);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (424, 'Lila', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (848, 'image', '/assets/images/lila.png', 424);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (849, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 424);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 424);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (425, 'Turquesa', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (850, 'image', '/assets/images/turquesa.png', 425);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (851, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 425);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 425);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (426, 'Beige', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (852, 'image', '/assets/images/beige.png', 426);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (853, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 426);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 4, 426);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (427, 'Arroz con leche', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (854, 'image', '/assets/images/arroz-con-leche.png', 427);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (855, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 427);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 6);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 427);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (428, 'Quesillo', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (856, 'image', '/assets/images/quesillo.png', 428);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (857, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 428);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 428);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (429, 'Refrezco', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (858, 'image', '/assets/images/refrezco.png', 429);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (859, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 429);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 429);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (430, 'Tizana', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (860, 'image', '/assets/images/tizana.png', 430);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (861, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 430);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 430);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (431, 'Caramelo', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (862, 'image', '/assets/images/caramelo.png', 431);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (863, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 431);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 431);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (432, 'Chupeta', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (864, 'image', '/assets/images/chupeta.png', 432);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (865, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 432);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 432);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (433, 'Chicle', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (866, 'image', '/assets/images/chicle.png', 433);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (867, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 433);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 6, 433);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (434, 'Ébola', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (868, 'image', '/assets/images/ebola.png', 434);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (869, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 434);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 7, 434);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (435, 'Lechina', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (870, 'image', '/assets/images/lechina.png', 435);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (871, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 435);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 7, 435);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (436, 'Diabetes', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (872, 'image', '/assets/images/diabetes.png', 436);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (873, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 436);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 7, 436);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (437, 'Sarampión', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (874, 'image', '/assets/images/sarampion.png', 437);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (875, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 437);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 7, 437);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (438, 'Guanabana', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (876, 'image', '/assets/images/guanabana.png', 438);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (877, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 438);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 438);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (439, 'Mandarina', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (878, 'image', '/assets/images/mandarina.png', 439);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (879, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 439);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 439);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (440, 'Durazno', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (880, 'image', '/assets/images/durazno.png', 440);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (881, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 440);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 440);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (441, 'Aguacate', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (882, 'image', '/assets/images/aguacate.png', 441);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (883, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 441);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 441);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (442, 'Tamarindo', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (884, 'image', '/assets/images/tamarindo.png', 442);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (885, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 442);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 442);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (443, 'Higo', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (886, 'image', '/assets/images/higo.png', 443);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (887, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 443);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 9, 443);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 186);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 187);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (444, 'Atletismo', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (888, 'image', '/assets/images/atletismo.png', 444);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (889, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 444);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 444);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (445, 'Baloncesto', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (890, 'image', '/assets/images/baloncesto.png', 445);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (891, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 445);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 445);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (446, 'Voliebol', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (892, 'image', '/assets/images/voliebol.png', 446);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (893, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 446);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 446);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (447, 'Ciclismo', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (894, 'image', '/assets/images/ciclismo.png', 447);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (895, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 447);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 11, 447);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (448, 'Museo', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (896, 'image', '/assets/images/museo.png', 448);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (897, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 448);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 448);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (449, 'Edificio', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (898, 'image', '/assets/images/edificio.png', 449);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (899, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 449);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 449);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (450, 'Pasillo', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (900, 'image', '/assets/images/pasillo.png', 450);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (901, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 450);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 450);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (451, 'Gradas', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (902, 'image', '/assets/images/gradas.png', 451);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (903, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 451);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 451);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (452, 'Estacionamiento', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (904, 'image', '/assets/images/estacionamiento.png', 452);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (905, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 452);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 452);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (453, 'Vivienda', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (906, 'image', '/assets/images/vivienda.png', 453);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (907, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 453);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 453);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (454, 'Choza', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (908, 'image', '/assets/images/choza.png', 454);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (909, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 454);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 454);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (455, 'Shabono', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (910, 'image', '/assets/images/shabono.png', 455);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (911, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 455);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 12, 455);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (456, 'Los Aleros', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (912, 'image', '/assets/images/los-aleros.png', 456);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (913, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 456);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 13, 456);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (457, 'Plaza de Toros', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (914, 'image', '/assets/images/plaza-de-toros.png', 457);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (915, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 457);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 13, 457);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (458, 'La Culáta', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (916, 'image', '/assets/images/la-culata.png', 458);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (917, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 458);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 13, 458);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (459, 'Páramo', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (918, 'image', '/assets/images/paramo.png', 459);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (919, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 459);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 13, 459);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (460, 'Venezuela de Antier', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (920, 'image', '/assets/images/venezuela-de-antier.png', 460);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (921, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 460);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 13, 460);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (461, 'Metrobus', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (922, 'image', '/assets/images/metrobus.png', 461);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (923, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 461);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 14, 461);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (462, 'Metro', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (924, 'image', '/assets/images/metro.png', 462);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (925, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 462);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 14, 462);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (463, 'Ferry', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (926, 'image', '/assets/images/ferry.png', 463);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (927, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 463);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 14, 463);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (464, 'Submarino', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (928, 'image', '/assets/images/submarino.png', 464);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (929, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 464);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 14, 464);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (465, 'Teleférico', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (930, 'image', '/assets/images/teleferico.png', 465);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (931, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 465);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 14, 465);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (466, 'Horno', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (932, 'image', '/assets/images/horno.png', 466);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (933, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 466);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 466);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (467, 'Aspiradora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (934, 'image', '/assets/images/aspiradora.png', 467);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (935, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 467);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 467);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (468, 'Pulidora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (936, 'image', '/assets/images/pulidora.png', 468);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (937, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 468);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 468);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (469, 'DVD', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (938, 'image', '/assets/images/dvd.png', 469);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (939, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 469);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 469);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (470, 'Tablet', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (940, 'image', '/assets/images/tablet.png', 470);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (941, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 470);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 470);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (471, 'Laptop', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (942, 'image', '/assets/images/laptop.png', 471);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (943, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 471);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 21, 471);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (472, 'Arquitecto', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (944, 'image', '/assets/images/arquitecto.png', 472);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (945, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 472);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 22, 472);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (473, 'Ingeniero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (946, 'image', '/assets/images/ingeniero.png', 473);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (947, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 473);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 22, 473);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (474, 'Abogado', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (948, 'image', '/assets/images/abogado.png', 474);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (949, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 474);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 22, 474);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (475, 'Jardinero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (950, 'image', '/assets/images/jardinero.png', 475);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (951, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 475);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 22, 475);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (476, 'Chef', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (952, 'image', '/assets/images/chef.png', 476);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (953, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 476);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 22, 476);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (477, 'Labios', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (954, 'image', '/assets/images/labios.png', 477);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (955, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 477);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 477);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (478, 'Tronco', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (956, 'image', '/assets/images/tronco.png', 478);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (957, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 478);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 478);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (479, 'Tobillo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (958, 'image', '/assets/images/tobillo.png', 479);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (959, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 479);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 479);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (480, 'Mejilla', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (960, 'image', '/assets/images/mejilla.png', 480);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (961, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 480);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 480);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (481, 'Parpados', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (962, 'image', '/assets/images/parpados.png', 481);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (963, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 481);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 481);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (482, 'Axila', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (964, 'image', '/assets/images/axila.png', 482);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (965, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 482);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 482);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (483, 'Pulmón', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (966, 'image', '/assets/images/pulmon.png', 483);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (967, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 483);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 483);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (484, 'Riñón', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (968, 'image', '/assets/images/rinon.png', 484);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (969, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 484);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 484);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (485, 'Estomago', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (970, 'image', '/assets/images/estomago.png', 485);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (971, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 485);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 485);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (486, 'Intestino', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (972, 'image', '/assets/images/intestino.png', 486);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (973, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 486);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 486);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (487, 'Muela', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (974, 'image', '/assets/images/muela.png', 487);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (975, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 487);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 487);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (488, 'Vagina', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (976, 'image', '/assets/images/vagina.png', 488);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (977, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 488);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 488);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (489, 'Testiculos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (978, 'image', '/assets/images/testiculos.png', 489);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (979, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 489);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 23, 489);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 231);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (490, 'Guaicaipuro', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (980, 'image', '/assets/images/guaicaipuro.png', 490);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (981, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 490);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 490);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (491, 'Manuelita Saénz', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (982, 'image', '/assets/images/manuelita-saenz.png', 491);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (983, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 491);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 491);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (492, 'Negra Hipolita', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (984, 'image', '/assets/images/negra-hipolita.png', 492);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (985, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 492);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 492);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (493, 'Luisa Caceres de Arismendi', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (986, 'image', '/assets/images/luisa-caceres-de-arismendi.png', 493);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (987, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 493);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 493);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (494, 'Ana María Campos', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (988, 'image', '/assets/images/ana-maria-campos.png', 494);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (989, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 494);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 24, 494);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (495, 'Mono deportivo', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (990, 'image', '/assets/images/mono-deportivo.png', 495);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (991, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 495);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 26, 495);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (496, 'Chaqueta', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (992, 'image', '/assets/images/chaqueta.png', 496);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (993, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 496);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 26, 496);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (497, 'Franelilla', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (994, 'image', '/assets/images/franelilla.png', 497);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (995, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 497);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 26, 497);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (498, 'Bufanda', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (996, 'image', '/assets/images/bufanda.png', 498);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (997, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 498);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 26, 498);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (499, 'Blusa', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (998, 'image', '/assets/images/blusa.png', 499);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (999, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 499);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 26, 499);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (500, 'Erupción', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1000, 'image', '/assets/images/erupcion.png', 500);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1001, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 500);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 28, 500);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (501, 'Ardor', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1002, 'image', '/assets/images/ardor.png', 501);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1003, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 501);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 28, 501);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (502, 'Absceso', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1004, 'image', '/assets/images/absceso.png', 502);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1005, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 502);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 28, 502);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (503, 'Cólico', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1006, 'image', '/assets/images/colico.png', 503);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1007, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 503);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 28, 503);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (504, 'Diccionario', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1008, 'image', '/assets/images/diccionario.png', 504);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1009, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 504);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 504);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (505, 'Atlas', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1010, 'image', '/assets/images/atlas.png', 505);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1011, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 505);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 505);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (506, 'Enciclopedia', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1012, 'image', '/assets/images/enciclopedia.png', 506);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1013, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 506);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 506);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (507, 'Revistas', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1014, 'image', '/assets/images/revistas.png', 507);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1015, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 507);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 507);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (508, 'Folletos', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1016, 'image', '/assets/images/folletos.png', 508);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1017, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 508);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 508);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (509, 'Escuadras', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1018, 'image', '/assets/images/escuadras.png', 509);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1019, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 509);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 509);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (510, 'Silicón', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1020, 'image', '/assets/images/silicon.png', 510);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1021, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 510);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 510);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (511, 'Block', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1022, 'image', '/assets/images/block.png', 511);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1023, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 511);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 511);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (512, 'Hoja de Examen', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1024, 'image', '/assets/images/hoja-de-examen.png', 512);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1025, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 512);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 30, 512);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (513, 'Cilantro', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1026, 'image', '/assets/images/cilantro.png', 513);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1027, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 513);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 513);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (514, 'Yuca', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1028, 'image', '/assets/images/yuca.png', 514);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1029, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 514);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 514);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (515, 'Maíz', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1030, 'image', '/assets/images/maiz.png', 515);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1031, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 515);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 515);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (516, 'Trigo', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1032, 'image', '/assets/images/trigo.png', 516);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1033, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 516);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 516);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (517, 'Perejil', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1034, 'image', '/assets/images/perejil.png', 517);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1035, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 517);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 517);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (518, 'Calabacín', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1036, 'image', '/assets/images/calabacin.png', 518);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1037, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 518);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 518);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (519, 'Pepino', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1038, 'image', '/assets/images/pepino.png', 519);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1039, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 519);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 519);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (520, 'Brocoli', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1040, 'image', '/assets/images/brocoli.png', 520);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1041, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 520);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 520);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (521, 'Coliflor', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1042, 'image', '/assets/images/coliflor.png', 521);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1043, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 521);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 521);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (522, 'Apio España', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1044, 'image', '/assets/images/apio-espana.png', 522);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1045, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 522);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 522);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (523, 'Berenjena', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1046, 'image', '/assets/images/berenjena.png', 523);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1047, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 523);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 31, 523);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (4, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 8, 85);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 8, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 8, 84);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (4, 8, 182);
    


--
-- Quinto Grado
--

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 2, 397);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (524, 'Bucare', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1048, 'image', '/assets/images/bucare.png', 524);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1049, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 524);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 2, 524);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (525, 'Coloradito', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1050, 'image', '/assets/images/coloradito.png', 525);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1051, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 525);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 2, 525);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 2, 396);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (526, 'Saman', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1052, 'image', '/assets/images/saman.png', 526);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1053, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 526);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 2, 526);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (527, 'Arvejas', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1054, 'image', '/assets/images/arvejas.png', 527);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1055, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 527);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 0);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 527);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 404);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (528, 'Frijoles', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1056, 'image', '/assets/images/frijoles.png', 528);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1057, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 528);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 528);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 405);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (529, 'Hallacas', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1058, 'image', '/assets/images/hallacas.png', 529);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1059, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 529);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 529);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (530, 'Hamburguesa', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1060, 'image', '/assets/images/hamburguesa.png', 530);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1061, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 530);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 530);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 399);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 401);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 398);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (531, 'Parrilla', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1062, 'image', '/assets/images/parrilla.png', 531);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1063, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 531);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 531);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 402);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (532, 'Pizza', 0);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1064, 'image', '/assets/images/pizza.png', 532);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1065, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 532);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 0, 532);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 414);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (533, 'Cardenal', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1066, 'image', '/assets/images/cardenal.png', 533);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1067, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 533);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 533);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (534, 'Cascabel', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1068, 'image', '/assets/images/cascabel.png', 534);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1069, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 534);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 534);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 411);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 408);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (535, 'Coral', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1070, 'image', '/assets/images/coral.png', 535);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1071, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 535);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 535);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (536, 'Culebra', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1072, 'image', '/assets/images/culebra.png', 536);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1073, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 536);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 536);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 407);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (537, 'Gavilan', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1074, 'image', '/assets/images/gavilan.png', 537);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1075, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 537);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 537);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (538, 'Gaviota', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1076, 'image', '/assets/images/gaviota.png', 538);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1077, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 538);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 538);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (539, 'Guacamaya', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1078, 'image', '/assets/images/guacamaya.png', 539);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1079, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 539);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 539);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 410);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 416);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 409);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 412);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (540, 'Mapanare', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1080, 'image', '/assets/images/mapanare.png', 540);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1081, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 540);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 540);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (541, 'Pavo real', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1082, 'image', '/assets/images/pavo-real.png', 541);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1083, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 541);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 541);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (542, 'Perico', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1084, 'image', '/assets/images/perico.png', 542);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1085, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 542);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 542);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 406);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 417);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 415);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 413);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (543, 'Zamuro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1086, 'image', '/assets/images/zamuro.png', 543);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1087, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 543);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 1, 543);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (544, 'Champu', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1088, 'image', '/assets/images/champu.png', 544);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1089, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 544);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 3);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 544);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (545, 'Crema dental', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1090, 'image', '/assets/images/crema-dental.png', 545);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1091, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 545);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 545);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (546, 'Desodorante', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1092, 'image', '/assets/images/desodorante.png', 546);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1093, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 546);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 546);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (547, 'Enjuague', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1094, 'image', '/assets/images/enjuague.png', 547);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1095, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 547);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 547);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (548, 'Perfume', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1096, 'image', '/assets/images/perfume.png', 548);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1097, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 548);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 548);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (549, 'Talco', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1098, 'image', '/assets/images/talco.png', 549);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1099, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 549);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 549);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (550, 'Toalla sanitaria', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1100, 'image', '/assets/images/toalla-sanitaria.png', 550);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1101, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 550);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 3, 550);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 4);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 426);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 422);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 421);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 424);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 420);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 423);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (551, 'Purpura', 4);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1102, 'image', '/assets/images/purpura.png', 551);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1103, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 551);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 551);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 425);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 4, 419);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 6);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 427);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 431);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 433);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (552, 'Chocolate', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1104, 'image', '/assets/images/chocolate.png', 552);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1105, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 552);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 552);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 432);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (553, 'Cotufa', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1106, 'image', '/assets/images/cotufa.png', 553);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1107, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 553);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 553);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (554, 'Malta', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1108, 'image', '/assets/images/malta.png', 554);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1109, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 554);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 554);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (555, 'Pepito', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1110, 'image', '/assets/images/pepito.png', 555);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1111, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 555);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 555);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 428);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (556, 'Refresco', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1112, 'image', '/assets/images/refresco.png', 556);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1113, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 556);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 556);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 6, 430);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (557, 'Cancer', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1114, 'image', '/assets/images/cancer.png', 557);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1115, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 557);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 557);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (558, 'Diabete', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1116, 'image', '/assets/images/diabete.png', 558);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1117, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 558);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 558);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 434);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (559, 'Gonorrea', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1118, 'image', '/assets/images/gonorrea.png', 559);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1119, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 559);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 559);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (560, 'Herpes', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1120, 'image', '/assets/images/herpes.png', 560);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1121, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 560);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 560);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 435);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 437);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (561, 'Sida', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1122, 'image', '/assets/images/sida.png', 561);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1123, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 561);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 561);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (562, 'Sifilis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1124, 'image', '/assets/images/sifilis.png', 562);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1125, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 562);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 562);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (563, 'VPH', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1126, 'image', '/assets/images/vph.png', 563);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1127, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 563);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 7, 563);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 9);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 441);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 440);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (564, 'Granada', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1128, 'image', '/assets/images/granada.png', 564);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1129, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 564);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 564);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (565, 'Guama', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1130, 'image', '/assets/images/guama.png', 565);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1131, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 565);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 565);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 438);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (566, 'Hicaco', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1132, 'image', '/assets/images/hicaco.png', 566);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1133, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 566);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 566);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 443);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (567, 'Mamon', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1134, 'image', '/assets/images/mamon.png', 567);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1135, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 567);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 567);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 439);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (568, 'Nispero', 9);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1136, 'image', '/assets/images/nispero.png', 568);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1137, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 568);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 568);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 9, 442);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 11);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 444);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 445);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 447);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (569, 'Deportes extremos', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1138, 'image', '/assets/images/deportes-extremos.png', 569);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1139, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 569);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 569);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 186);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 187);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (570, 'Voleibol', 11);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1140, 'image', '/assets/images/voleibol.png', 570);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1141, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 570);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 11, 570);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (571, 'Ambulatorio', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1142, 'image', '/assets/images/ambulatorio.png', 571);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1143, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 571);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 12);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 571);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (572, 'Apartamento', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1144, 'image', '/assets/images/apartamento.png', 572);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1145, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 572);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 572);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (573, 'Bodega', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1146, 'image', '/assets/images/bodega.png', 573);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1147, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 573);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 573);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 20);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (574, 'Centro comercial', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1148, 'image', '/assets/images/centro-comercial.png', 574);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1149, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 574);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 574);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 454);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 449);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (575, 'Escaleras', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1150, 'image', '/assets/images/escaleras.png', 575);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1151, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 575);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 575);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 452);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (576, 'Farmacia', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1152, 'image', '/assets/images/farmacia.png', 576);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1153, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 576);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 576);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 451);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 311);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (577, 'Iglesia', 12);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1154, 'image', '/assets/images/iglesia.png', 577);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1155, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 577);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 577);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 448);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 450);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 12, 455);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (578, 'Aguas termales', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1156, 'image', '/assets/images/aguas-termales.png', 578);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1157, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 578);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 578);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (579, 'Aleros', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1158, 'image', '/assets/images/aleros.png', 579);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1159, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 579);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 579);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (580, 'Estadio metropolitano', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1160, 'image', '/assets/images/estadio-metropolitano.png', 580);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1161, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 580);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 580);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 458);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (581, 'La venezuela de antier', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1162, 'image', '/assets/images/la-venezuela-de-antier.png', 581);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1163, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 581);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 581);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (582, 'Montaña de los sueños', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1164, 'image', '/assets/images/montana-de-los-suenos.png', 582);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1165, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 582);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 582);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (583, 'Observatorio', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1166, 'image', '/assets/images/observatorio.png', 583);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1167, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 583);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 583);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 459);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (584, 'Picos de la sierra nevada', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1168, 'image', '/assets/images/picos-de-la-sierra-nevada.png', 584);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1169, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 584);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 584);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (585, 'Plaza de toro', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1170, 'image', '/assets/images/plaza-de-toro.png', 585);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1171, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 585);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 585);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (586, 'Soto rosa', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1172, 'image', '/assets/images/soto-rosa.png', 586);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1173, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 586);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 13, 586);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 14);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 463);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (587, 'Globo aerostatico', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1174, 'image', '/assets/images/globo-aerostatico.png', 587);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1175, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 587);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 587);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (588, 'Jet', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1176, 'image', '/assets/images/jet.png', 588);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1177, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 588);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 588);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (589, 'Metrop', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1178, 'image', '/assets/images/metrop.png', 589);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1179, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 589);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 589);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 461);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (590, 'Nave espacial', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1180, 'image', '/assets/images/nave-espacial.png', 590);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1181, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 590);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 590);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (591, 'Sudmarino', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1182, 'image', '/assets/images/sudmarino.png', 591);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1183, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 591);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 591);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 465);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (592, 'Yate', 14);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1184, 'image', '/assets/images/yate.png', 592);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1185, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 592);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 14, 592);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 21);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 467);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (593, 'Camara', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1186, 'image', '/assets/images/camara.png', 593);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1187, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 593);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 593);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 469);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (594, 'Filmadora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1188, 'image', '/assets/images/filmadora.png', 594);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1189, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 594);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 594);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (595, 'Fotocopiadora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1190, 'image', '/assets/images/fotocopiadora.png', 595);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1191, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 595);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 595);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 466);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (596, 'Impresora', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1192, 'image', '/assets/images/impresora.png', 596);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1193, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 596);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 596);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 471);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 468);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 470);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (597, 'Teclado', 21);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1194, 'image', '/assets/images/teclado.png', 597);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1195, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 597);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 21, 597);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 22);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 474);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (598, 'Administrador', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1196, 'image', '/assets/images/administrador.png', 598);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1197, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 598);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 598);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 472);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (599, 'Cajero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1198, 'image', '/assets/images/cajero.png', 599);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1199, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 599);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 599);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 476);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (600, 'Cocinero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1200, 'image', '/assets/images/cocinero.png', 600);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1201, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 600);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 600);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (601, 'Construtor', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1202, 'image', '/assets/images/construtor.png', 601);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1203, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 601);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 601);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (602, 'Contador', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1204, 'image', '/assets/images/contador.png', 602);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1205, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 602);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 602);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (603, 'Farmaceutico', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1206, 'image', '/assets/images/farmaceutico.png', 603);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1207, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 603);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 603);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 473);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 475);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (604, 'Portero', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1208, 'image', '/assets/images/portero.png', 604);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1209, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 604);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 604);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (605, 'Seguridad', 22);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1210, 'image', '/assets/images/seguridad.png', 605);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1211, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 605);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 22, 605);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 23);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 482);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 485);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (606, 'Extremidadas', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1212, 'image', '/assets/images/extremidadas.png', 606);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1213, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 606);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 606);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 477);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 480);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 487);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 481);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 483);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 484);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (607, 'Sistema circulatorio', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1214, 'image', '/assets/images/sistema-circulatorio.png', 607);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1215, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 607);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 607);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (608, 'Sistema digestivo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1216, 'image', '/assets/images/sistema-digestivo.png', 608);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1217, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 608);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 608);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (609, 'Sistema endocrino', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1218, 'image', '/assets/images/sistema-endocrino.png', 609);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1219, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 609);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 609);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (610, 'Sistema nervioso', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1220, 'image', '/assets/images/sistema-nervioso.png', 610);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1221, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 610);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 610);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (611, 'Sistema oseo', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1222, 'image', '/assets/images/sistema-oseo.png', 611);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1223, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 611);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 611);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (612, 'Sistema reproductivos', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1224, 'image', '/assets/images/sistema-reproductivos.png', 612);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1225, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 612);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 612);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (613, 'Sistema respiratorio', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1226, 'image', '/assets/images/sistema-respiratorio.png', 613);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1227, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 613);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 613);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (614, 'Sistema urinario', 23);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1228, 'image', '/assets/images/sistema-urinario.png', 614);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1229, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 614);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 614);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 489);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 479);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 478);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 23, 488);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 494);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 231);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (615, 'Caciques', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1230, 'image', '/assets/images/caciques.png', 615);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1231, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 615);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 615);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (616, 'Cesar rendifo', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1232, 'image', '/assets/images/cesar-rendifo.png', 616);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1233, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 616);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 616);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 490);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (617, 'Heroinas', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1234, 'image', '/assets/images/heroinas.png', 617);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1235, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 617);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 617);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (618, 'Luisa caceres', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1236, 'image', '/assets/images/luisa-caceres.png', 618);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1237, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 618);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 618);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 491);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (619, 'Negra matea', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1238, 'image', '/assets/images/negra-matea.png', 619);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1239, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 619);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 619);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (620, 'Pablo morillo', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1240, 'image', '/assets/images/pablo-morillo.png', 620);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1241, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 620);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 620);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (621, 'Piar', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1242, 'image', '/assets/images/piar.png', 621);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1243, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 621);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 621);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (622, 'Proceres', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1244, 'image', '/assets/images/proceres.png', 622);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1245, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 622);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 622);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (623, 'Tulio febres cordero', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1246, 'image', '/assets/images/tulio-febres-cordero.png', 623);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1247, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 623);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 24, 623);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (624, 'Alcalde', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1248, 'image', '/assets/images/alcalde.png', 624);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1249, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 624);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 25, 624);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (625, 'Gobernador', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1250, 'image', '/assets/images/gobernador.png', 625);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1251, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 625);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 25, 625);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (626, 'Presidente', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1252, 'image', '/assets/images/presidente.png', 626);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1253, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 626);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 25, 626);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (627, 'Profesor', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1254, 'image', '/assets/images/profesor.png', 627);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1255, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 627);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 25, 627);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (628, 'Alparpatas', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1256, 'image', '/assets/images/alparpatas.png', 628);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1257, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 628);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 628);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (629, 'Bermudas', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1258, 'image', '/assets/images/bermudas.png', 629);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1259, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 629);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 629);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 499);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 498);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 496);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (630, 'Estraple', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1260, 'image', '/assets/images/estraple.png', 630);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1261, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 630);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 630);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 497);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (631, 'Guayabera', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1262, 'image', '/assets/images/guayabera.png', 631);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1263, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 631);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 631);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 495);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (632, 'Ruana', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1264, 'image', '/assets/images/ruana.png', 632);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1265, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 632);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 632);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (633, 'Sombrero', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1266, 'image', '/assets/images/sombrero.png', 633);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1267, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 633);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 26, 633);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (634, 'Cayena', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1268, 'image', '/assets/images/cayena.png', 634);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1269, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 634);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 10);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 634);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (635, 'Clavel', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1270, 'image', '/assets/images/clavel.png', 635);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1271, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 635);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 635);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 377);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (636, 'Girasol', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1272, 'image', '/assets/images/girasol.png', 636);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1273, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 636);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 636);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (637, 'Lirio', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1274, 'image', '/assets/images/lirio.png', 637);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1275, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 637);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 637);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (638, 'Margarita', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1276, 'image', '/assets/images/margarita.png', 638);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1277, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 638);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 638);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 243);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (639, 'Rosa', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1278, 'image', '/assets/images/rosa.png', 639);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1279, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 639);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 639);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (640, 'Trinitaria', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1280, 'image', '/assets/images/trinitaria.png', 640);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1281, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 640);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 640);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (641, 'Tulipan', 10);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1282, 'image', '/assets/images/tulipan.png', 641);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1283, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 641);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 10, 641);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 28, 501);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (642, 'Colicos', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1284, 'image', '/assets/images/colicos.png', 642);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1285, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 642);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 28, 642);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (643, 'Dolor de estomago', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1286, 'image', '/assets/images/dolor-de-estomago.png', 643);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1287, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 643);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 28, 643);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 28, 500);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (644, 'Pus', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1288, 'image', '/assets/images/pus.png', 644);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1289, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 644);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 28, 644);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 30);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 511);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (645, 'Brocha', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1290, 'image', '/assets/images/brocha.png', 645);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1291, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 645);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 645);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (646, 'Cartulina', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1292, 'image', '/assets/images/cartulina.png', 646);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1293, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 646);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 646);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 504);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 506);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 509);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 508);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (647, 'Hojas de examen', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1294, 'image', '/assets/images/hojas-de-examen.png', 647);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1295, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 647);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 647);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (648, 'Lapiceros', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1296, 'image', '/assets/images/lapiceros.png', 648);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1297, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 648);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 648);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (649, 'Lija', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1298, 'image', '/assets/images/lija.png', 649);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1299, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 649);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 649);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (650, 'Marcadores', 30);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1300, 'image', '/assets/images/marcadores.png', 650);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1301, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 650);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 650);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 507);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 30, 510);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (651, 'Alcelga', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1302, 'image', '/assets/images/alcelga.png', 651);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1303, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 651);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (5, 31);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 651);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 522);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (652, 'Batata', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1304, 'image', '/assets/images/batata.png', 652);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1305, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 652);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 652);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 523);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (653, 'Berros', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1306, 'image', '/assets/images/berros.png', 653);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1307, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 653);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 653);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 520);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 518);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 513);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 521);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (654, 'Espinaca', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1308, 'image', '/assets/images/espinaca.png', 654);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1309, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 654);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 654);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 515);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (655, 'Ocumo', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1310, 'image', '/assets/images/ocumo.png', 655);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1311, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 655);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 655);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 519);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 517);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (656, 'Radicchio', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1312, 'image', '/assets/images/radicchio.png', 656);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1313, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 656);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 656);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (657, 'Rucula', 31);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1314, 'image', '/assets/images/rucula.png', 657);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1315, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 657);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 657);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 516);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 260);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (5, 31, 514);
    


--
-- Sexto Grado
--
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (658, 'Ficus', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1316, 'image', '/assets/images/ficus.png', 658);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1317, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 658);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 2);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 2, 658);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (659, 'Cactus', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1318, 'image', '/assets/images/cactus.png', 659);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1319, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 659);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 2, 659);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (660, 'Caujaro', 2);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1320, 'image', '/assets/images/caujaro.png', 660);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1321, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 660);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 2, 660);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (661, 'Dinosaurios', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1322, 'image', '/assets/images/dinosaurios.png', 661);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1323, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 661);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 1);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 1, 661);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (662, 'Cunaguaro', 1);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1324, 'image', '/assets/images/cunaguaro.png', 662);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1325, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 662);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 1, 662);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (663, 'Afeitadora', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1326, 'image', '/assets/images/afeitadora.png', 663);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1327, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 663);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 3);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 3, 663);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (664, 'Corta uña', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1328, 'image', '/assets/images/corta-una.png', 664);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1329, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 664);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 3, 664);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (665, 'Jabón', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1330, 'image', '/assets/images/jabon.png', 665);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1331, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 665);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 3, 665);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (666, 'Peine', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1332, 'image', '/assets/images/peine.png', 666);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1333, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 666);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 3, 666);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (667, 'Papel Sanitario', 3);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1334, 'image', '/assets/images/papel-sanitario.png', 667);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1335, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 667);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 3, 667);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (668, 'Bocadillo', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1336, 'image', '/assets/images/bocadillo.png', 668);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1337, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 668);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 6);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 6, 668);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (669, 'Mermelada', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1338, 'image', '/assets/images/mermelada.png', 669);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1339, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 669);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 6, 669);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (670, 'Cremas', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1340, 'image', '/assets/images/cremas.png', 670);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1341, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 670);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 6, 670);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (671, 'Batidos', 6);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1342, 'image', '/assets/images/batidos.png', 671);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1343, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 671);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 6, 671);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (672, 'Gastritis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1344, 'image', '/assets/images/gastritis.png', 672);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1345, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 672);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 7);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 7, 672);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (673, 'Peritonitis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1346, 'image', '/assets/images/peritonitis.png', 673);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1347, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 673);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 7, 673);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (674, 'Amigdalitis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1348, 'image', '/assets/images/amigdalitis.png', 674);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1349, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 674);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 7, 674);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (675, 'Apendicitis', 7);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1350, 'image', '/assets/images/apendicitis.png', 675);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1351, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 675);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 7, 675);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (676, 'Poliedro', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1352, 'image', '/assets/images/poliedro.png', 676);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1353, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 676);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 8);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 8, 676);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (677, 'Piramides', 8);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1354, 'image', '/assets/images/piramides.png', 677);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1355, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 677);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 8, 677);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (678, 'Momumento del Perro', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1356, 'image', '/assets/images/momumento-del-perro.png', 678);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1357, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 678);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 13);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 678);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (679, 'Tisure', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1358, 'image', '/assets/images/tisure.png', 679);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1359, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 679);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 679);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (680, 'Los Nevados', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1360, 'image', '/assets/images/los-nevados.png', 680);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1361, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 680);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 680);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (681, 'La Loca Luz Caraballo', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1362, 'image', '/assets/images/la-loca-luz-caraballo.png', 681);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1363, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 681);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 681);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (682, 'La Mucuy', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1364, 'image', '/assets/images/la-mucuy.png', 682);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1365, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 682);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 682);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (683, 'La Laguna', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1366, 'image', '/assets/images/la-laguna.png', 683);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1367, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 683);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 683);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (684, 'Lagunillas', 13);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1368, 'image', '/assets/images/lagunillas.png', 684);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1369, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 684);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 13, 684);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (685, 'Billones', 20);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1370, 'image', '/assets/images/billones.png', 685);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1371, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 685);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 20);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 20, 685);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 24);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 24, 230);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (686, 'Manuel Gual', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1372, 'image', '/assets/images/manuel-gual.png', 686);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1373, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 686);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 24, 686);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (687, 'Jose Maria España', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1374, 'image', '/assets/images/jose-maria-espana.png', 687);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1375, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 687);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 24, 687);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (688, 'Vicente de Emparan', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1376, 'image', '/assets/images/vicente-de-emparan.png', 688);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1377, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 688);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 24, 688);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (689, 'Jose Leonardo Chirinos', 24);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1378, 'image', '/assets/images/jose-leonardo-chirinos.png', 689);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1379, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 689);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 24, 689);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (690, 'Diputado', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1380, 'image', '/assets/images/diputado.png', 690);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1381, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 690);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 25);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 690);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (691, 'Senador', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1382, 'image', '/assets/images/senador.png', 691);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1383, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 691);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 691);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (692, 'Embajador', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1384, 'image', '/assets/images/embajador.png', 692);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1385, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 692);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 692);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (693, 'Cónsul', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1386, 'image', '/assets/images/consul.png', 693);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1387, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 693);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 693);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (694, 'Sacerdote', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1388, 'image', '/assets/images/sacerdote.png', 694);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1389, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 694);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 694);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 57);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (695, 'Pastor', 25);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1390, 'image', '/assets/images/pastor.png', 695);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1391, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 695);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 25, 695);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (696, 'Pinta uñas', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1392, 'image', '/assets/images/pinta-unas.png', 696);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1393, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 696);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 26);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 26, 696);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (697, 'Lápiz-labial', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1394, 'image', '/assets/images/lapiz-labial.png', 697);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1395, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 697);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 26, 697);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (698, 'Colonia', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1396, 'image', '/assets/images/colonia.png', 698);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1397, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 698);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 26, 698);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (699, 'Aretes', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1398, 'image', '/assets/images/aretes.png', 699);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1399, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 699);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 26, 699);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (700, 'Cintillo', 26);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1400, 'image', '/assets/images/cintillo.png', 700);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1401, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 700);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 26, 700);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (701, 'Acidez', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1402, 'image', '/assets/images/acidez.png', 701);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1403, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 701);
    

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (6, 28);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 28, 701);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (702, 'Reflujo', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1404, 'image', '/assets/images/reflujo.png', 702);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1405, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 702);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 28, 702);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (703, 'Inflamacion', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1406, 'image', '/assets/images/inflamacion.png', 703);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1407, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 703);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 28, 703);
    
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (704, 'Abceso', 28);
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1408, 'image', '/assets/images/abceso.png', 704);

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (1409, 'video', 'https://www.youtube.com/watch?v=urpJuQ9IfHc', 704);
    

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (6, 28, 704);
    