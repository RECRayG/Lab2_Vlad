--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-02-11 00:44:28

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

--
-- TOC entry 3436 (class 1262 OID 20583)
-- Name: group_schedule; Type: DATABASE; Schema: -; Owner: odbc_user
--

CREATE DATABASE group_schedule WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE group_schedule OWNER TO odbc_user;

\connect group_schedule

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
-- TOC entry 217 (class 1259 OID 20769)
-- Name: auditories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auditories (
    id_auditory integer NOT NULL,
    auditory character varying(255) NOT NULL
);


ALTER TABLE public.auditories OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 20768)
-- Name: auditories_id_auditory_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auditories_id_auditory_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auditories_id_auditory_seq OWNER TO postgres;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 216
-- Name: auditories_id_auditory_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auditories_id_auditory_seq OWNED BY public.auditories.id_auditory;


--
-- TOC entry 215 (class 1259 OID 20762)
-- Name: days; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.days (
    id_day integer NOT NULL,
    day character varying(255) NOT NULL
);


ALTER TABLE public.days OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 20761)
-- Name: days_id_day_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.days_id_day_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.days_id_day_seq OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 214
-- Name: days_id_day_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.days_id_day_seq OWNED BY public.days.id_day;


--
-- TOC entry 235 (class 1259 OID 20869)
-- Name: gr_sch_identity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gr_sch_identity (
    id_gr_sch_identity integer NOT NULL,
    id_group integer NOT NULL,
    id_schedule integer NOT NULL,
    id_number_of_week integer NOT NULL,
    id_time integer NOT NULL
);


ALTER TABLE public.gr_sch_identity OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 20868)
-- Name: gr_sch_identity_id_gr_sch_identity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gr_sch_identity_id_gr_sch_identity_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gr_sch_identity_id_gr_sch_identity_seq OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 234
-- Name: gr_sch_identity_id_gr_sch_identity_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gr_sch_identity_id_gr_sch_identity_seq OWNED BY public.gr_sch_identity.id_gr_sch_identity;


--
-- TOC entry 219 (class 1259 OID 20776)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id_group integer NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 20775)
-- Name: groups_id_group_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_group_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_group_seq OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 218
-- Name: groups_id_group_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_group_seq OWNED BY public.groups.id_group;


--
-- TOC entry 223 (class 1259 OID 20790)
-- Name: number_of_weeks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.number_of_weeks (
    id_number_of_week integer NOT NULL,
    number_week integer NOT NULL
);


ALTER TABLE public.number_of_weeks OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 20789)
-- Name: number_of_weeks_id_number_of_week_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.number_of_weeks_id_number_of_week_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_of_weeks_id_number_of_week_seq OWNER TO postgres;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 222
-- Name: number_of_weeks_id_number_of_week_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.number_of_weeks_id_number_of_week_seq OWNED BY public.number_of_weeks.id_number_of_week;


--
-- TOC entry 225 (class 1259 OID 20797)
-- Name: professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professors (
    id_professor integer NOT NULL,
    last_name character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255)
);


ALTER TABLE public.professors OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 20796)
-- Name: professors_id_professor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professors_id_professor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professors_id_professor_seq OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 224
-- Name: professors_id_professor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professors_id_professor_seq OWNED BY public.professors.id_professor;


--
-- TOC entry 231 (class 1259 OID 20820)
-- Name: schedules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedules (
    id_schedule integer NOT NULL,
    id_professor integer,
    id_subject integer,
    id_auditory integer,
    id_type integer
);


ALTER TABLE public.schedules OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 20819)
-- Name: schedules_id_schedule_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schedules_id_schedule_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schedules_id_schedule_seq OWNER TO postgres;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 230
-- Name: schedules_id_schedule_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schedules_id_schedule_seq OWNED BY public.schedules.id_schedule;


--
-- TOC entry 227 (class 1259 OID 20806)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id_subject integer NOT NULL,
    subject character varying(255) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 20805)
-- Name: subjects_id_subject_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_subject_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_id_subject_seq OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 226
-- Name: subjects_id_subject_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_subject_seq OWNED BY public.subjects.id_subject;


--
-- TOC entry 221 (class 1259 OID 20783)
-- Name: time_of_lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_of_lessons (
    id_time_of_lesson integer NOT NULL,
    time_lesson time without time zone NOT NULL
);


ALTER TABLE public.time_of_lessons OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 20782)
-- Name: time_of_lessons_id_time_of_lesson_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_of_lessons_id_time_of_lesson_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_of_lessons_id_time_of_lesson_seq OWNER TO postgres;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 220
-- Name: time_of_lessons_id_time_of_lesson_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_of_lessons_id_time_of_lesson_seq OWNED BY public.time_of_lessons.id_time_of_lesson;


--
-- TOC entry 233 (class 1259 OID 20847)
-- Name: times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.times (
    id_time integer NOT NULL,
    id_day integer NOT NULL,
    id_begin integer NOT NULL,
    id_end integer NOT NULL
);


ALTER TABLE public.times OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 20846)
-- Name: times_id_time_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.times_id_time_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.times_id_time_seq OWNER TO postgres;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 232
-- Name: times_id_time_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.times_id_time_seq OWNED BY public.times.id_time;


--
-- TOC entry 229 (class 1259 OID 20813)
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id_type integer NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 20812)
-- Name: types_id_type_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_type_seq OWNER TO postgres;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 228
-- Name: types_id_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_type_seq OWNED BY public.types.id_type;


