--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: add_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.add_info (
    add_info_id integer NOT NULL,
    descr text NOT NULL,
    hehe text NOT NULL,
    name character varying(40)
);


ALTER TABLE public.add_info OWNER TO freecodecamp;

--
-- Name: add_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.add_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add_info_id_seq OWNER TO freecodecamp;

--
-- Name: add_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.add_info_id_seq OWNED BY public.add_info.add_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_billion_years numeric NOT NULL,
    number_of_stars integer NOT NULL,
    is_spiral boolean NOT NULL,
    has_life boolean NOT NULL,
    dfe integer,
    tg integer,
    descr text
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
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    age_in_billion_years numeric NOT NULL,
    is_spiral boolean NOT NULL,
    has_life boolean NOT NULL,
    dfe integer,
    tg integer,
    descr text
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
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    age_in_billion_years numeric NOT NULL,
    is_spiral boolean NOT NULL,
    has_life boolean NOT NULL,
    dfe integer,
    tg integer,
    descr text
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
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_billion_years numeric NOT NULL,
    is_spiral boolean NOT NULL,
    has_life boolean NOT NULL,
    dfe integer,
    tg integer,
    descr text
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: add_info add_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.add_info ALTER COLUMN add_info_id SET DEFAULT nextval('public.add_info_id_seq'::regclass);


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
-- Data for Name: add_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.add_info VALUES (1, 'mana', 'ksheer', NULL);
INSERT INTO public.add_info VALUES (2, 'munni', 'manas', NULL);
INSERT INTO public.add_info VALUES (3, 'm', 'kkm', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'three', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'four', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'five', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'six', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'seven', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'eight', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'nine', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'ten', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'ele', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'twel', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'thirt', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'fourt', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'fift', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'sixt', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'sevent', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'eighte', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'ninet', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'twen', 12.0, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'two', 12.0, 100000, true, true, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 1, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'two', 2, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'three', 3, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'four', 4, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'five', 5, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'six', 6, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'seven', 7, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'eight', 8, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'nine', 9, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'ten', 10, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ele', 11, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'twe', 12, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'thirt', 13, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'fourt', 14, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'fift', 15, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'sixt', 16, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'sevent', 17, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'eighte', 18, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'ninet', 19, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'twent', 20, 10000, true, true, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'one', 1, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'two', 21, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'three', 22, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'four', 24, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'five', 25, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'six', 26, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'seven', 27, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'eight', 28, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'nine', 20, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'ten', 29, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'onee', 31, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'twoo', 33, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'threee', 32, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'fourr', 34, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'fivee', 35, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'sixt', 36, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'sevent', 37, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'eighte', 38, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'ninet', 30, 10000, true, true, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'tene', 23, 10000, true, true, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'one', 1, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'two', 2, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, 'three', 21, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (22, 'four', 4, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (23, 'five', 5, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (24, 'six', 6, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (25, 'seven', 7, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (26, 'eight', 8, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (27, 'nine', 9, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (28, 'ten', 10, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (29, 'twoo', 12, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (30, 'threee', 13, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (31, 'fourt', 14, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (32, 'fivee', 15, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (33, 'sixt', 16, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (34, 'sevent', 17, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (35, 'eighte', 18, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (36, 'ninet', 19, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (37, 'tene', 20, 100000, true, true, NULL, NULL, NULL);
INSERT INTO public.star VALUES (38, 'onee', 11, 100000, true, true, NULL, NULL, NULL);


--
-- Name: add_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.add_info_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 38, true);


--
-- Name: add_info add_info_descr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.add_info
    ADD CONSTRAINT add_info_descr_key UNIQUE (descr);


--
-- Name: add_info add_info_hehe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.add_info
    ADD CONSTRAINT add_info_hehe_key UNIQUE (hehe);


--
-- Name: add_info add_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.add_info
    ADD CONSTRAINT add_info_pkey PRIMARY KEY (add_info_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

