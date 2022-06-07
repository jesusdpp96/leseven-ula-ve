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






