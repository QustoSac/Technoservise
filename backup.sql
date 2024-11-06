--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

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
-- Name: Заявка; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."Заявка" (
    id integer NOT NULL,
    "дата_создания" date DEFAULT CURRENT_DATE,
    "описание_проблемы" text,
    "тип_неисправности_id" integer,
    "клиент_id" integer,
    "оборудование_id" integer,
    "статус_id" integer
);


ALTER TABLE public."Заявка" OWNER TO danila;

--
-- Name: Заявка_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."Заявка_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Заявка_id_seq" OWNER TO danila;

--
-- Name: Заявка_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."Заявка_id_seq" OWNED BY public."Заявка".id;


--
-- Name: Исполнитель; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."Исполнитель" (
    id integer NOT NULL,
    "имя" character varying(100) NOT NULL,
    "фамилия" character varying(100) NOT NULL,
    "контакты" text
);


ALTER TABLE public."Исполнитель" OWNER TO danila;

--
-- Name: Исполнитель_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."Исполнитель_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Исполнитель_id_seq" OWNER TO danila;

--
-- Name: Исполнитель_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."Исполнитель_id_seq" OWNED BY public."Исполнитель".id;


--
-- Name: ИсторияОбработки; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."ИсторияОбработки" (
    id integer NOT NULL,
    "заявка_id" integer,
    "дата" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "исполнитель_id" integer,
    "комментарий" text,
    "статус_id" integer
);


ALTER TABLE public."ИсторияОбработки" OWNER TO danila;

--
-- Name: ИсторияОбработки_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."ИсторияОбработки_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ИсторияОбработки_id_seq" OWNER TO danila;

--
-- Name: ИсторияОбработки_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."ИсторияОбработки_id_seq" OWNED BY public."ИсторияОбработки".id;


--
-- Name: Клиент; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."Клиент" (
    id integer NOT NULL,
    "имя" character varying(100) NOT NULL,
    "фамилия" character varying(100) NOT NULL,
    "контакты" text
);


ALTER TABLE public."Клиент" OWNER TO danila;

--
-- Name: Клиент_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."Клиент_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Клиент_id_seq" OWNER TO danila;

--
-- Name: Клиент_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."Клиент_id_seq" OWNED BY public."Клиент".id;


--
-- Name: Оборудование; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."Оборудование" (
    id integer NOT NULL,
    "серийный_номер" character varying(50) NOT NULL,
    "тип_оборудования" character varying(50)
);


ALTER TABLE public."Оборудование" OWNER TO danila;

--
-- Name: Оборудование_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."Оборудование_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Оборудование_id_seq" OWNER TO danila;

--
-- Name: Оборудование_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."Оборудование_id_seq" OWNED BY public."Оборудование".id;


--
-- Name: Статус; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."Статус" (
    id integer NOT NULL,
    "название" character varying(20) NOT NULL
);


ALTER TABLE public."Статус" OWNER TO danila;

--
-- Name: Статус_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."Статус_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Статус_id_seq" OWNER TO danila;

--
-- Name: Статус_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."Статус_id_seq" OWNED BY public."Статус".id;


--
-- Name: ТипНеисправности; Type: TABLE; Schema: public; Owner: danila
--

CREATE TABLE public."ТипНеисправности" (
    id integer NOT NULL,
    "описание" text
);


ALTER TABLE public."ТипНеисправности" OWNER TO danila;

--
-- Name: ТипНеисправности_id_seq; Type: SEQUENCE; Schema: public; Owner: danila
--

CREATE SEQUENCE public."ТипНеисправности_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ТипНеисправности_id_seq" OWNER TO danila;

--
-- Name: ТипНеисправности_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danila
--

ALTER SEQUENCE public."ТипНеисправности_id_seq" OWNED BY public."ТипНеисправности".id;


--
-- Name: Заявка id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка" ALTER COLUMN id SET DEFAULT nextval('public."Заявка_id_seq"'::regclass);


--
-- Name: Исполнитель id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Исполнитель" ALTER COLUMN id SET DEFAULT nextval('public."Исполнитель_id_seq"'::regclass);


--
-- Name: ИсторияОбработки id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ИсторияОбработки" ALTER COLUMN id SET DEFAULT nextval('public."ИсторияОбработки_id_seq"'::regclass);


--
-- Name: Клиент id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Клиент" ALTER COLUMN id SET DEFAULT nextval('public."Клиент_id_seq"'::regclass);


--
-- Name: Оборудование id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Оборудование" ALTER COLUMN id SET DEFAULT nextval('public."Оборудование_id_seq"'::regclass);


--
-- Name: Статус id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Статус" ALTER COLUMN id SET DEFAULT nextval('public."Статус_id_seq"'::regclass);


--
-- Name: ТипНеисправности id; Type: DEFAULT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ТипНеисправности" ALTER COLUMN id SET DEFAULT nextval('public."ТипНеисправности_id_seq"'::regclass);


--
-- Data for Name: Заявка; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."Заявка" (id, "дата_создания", "описание_проблемы", "тип_неисправности_id", "клиент_id", "оборудование_id", "статус_id") FROM stdin;
1	2024-11-06	Принтер не включается	1	1	1	1
\.


