--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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
-- Name: personagem; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personagem (
    nome character varying(30) NOT NULL,
    vida integer NOT NULL,
    id_personagem integer NOT NULL,
    id_status_fk integer NOT NULL,
    ac integer NOT NULL
);


--
-- Name: personagem_id_personagem_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personagem_id_personagem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personagem_id_personagem_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personagem_id_personagem_seq OWNED BY public.personagem.id_personagem;


--
-- Name: personagem_id_status_fk_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personagem_id_status_fk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personagem_id_status_fk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personagem_id_status_fk_seq OWNED BY public.personagem.id_status_fk;


--
-- Name: status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.status (
    id_status integer NOT NULL,
    forca integer NOT NULL,
    const integer NOT NULL,
    destreza integer NOT NULL,
    agilidade integer NOT NULL,
    sabedoria integer NOT NULL,
    inteligencia integer NOT NULL
);


--
-- Name: status_id_status_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.status_id_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: status_id_status_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.status_id_status_seq OWNED BY public.status.id_status;


--
-- Name: personagem id_personagem; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personagem ALTER COLUMN id_personagem SET DEFAULT nextval('public.personagem_id_personagem_seq'::regclass);


--
-- Name: personagem id_status_fk; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personagem ALTER COLUMN id_status_fk SET DEFAULT nextval('public.personagem_id_status_fk_seq'::regclass);


--
-- Name: status id_status; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status ALTER COLUMN id_status SET DEFAULT nextval('public.status_id_status_seq'::regclass);


--
-- Name: personagem personagem_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT personagem_pkey PRIMARY KEY (id_personagem);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id_status);


--
-- Name: personagem personagem_id_status_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personagem
    ADD CONSTRAINT personagem_id_status_fk_fkey FOREIGN KEY (id_status_fk) REFERENCES public.status(id_status);


--
-- PostgreSQL database dump complete
--

