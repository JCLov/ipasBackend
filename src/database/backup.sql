--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-07-22 11:27:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 237 (class 1259 OID 16755)
-- Name: asistencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asistencia (
    id bigint NOT NULL,
    hora_llegada timestamp without time zone,
    hora_salida timestamp without time zone,
    comentario text,
    empleado_cedula bigint
);


ALTER TABLE public.asistencia OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16754)
-- Name: asistencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asistencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asistencia_id_seq OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 236
-- Name: asistencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asistencia_id_seq OWNED BY public.asistencia.id;


--
-- TOC entry 221 (class 1259 OID 16648)
-- Name: cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargo (
    id bigint NOT NULL,
    nombre text
);


ALTER TABLE public.cargo OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16647)
-- Name: cargo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cargo_id_seq OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 220
-- Name: cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargo_id_seq OWNED BY public.cargo.id;


--
-- TOC entry 219 (class 1259 OID 16639)
-- Name: dependencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dependencia (
    id bigint NOT NULL,
    nombre text
);


ALTER TABLE public.dependencia OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16638)
-- Name: dependencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dependencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dependencia_id_seq OWNER TO postgres;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 218
-- Name: dependencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dependencia_id_seq OWNED BY public.dependencia.id;


--
-- TOC entry 233 (class 1259 OID 16707)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    cedula bigint NOT NULL,
    nombre text,
    apellido text,
    fecha_nacimiento timestamp without time zone,
    direccion text,
    telefono character varying(11),
    especialidad_id bigint,
    cargo_id bigint,
    dependencia_id bigint,
    turno_id bigint,
    genero_id bigint
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16706)
-- Name: empleado_cedula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_cedula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleado_cedula_seq OWNER TO postgres;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 232
-- Name: empleado_cedula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_cedula_seq OWNED BY public.empleado.cedula;


--
-- TOC entry 227 (class 1259 OID 16680)
-- Name: especialidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidad (
    id bigint NOT NULL,
    nombre text,
    maximo_dias integer
);


ALTER TABLE public.especialidad OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16679)
-- Name: especialidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.especialidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.especialidad_id_seq OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 226
-- Name: especialidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.especialidad_id_seq OWNED BY public.especialidad.id;


--
-- TOC entry 223 (class 1259 OID 16657)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id bigint NOT NULL,
    nombre text
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16656)
-- Name: estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_seq OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 222
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;


--
-- TOC entry 229 (class 1259 OID 16689)
-- Name: genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genero (
    id bigint NOT NULL,
    nombre text
);


ALTER TABLE public.genero OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16688)
-- Name: genero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genero_id_seq OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 228
-- Name: genero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genero_id_seq OWNED BY public.genero.id;


--
-- TOC entry 241 (class 1259 OID 16793)
-- Name: grupo_reporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupo_reporte (
    id bigint NOT NULL,
    paciente_cedula bigint,
    especialidad_id bigint,
    fecha_inicio timestamp without time zone
);


ALTER TABLE public.grupo_reporte OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16792)
-- Name: grupo_reporte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grupo_reporte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupo_reporte_id_seq OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 240
-- Name: grupo_reporte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grupo_reporte_id_seq OWNED BY public.grupo_reporte.id;


--
-- TOC entry 225 (class 1259 OID 16666)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    id bigint NOT NULL,
    nombre text,
    estado_id bigint
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16665)
-- Name: municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipio_id_seq OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 224
-- Name: municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.municipio_id_seq OWNED BY public.municipio.id;


--
-- TOC entry 239 (class 1259 OID 16769)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paciente (
    cedula bigint NOT NULL,
    nombre text,
    apellido text,
    institucion_laboral text,
    fecha_nacimiento timestamp without time zone,
    direccion text,
    telefono character varying(11),
    permiso_dias_extra boolean,
    cargo_id bigint,
    dependencia_id bigint,
    municipio_id bigint
);


ALTER TABLE public.paciente OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16768)
-- Name: paciente_cedula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paciente_cedula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paciente_cedula_seq OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 238
-- Name: paciente_cedula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paciente_cedula_seq OWNED BY public.paciente.cedula;


--
-- TOC entry 235 (class 1259 OID 16741)
-- Name: permiso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permiso (
    id bigint NOT NULL,
    descripcion_motivo text,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone,
    empleado_cedula bigint
);


ALTER TABLE public.permiso OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16740)
-- Name: permiso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permiso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permiso_id_seq OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 234
-- Name: permiso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permiso_id_seq OWNED BY public.permiso.id;


--
-- TOC entry 243 (class 1259 OID 16810)
-- Name: reporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reporte (
    id bigint NOT NULL,
    codigo_asistencial text,
    codigo_registro text,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone,
    empleado_validador_cedula bigint,
    grupo_reporte_id bigint
);


ALTER TABLE public.reporte OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16809)
-- Name: reporte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reporte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reporte_id_seq OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 242
-- Name: reporte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reporte_id_seq OWNED BY public.reporte.id;


--
-- TOC entry 215 (class 1259 OID 16616)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id bigint NOT NULL,
    nombre text
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16615)
-- Name: rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rol_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 214
-- Name: rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;


--
-- TOC entry 231 (class 1259 OID 16698)
-- Name: turno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turno (
    id bigint NOT NULL,
    nombre text,
    hora_llegada timestamp without time zone,
    hora_salida timestamp without time zone
);


ALTER TABLE public.turno OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16697)
-- Name: turno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.turno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turno_id_seq OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 230
-- Name: turno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.turno_id_seq OWNED BY public.turno.id;


