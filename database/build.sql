--
-- Name: ciudad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudad (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL
);


ALTER TABLE public.ciudad OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciudad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ciudad_id_seq OWNER TO postgres;

--
-- Name: ciudad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciudad_id_seq OWNED BY public.ciudad.id;


--
-- Name: consulta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consulta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consulta_id_seq OWNER TO postgres;

--
-- Name: consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consulta (
    id integer DEFAULT nextval('public.consulta_id_seq'::regclass) NOT NULL,
    tipo character varying(20) NOT NULL,
    vocablo_correcto_id integer NOT NULL,
    vocablo_respuesta_id integer,
    practica_id integer
);


ALTER TABLE public.consulta OWNER TO postgres;

--
-- Name: escuela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.escuela (
    id integer NOT NULL,
    nombre character varying(140) NOT NULL
);


ALTER TABLE public.escuela OWNER TO postgres;

--
-- Name: escuela_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.escuela_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escuela_id_seq OWNER TO postgres;

--
-- Name: escuela_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.escuela_id_seq OWNED BY public.escuela.id;


--
-- Name: funcionalidad_sistema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionalidad_sistema (
    nombre character varying(40) NOT NULL,
    rol_usuario_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.funcionalidad_sistema OWNER TO postgres;

--
-- Name: grado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grado (
    id integer NOT NULL,
    nombre character varying(140) NOT NULL,
    image_src character varying(140)
);


ALTER TABLE public.grado OWNER TO postgres;

--
-- Name: grado_tema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grado_tema (
    grado_id integer NOT NULL,
    tema_id integer NOT NULL
);


ALTER TABLE public.grado_tema OWNER TO postgres;

--
-- Name: grado_tema_vocablo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grado_tema_vocablo (
    grado_id integer NOT NULL,
    tema_id integer NOT NULL,
    vocablo_id integer NOT NULL
);


ALTER TABLE public.grado_tema_vocablo OWNER TO postgres;

--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(80) NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- Name: pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pais_id_seq OWNER TO postgres;

--
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;


--
-- Name: practica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.practica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.practica_id_seq OWNER TO postgres;

--
-- Name: practica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.practica (
    id integer DEFAULT nextval('public.practica_id_seq'::regclass) NOT NULL,
    fecha character varying(30) NOT NULL,
    total_consultas integer NOT NULL,
    total_correctas integer NOT NULL,
    usuario_id integer NOT NULL,
    tema_id integer NOT NULL,
    grado_id integer NOT NULL,
    cancelada boolean
);


ALTER TABLE public.practica OWNER TO postgres;

--
-- Name: profesor_aprendiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor_aprendiz (
    profesor_id integer NOT NULL,
    aprendiz_id integer NOT NULL
);


ALTER TABLE public.profesor_aprendiz OWNER TO postgres;

--
-- Name: recurso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recurso_id_seq
    AS integer
    START WITH 5000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recurso_id_seq OWNER TO postgres;

--
-- Name: recurso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recurso (
    id integer DEFAULT nextval('public.recurso_id_seq'::regclass) NOT NULL,
    tipo character varying(50) NOT NULL,
    enlace character varying(140) NOT NULL,
    vocablo_id integer NOT NULL
);


ALTER TABLE public.recurso OWNER TO postgres;

--
-- Name: rol_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_usuario_id_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rol_usuario_id_seq OWNER TO postgres;

--
-- Name: rol_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol_usuario (
    id integer DEFAULT nextval('public.rol_usuario_id_seq'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.rol_usuario OWNER TO postgres;

--
-- Name: tema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tema_id_seq
    AS integer
    START WITH 500
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tema_id_seq OWNER TO postgres;

--
-- Name: tema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tema (
    id integer DEFAULT nextval('public.tema_id_seq'::regclass) NOT NULL,
    nombre character varying(140) NOT NULL,
    image_src character varying(140) NOT NULL,
    es_categoria boolean
);


ALTER TABLE public.tema OWNER TO postgres;

--
-- Name: trofeos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trofeos (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    tipo character varying(20) NOT NULL,
    fecha date NOT NULL,
    grado_id integer NOT NULL,
    tema_id integer NOT NULL
);


ALTER TABLE public.trofeos OWNER TO postgres;

--
-- Name: trofeos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trofeos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trofeos_id_seq OWNER TO postgres;

--
-- Name: trofeos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trofeos_id_seq OWNED BY public.trofeos.id;


--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer DEFAULT nextval('public.usuario_id_seq'::regclass) NOT NULL,
    nombre character varying(80) NOT NULL,
    apellido character varying(80) NOT NULL,
    correo character varying(100) NOT NULL,
    contrasena character varying(140) NOT NULL,
    escuela character varying(140),
    ciudad character varying(80),
    pais character varying(80),
    tipo_aprendiz character varying(40),
    grado_instruccion_aprendiz character varying(80),
    fecha_nacimiento date NOT NULL,
    rol_usuario_id integer NOT NULL,
    fecha_registro character varying(30) NOT NULL,
    usuario_metadatos_id integer NOT NULL,
    genero character varying(20) NOT NULL,
    grado_actual integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_log (
    usuario_id integer NOT NULL,
    fecha date NOT NULL,
    data jsonb NOT NULL
);


ALTER TABLE public.usuario_log OWNER TO postgres;

--
-- Name: usuario_metadatos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_metadatos_id_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_metadatos_id_seq OWNER TO postgres;

--
-- Name: usuario_metadatos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_metadatos (
    id integer DEFAULT nextval('public.usuario_metadatos_id_seq'::regclass) NOT NULL,
    practicas_realizadas integer NOT NULL,
    consultas_correctas integer NOT NULL,
    consultas_incorrectas integer NOT NULL,
    puntos_acumulados integer NOT NULL,
    trofeos_imparables integer NOT NULL,
    trofeos_leal integer NOT NULL,
    trofeos_agil integer NOT NULL
);


ALTER TABLE public.usuario_metadatos OWNER TO postgres;

--
-- Name: vocablo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vocablo_id_seq
    AS integer
    START WITH 2000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vocablo_id_seq OWNER TO postgres;

--
-- Name: vocablo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vocablo (
    id integer DEFAULT nextval('public.vocablo_id_seq'::regclass) NOT NULL,
    palabra character varying(140) NOT NULL,
    tema_id integer NOT NULL
);


ALTER TABLE public.vocablo OWNER TO postgres;

--
-- Name: vocablo_correcto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vocablo_correcto (
    usuario_id integer NOT NULL,
    tema_id integer NOT NULL,
    vocablo_id integer NOT NULL,
    grado_id integer NOT NULL,
    fecha date NOT NULL,
    correcto boolean NOT NULL
);


ALTER TABLE public.vocablo_correcto OWNER TO postgres;

--
-- Name: vocablo_visto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vocablo_visto (
    usuario_id integer NOT NULL,
    tema_id integer NOT NULL,
    vocablo_id integer NOT NULL,
    grado_id integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.vocablo_visto OWNER TO postgres;

--
-- Name: ciudad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudad ALTER COLUMN id SET DEFAULT nextval('public.ciudad_id_seq'::regclass);


--
-- Name: escuela id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escuela ALTER COLUMN id SET DEFAULT nextval('public.escuela_id_seq'::regclass);


--
-- Name: pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);


--
-- Name: trofeos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos ALTER COLUMN id SET DEFAULT nextval('public.trofeos_id_seq'::regclass);

--
-- Name: ciudad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudad_id_seq', 3, true);


--
-- Name: consulta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consulta_id_seq', 296, true);


--
-- Name: escuela_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.escuela_id_seq', 3, true);


--
-- Name: pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_seq', 587, true);


--
-- Name: practica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.practica_id_seq', 100, true);


--
-- Name: recurso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recurso_id_seq', 5000, true);


--
-- Name: rol_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_usuario_id_seq', 100, true);


--
-- Name: tema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tema_id_seq', 500, true);


--
-- Name: trofeos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trofeos_id_seq', 24, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 107, true);


--
-- Name: usuario_metadatos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_metadatos_id_seq', 107, true);


--
-- Name: vocablo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vocablo_id_seq', 2000, true);


--
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id);


--
-- Name: consulta consulta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (id);


--
-- Name: escuela escuela_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escuela
    ADD CONSTRAINT escuela_pkey PRIMARY KEY (id);


--
-- Name: funcionalidad_sistema funcionalidad_sistema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionalidad_sistema
    ADD CONSTRAINT funcionalidad_sistema_pkey PRIMARY KEY (id);


--
-- Name: grado grado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado
    ADD CONSTRAINT grado_pkey PRIMARY KEY (id);


--
-- Name: grado_tema grado_tema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema
    ADD CONSTRAINT grado_tema_pkey PRIMARY KEY (grado_id, tema_id);


--
-- Name: grado_tema_vocablo grado_tema_vocablo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema_vocablo
    ADD CONSTRAINT grado_tema_vocablo_pkey PRIMARY KEY (grado_id, tema_id, vocablo_id);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);


--
-- Name: practica practica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practica
    ADD CONSTRAINT practica_pkey PRIMARY KEY (id);


--
-- Name: profesor_aprendiz profesor_aprendiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor_aprendiz
    ADD CONSTRAINT profesor_aprendiz_pkey PRIMARY KEY (profesor_id, aprendiz_id);


--
-- Name: recurso recurso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT recurso_pkey PRIMARY KEY (id);


--
-- Name: rol_usuario rol_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_usuario
    ADD CONSTRAINT rol_usuario_pkey PRIMARY KEY (id);


--
-- Name: tema tema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tema
    ADD CONSTRAINT tema_pkey PRIMARY KEY (id);


--
-- Name: trofeos trofeos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT trofeos_pkey PRIMARY KEY (id);


--
-- Name: usuario_log usuario_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_log
    ADD CONSTRAINT usuario_log_pkey PRIMARY KEY (usuario_id, fecha);


--
-- Name: usuario_metadatos usuario_metadatos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_metadatos
    ADD CONSTRAINT usuario_metadatos_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: vocablo_visto usuario_tema_vocablo_visto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_visto
    ADD CONSTRAINT usuario_tema_vocablo_visto_pkey PRIMARY KEY (grado_id, vocablo_id, tema_id, usuario_id, fecha);


--
-- Name: vocablo_correcto vocablo_correcto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_correcto
    ADD CONSTRAINT vocablo_correcto_pkey PRIMARY KEY (usuario_id, tema_id, vocablo_id, grado_id, fecha);


--
-- Name: vocablo vocablo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo
    ADD CONSTRAINT vocablo_pkey PRIMARY KEY (id);


--
-- Name: profesor_aprendiz fk_aprendiz; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor_aprendiz
    ADD CONSTRAINT fk_aprendiz FOREIGN KEY (aprendiz_id) REFERENCES public.usuario(id);


--
-- Name: grado_tema fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id);


