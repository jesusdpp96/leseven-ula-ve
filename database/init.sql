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
INSERT INTO public.usuario_metadatos( id, practicas_realizadas, consultas_correctas, consultas_incorrectas)
	VALUES (1, 0, 0, 0);

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id, genero)
	VALUES (1, 'Maria', 'Gonzalez', 'mariagozanlez@dominio.com', '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'profesor', 'Graduado', '1990-03-20', 1, '2022-05-23T13:40:20.920Z', 1, 'femenino');

INSERT INTO public.usuario_metadatos( id, practicas_realizadas, consultas_correctas, consultas_incorrectas)
	VALUES (2, 0, 0, 0);

INSERT INTO public.usuario( id, nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, fecha_registro, usuario_metadatos_id, genero)
	VALUES (2, 'Carlos', 'Perez', 'carlosperez@dominio.com', '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK', 'UEEB “Ofelia Tancredi de Corredor”', 'Mérida', 'Venezuela', 'aprendiz', 'Graduado', '2005-01-10', 2, '2022-05-23T13:40:20.920Z', 2, 'masculino');

---
--- Pruebas ninos
---
--- Preescolar
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (3, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        3,
        'Thiago',
        'Thiago',
        'estudiante1@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        3,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (4, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        4,
        'Juan',
        'Diego',
        'estudiante2@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        4,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (5, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        5,
        'Sofia',
        'Sofia',
        'estudiante3@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        5,
        'femenino'
    );
	INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (6, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        6,
        'Alexa',
        'Alexa',
        'estudiante4@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        6,
        'femenino'
    );
	INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (7, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        7,
        'Anyelimar',
        'Anyelimar',
        'estudiante5@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        7,
        'femenino'
    );
	INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (8, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        8,
        'Dougerlyn',
        'Dougerlyn',
        'estudiante6@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        8,
        'femenino'
    );
	INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (9, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        9,
        'Axel',
        'Axel',
        'estudiante7@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        9,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (10, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        10,
        'Valery',
        'Valery',
        'estudiante8@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        10,
        'femenino'
    );
--- Primer grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (11, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        11,
        'Douglas',
        'Douglas',
        'estudiante9@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        11,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (12, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        12,
        'Emma',
        'Emma',
        'estudiante10@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        12,
        'femenino'
    );

--- Segundo grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (13, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        13,
        'Juan',
        'Diego',
        'estudiante11@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        13,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (14, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        14,
        'Jesus',
        'Jesus',
        'estudiante12@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        14,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (15, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        15,
        'Cesar',
        'Cesar',
        'estudiante13@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        15,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (16, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        16,
        'Angel',
        'Angel',
        'estudiante14@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        16,
        'masculino'
    );
--- Tercer grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (17, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        17,
        'Thiago',
        'Thiago',
        'estudiante15@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        17,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (18, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        18,
        'Gabriela',
        'Gabriela',
        'estudiante16@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        18,
        'femenino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (19, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        19,
        'Jimena',
        'Jimena',
        'estudiante17@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        19,
        'femenino'
    );
--- CUarto grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (20, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        20,
        'Freddy',
        'Freddy',
        'estudiante18@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        20,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (21, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        21,
        'Fabian',
        'Fabian',
        'estudiante19@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        21,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (22, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        22,
        'Jenaireth',
        'Jenaireth',
        'estudiante20@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        22,
        'femenino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (23, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        23,
        'Estefana',
        'Estefana',
        'estudiante21@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        23,
        'femenino'
    );
--- Quinto grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (24, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        24,
        'Gabriel',
        'Gabriel',
        'estudiante22@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        24,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (25, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        25,
        'Miguel',
        'Angel',
        'estudiante23@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        25,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (26, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        26,
        'Juan',
        'Juan',
        'estudiante24@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        26,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (27, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        27,
        'Orlando',
        'Orlando',
        'estudiante25@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        27,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (28, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        28,
        'Andriuh',
        'Andriuh',
        'estudiante26@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        28,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (29, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        29,
        'Pedro',
        'Pedro',
        'estudiante27@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        29,
        'masculino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (30, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        30,
        'Kamila',
        'Kamila',
        'estudiante28@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        30,
        'femenino'
    );
--- Sexto grado
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (31, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        31,
        'Dayana',
        'Dayana',
        'estudiante29@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        31,
        'femenino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (32, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        32,
        'Nicoll',
        'Nicoll',
        'estudiante30@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        32,
        'femenino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (33, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        33,
        'Daniela',
        'Daniela',
        'estudiante31@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        33,
        'femenino'
    );
INSERT INTO
    public.usuario_metadatos(
        id,
        practicas_realizadas,
        consultas_correctas,
        consultas_incorrectas
    )
VALUES (34, 0, 0, 0);

INSERT INTO
    public.usuario(
        id,
        nombre,
        apellido,
        correo,
        contrasena,
        escuela,
        ciudad,
        pais,
        tipo_aprendiz,
        grado_instruccion_aprendiz,
        fecha_nacimiento,
        rol_usuario_id,
        fecha_registro,
        usuario_metadatos_id,
        genero
    )
VALUES (
        34,
        'Mariangel',
        'Mariangel',
        'estudiante32@gmail.com',
        '$2b$10$cI6Uv69CQSIqND6tlbkYCOyXQF6RHlrU37U8hGAtze6ftt0wz09gK',
        'UEEB “Ofelia Tancredi de Corredor”',
        'Mérida',
        'Venezuela',
        'aprendiz',
        'Graduado',
        '1990-03-20',
        2,
        '2022-05-23T13:40:20.920Z',
        34,
        'femenino'
    );
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