--
-- TOC entry 217 (class 1259 OID 16625)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id bigint NOT NULL,
    usuario text,
    clave text,
    nombre text,
    rol_id bigint
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16624)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 216
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 3254 (class 2604 OID 16758)
-- Name: asistencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia ALTER COLUMN id SET DEFAULT nextval('public.asistencia_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 16651)
-- Name: cargo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo ALTER COLUMN id SET DEFAULT nextval('public.cargo_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 16642)
-- Name: dependencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia ALTER COLUMN id SET DEFAULT nextval('public.dependencia_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 16710)
-- Name: empleado cedula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN cedula SET DEFAULT nextval('public.empleado_cedula_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 16683)
-- Name: especialidad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad ALTER COLUMN id SET DEFAULT nextval('public.especialidad_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 16660)
-- Name: estado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 16692)
-- Name: genero id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero ALTER COLUMN id SET DEFAULT nextval('public.genero_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 16796)
-- Name: grupo_reporte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo_reporte ALTER COLUMN id SET DEFAULT nextval('public.grupo_reporte_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 16669)
-- Name: municipio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio ALTER COLUMN id SET DEFAULT nextval('public.municipio_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 16772)
-- Name: paciente cedula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente ALTER COLUMN cedula SET DEFAULT nextval('public.paciente_cedula_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 16744)
-- Name: permiso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso ALTER COLUMN id SET DEFAULT nextval('public.permiso_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 16813)
-- Name: reporte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte ALTER COLUMN id SET DEFAULT nextval('public.reporte_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 16619)
-- Name: rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 16701)
-- Name: turno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turno ALTER COLUMN id SET DEFAULT nextval('public.turno_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16628)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3281 (class 2606 OID 16762)
-- Name: asistencia asistencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT asistencia_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 16655)
-- Name: cargo cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16646)
-- Name: dependencia dependencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT dependencia_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 16714)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (cedula);


--
-- TOC entry 3271 (class 2606 OID 16687)
-- Name: especialidad especialidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16664)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 16696)
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 16798)
-- Name: grupo_reporte grupo_reporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo_reporte
    ADD CONSTRAINT grupo_reporte_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16673)
-- Name: municipio municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 16776)
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (cedula);


--
-- TOC entry 3279 (class 2606 OID 16748)
-- Name: permiso permiso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 16817)
-- Name: reporte reporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16623)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16705)
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 16632)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 16763)
-- Name: asistencia fk_asi_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asistencia
    ADD CONSTRAINT fk_asi_emp FOREIGN KEY (empleado_cedula) REFERENCES public.empleado(cedula);


--
-- TOC entry 3290 (class 2606 OID 16730)
-- Name: empleado fk_emp_car; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_emp_car FOREIGN KEY (cargo_id) REFERENCES public.cargo(id);


--
-- TOC entry 3291 (class 2606 OID 16720)
-- Name: empleado fk_emp_dep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_emp_dep FOREIGN KEY (dependencia_id) REFERENCES public.dependencia(id);


--
-- TOC entry 3292 (class 2606 OID 16715)
-- Name: empleado fk_emp_esp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_emp_esp FOREIGN KEY (especialidad_id) REFERENCES public.especialidad(id);


--
-- TOC entry 3293 (class 2606 OID 16735)
-- Name: empleado fk_emp_gen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_emp_gen FOREIGN KEY (genero_id) REFERENCES public.genero(id);


--
-- TOC entry 3294 (class 2606 OID 16725)
-- Name: empleado fk_emp_tur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_emp_tur FOREIGN KEY (turno_id) REFERENCES public.turno(id);


--
-- TOC entry 3300 (class 2606 OID 16804)
-- Name: grupo_reporte fk_gr_esp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo_reporte
    ADD CONSTRAINT fk_gr_esp FOREIGN KEY (especialidad_id) REFERENCES public.especialidad(id);


--
-- TOC entry 3301 (class 2606 OID 16799)
-- Name: grupo_reporte fk_gr_pac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo_reporte
    ADD CONSTRAINT fk_gr_pac FOREIGN KEY (paciente_cedula) REFERENCES public.paciente(cedula);


--
-- TOC entry 3289 (class 2606 OID 16674)
-- Name: municipio fk_mun_est; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT fk_mun_est FOREIGN KEY (estado_id) REFERENCES public.estado(id);


--
-- TOC entry 3297 (class 2606 OID 16787)
-- Name: paciente fk_pac_car; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_pac_car FOREIGN KEY (cargo_id) REFERENCES public.cargo(id);


--
-- TOC entry 3298 (class 2606 OID 16777)
-- Name: paciente fk_pac_dep; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_pac_dep FOREIGN KEY (dependencia_id) REFERENCES public.dependencia(id);


--
-- TOC entry 3299 (class 2606 OID 16782)
-- Name: paciente fk_pac_mun; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_pac_mun FOREIGN KEY (municipio_id) REFERENCES public.municipio(id);


--
-- TOC entry 3295 (class 2606 OID 16749)
-- Name: permiso fk_per_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT fk_per_emp FOREIGN KEY (empleado_cedula) REFERENCES public.empleado(cedula);


--
-- TOC entry 3302 (class 2606 OID 16823)
-- Name: reporte fk_rep_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT fk_rep_emp FOREIGN KEY (empleado_validador_cedula) REFERENCES public.empleado(cedula);


--
-- TOC entry 3303 (class 2606 OID 16818)
-- Name: reporte fk_rep_gr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT fk_rep_gr FOREIGN KEY (grupo_reporte_id) REFERENCES public.grupo_reporte(id);


--
-- TOC entry 3288 (class 2606 OID 16633)
-- Name: usuario fk_usu_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usu_rol FOREIGN KEY (rol_id) REFERENCES public.rol(id);


-- Completed on 2023-07-22 11:27:12

--
-- PostgreSQL database dump complete
--

