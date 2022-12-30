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
-- Name: additional; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional (
    additional_id integer NOT NULL,
    name character varying(100) NOT NULL,
    add_no integer NOT NULL
);


ALTER TABLE public.additional OWNER TO freecodecamp;

--
-- Name: additional_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_id_seq OWNER TO freecodecamp;

--
-- Name: additional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_id_seq OWNED BY public.additional.additional_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    distance_from_earth integer,
    has_life boolean,
    distance_from_sun numeric(9,0),
    description text
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
    name character varying(100),
    age integer,
    distance_from_earth integer,
    has_life boolean,
    planet_id integer NOT NULL,
    distance_from_sun numeric(9,0),
    description text
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
    name character varying(100),
    age integer,
    distance_from_earth integer,
    has_life boolean,
    star_id integer NOT NULL,
    distance_from_sun numeric(9,0),
    description text
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
    name character varying(100),
    age integer,
    distance_from_earth integer,
    has_life boolean,
    galaxy_id integer NOT NULL,
    distance_from_sun numeric(9,0),
    description text
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
-- Name: additional additional_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional ALTER COLUMN additional_id SET DEFAULT nextval('public.additional_id_seq'::regclass);


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
-- Data for Name: additional; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional VALUES (1, 'hahaha', 1);
INSERT INTO public.additional VALUES (2, 'hahaha1', 2);
INSERT INTO public.additional VALUES (3, 'hahaah2', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'bimasakti', 10000000, 1000000, true, 1000000, 'bimasakti ini ces');
INSERT INTO public.galaxy VALUES (2, 'amore', 10000000, 1000000, true, 1000000, 'amore ini ces');
INSERT INTO public.galaxy VALUES (3, 'amoru', 10000000, 1000000, true, 1000000, 'amoru ini ces');
INSERT INTO public.galaxy VALUES (4, 'namet', 10000000, 1000000, true, 1000000, '');
INSERT INTO public.galaxy VALUES (5, 'A', 10000000, 1000000, true, 1000000, '');
INSERT INTO public.galaxy VALUES (6, 'B', 10000000, 1000000, true, 1000000, '');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'bulan', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (2, 'bulan2', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (3, 'bulan3', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (4, 'bulan4', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (5, 'bulan5', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (7, 'bulan6', 1000, 1000, true, 1, 1000, NULL);
INSERT INTO public.moon VALUES (9, 'bulan7', 1000, 1000, true, 3, 1000, NULL);
INSERT INTO public.moon VALUES (10, 'bulan8', 1000, 1000, true, 3, 1000, NULL);
INSERT INTO public.moon VALUES (11, 'bulan9', 1000, 1000, true, 3, 1000, NULL);
INSERT INTO public.moon VALUES (12, 'bulan10', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (13, 'bulan11', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (14, 'bulan12', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (15, 'bulan13', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (16, 'bulan14', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (17, 'bulan15', 1000, 1000, true, 4, 1000, NULL);
INSERT INTO public.moon VALUES (19, 'bulan16', 1000, 1000, true, 5, 1000, NULL);
INSERT INTO public.moon VALUES (20, 'bulan17', 1000, 1000, true, 5, 1000, NULL);
INSERT INTO public.moon VALUES (21, 'bulan18', 1000, 1000, true, 5, 1000, NULL);
INSERT INTO public.moon VALUES (22, 'bulan19', 1000, 1000, true, 5, 1000, NULL);
INSERT INTO public.moon VALUES (23, 'bulan20', 1000, 1000, true, 5, 1000, NULL);
INSERT INTO public.moon VALUES (24, 'bulan21', 1000, 1000, true, 5, 1000, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1000, 1000, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth2', 1000, 1000, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'earth3', 1000, 1000, true, 3, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'earth4', 1000, 1000, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'earth5', 1000, 1000, true, 5, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'earth6', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'earth7', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'earth8', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'earth9', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'earth10', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'earth11', 1000, 1000, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'earth12', 1000, 1000, true, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 10000, 10000, true, 1, 10000, '');
INSERT INTO public.star VALUES (2, 'sun2', 10000, 10000, true, 2, 10000, '');
INSERT INTO public.star VALUES (3, 'sun3', 10000, 10000, true, 3, 10000, '');
INSERT INTO public.star VALUES (4, 'sun4', 10000, 10000, true, 4, 10000, '');
INSERT INTO public.star VALUES (5, 'sun5', 10000, 10000, true, 5, 10000, '');
INSERT INTO public.star VALUES (6, 'sun6', 10000, 10000, true, 6, 10000, '');


--
-- Name: additional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: additional additional_add_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_add_no_key UNIQUE (add_no);


--
-- Name: additional additional_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_name_key UNIQUE (name);


--
-- Name: additional additional_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional
    ADD CONSTRAINT additional_pkey PRIMARY KEY (additional_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

