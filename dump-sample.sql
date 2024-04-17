--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2023-07-17 21:13:55 UTC

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

--CREATE SCHEMA public;


--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 590833)
-- Name: Produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Produto" (
    id bigint NOT NULL,
    nome character varying,
    valor double precision,
    created timestamp without time zone,
    deleted boolean DEFAULT false
);


--
-- TOC entry 200 (class 1259 OID 590823)
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 590841)
-- Name: fastapi_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fastapi_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 202
-- Name: fastapi_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fastapi_produto_id_seq OWNED BY public."Produto".id;


--
-- TOC entry 2855 (class 2604 OID 590843)
-- Name: Produto id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Produto" ALTER COLUMN id SET DEFAULT nextval('public.fastapi_produto_id_seq'::regclass);


--
-- TOC entry 2992 (class 0 OID 590833)
-- Dependencies: 201
-- Data for Name: Produto; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Produto" VALUES (1, 'mochila', 30, NULL, false);
INSERT INTO public."Produto" VALUES (2, 'monitor', 200, NULL, false);
INSERT INTO public."Produto" VALUES (3, 'cell', 200, NULL, false);
INSERT INTO public."Produto" VALUES (9, 'note', 200, NULL, false);
INSERT INTO public."Produto" VALUES (10, 'note', 200, '2023-07-17 13:19:02.905234', false);
INSERT INTO public."Produto" VALUES (15, 'keyboard', 200, '2023-07-17 13:42:37.360041', false);
INSERT INTO public."Produto" VALUES (16, 'quadro', 200, '2023-07-17 14:59:51.577694', false);
INSERT INTO public."Produto" VALUES (20, 'mesa', 200, '2023-07-17 15:31:12.76238', true);
INSERT INTO public."Produto" VALUES (21, 'box', 200, '2023-07-17 19:28:12.380309', false);


--
-- TOC entry 2991 (class 0 OID 590823)
-- Dependencies: 200
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.alembic_version VALUES ('86abe98f47a6');


--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 202
-- Name: fastapi_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fastapi_produto_id_seq', 21, true);


--
-- TOC entry 2860 (class 2606 OID 590840)
-- Name: Produto Produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Produto"
    ADD CONSTRAINT "Produto_pkey" PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 590827)
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


-- Completed on 2023-07-17 21:13:59 UTC

--
-- PostgreSQL database dump complete
--