--
-- TOC entry 3224 (class 2604 OID 20772)
-- Name: auditories id_auditory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditories ALTER COLUMN id_auditory SET DEFAULT nextval('public.auditories_id_auditory_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 20765)
-- Name: days id_day; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.days ALTER COLUMN id_day SET DEFAULT nextval('public.days_id_day_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 20872)
-- Name: gr_sch_identity id_gr_sch_identity; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity ALTER COLUMN id_gr_sch_identity SET DEFAULT nextval('public.gr_sch_identity_id_gr_sch_identity_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 20779)
-- Name: groups id_group; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id_group SET DEFAULT nextval('public.groups_id_group_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 20793)
-- Name: number_of_weeks id_number_of_week; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_of_weeks ALTER COLUMN id_number_of_week SET DEFAULT nextval('public.number_of_weeks_id_number_of_week_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 20800)
-- Name: professors id_professor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors ALTER COLUMN id_professor SET DEFAULT nextval('public.professors_id_professor_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 20823)
-- Name: schedules id_schedule; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules ALTER COLUMN id_schedule SET DEFAULT nextval('public.schedules_id_schedule_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 20809)
-- Name: subjects id_subject; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id_subject SET DEFAULT nextval('public.subjects_id_subject_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 20786)
-- Name: time_of_lessons id_time_of_lesson; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_of_lessons ALTER COLUMN id_time_of_lesson SET DEFAULT nextval('public.time_of_lessons_id_time_of_lesson_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 20850)
-- Name: times id_time; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times ALTER COLUMN id_time SET DEFAULT nextval('public.times_id_time_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 20816)
-- Name: types id_type; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id_type SET DEFAULT nextval('public.types_id_type_seq'::regclass);


--
-- TOC entry 3412 (class 0 OID 20769)
-- Dependencies: 217
-- Data for Name: auditories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auditories (id_auditory, auditory) VALUES (1, '7-1');
INSERT INTO public.auditories (id_auditory, auditory) VALUES (2, '3-212');


--
-- TOC entry 3410 (class 0 OID 20762)
-- Dependencies: 215
-- Data for Name: days; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.days (id_day, day) VALUES (1, 'Понедельник');
INSERT INTO public.days (id_day, day) VALUES (2, 'Вторник');
INSERT INTO public.days (id_day, day) VALUES (3, 'Среда');
INSERT INTO public.days (id_day, day) VALUES (4, 'Четверг');
INSERT INTO public.days (id_day, day) VALUES (5, 'Пятница');
INSERT INTO public.days (id_day, day) VALUES (6, 'Суббота');


--
-- TOC entry 3430 (class 0 OID 20869)
-- Dependencies: 235
-- Data for Name: gr_sch_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (109, 11, 111, 1, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (110, 11, 112, 1, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (111, 11, 113, 1, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (112, 11, 114, 1, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (113, 11, 115, 1, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (114, 11, 116, 1, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (115, 11, 117, 1, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (116, 11, 118, 1, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (117, 11, 119, 1, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (118, 11, 120, 1, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (119, 11, 121, 1, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (120, 11, 122, 1, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (121, 11, 123, 1, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (122, 11, 124, 1, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (123, 11, 125, 1, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (124, 11, 126, 1, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (125, 11, 127, 1, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (126, 11, 128, 1, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (127, 11, 129, 1, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (128, 11, 130, 1, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (129, 11, 131, 1, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (130, 11, 132, 1, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (131, 11, 133, 1, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (132, 11, 134, 1, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (133, 11, 135, 1, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (134, 11, 136, 1, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (135, 11, 137, 1, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (136, 11, 138, 1, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (137, 11, 139, 1, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (138, 11, 140, 1, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (139, 11, 141, 1, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (140, 11, 142, 1, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (141, 11, 143, 1, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (142, 11, 144, 1, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (143, 11, 145, 1, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (144, 11, 146, 1, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (145, 11, 147, 1, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (146, 11, 148, 1, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (147, 11, 149, 1, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (148, 11, 150, 1, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (149, 11, 151, 1, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (150, 11, 152, 1, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (151, 11, 153, 1, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (152, 11, 154, 1, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (153, 11, 155, 1, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (154, 11, 156, 1, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (155, 11, 157, 1, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (156, 11, 158, 1, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (157, 11, 159, 2, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (158, 11, 160, 2, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (159, 11, 161, 2, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (160, 11, 162, 2, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (161, 11, 163, 2, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (162, 11, 164, 2, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (163, 11, 165, 2, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (164, 11, 166, 2, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (165, 11, 167, 2, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (166, 11, 168, 2, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (167, 11, 169, 2, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (168, 11, 170, 2, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (169, 11, 171, 2, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (170, 11, 172, 2, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (171, 11, 173, 2, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (172, 11, 174, 2, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (173, 11, 175, 2, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (174, 11, 176, 2, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (175, 11, 177, 2, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (176, 11, 178, 2, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (177, 11, 179, 2, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (178, 11, 180, 2, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (179, 11, 181, 2, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (180, 11, 182, 2, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (181, 11, 183, 2, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (182, 11, 184, 2, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (183, 11, 185, 2, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (184, 11, 186, 2, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (185, 11, 187, 2, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (186, 11, 188, 2, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (187, 11, 189, 2, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (188, 11, 190, 2, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (189, 11, 191, 2, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (190, 11, 192, 2, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (191, 11, 193, 2, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (192, 11, 194, 2, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (193, 11, 195, 2, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (194, 11, 196, 2, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (195, 11, 197, 2, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (196, 11, 198, 2, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (197, 11, 199, 2, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (198, 11, 200, 2, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (199, 11, 201, 2, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (200, 11, 202, 2, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (201, 11, 203, 2, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (202, 11, 204, 2, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (203, 11, 205, 2, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (204, 11, 206, 2, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (205, 11, 207, 3, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (206, 11, 208, 3, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (207, 11, 209, 3, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (208, 11, 210, 3, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (209, 11, 211, 3, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (210, 11, 212, 3, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (211, 11, 213, 3, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (212, 11, 214, 3, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (213, 11, 215, 3, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (214, 11, 216, 3, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (215, 11, 217, 3, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (216, 11, 218, 3, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (217, 11, 219, 3, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (218, 11, 220, 3, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (219, 11, 221, 3, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (220, 11, 222, 3, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (221, 11, 223, 3, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (222, 11, 224, 3, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (223, 11, 225, 3, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (224, 11, 226, 3, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (225, 11, 227, 3, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (226, 11, 228, 3, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (227, 11, 229, 3, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (228, 11, 230, 3, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (229, 11, 231, 3, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (230, 11, 232, 3, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (231, 11, 233, 3, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (232, 11, 234, 3, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (233, 11, 235, 3, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (234, 11, 236, 3, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (235, 11, 237, 3, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (236, 11, 238, 3, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (237, 11, 239, 3, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (238, 11, 240, 3, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (239, 11, 241, 3, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (240, 11, 242, 3, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (241, 11, 243, 3, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (242, 11, 244, 3, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (243, 11, 245, 3, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (244, 11, 246, 3, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (245, 11, 247, 3, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (246, 11, 248, 3, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (247, 11, 249, 3, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (248, 11, 250, 3, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (249, 11, 251, 3, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (250, 11, 252, 3, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (251, 11, 253, 3, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (252, 11, 254, 3, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (253, 11, 255, 4, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (254, 11, 256, 4, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (255, 11, 257, 4, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (256, 11, 258, 4, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (257, 11, 259, 4, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (258, 11, 260, 4, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (259, 11, 261, 4, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (260, 11, 262, 4, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (261, 11, 263, 4, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (262, 11, 264, 4, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (263, 11, 265, 4, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (264, 11, 266, 4, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (265, 11, 267, 4, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (266, 11, 268, 4, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (267, 11, 269, 4, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (268, 11, 270, 4, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (269, 11, 271, 4, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (270, 11, 272, 4, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (271, 11, 273, 4, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (272, 11, 274, 4, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (273, 11, 275, 4, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (274, 11, 276, 4, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (275, 11, 277, 4, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (276, 11, 278, 4, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (277, 11, 279, 4, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (278, 11, 280, 4, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (279, 11, 281, 4, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (280, 11, 282, 4, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (281, 11, 283, 4, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (282, 11, 284, 4, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (283, 11, 285, 4, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (284, 11, 286, 4, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (285, 11, 287, 4, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (286, 11, 288, 4, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (287, 11, 289, 4, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (288, 11, 290, 4, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (289, 11, 291, 4, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (290, 11, 292, 4, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (291, 11, 293, 4, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (292, 11, 294, 4, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (293, 11, 295, 4, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (294, 11, 296, 4, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (295, 11, 297, 4, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (296, 11, 298, 4, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (297, 11, 299, 4, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (298, 11, 300, 4, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (299, 11, 301, 4, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (300, 11, 302, 4, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (301, 11, 303, 5, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (302, 11, 304, 5, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (303, 11, 305, 5, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (304, 11, 306, 5, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (305, 11, 307, 5, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (306, 11, 308, 5, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (307, 11, 309, 5, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (308, 11, 310, 5, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (309, 11, 311, 5, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (310, 11, 312, 5, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (311, 11, 313, 5, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (312, 11, 314, 5, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (313, 11, 315, 5, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (314, 11, 316, 5, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (315, 11, 317, 5, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (316, 11, 318, 5, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (317, 11, 319, 5, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (318, 11, 320, 5, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (319, 11, 321, 5, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (320, 11, 322, 5, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (321, 11, 323, 5, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (322, 11, 324, 5, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (323, 11, 325, 5, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (324, 11, 326, 5, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (325, 11, 327, 5, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (326, 11, 328, 5, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (327, 11, 329, 5, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (328, 11, 330, 5, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (329, 11, 331, 5, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (330, 11, 332, 5, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (331, 11, 333, 5, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (332, 11, 334, 5, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (333, 11, 335, 5, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (334, 11, 336, 5, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (335, 11, 337, 5, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (336, 11, 338, 5, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (337, 11, 339, 5, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (338, 11, 340, 5, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (339, 11, 341, 5, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (340, 11, 342, 5, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (341, 11, 343, 5, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (342, 11, 344, 5, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (343, 11, 345, 5, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (344, 11, 346, 5, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (345, 11, 347, 5, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (346, 11, 348, 5, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (347, 11, 349, 5, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (348, 11, 350, 5, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (349, 11, 351, 6, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (350, 11, 352, 6, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (351, 11, 353, 6, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (352, 11, 354, 6, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (353, 11, 355, 6, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (354, 11, 356, 6, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (355, 11, 357, 6, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (356, 11, 358, 6, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (357, 11, 359, 6, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (358, 11, 360, 6, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (359, 11, 361, 6, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (360, 11, 362, 6, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (361, 11, 363, 6, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (362, 11, 364, 6, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (363, 11, 365, 6, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (364, 11, 366, 6, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (365, 11, 367, 6, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (366, 11, 368, 6, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (367, 11, 369, 6, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (368, 11, 370, 6, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (369, 11, 371, 6, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (370, 11, 372, 6, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (371, 11, 373, 6, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (372, 11, 374, 6, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (373, 11, 375, 6, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (374, 11, 376, 6, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (375, 11, 377, 6, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (376, 11, 378, 6, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (377, 11, 379, 6, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (378, 11, 380, 6, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (379, 11, 381, 6, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (380, 11, 382, 6, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (381, 11, 383, 6, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (382, 11, 384, 6, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (383, 11, 385, 6, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (384, 11, 386, 6, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (385, 11, 387, 6, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (386, 11, 388, 6, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (387, 11, 389, 6, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (388, 11, 390, 6, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (389, 11, 391, 6, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (390, 11, 392, 6, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (391, 11, 393, 6, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (392, 11, 394, 6, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (393, 11, 395, 6, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (394, 11, 396, 6, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (395, 11, 397, 6, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (396, 11, 398, 6, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (397, 11, 399, 7, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (398, 11, 400, 7, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (399, 11, 401, 7, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (400, 11, 402, 7, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (401, 11, 403, 7, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (402, 11, 404, 7, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (403, 11, 405, 7, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (404, 11, 406, 7, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (405, 11, 407, 7, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (406, 11, 408, 7, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (407, 11, 409, 7, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (408, 11, 410, 7, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (409, 11, 411, 7, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (410, 11, 412, 7, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (411, 11, 413, 7, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (412, 11, 414, 7, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (413, 11, 415, 7, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (414, 11, 416, 7, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (415, 11, 417, 7, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (416, 11, 418, 7, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (417, 11, 419, 7, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (418, 11, 420, 7, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (419, 11, 421, 7, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (420, 11, 422, 7, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (421, 11, 423, 7, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (422, 11, 424, 7, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (423, 11, 425, 7, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (424, 11, 426, 7, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (425, 11, 427, 7, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (426, 11, 428, 7, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (427, 11, 429, 7, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (428, 11, 430, 7, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (429, 11, 431, 7, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (430, 11, 432, 7, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (431, 11, 433, 7, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (432, 11, 434, 7, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (433, 11, 435, 7, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (434, 11, 436, 7, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (435, 11, 437, 7, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (436, 11, 438, 7, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (437, 11, 439, 7, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (438, 11, 440, 7, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (439, 11, 441, 7, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (440, 11, 442, 7, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (441, 11, 443, 7, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (442, 11, 444, 7, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (443, 11, 445, 7, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (444, 11, 446, 7, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (445, 11, 447, 8, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (446, 11, 448, 8, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (447, 11, 449, 8, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (448, 11, 450, 8, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (449, 11, 451, 8, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (450, 11, 452, 8, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (451, 11, 453, 8, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (452, 11, 454, 8, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (453, 11, 455, 8, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (454, 11, 456, 8, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (455, 11, 457, 8, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (456, 11, 458, 8, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (457, 11, 459, 8, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (458, 11, 460, 8, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (459, 11, 461, 8, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (460, 11, 462, 8, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (461, 11, 463, 8, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (462, 11, 464, 8, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (463, 11, 465, 8, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (464, 11, 466, 8, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (465, 11, 467, 8, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (466, 11, 468, 8, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (467, 11, 469, 8, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (468, 11, 470, 8, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (469, 11, 471, 8, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (470, 11, 472, 8, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (471, 11, 473, 8, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (472, 11, 474, 8, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (473, 11, 475, 8, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (474, 11, 476, 8, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (475, 11, 477, 8, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (476, 11, 478, 8, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (477, 11, 479, 8, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (478, 11, 480, 8, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (479, 11, 481, 8, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (480, 11, 482, 8, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (481, 11, 483, 8, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (482, 11, 484, 8, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (483, 11, 485, 8, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (484, 11, 486, 8, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (485, 11, 487, 8, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (486, 11, 488, 8, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (487, 11, 489, 8, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (488, 11, 490, 8, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (489, 11, 491, 8, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (490, 11, 492, 8, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (491, 11, 493, 8, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (492, 11, 494, 8, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (493, 11, 495, 9, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (494, 11, 496, 9, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (495, 11, 497, 9, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (496, 11, 498, 9, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (497, 11, 499, 9, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (498, 11, 500, 9, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (499, 11, 501, 9, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (500, 11, 502, 9, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (501, 11, 503, 9, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (502, 11, 504, 9, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (503, 11, 505, 9, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (504, 11, 506, 9, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (505, 11, 507, 9, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (506, 11, 508, 9, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (507, 11, 509, 9, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (508, 11, 510, 9, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (509, 11, 511, 9, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (510, 11, 512, 9, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (511, 11, 513, 9, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (512, 11, 514, 9, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (513, 11, 515, 9, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (514, 11, 516, 9, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (515, 11, 517, 9, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (516, 11, 518, 9, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (517, 11, 519, 9, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (518, 11, 520, 9, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (519, 11, 521, 9, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (520, 11, 522, 9, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (521, 11, 523, 9, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (522, 11, 524, 9, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (523, 11, 525, 9, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (524, 11, 526, 9, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (525, 11, 527, 9, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (526, 11, 528, 9, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (527, 11, 529, 9, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (528, 11, 530, 9, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (529, 11, 531, 9, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (530, 11, 532, 9, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (531, 11, 533, 9, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (532, 11, 534, 9, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (533, 11, 535, 9, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (534, 11, 536, 9, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (535, 11, 537, 9, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (536, 11, 538, 9, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (537, 11, 539, 9, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (538, 11, 540, 9, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (539, 11, 541, 9, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (540, 11, 542, 9, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (541, 11, 543, 10, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (542, 11, 544, 10, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (543, 11, 545, 10, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (544, 11, 546, 10, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (545, 11, 547, 10, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (546, 11, 548, 10, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (547, 11, 549, 10, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (548, 11, 550, 10, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (549, 11, 551, 10, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (550, 11, 552, 10, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (551, 11, 553, 10, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (552, 11, 554, 10, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (553, 11, 555, 10, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (554, 11, 556, 10, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (555, 11, 557, 10, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (556, 11, 558, 10, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (557, 11, 559, 10, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (558, 11, 560, 10, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (559, 11, 561, 10, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (560, 11, 562, 10, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (561, 11, 563, 10, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (562, 11, 564, 10, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (563, 11, 565, 10, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (564, 11, 566, 10, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (565, 11, 567, 10, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (566, 11, 568, 10, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (567, 11, 569, 10, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (568, 11, 570, 10, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (569, 11, 571, 10, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (570, 11, 572, 10, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (571, 11, 573, 10, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (572, 11, 574, 10, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (573, 11, 575, 10, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (574, 11, 576, 10, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (575, 11, 577, 10, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (576, 11, 578, 10, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (577, 11, 579, 10, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (578, 11, 580, 10, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (579, 11, 581, 10, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (580, 11, 582, 10, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (581, 11, 583, 10, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (582, 11, 584, 10, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (583, 11, 585, 10, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (584, 11, 586, 10, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (585, 11, 587, 10, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (586, 11, 588, 10, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (587, 11, 589, 10, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (588, 11, 590, 10, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (589, 11, 591, 11, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (590, 11, 592, 11, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (591, 11, 593, 11, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (592, 11, 594, 11, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (593, 11, 595, 11, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (594, 11, 596, 11, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (595, 11, 597, 11, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (596, 11, 598, 11, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (597, 11, 599, 11, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (598, 11, 600, 11, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (599, 11, 601, 11, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (600, 11, 602, 11, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (601, 11, 603, 11, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (602, 11, 604, 11, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (603, 11, 605, 11, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (604, 11, 606, 11, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (605, 11, 607, 11, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (606, 11, 608, 11, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (607, 11, 609, 11, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (608, 11, 610, 11, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (609, 11, 611, 11, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (610, 11, 612, 11, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (611, 11, 613, 11, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (612, 11, 614, 11, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (613, 11, 615, 11, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (614, 11, 616, 11, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (615, 11, 617, 11, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (616, 11, 618, 11, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (617, 11, 619, 11, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (618, 11, 620, 11, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (619, 11, 621, 11, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (620, 11, 622, 11, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (621, 11, 623, 11, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (622, 11, 624, 11, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (623, 11, 625, 11, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (624, 11, 626, 11, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (625, 11, 627, 11, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (626, 11, 628, 11, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (627, 11, 629, 11, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (628, 11, 630, 11, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (629, 11, 631, 11, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (630, 11, 632, 11, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (631, 11, 633, 11, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (632, 11, 634, 11, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (633, 11, 635, 11, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (634, 11, 636, 11, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (635, 11, 637, 11, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (636, 11, 638, 11, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (637, 11, 639, 12, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (638, 11, 640, 12, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (639, 11, 641, 12, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (640, 11, 642, 12, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (641, 11, 643, 12, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (642, 11, 644, 12, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (643, 11, 645, 12, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (644, 11, 646, 12, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (645, 11, 647, 12, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (646, 11, 648, 12, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (647, 11, 649, 12, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (648, 11, 650, 12, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (649, 11, 651, 12, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (650, 11, 652, 12, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (651, 11, 653, 12, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (652, 11, 654, 12, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (653, 11, 655, 12, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (654, 11, 656, 12, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (655, 11, 657, 12, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (656, 11, 658, 12, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (657, 11, 659, 12, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (658, 11, 660, 12, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (659, 11, 661, 12, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (660, 11, 662, 12, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (661, 11, 663, 12, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (662, 11, 664, 12, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (663, 11, 665, 12, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (664, 11, 666, 12, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (665, 11, 667, 12, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (666, 11, 668, 12, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (667, 11, 669, 12, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (668, 11, 670, 12, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (669, 11, 671, 12, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (670, 11, 672, 12, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (671, 11, 673, 12, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (672, 11, 674, 12, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (673, 11, 675, 12, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (674, 11, 676, 12, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (675, 11, 677, 12, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (676, 11, 678, 12, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (677, 11, 679, 12, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (678, 11, 680, 12, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (679, 11, 681, 12, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (680, 11, 682, 12, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (681, 11, 683, 12, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (682, 11, 684, 12, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (683, 11, 685, 12, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (684, 11, 686, 12, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (685, 11, 687, 13, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (686, 11, 688, 13, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (687, 11, 689, 13, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (688, 11, 690, 13, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (689, 11, 691, 13, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (690, 11, 692, 13, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (691, 11, 693, 13, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (692, 11, 694, 13, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (693, 11, 695, 13, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (694, 11, 696, 13, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (695, 11, 697, 13, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (696, 11, 698, 13, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (697, 11, 699, 13, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (698, 11, 700, 13, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (699, 11, 701, 13, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (700, 11, 702, 13, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (701, 11, 703, 13, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (702, 11, 704, 13, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (703, 11, 705, 13, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (704, 11, 706, 13, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (705, 11, 707, 13, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (706, 11, 708, 13, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (707, 11, 709, 13, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (708, 11, 710, 13, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (709, 11, 711, 13, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (710, 11, 712, 13, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (711, 11, 713, 13, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (712, 11, 714, 13, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (713, 11, 715, 13, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (714, 11, 716, 13, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (715, 11, 717, 13, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (716, 11, 718, 13, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (717, 11, 719, 13, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (718, 11, 720, 13, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (719, 11, 721, 13, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (720, 11, 722, 13, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (721, 11, 723, 13, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (722, 11, 724, 13, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (723, 11, 725, 13, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (724, 11, 726, 13, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (725, 11, 727, 13, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (726, 11, 728, 13, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (727, 11, 729, 13, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (728, 11, 730, 13, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (729, 11, 731, 13, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (730, 11, 732, 13, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (731, 11, 733, 13, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (732, 11, 734, 13, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (733, 11, 735, 14, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (734, 11, 736, 14, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (735, 11, 737, 14, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (736, 11, 738, 14, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (737, 11, 739, 14, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (738, 11, 740, 14, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (739, 11, 741, 14, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (740, 11, 742, 14, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (741, 11, 743, 14, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (742, 11, 744, 14, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (743, 11, 745, 14, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (744, 11, 746, 14, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (745, 11, 747, 14, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (746, 11, 748, 14, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (747, 11, 749, 14, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (748, 11, 750, 14, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (749, 11, 751, 14, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (750, 11, 752, 14, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (751, 11, 753, 14, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (752, 11, 754, 14, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (753, 11, 755, 14, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (754, 11, 756, 14, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (755, 11, 757, 14, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (756, 11, 758, 14, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (757, 11, 759, 14, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (758, 11, 760, 14, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (759, 11, 761, 14, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (760, 11, 762, 14, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (761, 11, 763, 14, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (762, 11, 764, 14, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (763, 11, 765, 14, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (764, 11, 766, 14, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (765, 11, 767, 14, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (766, 11, 768, 14, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (767, 11, 769, 14, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (768, 11, 770, 14, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (769, 11, 771, 14, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (770, 11, 772, 14, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (771, 11, 773, 14, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (772, 11, 774, 14, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (773, 11, 775, 14, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (774, 11, 776, 14, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (775, 11, 777, 14, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (776, 11, 778, 14, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (777, 11, 779, 14, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (778, 11, 780, 14, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (779, 11, 781, 14, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (780, 11, 782, 14, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (781, 11, 783, 15, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (782, 11, 784, 15, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (783, 11, 785, 15, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (784, 11, 786, 15, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (785, 11, 787, 15, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (786, 11, 788, 15, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (787, 11, 789, 15, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (788, 11, 790, 15, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (789, 11, 791, 15, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (790, 11, 792, 15, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (791, 11, 793, 15, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (792, 11, 794, 15, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (793, 11, 795, 15, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (794, 11, 796, 15, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (795, 11, 797, 15, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (796, 11, 798, 15, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (797, 11, 799, 15, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (798, 11, 800, 15, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (799, 11, 801, 15, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (800, 11, 802, 15, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (801, 11, 803, 15, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (802, 11, 804, 15, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (803, 11, 805, 15, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (804, 11, 806, 15, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (805, 11, 807, 15, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (806, 11, 808, 15, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (807, 11, 809, 15, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (808, 11, 810, 15, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (809, 11, 811, 15, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (810, 11, 812, 15, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (811, 11, 813, 15, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (812, 11, 814, 15, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (813, 11, 815, 15, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (814, 11, 816, 15, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (815, 11, 817, 15, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (816, 11, 818, 15, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (817, 11, 819, 15, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (818, 11, 820, 15, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (819, 11, 821, 15, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (820, 11, 822, 15, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (821, 11, 823, 15, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (822, 11, 824, 15, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (823, 11, 825, 15, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (824, 11, 826, 15, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (825, 11, 827, 15, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (826, 11, 828, 15, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (827, 11, 829, 15, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (828, 11, 830, 15, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (829, 11, 831, 16, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (830, 11, 832, 16, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (831, 11, 833, 16, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (832, 11, 834, 16, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (833, 11, 835, 16, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (834, 11, 836, 16, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (835, 11, 837, 16, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (836, 11, 838, 16, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (837, 11, 839, 16, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (838, 11, 840, 16, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (839, 11, 841, 16, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (840, 11, 842, 16, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (841, 11, 843, 16, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (842, 11, 844, 16, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (843, 11, 845, 16, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (844, 11, 846, 16, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (845, 11, 847, 16, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (846, 11, 848, 16, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (847, 11, 849, 16, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (848, 11, 850, 16, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (849, 11, 851, 16, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (850, 11, 852, 16, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (851, 11, 853, 16, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (852, 11, 854, 16, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (853, 11, 855, 16, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (854, 11, 856, 16, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (855, 11, 857, 16, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (856, 11, 858, 16, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (857, 11, 859, 16, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (858, 11, 860, 16, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (859, 11, 861, 16, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (860, 11, 862, 16, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (861, 11, 863, 16, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (862, 11, 864, 16, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (863, 11, 865, 16, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (864, 11, 866, 16, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (865, 11, 867, 16, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (866, 11, 868, 16, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (867, 11, 869, 16, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (868, 11, 870, 16, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (869, 11, 871, 16, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (870, 11, 872, 16, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (871, 11, 873, 16, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (872, 11, 874, 16, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (873, 11, 875, 16, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (874, 11, 876, 16, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (875, 11, 877, 16, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (876, 11, 878, 16, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (877, 11, 879, 17, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (878, 11, 880, 17, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (879, 11, 881, 17, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (880, 11, 882, 17, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (881, 11, 883, 17, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (882, 11, 884, 17, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (883, 11, 885, 17, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (884, 11, 886, 17, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (885, 11, 887, 17, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (886, 11, 888, 17, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (887, 11, 889, 17, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (888, 11, 890, 17, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (889, 11, 891, 17, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (890, 11, 892, 17, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (891, 11, 893, 17, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (892, 11, 894, 17, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (893, 11, 895, 17, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (894, 11, 896, 17, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (895, 11, 897, 17, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (896, 11, 898, 17, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (897, 11, 899, 17, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (898, 11, 900, 17, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (899, 11, 901, 17, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (900, 11, 902, 17, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (901, 11, 903, 17, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (902, 11, 904, 17, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (903, 11, 905, 17, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (904, 11, 906, 17, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (905, 11, 907, 17, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (906, 11, 908, 17, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (907, 11, 909, 17, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (908, 11, 910, 17, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (909, 11, 911, 17, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (910, 11, 912, 17, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (911, 11, 913, 17, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (912, 11, 914, 17, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (913, 11, 915, 17, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (914, 11, 916, 17, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (915, 11, 917, 17, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (916, 11, 918, 17, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (917, 11, 919, 17, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (918, 11, 920, 17, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (919, 11, 921, 17, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (920, 11, 922, 17, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (921, 11, 923, 17, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (922, 11, 924, 17, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (923, 11, 925, 17, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (924, 11, 926, 17, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (925, 11, 927, 18, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (926, 11, 928, 18, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (927, 11, 929, 18, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (928, 11, 930, 18, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (929, 11, 931, 18, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (930, 11, 932, 18, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (931, 11, 933, 18, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (932, 11, 934, 18, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (933, 11, 935, 18, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (934, 11, 936, 18, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (935, 11, 937, 18, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (936, 11, 938, 18, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (937, 11, 939, 18, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (938, 11, 940, 18, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (939, 11, 941, 18, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (940, 11, 942, 18, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (941, 11, 943, 18, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (942, 11, 944, 18, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (943, 11, 945, 18, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (944, 11, 946, 18, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (945, 11, 947, 18, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (946, 11, 948, 18, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (947, 11, 949, 18, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (948, 11, 950, 18, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (949, 11, 951, 18, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (950, 11, 952, 18, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (951, 11, 953, 18, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (952, 11, 954, 18, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (953, 11, 955, 18, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (954, 11, 956, 18, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (955, 11, 957, 18, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (956, 11, 958, 18, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (957, 11, 959, 18, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (958, 11, 960, 18, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (959, 11, 961, 18, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (960, 11, 962, 18, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (961, 11, 963, 18, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (962, 11, 964, 18, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (963, 11, 965, 18, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (964, 11, 966, 18, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (965, 11, 967, 18, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (966, 11, 968, 18, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (967, 11, 969, 18, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (968, 11, 970, 18, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (969, 11, 971, 18, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (970, 11, 972, 18, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (971, 11, 973, 18, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (972, 11, 974, 18, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4429, 16, 4431, 1, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4430, 16, 4432, 1, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4431, 16, 4433, 1, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4432, 16, 4434, 1, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4433, 16, 4435, 1, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4434, 16, 4436, 1, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4435, 16, 4437, 1, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4436, 16, 4438, 1, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4437, 16, 4439, 1, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4438, 16, 4440, 1, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4439, 16, 4441, 1, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4440, 16, 4442, 1, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4441, 16, 4443, 1, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4442, 16, 4444, 1, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4443, 16, 4445, 1, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4444, 16, 4446, 1, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4445, 16, 4447, 1, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4446, 16, 4448, 1, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4447, 16, 4449, 1, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4448, 16, 4450, 1, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4449, 16, 4451, 1, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4450, 16, 4452, 1, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4451, 16, 4453, 1, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4452, 16, 4454, 1, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4453, 16, 4455, 1, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4454, 16, 4456, 1, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4455, 16, 4457, 1, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4456, 16, 4458, 1, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4457, 16, 4459, 1, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4458, 16, 4460, 1, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4459, 16, 4461, 1, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4460, 16, 4462, 1, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4461, 16, 4463, 1, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4462, 16, 4464, 1, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4463, 16, 4465, 1, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4464, 16, 4466, 1, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4465, 16, 4467, 1, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4466, 16, 4468, 1, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4467, 16, 4469, 1, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4468, 16, 4470, 1, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4469, 16, 4471, 1, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4470, 16, 4472, 1, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4471, 16, 4473, 1, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4472, 16, 4474, 1, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4473, 16, 4475, 1, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4474, 16, 4476, 1, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4475, 16, 4477, 1, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4476, 16, 4478, 1, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4477, 16, 4479, 2, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4478, 16, 4480, 2, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4479, 16, 4481, 2, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4480, 16, 4482, 2, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4481, 16, 4483, 2, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4482, 16, 4484, 2, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4483, 16, 4485, 2, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4484, 16, 4486, 2, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4485, 16, 4487, 2, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4486, 16, 4488, 2, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4487, 16, 4489, 2, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4488, 16, 4490, 2, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4489, 16, 4491, 2, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4490, 16, 4492, 2, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4491, 16, 4493, 2, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4492, 16, 4494, 2, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4493, 16, 4495, 2, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4494, 16, 4496, 2, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4495, 16, 4497, 2, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4496, 16, 4498, 2, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4497, 16, 4499, 2, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4498, 16, 4500, 2, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4499, 16, 4501, 2, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4500, 16, 4502, 2, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4501, 16, 4503, 2, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4502, 16, 4504, 2, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4503, 16, 4505, 2, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4504, 16, 4506, 2, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4505, 16, 4507, 2, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4506, 16, 4508, 2, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4507, 16, 4509, 2, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4508, 16, 4510, 2, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4509, 16, 4511, 2, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4510, 16, 4512, 2, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4511, 16, 4513, 2, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4512, 16, 4514, 2, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4513, 16, 4515, 2, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4514, 16, 4516, 2, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4515, 16, 4517, 2, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4516, 16, 4518, 2, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4517, 16, 4519, 2, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4518, 16, 4520, 2, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4519, 16, 4521, 2, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4520, 16, 4522, 2, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4521, 16, 4523, 2, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4522, 16, 4524, 2, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4523, 16, 4525, 2, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4524, 16, 4526, 2, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4525, 16, 4527, 3, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4526, 16, 4528, 3, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4527, 16, 4529, 3, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4528, 16, 4530, 3, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4529, 16, 4531, 3, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4530, 16, 4532, 3, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4531, 16, 4533, 3, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4532, 16, 4534, 3, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4533, 16, 4535, 3, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4534, 16, 4536, 3, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4535, 16, 4537, 3, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4536, 16, 4538, 3, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4537, 16, 4539, 3, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4538, 16, 4540, 3, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4539, 16, 4541, 3, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4540, 16, 4542, 3, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4541, 16, 4543, 3, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4542, 16, 4544, 3, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4543, 16, 4545, 3, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4544, 16, 4546, 3, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4545, 16, 4547, 3, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4546, 16, 4548, 3, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4547, 16, 4549, 3, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4548, 16, 4550, 3, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4549, 16, 4551, 3, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4550, 16, 4552, 3, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4551, 16, 4553, 3, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4552, 16, 4554, 3, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4553, 16, 4555, 3, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4554, 16, 4556, 3, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4555, 16, 4557, 3, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4556, 16, 4558, 3, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4557, 16, 4559, 3, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4558, 16, 4560, 3, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4559, 16, 4561, 3, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4560, 16, 4562, 3, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4561, 16, 4563, 3, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4562, 16, 4564, 3, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4563, 16, 4565, 3, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4564, 16, 4566, 3, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4565, 16, 4567, 3, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4566, 16, 4568, 3, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4567, 16, 4569, 3, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4568, 16, 4570, 3, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4569, 16, 4571, 3, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4570, 16, 4572, 3, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4571, 16, 4573, 3, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4572, 16, 4574, 3, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4573, 16, 4575, 4, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4574, 16, 4576, 4, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4575, 16, 4577, 4, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4576, 16, 4578, 4, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4577, 16, 4579, 4, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4578, 16, 4580, 4, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4579, 16, 4581, 4, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4580, 16, 4582, 4, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4581, 16, 4583, 4, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4582, 16, 4584, 4, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4583, 16, 4585, 4, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4584, 16, 4586, 4, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4585, 16, 4587, 4, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4586, 16, 4588, 4, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4587, 16, 4589, 4, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4588, 16, 4590, 4, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4589, 16, 4591, 4, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4590, 16, 4592, 4, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4591, 16, 4593, 4, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4592, 16, 4594, 4, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4593, 16, 4595, 4, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4594, 16, 4596, 4, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4595, 16, 4597, 4, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4596, 16, 4598, 4, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4597, 16, 4599, 4, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4598, 16, 4600, 4, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4599, 16, 4601, 4, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4600, 16, 4602, 4, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4601, 16, 4603, 4, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4602, 16, 4604, 4, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4603, 16, 4605, 4, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4604, 16, 4606, 4, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4605, 16, 4607, 4, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4606, 16, 4608, 4, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4607, 16, 4609, 4, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4608, 16, 4610, 4, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4609, 16, 4611, 4, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4610, 16, 4612, 4, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4611, 16, 4613, 4, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4612, 16, 4614, 4, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4613, 16, 4615, 4, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4614, 16, 4616, 4, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4615, 16, 4617, 4, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4616, 16, 4618, 4, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4617, 16, 4619, 4, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4618, 16, 4620, 4, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4619, 16, 4621, 4, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4620, 16, 4622, 4, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4621, 16, 4623, 5, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4622, 16, 4624, 5, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4623, 16, 4625, 5, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4624, 16, 4626, 5, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4625, 16, 4627, 5, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4626, 16, 4628, 5, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4627, 16, 4629, 5, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4628, 16, 4630, 5, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4629, 16, 4631, 5, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4630, 16, 4632, 5, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4631, 16, 4633, 5, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4632, 16, 4634, 5, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4633, 16, 4635, 5, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4634, 16, 4636, 5, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4635, 16, 4637, 5, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4636, 16, 4638, 5, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4637, 16, 4639, 5, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4638, 16, 4640, 5, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4639, 16, 4641, 5, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4640, 16, 4642, 5, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4641, 16, 4643, 5, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4642, 16, 4644, 5, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4643, 16, 4645, 5, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4644, 16, 4646, 5, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4645, 16, 4647, 5, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4646, 16, 4648, 5, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4647, 16, 4649, 5, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4648, 16, 4650, 5, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4649, 16, 4651, 5, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4650, 16, 4652, 5, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4651, 16, 4653, 5, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4652, 16, 4654, 5, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4653, 16, 4655, 5, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4654, 16, 4656, 5, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4655, 16, 4657, 5, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4656, 16, 4658, 5, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4657, 16, 4659, 5, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4658, 16, 4660, 5, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4659, 16, 4661, 5, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4660, 16, 4662, 5, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4661, 16, 4663, 5, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4662, 16, 4664, 5, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4663, 16, 4665, 5, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4664, 16, 4666, 5, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4665, 16, 4667, 5, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4666, 16, 4668, 5, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4667, 16, 4669, 5, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4668, 16, 4670, 5, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4669, 16, 4671, 6, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4670, 16, 4672, 6, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4671, 16, 4673, 6, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4672, 16, 4674, 6, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4673, 16, 4675, 6, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4674, 16, 4676, 6, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4675, 16, 4677, 6, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4676, 16, 4678, 6, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4677, 16, 4679, 6, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4678, 16, 4680, 6, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4679, 16, 4681, 6, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4680, 16, 4682, 6, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4681, 16, 4683, 6, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4682, 16, 4684, 6, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4683, 16, 4685, 6, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4684, 16, 4686, 6, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4685, 16, 4687, 6, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4686, 16, 4688, 6, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4687, 16, 4689, 6, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4688, 16, 4690, 6, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4689, 16, 4691, 6, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4690, 16, 4692, 6, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4691, 16, 4693, 6, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4692, 16, 4694, 6, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4693, 16, 4695, 6, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4694, 16, 4696, 6, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4695, 16, 4697, 6, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4696, 16, 4698, 6, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4697, 16, 4699, 6, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4698, 16, 4700, 6, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4699, 16, 4701, 6, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4700, 16, 4702, 6, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4701, 16, 4703, 6, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4702, 16, 4704, 6, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4703, 16, 4705, 6, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4704, 16, 4706, 6, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4705, 16, 4707, 6, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4706, 16, 4708, 6, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4707, 16, 4709, 6, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4708, 16, 4710, 6, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4709, 16, 4711, 6, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4710, 16, 4712, 6, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4711, 16, 4713, 6, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4712, 16, 4714, 6, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4713, 16, 4715, 6, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4714, 16, 4716, 6, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4715, 16, 4717, 6, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4716, 16, 4718, 6, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4717, 16, 4719, 7, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4718, 16, 4720, 7, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4719, 16, 4721, 7, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4720, 16, 4722, 7, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4721, 16, 4723, 7, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4722, 16, 4724, 7, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4723, 16, 4725, 7, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4724, 16, 4726, 7, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4725, 16, 4727, 7, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4726, 16, 4728, 7, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4727, 16, 4729, 7, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4728, 16, 4730, 7, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4729, 16, 4731, 7, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4730, 16, 4732, 7, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4731, 16, 4733, 7, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4732, 16, 4734, 7, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4733, 16, 4735, 7, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4734, 16, 4736, 7, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4735, 16, 4737, 7, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4736, 16, 4738, 7, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4737, 16, 4739, 7, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4738, 16, 4740, 7, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4739, 16, 4741, 7, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4740, 16, 4742, 7, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4741, 16, 4743, 7, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4742, 16, 4744, 7, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4743, 16, 4745, 7, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4744, 16, 4746, 7, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4745, 16, 4747, 7, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4746, 16, 4748, 7, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4747, 16, 4749, 7, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4748, 16, 4750, 7, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4749, 16, 4751, 7, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4750, 16, 4752, 7, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4751, 16, 4753, 7, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4752, 16, 4754, 7, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4753, 16, 4755, 7, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4754, 16, 4756, 7, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4755, 16, 4757, 7, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4756, 16, 4758, 7, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4757, 16, 4759, 7, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4758, 16, 4760, 7, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4759, 16, 4761, 7, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4760, 16, 4762, 7, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4761, 16, 4763, 7, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4762, 16, 4764, 7, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4763, 16, 4765, 7, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4764, 16, 4766, 7, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4765, 16, 4767, 8, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4766, 16, 4768, 8, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4767, 16, 4769, 8, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4768, 16, 4770, 8, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4769, 16, 4771, 8, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4770, 16, 4772, 8, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4771, 16, 4773, 8, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4772, 16, 4774, 8, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4773, 16, 4775, 8, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4774, 16, 4776, 8, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4775, 16, 4777, 8, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4776, 16, 4778, 8, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4777, 16, 4779, 8, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4778, 16, 4780, 8, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4779, 16, 4781, 8, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4780, 16, 4782, 8, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4781, 16, 4783, 8, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4782, 16, 4784, 8, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4783, 16, 4785, 8, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4784, 16, 4786, 8, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4785, 16, 4787, 8, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4786, 16, 4788, 8, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4787, 16, 4789, 8, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4788, 16, 4790, 8, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4789, 16, 4791, 8, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4790, 16, 4792, 8, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4791, 16, 4793, 8, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4792, 16, 4794, 8, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4793, 16, 4795, 8, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4794, 16, 4796, 8, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4795, 16, 4797, 8, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4796, 16, 4798, 8, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4797, 16, 4799, 8, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4798, 16, 4800, 8, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4799, 16, 4801, 8, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4800, 16, 4802, 8, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4801, 16, 4803, 8, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4802, 16, 4804, 8, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4803, 16, 4805, 8, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4804, 16, 4806, 8, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4805, 16, 4807, 8, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4806, 16, 4808, 8, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4807, 16, 4809, 8, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4808, 16, 4810, 8, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4809, 16, 4811, 8, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4810, 16, 4812, 8, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4811, 16, 4813, 8, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4812, 16, 4814, 8, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4813, 16, 4815, 9, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4814, 16, 4816, 9, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4815, 16, 4817, 9, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4816, 16, 4818, 9, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4817, 16, 4819, 9, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4818, 16, 4820, 9, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4819, 16, 4821, 9, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4820, 16, 4822, 9, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4821, 16, 4823, 9, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4822, 16, 4824, 9, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4823, 16, 4825, 9, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4824, 16, 4826, 9, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4825, 16, 4827, 9, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4826, 16, 4828, 9, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4827, 16, 4829, 9, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4828, 16, 4830, 9, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4829, 16, 4831, 9, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4830, 16, 4832, 9, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4831, 16, 4833, 9, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4832, 16, 4834, 9, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4833, 16, 4835, 9, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4834, 16, 4836, 9, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4835, 16, 4837, 9, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4836, 16, 4838, 9, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4837, 16, 4839, 9, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4838, 16, 4840, 9, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4839, 16, 4841, 9, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4840, 16, 4842, 9, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4841, 16, 4843, 9, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4842, 16, 4844, 9, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4843, 16, 4845, 9, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4844, 16, 4846, 9, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4845, 16, 4847, 9, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4846, 16, 4848, 9, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4847, 16, 4849, 9, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4848, 16, 4850, 9, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4849, 16, 4851, 9, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4850, 16, 4852, 9, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4851, 16, 4853, 9, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4852, 16, 4854, 9, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4853, 16, 4855, 9, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4854, 16, 4856, 9, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4855, 16, 4857, 9, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4856, 16, 4858, 9, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4857, 16, 4859, 9, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4858, 16, 4860, 9, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4859, 16, 4861, 9, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4860, 16, 4862, 9, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4861, 16, 4863, 10, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4862, 16, 4864, 10, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4863, 16, 4865, 10, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4864, 16, 4866, 10, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4865, 16, 4867, 10, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4866, 16, 4868, 10, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4867, 16, 4869, 10, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4868, 16, 4870, 10, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4869, 16, 4871, 10, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4870, 16, 4872, 10, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4871, 16, 4873, 10, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4872, 16, 4874, 10, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4873, 16, 4875, 10, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4874, 16, 4876, 10, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4875, 16, 4877, 10, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4876, 16, 4878, 10, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4877, 16, 4879, 10, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4878, 16, 4880, 10, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4879, 16, 4881, 10, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4880, 16, 4882, 10, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4881, 16, 4883, 10, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4882, 16, 4884, 10, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4883, 16, 4885, 10, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4884, 16, 4886, 10, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4885, 16, 4887, 10, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4886, 16, 4888, 10, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4887, 16, 4889, 10, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4888, 16, 4890, 10, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4889, 16, 4891, 10, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4890, 16, 4892, 10, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4891, 16, 4893, 10, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4892, 16, 4894, 10, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4893, 16, 4895, 10, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4894, 16, 4896, 10, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4895, 16, 4897, 10, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4896, 16, 4898, 10, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4897, 16, 4899, 10, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4898, 16, 4900, 10, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4899, 16, 4901, 10, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4900, 16, 4902, 10, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4901, 16, 4903, 10, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4902, 16, 4904, 10, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4903, 16, 4905, 10, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4904, 16, 4906, 10, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4905, 16, 4907, 10, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4906, 16, 4908, 10, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4907, 16, 4909, 10, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4908, 16, 4910, 10, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4909, 16, 4911, 11, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4910, 16, 4912, 11, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4911, 16, 4913, 11, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4912, 16, 4914, 11, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4913, 16, 4915, 11, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4914, 16, 4916, 11, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4915, 16, 4917, 11, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4916, 16, 4918, 11, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4917, 16, 4919, 11, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4918, 16, 4920, 11, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4919, 16, 4921, 11, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4920, 16, 4922, 11, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4921, 16, 4923, 11, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4922, 16, 4924, 11, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4923, 16, 4925, 11, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4924, 16, 4926, 11, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4925, 16, 4927, 11, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4926, 16, 4928, 11, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4927, 16, 4929, 11, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4928, 16, 4930, 11, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4929, 16, 4931, 11, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4930, 16, 4932, 11, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4931, 16, 4933, 11, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4932, 16, 4934, 11, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4933, 16, 4935, 11, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4934, 16, 4936, 11, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4935, 16, 4937, 11, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4936, 16, 4938, 11, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4937, 16, 4939, 11, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4938, 16, 4940, 11, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4939, 16, 4941, 11, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4940, 16, 4942, 11, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4941, 16, 4943, 11, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4942, 16, 4944, 11, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4943, 16, 4945, 11, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4944, 16, 4946, 11, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4945, 16, 4947, 11, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4946, 16, 4948, 11, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4947, 16, 4949, 11, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4948, 16, 4950, 11, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4949, 16, 4951, 11, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4950, 16, 4952, 11, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4951, 16, 4953, 11, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4952, 16, 4954, 11, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4953, 16, 4955, 11, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4954, 16, 4956, 11, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4955, 16, 4957, 11, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4956, 16, 4958, 11, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4957, 16, 4959, 12, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4958, 16, 4960, 12, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4959, 16, 4961, 12, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4960, 16, 4962, 12, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4961, 16, 4963, 12, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4962, 16, 4964, 12, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4963, 16, 4965, 12, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4964, 16, 4966, 12, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4965, 16, 4967, 12, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4966, 16, 4968, 12, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4967, 16, 4969, 12, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4968, 16, 4970, 12, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4969, 16, 4971, 12, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4970, 16, 4972, 12, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4971, 16, 4973, 12, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4972, 16, 4974, 12, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4973, 16, 4975, 12, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4974, 16, 4976, 12, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4975, 16, 4977, 12, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4976, 16, 4978, 12, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4977, 16, 4979, 12, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4978, 16, 4980, 12, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4979, 16, 4981, 12, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4980, 16, 4982, 12, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4981, 16, 4983, 12, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4982, 16, 4984, 12, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4983, 16, 4985, 12, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4984, 16, 4986, 12, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4985, 16, 4987, 12, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4986, 16, 4988, 12, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4987, 16, 4989, 12, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4988, 16, 4990, 12, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4989, 16, 4991, 12, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4990, 16, 4992, 12, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4991, 16, 4993, 12, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4992, 16, 4994, 12, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4993, 16, 4995, 12, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4994, 16, 4996, 12, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4995, 16, 4997, 12, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4996, 16, 4998, 12, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4997, 16, 4999, 12, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4998, 16, 5000, 12, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (4999, 16, 5001, 12, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5000, 16, 5002, 12, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5001, 16, 5003, 12, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5002, 16, 5004, 12, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5003, 16, 5005, 12, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5004, 16, 5006, 12, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5005, 16, 5007, 13, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5006, 16, 5008, 13, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5007, 16, 5009, 13, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5008, 16, 5010, 13, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5009, 16, 5011, 13, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5010, 16, 5012, 13, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5011, 16, 5013, 13, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5012, 16, 5014, 13, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5013, 16, 5015, 13, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5014, 16, 5016, 13, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5015, 16, 5017, 13, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5016, 16, 5018, 13, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5017, 16, 5019, 13, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5018, 16, 5020, 13, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5019, 16, 5021, 13, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5020, 16, 5022, 13, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5021, 16, 5023, 13, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5022, 16, 5024, 13, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5023, 16, 5025, 13, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5024, 16, 5026, 13, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5025, 16, 5027, 13, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5026, 16, 5028, 13, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5027, 16, 5029, 13, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5028, 16, 5030, 13, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5029, 16, 5031, 13, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5030, 16, 5032, 13, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5031, 16, 5033, 13, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5032, 16, 5034, 13, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5033, 16, 5035, 13, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5034, 16, 5036, 13, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5035, 16, 5037, 13, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5036, 16, 5038, 13, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5037, 16, 5039, 13, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5038, 16, 5040, 13, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5039, 16, 5041, 13, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5040, 16, 5042, 13, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5041, 16, 5043, 13, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5042, 16, 5044, 13, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5043, 16, 5045, 13, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5044, 16, 5046, 13, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5045, 16, 5047, 13, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5046, 16, 5048, 13, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5047, 16, 5049, 13, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5048, 16, 5050, 13, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5049, 16, 5051, 13, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5050, 16, 5052, 13, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5051, 16, 5053, 13, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5052, 16, 5054, 13, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5053, 16, 5055, 14, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5054, 16, 5056, 14, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5055, 16, 5057, 14, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5056, 16, 5058, 14, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5057, 16, 5059, 14, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5058, 16, 5060, 14, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5059, 16, 5061, 14, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5060, 16, 5062, 14, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5061, 16, 5063, 14, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5062, 16, 5064, 14, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5063, 16, 5065, 14, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5064, 16, 5066, 14, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5065, 16, 5067, 14, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5066, 16, 5068, 14, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5067, 16, 5069, 14, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5068, 16, 5070, 14, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5069, 16, 5071, 14, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5070, 16, 5072, 14, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5071, 16, 5073, 14, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5072, 16, 5074, 14, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5073, 16, 5075, 14, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5074, 16, 5076, 14, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5075, 16, 5077, 14, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5076, 16, 5078, 14, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5077, 16, 5079, 14, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5078, 16, 5080, 14, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5079, 16, 5081, 14, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5080, 16, 5082, 14, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5081, 16, 5083, 14, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5082, 16, 5084, 14, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5083, 16, 5085, 14, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5084, 16, 5086, 14, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5085, 16, 5087, 14, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5086, 16, 5088, 14, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5087, 16, 5089, 14, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5088, 16, 5090, 14, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5089, 16, 5091, 14, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5090, 16, 5092, 14, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5091, 16, 5093, 14, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5092, 16, 5094, 14, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5093, 16, 5095, 14, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5094, 16, 5096, 14, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5095, 16, 5097, 14, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5096, 16, 5098, 14, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5097, 16, 5099, 14, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5098, 16, 5100, 14, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5099, 16, 5101, 14, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5100, 16, 5102, 14, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5101, 16, 5103, 15, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5102, 16, 5104, 15, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5103, 16, 5105, 15, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5104, 16, 5106, 15, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5105, 16, 5107, 15, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5106, 16, 5108, 15, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5107, 16, 5109, 15, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5108, 16, 5110, 15, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5109, 16, 5111, 15, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5110, 16, 5112, 15, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5111, 16, 5113, 15, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5112, 16, 5114, 15, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5113, 16, 5115, 15, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5114, 16, 5116, 15, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5115, 16, 5117, 15, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5116, 16, 5118, 15, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5117, 16, 5119, 15, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5118, 16, 5120, 15, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5119, 16, 5121, 15, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5120, 16, 5122, 15, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5121, 16, 5123, 15, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5122, 16, 5124, 15, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5123, 16, 5125, 15, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5124, 16, 5126, 15, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5125, 16, 5127, 15, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5126, 16, 5128, 15, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5127, 16, 5129, 15, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5128, 16, 5130, 15, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5129, 16, 5131, 15, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5130, 16, 5132, 15, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5131, 16, 5133, 15, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5132, 16, 5134, 15, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5133, 16, 5135, 15, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5134, 16, 5136, 15, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5135, 16, 5137, 15, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5136, 16, 5138, 15, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5137, 16, 5139, 15, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5138, 16, 5140, 15, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5139, 16, 5141, 15, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5140, 16, 5142, 15, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5141, 16, 5143, 15, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5142, 16, 5144, 15, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5143, 16, 5145, 15, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5144, 16, 5146, 15, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5145, 16, 5147, 15, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5146, 16, 5148, 15, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5147, 16, 5149, 15, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5148, 16, 5150, 15, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5149, 16, 5151, 16, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5150, 16, 5152, 16, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5151, 16, 5153, 16, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5152, 16, 5154, 16, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5153, 16, 5155, 16, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5154, 16, 5156, 16, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5155, 16, 5157, 16, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5156, 16, 5158, 16, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5157, 16, 5159, 16, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5158, 16, 5160, 16, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5159, 16, 5161, 16, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5160, 16, 5162, 16, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5161, 16, 5163, 16, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5162, 16, 5164, 16, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5163, 16, 5165, 16, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5164, 16, 5166, 16, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5165, 16, 5167, 16, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5166, 16, 5168, 16, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5167, 16, 5169, 16, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5168, 16, 5170, 16, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5169, 16, 5171, 16, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5170, 16, 5172, 16, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5171, 16, 5173, 16, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5172, 16, 5174, 16, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5173, 16, 5175, 16, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5174, 16, 5176, 16, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5175, 16, 5177, 16, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5176, 16, 5178, 16, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5177, 16, 5179, 16, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5178, 16, 5180, 16, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5179, 16, 5181, 16, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5180, 16, 5182, 16, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5181, 16, 5183, 16, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5182, 16, 5184, 16, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5183, 16, 5185, 16, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5184, 16, 5186, 16, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5185, 16, 5187, 16, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5186, 16, 5188, 16, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5187, 16, 5189, 16, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5188, 16, 5190, 16, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5189, 16, 5191, 16, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5190, 16, 5192, 16, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5191, 16, 5193, 16, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5192, 16, 5194, 16, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5193, 16, 5195, 16, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5194, 16, 5196, 16, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5195, 16, 5197, 16, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5196, 16, 5198, 16, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5197, 16, 5199, 17, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5198, 16, 5200, 17, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5199, 16, 5201, 17, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5200, 16, 5202, 17, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5201, 16, 5203, 17, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5202, 16, 5204, 17, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5203, 16, 5205, 17, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5204, 16, 5206, 17, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5205, 16, 5207, 17, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5206, 16, 5208, 17, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5207, 16, 5209, 17, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5208, 16, 5210, 17, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5209, 16, 5211, 17, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5210, 16, 5212, 17, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5211, 16, 5213, 17, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5212, 16, 5214, 17, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5213, 16, 5215, 17, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5214, 16, 5216, 17, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5215, 16, 5217, 17, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5216, 16, 5218, 17, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5217, 16, 5219, 17, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5218, 16, 5220, 17, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5219, 16, 5221, 17, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5220, 16, 5222, 17, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5221, 16, 5223, 17, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5222, 16, 5224, 17, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5223, 16, 5225, 17, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5224, 16, 5226, 17, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5225, 16, 5227, 17, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5226, 16, 5228, 17, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5227, 16, 5229, 17, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5228, 16, 5230, 17, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5229, 16, 5231, 17, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5230, 16, 5232, 17, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5231, 16, 5233, 17, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5232, 16, 5234, 17, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5233, 16, 5235, 17, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5234, 16, 5236, 17, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5235, 16, 5237, 17, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5236, 16, 5238, 17, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5237, 16, 5239, 17, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5238, 16, 5240, 17, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5239, 16, 5241, 17, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5240, 16, 5242, 17, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5241, 16, 5243, 17, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5242, 16, 5244, 17, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5243, 16, 5245, 17, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5244, 16, 5246, 17, 90);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5245, 16, 5247, 18, 43);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5246, 16, 5248, 18, 44);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5247, 16, 5249, 18, 45);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5248, 16, 5250, 18, 46);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5249, 16, 5251, 18, 47);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5250, 16, 5252, 18, 48);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5251, 16, 5253, 18, 49);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5252, 16, 5254, 18, 50);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5253, 16, 5255, 18, 51);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5254, 16, 5256, 18, 52);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5255, 16, 5257, 18, 53);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5256, 16, 5258, 18, 54);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5257, 16, 5259, 18, 55);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5258, 16, 5260, 18, 56);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5259, 16, 5261, 18, 57);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5260, 16, 5262, 18, 58);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5261, 16, 5263, 18, 59);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5262, 16, 5264, 18, 60);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5263, 16, 5265, 18, 61);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5264, 16, 5266, 18, 62);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5265, 16, 5267, 18, 63);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5266, 16, 5268, 18, 64);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5267, 16, 5269, 18, 65);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5268, 16, 5270, 18, 66);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5269, 16, 5271, 18, 67);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5270, 16, 5272, 18, 68);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5271, 16, 5273, 18, 69);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5272, 16, 5274, 18, 70);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5273, 16, 5275, 18, 71);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5274, 16, 5276, 18, 72);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5275, 16, 5277, 18, 73);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5276, 16, 5278, 18, 74);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5277, 16, 5279, 18, 75);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5278, 16, 5280, 18, 76);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5279, 16, 5281, 18, 77);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5280, 16, 5282, 18, 78);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5281, 16, 5283, 18, 79);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5282, 16, 5284, 18, 80);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5283, 16, 5285, 18, 81);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5284, 16, 5286, 18, 82);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5285, 16, 5287, 18, 83);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5286, 16, 5288, 18, 84);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5287, 16, 5289, 18, 85);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5288, 16, 5290, 18, 86);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5289, 16, 5291, 18, 87);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5290, 16, 5292, 18, 88);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5291, 16, 5293, 18, 89);
INSERT INTO public.gr_sch_identity (id_gr_sch_identity, id_group, id_schedule, id_number_of_week, id_time) VALUES (5292, 16, 5294, 18, 90);


--
-- TOC entry 3414 (class 0 OID 20776)
-- Dependencies: 219
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.groups (id_group, group_name) VALUES (11, 'АВТ-942');
INSERT INTO public.groups (id_group, group_name) VALUES (16, 'АВТ-943');


--
-- TOC entry 3418 (class 0 OID 20790)
-- Dependencies: 223
-- Data for Name: number_of_weeks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (1, 1);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (2, 2);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (3, 3);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (4, 4);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (5, 5);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (6, 6);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (7, 7);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (8, 8);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (9, 9);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (10, 10);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (11, 11);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (12, 12);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (13, 13);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (14, 14);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (15, 15);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (16, 16);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (17, 17);
INSERT INTO public.number_of_weeks (id_number_of_week, number_week) VALUES (18, 18);


--
-- TOC entry 3420 (class 0 OID 20797)
-- Dependencies: 225
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.professors (id_professor, last_name, first_name, middle_name) VALUES (1, 'Слизерин', 'Гарри', 'Тоннович');


--
-- TOC entry 3426 (class 0 OID 20820)
-- Dependencies: 231
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1839, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1840, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1841, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1842, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1843, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1844, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1845, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1846, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1847, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1848, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1849, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1850, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1851, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1852, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1853, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1854, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1855, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1856, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1857, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1858, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1859, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1860, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1861, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1862, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1863, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1864, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1865, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1866, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1867, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1868, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1869, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1870, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1871, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1872, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1873, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1874, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1875, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1876, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1877, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1878, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1879, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1880, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1881, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1882, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1883, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1884, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1885, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1886, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1887, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1888, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1889, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1890, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1891, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1892, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1893, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1894, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1895, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1896, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1897, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1898, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1899, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1900, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1901, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1902, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1903, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1904, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1905, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1906, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1907, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1908, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1909, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1910, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1911, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1912, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1913, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1914, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1915, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1916, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1917, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1918, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1919, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1920, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1921, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1922, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1923, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1924, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1925, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1926, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1927, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1928, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1929, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1930, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1931, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1932, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1933, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1934, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1935, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1936, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1937, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1938, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1939, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1940, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1941, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1942, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1943, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1944, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1945, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1946, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1947, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (295, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (296, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (297, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (298, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (299, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (300, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (301, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (302, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (303, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (304, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (305, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (306, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (307, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (308, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (309, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (310, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (311, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (312, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (313, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (314, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (315, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (316, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (317, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (318, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (319, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (320, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (321, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (322, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (323, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (324, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (325, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (326, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (327, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (328, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (329, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (330, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (331, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (332, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (333, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (334, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (335, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (336, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (337, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (338, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (339, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (340, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (341, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (342, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (343, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (344, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (345, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (346, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (347, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (348, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (349, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (350, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (351, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (352, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (353, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (354, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (355, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (356, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (357, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (358, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (359, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (360, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (361, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (362, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (363, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (364, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (365, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (366, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (367, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (368, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (369, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (370, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (371, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (372, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (373, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (374, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (375, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (376, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (377, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (378, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (379, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (380, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (381, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (382, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (383, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (384, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (385, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (386, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (387, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (388, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (389, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (390, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (391, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (392, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (393, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (394, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (395, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (396, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (397, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (398, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (399, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (400, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (401, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (402, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (403, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (404, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (405, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (406, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (407, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (408, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (409, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (410, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (411, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (412, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (413, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (414, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (415, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (416, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (417, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (418, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (419, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (420, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (421, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (422, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (423, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (424, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (425, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (426, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (427, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (428, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (429, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (430, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (431, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (432, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (433, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (434, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (435, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (436, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (437, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (438, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (439, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (440, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (441, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (442, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (443, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (444, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (445, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (446, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (447, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (448, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (449, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (450, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (451, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (452, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (453, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (454, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (455, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (456, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (457, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (458, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (459, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (460, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (461, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (462, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (463, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (464, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (465, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (466, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (467, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (468, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (469, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (470, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (471, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (472, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (473, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (474, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (475, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (476, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (477, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (478, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (479, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (480, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (481, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (482, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (483, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (484, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (485, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (486, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (487, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (488, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (489, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (490, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (491, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (492, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (493, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (494, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (495, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (496, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (497, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (498, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (499, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (500, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (501, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (502, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (503, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (504, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (505, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (506, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (507, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (508, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (509, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (510, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (511, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (512, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (513, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (514, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (515, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (516, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (517, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (518, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (519, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (520, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (521, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (522, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (523, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (524, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (525, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (526, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (527, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (528, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (529, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (530, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (531, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (532, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (533, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (534, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (535, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (536, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (537, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (538, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (539, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (540, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (541, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (542, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (543, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (544, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (545, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (546, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (547, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (548, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (549, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (550, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (551, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (552, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (553, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (554, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (555, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (556, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (557, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (558, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (559, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (560, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (561, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (562, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (563, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (564, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (565, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (566, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (567, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (568, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (569, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (570, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (571, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (572, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (573, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (574, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (575, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (576, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (577, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (578, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (579, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (580, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (581, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (582, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (583, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (584, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (585, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (586, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (587, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (588, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (589, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (590, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (591, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (592, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (593, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (594, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (595, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (596, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (597, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (598, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (599, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (600, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (601, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (602, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (603, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (604, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (605, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (606, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (607, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (608, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (609, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (610, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (611, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (612, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (613, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (614, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (615, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (616, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (617, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (618, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (619, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (620, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (621, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (622, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (623, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (624, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (625, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (626, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (627, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (628, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (629, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (630, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (631, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (632, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (633, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (634, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (635, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (636, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (637, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (638, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (639, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (640, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (641, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (642, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (643, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (644, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (645, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (646, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (647, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (648, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (649, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (650, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (651, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (652, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (653, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (654, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (655, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (656, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (657, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (658, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (659, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (660, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (661, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (662, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (663, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (664, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (665, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (666, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (667, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (668, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (669, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (670, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (671, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (672, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (673, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (674, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (675, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (676, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (677, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (678, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (679, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (680, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (681, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (682, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (683, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (684, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (685, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (686, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (687, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (688, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (689, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (690, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (691, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (692, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (693, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (694, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (695, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (696, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (697, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (698, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (699, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (700, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (701, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (702, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (703, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (704, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (705, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (706, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (707, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (708, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (709, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (710, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (711, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (712, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (713, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (714, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (715, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (716, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (717, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (718, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (719, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (720, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (721, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (722, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (723, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (724, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (725, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (726, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (727, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (728, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (729, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (730, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (731, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (732, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (733, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (734, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (735, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (736, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (737, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (738, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (739, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (740, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (741, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (742, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (743, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (744, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (745, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (746, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (747, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (748, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (749, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (750, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (751, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (752, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (753, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (754, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (755, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (756, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (757, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (758, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (759, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (760, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (761, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (762, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (763, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (764, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (765, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (766, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (767, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (768, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (769, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (770, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (771, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (772, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (773, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (774, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (775, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (776, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (777, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (778, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (779, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (780, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (781, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (782, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (783, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (784, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (785, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (786, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (787, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (788, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (789, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (790, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (791, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (792, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (793, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (794, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (795, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (796, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (797, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (798, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (799, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (800, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (801, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (802, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (803, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (804, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (805, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (806, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (807, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (808, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (809, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (810, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (811, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (812, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (813, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (814, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (815, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (816, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (817, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (818, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (819, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (820, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (821, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (822, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (823, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (824, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (825, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (826, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (827, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (828, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (829, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (830, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (831, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (832, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (833, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (834, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (835, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (836, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (837, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (838, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (839, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (840, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (841, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (842, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (843, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (844, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (845, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (846, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (847, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (848, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (849, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (850, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (851, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (852, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (853, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (854, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (855, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (856, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (857, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (858, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (859, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (860, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (861, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (862, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (863, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (864, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (865, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (866, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (867, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (868, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (869, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (870, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (871, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (872, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (873, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (874, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (875, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (876, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (877, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (878, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (879, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (880, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (881, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (882, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (883, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (884, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (885, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (886, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (887, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (888, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (889, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (890, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (891, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (892, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (893, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (894, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (895, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (896, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (897, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (898, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (899, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (900, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (901, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (902, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (903, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (904, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (905, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (906, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (907, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (908, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (909, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (910, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (911, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (912, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (913, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (914, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (915, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (916, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (917, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (918, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (919, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (920, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (921, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (922, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (923, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (924, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (925, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (926, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (927, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (928, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (929, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (930, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (931, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (932, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (933, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (934, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (935, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (936, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (937, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (938, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (939, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (940, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (941, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (942, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (943, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (944, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (945, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (946, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (947, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (948, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (949, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (950, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (951, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (952, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (953, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (954, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (955, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (956, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (957, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (958, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (959, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (960, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (961, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (962, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (963, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (964, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (965, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (966, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (967, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (968, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (969, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (970, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (971, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (972, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (973, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (974, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1102, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1103, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1104, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1105, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1106, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (111, 1, 1, 1, 1);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (975, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (976, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (977, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (978, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (979, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (980, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (981, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (982, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (983, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (984, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (985, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (986, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (987, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (988, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (989, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (990, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (991, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (992, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (993, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (994, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (995, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (996, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (997, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (998, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (999, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1000, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1001, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1002, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1003, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1004, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1005, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1006, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1007, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1008, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1009, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1010, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1011, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1012, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1013, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1014, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1015, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1016, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1017, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1018, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1019, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1020, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1021, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1022, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1023, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1024, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1025, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1026, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1027, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1028, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1029, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1030, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1031, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1032, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1033, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1034, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1035, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1036, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1037, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1038, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1039, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1040, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1041, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1042, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1043, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1044, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1045, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1046, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1047, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1048, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1049, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1050, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1051, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1052, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1053, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1054, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1055, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1056, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1057, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1058, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1059, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1060, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1061, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1062, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1063, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1064, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1065, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1066, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1067, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1068, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1069, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1070, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1071, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1072, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1073, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1074, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1075, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1076, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1077, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1078, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1079, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1080, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1081, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1082, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1083, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1084, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1085, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1086, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1087, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1088, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1089, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1090, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1091, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1092, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1093, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1094, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1095, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1096, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1097, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1098, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1099, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1100, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1101, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1107, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1108, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1109, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1110, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1111, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1295, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1296, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1297, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1298, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1299, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1300, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1301, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1302, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1303, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1304, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1305, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1306, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1307, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1308, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1309, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1310, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1311, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1312, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1313, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1314, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1315, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1316, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1317, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1318, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1319, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1320, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1321, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1322, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1323, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1324, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1325, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1326, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1327, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1328, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1329, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1330, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1331, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1332, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1333, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1334, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1335, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1336, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1337, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1338, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1339, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1340, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1341, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1342, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1343, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1344, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1345, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1346, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1347, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1348, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1349, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1350, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1351, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1352, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1353, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1354, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1355, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1356, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1357, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1358, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1359, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1360, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1361, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1362, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1363, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1364, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1365, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1366, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1367, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1368, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1369, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1370, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1371, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1372, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1373, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1374, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1375, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1376, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1377, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1378, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1379, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1380, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1381, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1382, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1383, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1384, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1385, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1386, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1387, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1388, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1389, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1390, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1391, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1392, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1393, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1394, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1395, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1396, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1397, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1398, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1399, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1400, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1401, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1402, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1403, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1404, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1405, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1406, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1407, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1408, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1409, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1410, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1411, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1412, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1413, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1414, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1415, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1416, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1417, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1418, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1419, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1420, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1421, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1422, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1423, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1424, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1425, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1426, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1427, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1428, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1429, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1430, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1431, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1432, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1433, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1434, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1435, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1436, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1437, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1438, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1439, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1440, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1441, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1442, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1443, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1444, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1445, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1446, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1447, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1448, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1449, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1450, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1451, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1452, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1453, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1454, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1455, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1456, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1457, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1458, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1459, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1460, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1461, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1462, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1463, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1464, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1465, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1466, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1467, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1468, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1469, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1470, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1471, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1472, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1473, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1474, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1475, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1476, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1477, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1478, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1479, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1480, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1481, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1482, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1483, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1484, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1485, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1486, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1487, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1488, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1489, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1490, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1491, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1492, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1493, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1494, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1495, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1496, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1497, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1498, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1499, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1500, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1501, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1502, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1503, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1504, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1505, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1506, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1507, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1508, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1509, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1510, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1511, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1512, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1513, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1514, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1515, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1516, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1517, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1518, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1519, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1520, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1521, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1522, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1523, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1524, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1525, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1526, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1527, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1528, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1529, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1530, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1531, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1532, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1533, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1534, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1535, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1536, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1537, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1538, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1539, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1540, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1541, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1542, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1543, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1544, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1545, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1546, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1547, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1548, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1549, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1550, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1551, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1552, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1553, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1554, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1555, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1556, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1557, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1558, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1559, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1560, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1561, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1562, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1563, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1564, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1565, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1566, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1567, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1568, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1569, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1570, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1571, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1572, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1573, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1574, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1575, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1576, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1577, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1578, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1579, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1580, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1581, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1582, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1583, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1584, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1585, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1586, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1587, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1588, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1589, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1590, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1591, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1592, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1593, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1594, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1595, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1596, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1597, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1598, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1599, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1600, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1601, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1602, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1603, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1604, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1605, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1606, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1607, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1608, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1609, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1610, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1611, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1612, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1613, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1614, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1615, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1616, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1617, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1618, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1619, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1620, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1621, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1622, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1623, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1624, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1625, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1626, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1627, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1628, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1629, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1630, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1631, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1632, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1633, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1634, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1635, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1636, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1637, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1638, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1639, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1640, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1641, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1642, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1643, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1644, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1645, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1646, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1647, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1648, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1649, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1650, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1651, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1652, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1653, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1654, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1655, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1656, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1657, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1658, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1659, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1660, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1661, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1662, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1663, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1664, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1665, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1666, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1667, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1668, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1669, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1670, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1671, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1672, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1673, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1674, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1675, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1676, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1677, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1678, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1679, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1680, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1681, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1682, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1683, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1684, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1685, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1686, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1687, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1688, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1689, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1690, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1691, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1692, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1693, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1694, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1695, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1696, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1697, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1698, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1699, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1700, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1701, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1702, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1703, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1704, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1705, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1706, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1707, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1708, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1709, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1710, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1711, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1712, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1713, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1714, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1715, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1716, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1717, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1718, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1719, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1720, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1721, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1722, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1723, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1724, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1725, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1726, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1727, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1728, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1729, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1730, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1731, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1732, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1733, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1734, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1735, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1736, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1737, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1738, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1739, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1740, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1741, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1742, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1743, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1744, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1745, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1746, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1747, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1748, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1749, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1750, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1751, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1752, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1753, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1754, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1755, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1756, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1757, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1758, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1759, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1760, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1761, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1762, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1763, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1764, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1765, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1766, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1767, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1768, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1769, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1770, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1771, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1772, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1773, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1774, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1775, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1776, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1777, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1778, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1779, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1780, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1781, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1782, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1783, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1784, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1785, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1786, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1787, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1788, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1789, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1790, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1791, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1792, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1793, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1794, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1795, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1796, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1797, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1798, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1799, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1800, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1801, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1802, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1803, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1804, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1805, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1806, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1807, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1808, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1809, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1810, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1811, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1812, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1813, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1814, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1815, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1816, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1817, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1818, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1819, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1820, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1821, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1822, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1823, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1824, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1825, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1826, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1827, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1828, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1829, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1830, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1831, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1832, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1833, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1834, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1835, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1836, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1837, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1838, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1948, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1949, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1950, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1951, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1952, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1953, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1954, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1955, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1956, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1957, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1958, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1959, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1960, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1961, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1962, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1963, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1964, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1965, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1966, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1967, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1968, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1969, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1970, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1971, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1972, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1973, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1974, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1975, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1976, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1977, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1978, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1979, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1980, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1981, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1982, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1983, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1984, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1985, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1986, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1987, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1988, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1989, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1990, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1991, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1992, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1993, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1994, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1995, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1996, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1997, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1998, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (1999, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2000, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2001, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2002, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2003, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2004, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2005, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2006, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2007, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2008, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2009, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2010, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2011, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2012, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2013, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2014, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2015, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2016, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2017, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2018, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2019, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2020, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2021, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2022, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2023, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2024, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2025, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2026, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2027, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2028, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2029, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2030, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2031, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2032, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2033, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2034, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2035, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2036, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2037, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2038, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2039, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2040, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2041, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2042, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2043, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2044, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2045, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2046, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2047, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2048, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2049, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2050, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2051, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2052, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2053, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2054, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2055, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2056, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2057, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2058, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2059, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2060, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2061, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2062, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2063, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2064, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2065, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2066, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2067, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2068, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2069, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2070, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2071, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2072, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2073, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2074, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2075, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2076, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2077, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2078, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2079, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2080, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2081, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2082, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2083, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2084, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2085, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2086, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2087, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2088, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2089, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2090, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2091, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2092, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2093, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2094, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2095, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2096, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2097, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2098, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2099, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2100, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2101, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2102, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2103, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2104, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2105, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2106, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2107, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2108, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2109, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2110, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2111, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2295, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2296, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2297, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2298, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2299, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2300, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2301, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2302, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2303, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2304, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2305, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2306, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2307, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2308, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2309, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2310, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2311, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2312, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2313, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2314, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2315, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2316, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2317, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2318, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2319, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2320, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2321, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2322, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2323, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2324, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2325, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2326, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2327, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2328, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2329, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2330, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2331, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2332, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2333, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2334, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2335, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2336, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2337, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2338, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2339, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2340, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2341, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2342, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2343, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2344, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2345, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2346, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2347, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2348, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2349, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2350, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2351, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2352, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2353, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2354, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2355, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2356, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2357, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2358, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2359, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2360, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2361, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2362, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2363, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2364, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2365, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2366, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2367, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2368, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2369, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2370, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2371, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2372, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2373, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2374, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2375, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2376, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2377, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2378, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2379, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2380, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2381, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2382, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2383, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2384, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2385, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2386, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2387, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2388, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2389, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2390, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2391, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2392, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2393, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2394, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2395, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2396, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2397, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2398, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2399, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2400, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2401, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2402, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2403, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2404, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2405, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2406, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2407, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2408, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2409, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2410, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2411, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2412, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2413, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2414, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2415, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2416, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2417, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2418, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2419, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2420, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2421, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2422, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2423, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2424, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2425, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2426, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2427, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2428, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2429, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2430, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2431, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2432, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2433, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2434, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2435, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2436, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2437, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2438, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2439, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2440, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2441, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2442, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2443, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2444, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2445, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2446, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2447, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2448, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2449, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2450, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2451, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2452, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2453, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2454, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2455, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2456, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2457, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2458, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2459, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2460, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2461, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2462, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2463, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2464, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2465, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2466, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2467, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2468, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2469, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2470, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2471, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2472, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2473, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2474, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2475, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2476, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2477, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2478, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2479, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2480, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2481, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2482, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2483, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2484, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2485, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2486, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2487, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2488, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2489, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2490, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2491, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2492, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2493, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2494, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2495, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2496, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2497, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2498, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2499, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2500, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2501, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2502, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2503, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2504, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2505, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2506, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2507, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2508, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2509, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2510, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2511, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2512, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2513, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2514, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2515, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2516, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2517, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2518, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2519, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2520, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2521, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2522, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2523, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2524, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2525, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2526, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2527, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2528, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2529, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2530, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2531, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2532, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2533, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2534, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2535, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2536, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2537, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2538, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2539, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2540, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2541, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2542, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2543, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2544, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2545, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2546, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2547, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2548, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2549, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2550, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2551, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2552, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2553, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2554, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2555, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2556, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2557, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2558, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2559, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2560, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2561, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2562, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2563, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2564, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2565, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2566, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2567, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2568, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2569, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2570, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2571, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2572, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2573, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2574, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2575, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2576, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2577, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2578, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2579, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2580, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2581, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2582, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2583, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2584, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2585, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2586, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2587, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2588, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2589, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2590, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2591, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2592, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2593, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2594, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2595, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2596, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2597, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2598, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2599, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2600, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2601, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2602, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2603, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2604, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2605, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2606, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2607, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2608, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2609, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2610, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2611, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2612, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2613, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2614, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2615, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2616, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2617, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2618, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2619, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2620, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2621, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2622, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2623, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2624, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2625, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2626, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2627, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2628, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2629, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2630, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2631, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2632, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2633, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2634, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2635, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2636, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2637, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2638, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2639, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2640, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2641, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2642, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2643, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2644, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2645, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2646, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2647, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2648, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2649, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2650, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2651, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2652, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2653, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2654, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2655, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2656, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2657, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2658, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2659, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2660, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2661, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2662, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2663, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2664, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2665, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2666, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2667, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2668, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2669, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2670, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2671, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2672, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2673, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2674, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2675, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2676, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2677, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2678, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2679, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2680, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2681, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2682, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2683, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2684, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2685, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2686, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2687, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2688, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2689, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2690, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2691, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2692, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2693, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2694, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2695, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2696, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2697, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2698, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2699, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2700, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2701, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2702, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2703, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2704, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2705, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2706, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2707, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2708, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2709, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2710, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2711, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2712, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2713, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2714, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2715, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2716, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2717, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2718, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2719, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2720, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2721, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2722, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2723, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2724, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2725, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2726, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2727, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2728, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2729, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2730, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2731, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2732, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2733, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2734, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2735, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2736, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2737, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2738, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2739, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2740, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2741, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2742, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2743, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2744, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2745, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2746, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2747, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2748, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2749, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2750, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2751, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2752, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2753, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2754, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2755, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2756, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2757, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2758, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2759, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2760, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2761, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2762, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2763, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2764, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2765, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2766, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2767, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2768, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2769, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2770, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2771, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2772, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2773, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2774, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2775, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2776, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2777, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2778, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2779, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2780, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2781, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2782, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2783, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2784, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2785, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2786, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2787, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2788, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2789, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2790, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2791, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2792, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2793, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2794, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2795, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2796, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2797, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2798, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2799, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2800, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2801, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2802, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2803, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2804, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2805, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2806, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2807, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2808, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2809, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2810, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2811, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2812, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2813, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2814, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2815, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2816, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2817, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2818, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2819, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2820, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2821, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2822, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2823, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2824, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2825, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2826, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2827, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2828, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2829, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2830, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2831, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2832, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2833, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2834, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2835, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2836, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2837, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2838, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2839, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2840, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2841, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2842, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2843, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2844, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2845, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2846, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2847, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2848, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2849, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2850, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2851, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2852, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2853, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2854, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2855, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2856, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2857, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2858, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2859, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2860, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2861, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2862, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2863, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2864, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2865, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2866, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2867, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2868, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2869, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2870, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2871, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2872, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2873, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2874, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2875, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2876, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2877, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2878, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2879, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2880, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2881, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2882, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2883, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2884, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2885, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2886, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2887, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2888, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2889, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2890, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2891, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2892, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2893, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2894, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2895, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2896, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2897, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2898, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2899, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2900, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2901, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2902, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2903, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2904, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2905, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2906, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2907, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2908, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2909, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2910, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2911, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2912, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2913, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2914, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2915, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2916, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2917, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2918, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2919, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2920, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2921, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2922, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2923, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2924, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2925, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2926, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2927, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2928, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2929, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2930, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2931, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2932, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2933, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2934, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2935, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2936, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2937, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2938, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2939, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2940, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2941, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2942, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2943, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2944, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2945, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2946, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2947, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2948, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2949, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2950, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2951, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2952, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2953, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2954, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2955, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2956, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2957, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2958, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2959, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2960, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2961, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2962, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2963, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2964, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2965, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2966, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2967, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2968, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2969, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2970, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2971, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2972, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2973, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2974, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2975, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2976, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2977, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2978, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2979, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2980, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2981, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2982, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2983, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2984, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2985, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2986, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2987, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2988, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2989, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2990, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2991, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2992, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2993, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2994, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2995, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2996, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2997, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2998, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (2999, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3000, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3001, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3002, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3003, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3004, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3005, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3006, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3007, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3008, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3009, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3010, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3011, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3012, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3013, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3014, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3015, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3016, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3017, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3018, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3019, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3020, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3021, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3022, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3023, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3024, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3025, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3026, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3027, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3028, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3029, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3030, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3031, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3032, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3033, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3034, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3035, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3036, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3037, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3038, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3039, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3040, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3041, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3042, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3043, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3044, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3045, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3046, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3047, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3048, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3049, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3050, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3051, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3052, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3053, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3054, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3055, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3056, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3057, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3058, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3059, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3060, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3061, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3062, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3063, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3064, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3065, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3066, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3067, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3068, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3069, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3070, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3071, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3072, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3073, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3074, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3075, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3076, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3077, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3078, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3079, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3080, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3081, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3082, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3083, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3084, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3085, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3086, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3087, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3088, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3089, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3090, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3091, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3092, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3093, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3094, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3095, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3096, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3097, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3098, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3099, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3100, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3101, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3102, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3103, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3104, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3105, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3106, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3107, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3108, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3109, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3110, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3111, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3295, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3296, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3297, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3298, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3299, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3300, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3301, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3302, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3303, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3304, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3305, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3306, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3307, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3308, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3309, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3310, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3311, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3312, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3313, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3314, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3315, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3316, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3317, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3318, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3319, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3320, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3321, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3322, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3323, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3324, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3325, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3326, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3327, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3328, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3329, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3330, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3331, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3332, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3333, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3334, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3335, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3336, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3337, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3338, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3339, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3340, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3341, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3342, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3343, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3344, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3345, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3346, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3347, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3348, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3349, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3350, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3351, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3352, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3353, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3354, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3355, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3356, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3357, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3358, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3359, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3360, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3361, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3362, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3363, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3364, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3365, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3366, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3367, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3368, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3369, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3370, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3371, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3372, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3373, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3374, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3375, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3376, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3377, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3378, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3379, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3380, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3381, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3382, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3383, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3384, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3385, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3386, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3387, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3388, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3389, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3390, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3391, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3392, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3393, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3394, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3395, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3396, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3397, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3398, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3399, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3400, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3401, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3402, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3403, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3404, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3405, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3406, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3407, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3408, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3409, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3410, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3411, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3412, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3413, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3414, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3415, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3416, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3417, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3418, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3419, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3420, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3421, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3422, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3423, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3424, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3425, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3426, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3427, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3428, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3429, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3430, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3431, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3432, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3433, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3434, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3435, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3436, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3437, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3438, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3439, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3440, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3441, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3442, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3443, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3444, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3445, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3446, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3447, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3448, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3449, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3450, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3451, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3452, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3453, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3454, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3455, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3456, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3457, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3458, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3459, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3460, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3461, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3462, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3463, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3464, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3465, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3466, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3467, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3468, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3469, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3470, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3471, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3472, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3473, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3474, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3475, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3476, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3477, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3478, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3479, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3480, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3481, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3482, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3483, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3484, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3485, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3486, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3487, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3488, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3489, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3490, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3491, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3492, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3493, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3494, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3495, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3496, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3497, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3498, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3499, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3500, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3501, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3502, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3503, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3504, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3505, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3506, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3507, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3508, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3509, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3510, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3511, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3512, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3513, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3514, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3515, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3516, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3517, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3518, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3519, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3520, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3521, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3522, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3523, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3524, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3525, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3526, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3527, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3528, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3529, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3530, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3531, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3532, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3533, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3534, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3535, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3536, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3537, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3538, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3539, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3540, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3541, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3542, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3543, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3544, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3545, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3546, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3547, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3548, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3549, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3550, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3551, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3552, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3553, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3554, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3555, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3556, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3557, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3558, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3559, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3560, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3561, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3562, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3563, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3564, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3565, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3566, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3567, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3568, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3569, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3570, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3571, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3572, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3573, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3574, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3575, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3576, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3577, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3578, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3579, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3580, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3581, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3582, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3583, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3584, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3585, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3587, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3588, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3589, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3590, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3591, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3592, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3593, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3594, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3595, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3596, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3597, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3598, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3599, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3600, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3601, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3602, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3603, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3604, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3605, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3606, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3607, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3608, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3609, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3610, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3611, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3612, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3613, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3614, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3615, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3616, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3617, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3618, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3619, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3620, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3621, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3622, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3623, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3624, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3625, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3626, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3627, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3628, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3629, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3630, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3631, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3632, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3633, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3634, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3635, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3636, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3637, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3638, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3639, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3640, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3641, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3642, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3643, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3644, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3645, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3646, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3647, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3648, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3649, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3650, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3651, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3652, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3653, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3654, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3655, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3656, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3657, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3658, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3659, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3660, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3661, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3662, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3663, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3664, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3665, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3666, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3667, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3668, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3669, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3670, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3671, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3672, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3673, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3674, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3675, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3676, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3677, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3678, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3679, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3680, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3681, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3682, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3683, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3684, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3685, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3686, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3687, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3688, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3689, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3690, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3691, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3692, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3693, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3694, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3695, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3696, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3697, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3698, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3699, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3700, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3701, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3702, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3703, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3704, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3705, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3706, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3707, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3708, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3709, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3710, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3711, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3712, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3713, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3714, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3715, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3716, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3717, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3718, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3719, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3720, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3721, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3722, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3723, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3724, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3725, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3726, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3727, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3728, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3729, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3730, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3731, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3732, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3733, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3734, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3735, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3736, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3737, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3738, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3739, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3740, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3741, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3742, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3743, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3744, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3745, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3746, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3747, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3748, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3749, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3750, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3751, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3752, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3753, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3754, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3755, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3756, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3757, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3758, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3759, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3760, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3761, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3762, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3763, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3764, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3765, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3766, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3767, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3768, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3769, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3770, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3771, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3772, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3773, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3774, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3775, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3776, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3777, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3778, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3779, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3780, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3781, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3782, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3783, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3784, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3785, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3786, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3787, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3788, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3789, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3790, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3791, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3792, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3793, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3794, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3795, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3796, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3797, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3798, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3799, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3800, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3801, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3802, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3803, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3804, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3805, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3806, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3807, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3808, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3809, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3810, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3811, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3812, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3813, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3814, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3815, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3816, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3817, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3818, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3819, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3820, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3821, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3822, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3823, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3824, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3825, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3826, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3827, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3828, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3829, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3830, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3831, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3832, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3833, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3834, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3835, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3836, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3837, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3838, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3839, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3840, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3841, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3842, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3843, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3844, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3845, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3846, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3847, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3848, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3849, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3850, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3851, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3852, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3853, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3854, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3855, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3856, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3857, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3858, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3859, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3860, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3861, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3862, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3863, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3864, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3865, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3866, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3867, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3868, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3869, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3870, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3871, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3872, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3873, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3874, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3875, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3876, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3877, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3878, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3879, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3880, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3881, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3882, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3883, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3884, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3885, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3886, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3887, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3888, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3889, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3890, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3891, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3892, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3893, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3894, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3895, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3896, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3897, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3898, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3899, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3900, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3901, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3902, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3903, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3904, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3905, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3906, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3907, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3908, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3909, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3910, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3911, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3912, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3913, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3914, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3915, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3916, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3917, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3918, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3919, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3920, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3921, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3922, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3923, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3924, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3925, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3926, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3927, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3928, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3929, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3930, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3931, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3932, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3933, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3934, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3935, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3936, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3937, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3938, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3939, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3940, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3941, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3942, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3943, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3944, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3945, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3946, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3947, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3948, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3949, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3950, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3951, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3952, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3953, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3954, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3955, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3956, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3957, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3958, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3959, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3960, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3961, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3962, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3963, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3964, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3965, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3966, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3967, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3968, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3969, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3970, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3971, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3972, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3973, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3974, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3975, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3976, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3977, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3978, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3979, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3980, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3981, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3982, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3983, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3984, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3985, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3986, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3987, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3988, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3989, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3990, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3991, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3992, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3993, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3994, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3995, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3996, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3997, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3998, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3999, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4000, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4001, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4002, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4003, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4004, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4005, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4006, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4007, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4008, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4009, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4010, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4011, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4012, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4013, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4014, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4015, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4016, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4017, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4018, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4019, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4020, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4021, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4022, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4023, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4024, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4025, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4026, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4027, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4028, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4029, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4030, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4031, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4032, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4033, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4034, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4035, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4036, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4037, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4038, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4039, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4040, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4041, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4042, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4043, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4044, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4045, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4046, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4047, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4048, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4049, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4050, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4051, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4052, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4053, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4054, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4055, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4056, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4057, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4058, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4059, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4060, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4061, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4062, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4063, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4064, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4065, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4066, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4067, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4068, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4069, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4070, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4071, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4072, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4073, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4074, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4075, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4076, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4077, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4078, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4079, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4080, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4081, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4082, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4083, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4084, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4085, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4086, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4087, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4088, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4089, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4090, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4091, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4092, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4093, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4094, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4095, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4096, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4097, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4098, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4099, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4100, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4101, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4102, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4103, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4104, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4105, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4106, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4107, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4108, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4109, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4110, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4111, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4295, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4296, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4297, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4298, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4299, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4300, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4301, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4302, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4303, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4304, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4305, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4306, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4307, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4308, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4309, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4310, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4311, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4312, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4313, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4314, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4315, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4316, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4317, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4318, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4319, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4320, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4321, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4322, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4323, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4324, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4325, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4326, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4327, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4328, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4329, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4330, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4331, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4332, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4333, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4334, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4335, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4336, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4337, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4338, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4339, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4340, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4341, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4342, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4343, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4344, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4345, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4346, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4347, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4348, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4349, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4350, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4351, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4352, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4353, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4354, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4355, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4356, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4357, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4358, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4359, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4360, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4361, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4362, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4363, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4364, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4365, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4366, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4367, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4368, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4369, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4370, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4371, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4372, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4373, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4374, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4375, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4376, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4377, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4378, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4379, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4380, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4381, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4382, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4383, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4384, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4385, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4386, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4387, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4388, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4389, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4390, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4391, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4392, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4393, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4394, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4395, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4396, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4397, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4398, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4399, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4400, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4401, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4402, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4403, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4404, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4405, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4406, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4407, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4408, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4409, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4410, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4411, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4412, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4413, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4414, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4415, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4416, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4417, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4418, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4419, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4420, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4421, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4422, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4423, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4424, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4425, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4426, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4427, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4428, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4429, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4430, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (3586, 1, 2, 1, 1);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4431, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4432, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4433, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4434, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4435, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4436, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4437, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4438, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4439, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4440, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4442, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4443, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4444, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4445, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4446, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4447, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4448, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4449, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4451, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4452, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4453, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4454, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4455, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4456, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4457, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4458, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4459, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4460, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4461, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4462, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4463, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4464, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4465, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4466, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4467, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4468, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4469, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4470, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4471, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4472, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4473, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4474, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4475, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4476, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4477, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4478, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4479, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4480, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4481, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4482, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4483, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4484, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4485, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4486, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4487, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4488, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4489, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4490, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4491, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4492, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4493, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4494, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4495, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4496, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4497, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4498, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4499, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4500, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4501, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4502, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4503, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4504, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4505, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4506, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4507, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4508, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4509, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4510, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4511, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4512, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4513, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4514, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4515, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4516, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4517, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4518, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4519, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4520, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4521, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4522, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4523, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4524, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4525, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4526, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4527, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4528, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4529, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4530, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4531, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4532, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4533, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4534, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4535, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4536, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4537, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4538, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4539, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4540, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4541, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4542, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4543, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4544, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4545, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4546, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4547, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4548, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4549, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4550, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4551, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4552, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4553, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4554, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4555, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4556, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4557, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4558, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4559, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4560, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4561, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4562, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4563, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4564, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4565, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4566, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4567, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4568, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4569, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4570, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4571, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4572, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4573, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4574, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4575, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4576, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4577, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4578, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4579, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4580, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4581, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4582, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4583, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4584, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4585, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4586, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4587, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4588, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4589, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4590, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4591, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4592, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4593, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4594, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4595, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4596, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4597, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4598, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4599, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4600, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4601, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4602, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4603, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4604, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4605, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4606, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4607, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4608, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4609, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4610, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4611, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4612, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4613, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4614, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4615, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4616, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4617, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4618, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4619, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4620, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4621, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4622, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4623, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4624, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4625, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4626, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4627, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4628, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4629, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4630, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4631, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4632, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4633, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4634, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4635, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4636, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4637, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4638, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4639, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4640, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4641, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4642, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4643, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4644, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4645, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4646, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4647, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4648, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4649, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4650, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4651, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4652, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4653, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4654, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4655, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4656, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4657, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4658, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4659, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4660, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4661, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4662, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4663, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4664, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4665, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4666, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4667, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4668, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4669, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4670, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4671, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4672, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4673, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4674, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4675, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4676, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4677, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4678, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4679, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4680, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4681, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4682, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4683, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4684, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4685, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4686, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4687, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4688, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4689, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4690, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4691, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4692, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4693, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4694, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4695, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4696, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4697, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4698, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4699, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4700, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4701, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4702, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4703, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4704, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4705, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4706, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4707, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4708, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4709, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4710, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4711, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4712, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4713, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4714, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4715, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4716, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4717, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4718, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4719, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4720, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4721, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4722, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4723, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4724, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4725, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4726, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4727, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4728, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4729, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4730, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4731, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4732, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4733, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4734, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4735, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4736, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4737, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4738, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4739, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4740, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4741, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4742, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4743, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4744, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4745, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4746, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4747, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4748, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4749, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4750, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4751, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4752, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4753, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4754, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4755, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4756, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4757, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4758, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4759, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4760, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4761, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4762, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4763, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4764, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4765, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4766, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4767, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4768, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4769, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4770, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4771, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4772, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4773, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4774, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4775, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4776, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4777, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4778, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4779, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4780, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4781, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4782, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4783, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4784, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4785, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4786, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4787, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4788, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4789, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4790, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4791, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4792, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4793, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4794, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4795, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4796, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4797, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4798, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4799, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4800, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4801, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4802, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4803, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4804, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4805, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4806, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4807, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4808, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4809, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4810, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4811, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4812, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4813, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4814, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4815, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4816, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4817, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4818, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4819, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4820, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4821, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4822, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4823, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4824, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4825, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4826, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4827, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4828, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4829, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4830, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4831, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4832, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4833, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4834, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4835, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4836, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4837, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4838, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4839, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4840, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4841, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4842, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4843, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4844, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4845, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4846, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4847, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4848, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4849, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4850, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4851, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4852, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4853, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4854, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4855, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4856, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4857, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4858, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4859, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4860, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4861, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4862, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4863, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4864, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4865, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4866, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4867, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4868, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4869, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4870, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4871, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4872, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4873, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4874, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4875, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4876, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4877, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4878, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4879, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4880, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4881, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4882, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4883, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4884, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4885, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4886, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4887, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4888, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4889, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4890, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4891, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4892, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4893, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4894, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4895, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4896, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4897, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4898, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4899, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4900, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4901, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4902, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4903, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4904, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4905, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4906, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4907, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4908, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4909, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4910, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4911, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4912, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4913, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4914, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4915, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4916, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4917, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4918, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4919, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4920, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4921, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4922, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4923, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4924, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4925, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4926, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4927, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4928, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4929, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4930, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4931, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4932, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4933, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4934, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4935, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4936, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4937, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4938, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4939, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4940, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4941, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4942, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4943, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4944, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4945, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4946, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4947, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4948, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4949, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4950, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4951, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4952, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4953, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4954, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4955, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4956, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4957, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4958, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4959, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4960, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4961, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4962, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4963, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4964, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4965, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4966, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4967, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4968, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4969, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4970, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4971, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4972, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4973, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4974, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4975, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4976, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4977, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4978, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4979, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4980, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4981, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4982, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4983, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4984, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4985, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4986, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4987, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4988, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4989, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4990, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4991, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4992, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4993, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4994, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4995, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4996, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4997, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4998, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4999, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5000, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5001, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5002, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5003, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5004, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5005, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5006, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5007, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5008, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5009, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5010, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5011, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5012, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5013, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5014, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5015, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5016, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5017, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5018, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5019, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5020, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5021, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5022, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5023, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5024, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5025, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5026, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5027, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5028, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5029, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5030, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5031, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5032, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5033, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5034, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5035, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5036, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5037, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5038, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5039, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5040, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5041, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5042, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5043, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5044, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5045, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5046, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5047, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5048, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5049, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5050, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5051, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5052, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5053, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5054, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5055, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5056, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5057, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5058, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5059, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5060, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5061, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5062, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5063, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5064, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5065, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5066, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5067, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5068, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5069, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5070, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5071, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5072, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5073, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5074, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5075, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5076, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5077, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5078, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5079, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5080, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5081, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5082, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5083, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5084, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5085, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5086, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5087, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5088, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5089, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5090, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5091, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5092, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5093, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5094, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5095, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5096, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5097, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5098, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5099, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5100, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5101, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5102, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5103, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5104, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5105, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5106, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5107, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5108, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5109, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5110, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5111, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5112, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5113, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5114, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5115, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5116, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5117, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5118, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5119, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5120, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5121, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5122, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5123, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5124, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5125, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5126, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5127, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5128, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5129, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5130, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5131, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5132, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5133, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5134, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5135, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5136, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5137, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5138, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5139, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5140, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5141, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5142, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5143, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5144, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5145, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5146, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5147, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5148, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5149, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5150, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5151, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5152, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5153, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5154, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5155, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5156, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5157, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5158, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5159, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5160, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5161, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5162, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5163, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5164, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5165, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5166, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5167, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5168, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5169, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5170, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5171, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5172, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5173, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5174, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5175, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5176, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5177, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5178, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5179, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5180, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5181, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5182, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5183, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5184, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5185, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5186, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5187, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5188, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5189, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5190, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5191, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5192, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5193, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5194, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5195, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5196, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5197, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5198, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5199, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5200, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5201, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5202, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5203, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5204, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5205, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5206, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5207, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5208, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5209, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5210, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5211, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5212, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5213, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5214, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5215, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5216, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5217, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5218, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5219, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5220, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5221, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5222, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5223, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5224, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5225, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5226, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5227, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5228, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5229, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5230, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5231, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5232, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5233, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5234, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5235, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5236, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5237, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5238, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5239, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5240, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5241, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5242, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5243, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5244, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5245, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5246, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5247, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5248, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5249, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5250, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5251, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5252, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5253, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5254, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5255, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5256, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5257, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5258, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5259, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5260, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5261, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5262, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5263, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5264, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5265, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5266, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5267, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5268, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5269, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5270, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5271, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5272, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5273, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5274, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5275, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5276, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5277, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5278, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5279, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5280, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5281, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5282, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5283, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5284, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5285, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5286, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5287, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5288, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5289, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5290, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5291, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5292, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5293, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (5294, NULL, NULL, NULL, NULL);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4441, 1, 2, 1, 1);
INSERT INTO public.schedules (id_schedule, id_professor, id_subject, id_auditory, id_type) VALUES (4450, NULL, NULL, NULL, NULL);


--
-- TOC entry 3422 (class 0 OID 20806)
-- Dependencies: 227
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subjects (id_subject, subject) VALUES (1, 'Разработка приложений баз данных');
INSERT INTO public.subjects (id_subject, subject) VALUES (2, 'Базы данных');


--
-- TOC entry 3416 (class 0 OID 20783)
-- Dependencies: 221
-- Data for Name: time_of_lessons; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (1, '08:30:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (2, '10:00:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (3, '10:15:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (4, '11:45:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (5, '12:00:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (6, '13:30:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (7, '14:00:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (8, '15:30:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (9, '15:45:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (10, '17:15:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (11, '17:30:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (12, '19:00:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (13, '19:15:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (14, '20:45:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (15, '21:00:00');
INSERT INTO public.time_of_lessons (id_time_of_lesson, time_lesson) VALUES (16, '22:30:00');


--
-- TOC entry 3428 (class 0 OID 20847)
-- Dependencies: 233
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (43, 1, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (44, 1, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (45, 1, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (46, 1, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (47, 1, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (48, 1, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (49, 1, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (50, 1, 15, 16);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (51, 2, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (52, 2, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (53, 2, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (54, 2, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (55, 2, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (56, 2, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (57, 2, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (58, 2, 15, 16);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (59, 3, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (60, 3, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (61, 3, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (62, 3, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (63, 3, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (64, 3, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (65, 3, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (66, 3, 15, 16);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (67, 4, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (68, 4, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (69, 4, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (70, 4, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (71, 4, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (72, 4, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (73, 4, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (74, 4, 15, 16);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (75, 5, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (76, 5, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (77, 5, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (78, 5, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (79, 5, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (80, 5, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (81, 5, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (82, 5, 15, 16);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (83, 6, 1, 2);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (84, 6, 3, 4);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (85, 6, 5, 6);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (86, 6, 7, 8);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (87, 6, 9, 10);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (88, 6, 11, 12);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (89, 6, 13, 14);
INSERT INTO public.times (id_time, id_day, id_begin, id_end) VALUES (90, 6, 15, 16);


--
-- TOC entry 3424 (class 0 OID 20813)
-- Dependencies: 229
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types (id_type, type) VALUES (1, 'Лекция');
INSERT INTO public.types (id_type, type) VALUES (2, 'Практика');


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 216
-- Name: auditories_id_auditory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auditories_id_auditory_seq', 2, true);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 214
-- Name: days_id_day_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.days_id_day_seq', 6, true);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 234
-- Name: gr_sch_identity_id_gr_sch_identity_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gr_sch_identity_id_gr_sch_identity_seq', 5292, true);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 218
-- Name: groups_id_group_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_group_seq', 16, true);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 222
-- Name: number_of_weeks_id_number_of_week_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.number_of_weeks_id_number_of_week_seq', 18, true);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 224
-- Name: professors_id_professor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professors_id_professor_seq', 8, true);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 230
-- Name: schedules_id_schedule_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedules_id_schedule_seq', 5294, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 226
-- Name: subjects_id_subject_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_subject_seq', 2, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 220
-- Name: time_of_lessons_id_time_of_lesson_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_of_lessons_id_time_of_lesson_seq', 16, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 232
-- Name: times_id_time_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.times_id_time_seq', 90, true);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 228
-- Name: types_id_type_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_type_seq', 2, true);


--
-- TOC entry 3237 (class 2606 OID 20774)
-- Name: auditories auditories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auditories
    ADD CONSTRAINT auditories_pkey PRIMARY KEY (id_auditory);


--
-- TOC entry 3235 (class 2606 OID 20767)
-- Name: days days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id_day);


--
-- TOC entry 3255 (class 2606 OID 20874)
-- Name: gr_sch_identity gr_sch_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity
    ADD CONSTRAINT gr_sch_identity_pkey PRIMARY KEY (id_gr_sch_identity);


--
-- TOC entry 3239 (class 2606 OID 20781)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id_group);


--
-- TOC entry 3243 (class 2606 OID 20795)
-- Name: number_of_weeks number_of_weeks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_of_weeks
    ADD CONSTRAINT number_of_weeks_pkey PRIMARY KEY (id_number_of_week);


--
-- TOC entry 3245 (class 2606 OID 20804)
-- Name: professors professors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (id_professor);


--
-- TOC entry 3251 (class 2606 OID 20825)
-- Name: schedules schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id_schedule);


--
-- TOC entry 3247 (class 2606 OID 20811)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id_subject);


--
-- TOC entry 3241 (class 2606 OID 20788)
-- Name: time_of_lessons time_of_lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_of_lessons
    ADD CONSTRAINT time_of_lessons_pkey PRIMARY KEY (id_time_of_lesson);


--
-- TOC entry 3253 (class 2606 OID 20852)
-- Name: times times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_pkey PRIMARY KEY (id_time);


--
-- TOC entry 3249 (class 2606 OID 20818)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id_type);


--
-- TOC entry 3263 (class 2606 OID 20875)
-- Name: gr_sch_identity gr_sch_identity_id_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity
    ADD CONSTRAINT gr_sch_identity_id_group_fkey FOREIGN KEY (id_group) REFERENCES public.groups(id_group) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3264 (class 2606 OID 20885)
-- Name: gr_sch_identity gr_sch_identity_id_number_of_week_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity
    ADD CONSTRAINT gr_sch_identity_id_number_of_week_fkey FOREIGN KEY (id_number_of_week) REFERENCES public.number_of_weeks(id_number_of_week) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3265 (class 2606 OID 20880)
-- Name: gr_sch_identity gr_sch_identity_id_schedule_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity
    ADD CONSTRAINT gr_sch_identity_id_schedule_fkey FOREIGN KEY (id_schedule) REFERENCES public.schedules(id_schedule) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3266 (class 2606 OID 20890)
-- Name: gr_sch_identity gr_sch_identity_id_time_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gr_sch_identity
    ADD CONSTRAINT gr_sch_identity_id_time_fkey FOREIGN KEY (id_time) REFERENCES public.times(id_time) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3256 (class 2606 OID 20911)
-- Name: schedules schedules_id_auditory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_id_auditory_fkey FOREIGN KEY (id_auditory) REFERENCES public.auditories(id_auditory) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3257 (class 2606 OID 20916)
-- Name: schedules schedules_id_professor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_id_professor_fkey FOREIGN KEY (id_professor) REFERENCES public.professors(id_professor) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3258 (class 2606 OID 20906)
-- Name: schedules schedules_id_subject_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_id_subject_fkey FOREIGN KEY (id_subject) REFERENCES public.subjects(id_subject) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3259 (class 2606 OID 20921)
-- Name: schedules schedules_id_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_id_type_fkey FOREIGN KEY (id_type) REFERENCES public.types(id_type) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3260 (class 2606 OID 20858)
-- Name: times times_id_begin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_id_begin_fkey FOREIGN KEY (id_begin) REFERENCES public.time_of_lessons(id_time_of_lesson) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3261 (class 2606 OID 20853)
-- Name: times times_id_day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_id_day_fkey FOREIGN KEY (id_day) REFERENCES public.days(id_day) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3262 (class 2606 OID 20863)
-- Name: times times_id_end_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_id_end_fkey FOREIGN KEY (id_end) REFERENCES public.time_of_lessons(id_time_of_lesson) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2023-02-11 00:44:31

--
-- PostgreSQL database dump complete
--