--
-- Data for Name: Исполнитель; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."Исполнитель" (id, "имя", "фамилия", "контакты") FROM stdin;
1	Сергей	Сергеев	sergey@example.com
\.


--
-- Data for Name: ИсторияОбработки; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."ИсторияОбработки" (id, "заявка_id", "дата", "исполнитель_id", "комментарий", "статус_id") FROM stdin;
1	1	2024-11-06 16:51:55.0463	1	Начал диагностику.	1
\.


--
-- Data for Name: Клиент; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."Клиент" (id, "имя", "фамилия", "контакты") FROM stdin;
1	Иван	Иванов	ivan@example.com
\.


--
-- Data for Name: Оборудование; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."Оборудование" (id, "серийный_номер", "тип_оборудования") FROM stdin;
1	SN12345	Принтер
\.


--
-- Data for Name: Статус; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."Статус" (id, "название") FROM stdin;
1	В ожидании
2	В работе
3	Завершена
4	Отменена
\.


--
-- Data for Name: ТипНеисправности; Type: TABLE DATA; Schema: public; Owner: danila
--

COPY public."ТипНеисправности" (id, "описание") FROM stdin;
1	Не включается
\.


--
-- Name: Заявка_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."Заявка_id_seq"', 1, true);


--
-- Name: Исполнитель_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."Исполнитель_id_seq"', 1, true);


--
-- Name: ИсторияОбработки_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."ИсторияОбработки_id_seq"', 1, true);


--
-- Name: Клиент_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."Клиент_id_seq"', 1, true);


--
-- Name: Оборудование_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."Оборудование_id_seq"', 1, true);


--
-- Name: Статус_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."Статус_id_seq"', 4, true);


--
-- Name: ТипНеисправности_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danila
--

SELECT pg_catalog.setval('public."ТипНеисправности_id_seq"', 1, true);


--
-- Name: Заявка Заявка_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка"
    ADD CONSTRAINT "Заявка_pkey" PRIMARY KEY (id);


--
-- Name: Исполнитель Исполнитель_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Исполнитель"
    ADD CONSTRAINT "Исполнитель_pkey" PRIMARY KEY (id);


--
-- Name: ИсторияОбработки ИсторияОбработки_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ИсторияОбработки"
    ADD CONSTRAINT "ИсторияОбработки_pkey" PRIMARY KEY (id);


--
-- Name: Клиент Клиент_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Клиент"
    ADD CONSTRAINT "Клиент_pkey" PRIMARY KEY (id);


--
-- Name: Оборудование Оборудование_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Оборудование"
    ADD CONSTRAINT "Оборудование_pkey" PRIMARY KEY (id);


--
-- Name: Оборудование Оборудование_серийный_номер_key; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Оборудование"
    ADD CONSTRAINT "Оборудование_серийный_номер_key" UNIQUE ("серийный_номер");


--
-- Name: Статус Статус_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Статус"
    ADD CONSTRAINT "Статус_pkey" PRIMARY KEY (id);


--
-- Name: ТипНеисправности ТипНеисправности_pkey; Type: CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ТипНеисправности"
    ADD CONSTRAINT "ТипНеисправности_pkey" PRIMARY KEY (id);


--
-- Name: Заявка Заявка_клиент_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка"
    ADD CONSTRAINT "Заявка_клиент_id_fkey" FOREIGN KEY ("клиент_id") REFERENCES public."Клиент"(id);


--
-- Name: Заявка Заявка_оборудование_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка"
    ADD CONSTRAINT "Заявка_оборудование_id_fkey" FOREIGN KEY ("оборудование_id") REFERENCES public."Оборудование"(id);


--
-- Name: Заявка Заявка_статус_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка"
    ADD CONSTRAINT "Заявка_статус_id_fkey" FOREIGN KEY ("статус_id") REFERENCES public."Статус"(id);


--
-- Name: Заявка Заявка_тип_неисправности_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."Заявка"
    ADD CONSTRAINT "Заявка_тип_неисправности_id_fkey" FOREIGN KEY ("тип_неисправности_id") REFERENCES public."ТипНеисправности"(id);


--
-- Name: ИсторияОбработки ИсторияОбработки_заявка_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ИсторияОбработки"
    ADD CONSTRAINT "ИсторияОбработки_заявка_id_fkey" FOREIGN KEY ("заявка_id") REFERENCES public."Заявка"(id);


--
-- Name: ИсторияОбработки ИсторияОбработки_исполнитель_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ИсторияОбработки"
    ADD CONSTRAINT "ИсторияОбработки_исполнитель_id_fkey" FOREIGN KEY ("исполнитель_id") REFERENCES public."Исполнитель"(id);


--
-- Name: ИсторияОбработки ИсторияОбработки_статус_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: danila
--

ALTER TABLE ONLY public."ИсторияОбработки"
    ADD CONSTRAINT "ИсторияОбработки_статус_id_fkey" FOREIGN KEY ("статус_id") REFERENCES public."Статус"(id);


--
-- PostgreSQL database dump complete
--

