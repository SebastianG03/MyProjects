--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_in_light_years numeric NOT NULL,
    description text NOT NULL,
    age_in_million_year integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    has_water boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_in_light_years numeric NOT NULL,
    description text NOT NULL,
    age_in_million_year integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    has_water boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_in_light_years numeric NOT NULL,
    description text NOT NULL,
    age_in_million_year integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    has_light boolean NOT NULL,
    distance_in_light_years numeric NOT NULL,
    description text NOT NULL,
    age_in_million_year integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    name character varying(40) NOT NULL,
    universe_id integer NOT NULL,
    has_life boolean NOT NULL,
    number_of_galaxys integer NOT NULL,
    description text NOT NULL,
    age_in_million_years integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Reiua', 1, true, 432, 'fewa', NULL);
INSERT INTO public.galaxy VALUES ('Rntio', 2, true, 543, 'Reans', NULL);
INSERT INTO public.galaxy VALUES ('Ferieadd', 3, false, 123, 'pwa', NULL);
INSERT INTO public.galaxy VALUES ('Value', 4, false, 603, 'Reit', NULL);
INSERT INTO public.galaxy VALUES ('Nuliues', 5, false, 590, 'Freao', NULL);
INSERT INTO public.galaxy VALUES ('Trapacio', 6, true, 421, 'olei', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europa', 1, true, false, 32, 'empty', NULL);
INSERT INTO public.moon VALUES ('Reail', 2, true, false, 43, 'wead', NULL);
INSERT INTO public.moon VALUES ('Eire', 3, false, false, 54, 'rear', NULL);
INSERT INTO public.moon VALUES ('Lost', 4, true, false, 54, 'weed', NULL);
INSERT INTO public.moon VALUES ('Frear', 5, false, false, 76, 'reasta', NULL);
INSERT INTO public.moon VALUES ('Ignis', 6, false, false, 91, 'roseta', NULL);
INSERT INTO public.moon VALUES ('Europe', 7, true, false, 532, 'fsaf2ty', NULL);
INSERT INTO public.moon VALUES ('Rena', 8, true, false, 33, 'weayd', NULL);
INSERT INTO public.moon VALUES ('Arion', 9, false, false, 53, 'rLoa', NULL);
INSERT INTO public.moon VALUES ('Poblie', 10, true, false, 42, 'wefewed', NULL);
INSERT INTO public.moon VALUES ('Rosie', 11, false, false, 76, 'rerw', NULL);
INSERT INTO public.moon VALUES ('Ignos', 12, false, false, 71, 'rteSa', NULL);
INSERT INTO public.moon VALUES ('Asiomeito', 13, true, false, 542, 'ffawaf2ty', NULL);
INSERT INTO public.moon VALUES ('Seigomea', 14, true, false, 914, 'weaydgrse', NULL);
INSERT INTO public.moon VALUES ('Ario', 15, false, false, 752, 'r6bfd', NULL);
INSERT INTO public.moon VALUES ('Anlou', 16, true, false, 75, 'terf', NULL);
INSERT INTO public.moon VALUES ('Plutonite', 17, false, false, 66, 'rfw', NULL);
INSERT INTO public.moon VALUES ('Saturnus Micro', 18, false, false, 42, 'rtfawa', NULL);
INSERT INTO public.moon VALUES ('Luna 1', 19, true, false, 52, 'fffeae4', NULL);
INSERT INTO public.moon VALUES ('Ignatys', 20, true, false, 503, 'wetwe1', NULL);
INSERT INTO public.moon VALUES ('Arlan', 21, false, false, 1789, 'fpeaow3', NULL);
INSERT INTO public.moon VALUES ('Fleiro', 22, true, false, 73, 'tloap', NULL);
INSERT INTO public.moon VALUES ('Preosei', 23, false, false, 631, 'polor', NULL);
INSERT INTO public.moon VALUES ('Saturnus Nanoo', 24, false, false, 312, 'rttas', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Jupiter', 2, false, false, 12, 'awas', 32);
INSERT INTO public.planet VALUES ('Urano', 3, false, false, 13, 'aswqe', 43);
INSERT INTO public.planet VALUES ('Saturno', 4, false, false, 10, 'qworp', 40);
INSERT INTO public.planet VALUES ('Vegita', 6, true, false, 1002, 'awagrss', 4320);
INSERT INTO public.planet VALUES ('Kripton', 7, true, true, 432, 'asgsewqe', 4309);
INSERT INTO public.planet VALUES ('Namekusein', 8, true, true, 532, 'qwdwap', 2340);
INSERT INTO public.planet VALUES ('Solaris', 9, true, true, 145672, 'agess', 642);
INSERT INTO public.planet VALUES ('Kripto', 10, false, true, 653, 'asgeaqe', 439);
INSERT INTO public.planet VALUES ('Agatha', 11, true, true, 5352, 'qwdte', 9546);
INSERT INTO public.planet VALUES ('Arion', 12, false, true, 9521, 'agesghs', 632);
INSERT INTO public.planet VALUES ('Marte', 13, true, false, 98, 'asgvesqe', 409);
INSERT INTO public.planet VALUES ('Pluto', 14, false, false, 542, 'qfeaswdte', 95);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Rena', 1, true, 432, 'fewa', NULL, 1);
INSERT INTO public.star VALUES ('Reia', 2, true, 543, 'Reans', NULL, 2);
INSERT INTO public.star VALUES ('Freid', 3, false, 123, 'pwa', NULL, 3);
INSERT INTO public.star VALUES ('Proble', 4, false, 603, 'Reit', NULL, 4);
INSERT INTO public.star VALUES ('Sigmus', 5, false, 590, 'Freao', NULL, 5);
INSERT INTO public.star VALUES ('Treua', 6, true, 421, 'olei', NULL, 6);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES ('U1', 1, true, 129, 'null', NULL);
INSERT INTO public.universe VALUES ('U2', 2, true, 1023, 'IDK', NULL);
INSERT INTO public.universe VALUES ('U7', 3, false, 423, 'Maybe', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_description_key UNIQUE (description);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

