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
CREATE TABLE public.categorias (
    "idCategoria" integer NOT NULL,
    descripcion character varying(45) NOT NULL,
    estado boolean NOT NULL
);
CREATE SEQUENCE public."categorias_idCategoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."categorias_idCategoria_seq" OWNED BY public.categorias."idCategoria";
CREATE TABLE public.productos (
    "idProdcuto" integer NOT NULL,
    nombre character varying(45),
    "idCategoria" integer NOT NULL,
    "codigoBarras" character varying(150),
    "precioVenta" numeric(16,2),
    "cantidadStock" integer NOT NULL,
    estado boolean
);
CREATE SEQUENCE public."productos_idProdcuto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public."productos_idProdcuto_seq" OWNED BY public.productos."idProdcuto";
ALTER TABLE ONLY public.categorias ALTER COLUMN "idCategoria" SET DEFAULT nextval('public."categorias_idCategoria_seq"'::regclass);
ALTER TABLE ONLY public.productos ALTER COLUMN "idProdcuto" SET DEFAULT nextval('public."productos_idProdcuto_seq"'::regclass);
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY ("idCategoria");
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY ("idProdcuto");
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "FK_PRODUCTOS_CATEGORIAS" FOREIGN KEY ("idCategoria") REFERENCES public.categorias("idCategoria");