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
    galaxy_id integer NOT NULL,
    galaxy_type character varying(30),
    age_in_millions_of_years integer,
    name character varying(30),
    size_in_lightyears integer NOT NULL,
    notes text
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
    name character varying(30) NOT NULL,
    inhabitable boolean,
    size text,
    tastes_like_cheese boolean,
    planet_id integer
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
    name character varying(30),
    inhabitable boolean,
    number_of_moons numeric,
    controlled_by_the_empire boolean NOT NULL,
    star_id integer
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
-- Name: spacefleet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacefleet (
    spacefleet_id integer NOT NULL,
    intergalactic_capable boolean,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.spacefleet OWNER TO freecodecamp;

--
-- Name: spacefleet_spacefleet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacefleet_spacefleet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacefleet_spacefleet_id_seq OWNER TO freecodecamp;

--
-- Name: spacefleet_spacefleet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacefleet_spacefleet_id_seq OWNED BY public.spacefleet.spacefleet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    life_phase character varying(30),
    galaxy_id integer,
    has_planets boolean NOT NULL
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
-- Name: spacefleet spacefleet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacefleet ALTER COLUMN spacefleet_id SET DEFAULT nextval('public.spacefleet_spacefleet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'spiral', 500, 'Milky Way', 200, 'Home Sweet Home');
INSERT INTO public.galaxy VALUES (2, 'double-helix', 3200, 'Plundor', 100, 'Far away');
INSERT INTO public.galaxy VALUES (3, 'horse nebula', 4000, 'Ye Old Scamper', 6500, 'Farther away');
INSERT INTO public.galaxy VALUES (4, 'nebula', 410, 'Toodloo', 800, 'Even Farther away');
INSERT INTO public.galaxy VALUES (5, 'spike', 9640, 'Hotpotatoe', 40, 'Yup Even Farther away');
INSERT INTO public.galaxy VALUES (6, 'e-squared', 290, 'JalepenoBay', 40, 'Yer Never Getting There');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'THE Moon', false, 'small', false, 1);
INSERT INTO public.moon VALUES (2, 'Marty', false, 'big', false, 3);
INSERT INTO public.moon VALUES (3, 'Gras', false, 'bigger', true, 3);
INSERT INTO public.moon VALUES (4, 'Cheddar', false, 'tiny', true, 10);
INSERT INTO public.moon VALUES (5, 'Mozz', false, 'Huge', true, 10);
INSERT INTO public.moon VALUES (6, 'Provalone', false, 'More than a mouthful', true, 10);
INSERT INTO public.moon VALUES (7, 'Montery', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (8, 'Jack', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (9, 'Pepper', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (10, 'Jack2', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (11, 'Gouda', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (12, 'Colby', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (13, 'Jack3', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (14, 'Swiss', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (15, 'Parm', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (16, 'SharpCheddar', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (17, 'MildCheddar', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (18, 'MediumCheddar', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (19, 'GoatCheese', false, 'normal', true, 10);
INSERT INTO public.moon VALUES (20, 'HeadCheese', false, 'normal', true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 0, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 2, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, 1, true, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 4, true, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 2, true, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 7, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus
', false, 10, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto
', false, 0, true, 1);
INSERT INTO public.planet VALUES (10, 'Zeeekeee
', false, 3, true, 2);
INSERT INTO public.planet VALUES (11, 'Noodles
', false, 1, true, 4);
INSERT INTO public.planet VALUES (12, 'Swagger
', false, 3, true, 3);


--
-- Data for Name: spacefleet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacefleet VALUES (1, false, 'NASA', 1);
INSERT INTO public.spacefleet VALUES (2, false, 'SpaceX', 1);
INSERT INTO public.spacefleet VALUES (3, false, 'VirginGalactic', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'normal', 1, true);
INSERT INTO public.star VALUES (2, 'Dune', 'nova', 2, true);
INSERT INTO public.star VALUES (3, 'Pluratus', 'supernova', 3, false);
INSERT INTO public.star VALUES (4, 'Blacky', 'Blackhole', 4, false);
INSERT INTO public.star VALUES (6, 'Tom-Ato', 'RedGiant', 5, false);
INSERT INTO public.star VALUES (7, 'Blanche', 'WhiteDwarf', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spacefleet_spacefleet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacefleet_spacefleet_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: spacefleet spacefleet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacefleet
    ADD CONSTRAINT spacefleet_name_key UNIQUE (name);


--
-- Name: spacefleet spacefleet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacefleet
    ADD CONSTRAINT spacefleet_pkey PRIMARY KEY (spacefleet_id);


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
-- Name: spacefleet spacefleet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacefleet
    ADD CONSTRAINT spacefleet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