--
-- Name: grado_tema_vocablo fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema_vocablo
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id);


--
-- Name: practica fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practica
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id) NOT VALID;


--
-- Name: vocablo_correcto fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_correcto
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id) NOT VALID;


--
-- Name: vocablo_visto fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_visto
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id) NOT VALID;


--
-- Name: trofeos fk_grado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT fk_grado FOREIGN KEY (grado_id) REFERENCES public.grado(id) NOT VALID;


--
-- Name: usuario fk_grado_actual; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_grado_actual FOREIGN KEY (grado_actual) REFERENCES public.grado(id) NOT VALID;


--
-- Name: consulta fk_practica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_practica FOREIGN KEY (practica_id) REFERENCES public.practica(id) NOT VALID;


--
-- Name: profesor_aprendiz fk_profesor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor_aprendiz
    ADD CONSTRAINT fk_profesor FOREIGN KEY (profesor_id) REFERENCES public.usuario(id);


--
-- Name: usuario fk_rol_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_rol_usuario FOREIGN KEY (rol_usuario_id) REFERENCES public.rol_usuario(id) NOT VALID;


--
-- Name: funcionalidad_sistema fk_rol_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionalidad_sistema
    ADD CONSTRAINT fk_rol_usuario FOREIGN KEY (rol_usuario_id) REFERENCES public.rol_usuario(id);


--
-- Name: vocablo fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id) NOT VALID;


--
-- Name: practica fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practica
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id) NOT VALID;


--
-- Name: grado_tema fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id);


--
-- Name: grado_tema_vocablo fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema_vocablo
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id);


--
-- Name: vocablo_visto fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_visto
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id) NOT VALID;


--
-- Name: vocablo_correcto fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_correcto
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id) NOT VALID;


--
-- Name: trofeos fk_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT fk_tema FOREIGN KEY (tema_id) REFERENCES public.tema(id) NOT VALID;


--
-- Name: practica fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practica
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: vocablo_visto fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_visto
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: vocablo_correcto fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_correcto
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: usuario_log fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_log
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: trofeos fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES public.usuario(id) NOT VALID;


--
-- Name: usuario fk_usuario_metadatos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_metadatos FOREIGN KEY (usuario_metadatos_id) REFERENCES public.usuario_metadatos(id) NOT VALID;


--
-- Name: recurso fk_vocablo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recurso
    ADD CONSTRAINT fk_vocablo FOREIGN KEY (vocablo_id) REFERENCES public.vocablo(id) NOT VALID;


--
-- Name: vocablo_visto fk_vocablo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_visto
    ADD CONSTRAINT fk_vocablo FOREIGN KEY (vocablo_id) REFERENCES public.vocablo(id);


--
-- Name: vocablo_correcto fk_vocablo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocablo_correcto
    ADD CONSTRAINT fk_vocablo FOREIGN KEY (vocablo_id) REFERENCES public.vocablo(id);


--
-- Name: grado_tema_vocablo fk_vocablo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grado_tema_vocablo
    ADD CONSTRAINT fk_vocablo FOREIGN KEY (vocablo_id) REFERENCES public.vocablo(id);


--
-- Name: consulta fk_vocablo_correcto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_vocablo_correcto FOREIGN KEY (vocablo_correcto_id) REFERENCES public.vocablo(id);


--
-- Name: consulta fk_vocablo_respuesta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT fk_vocablo_respuesta FOREIGN KEY (vocablo_respuesta_id) REFERENCES public.vocablo(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

