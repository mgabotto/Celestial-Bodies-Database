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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    constellation character varying(20),
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
    name character varying(20) NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric,
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_mpc integer,
    galaxy_id integer,
    bright numeric(3,2)
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    galaxy_id integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'It has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus, giving rise to its nicknames of the "Black Eye" or "Evil Eye" galaxy.', 'Backward Galaxy', 'Also known as "Bear Claw Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'Appears similar in shape to a cigar.', 'Backward Galaxy', 'Also known as "Bear Claw Galaxy');
INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda, which is shortened from "Andromeda islaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'Appearance is similar to an insects antennae.', 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');
INSERT INTO public.galaxy VALUES (4, 'Bear Paw Galaxy', 'It resembles the appearance of a bears claw.', 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', true, 384399, 11);
INSERT INTO public.moon VALUES (2, 'Deimos', true, 938, 1);
INSERT INTO public.moon VALUES (3, 'Io', true, 2346, 11);
INSERT INTO public.moon VALUES (4, 'Europa', true, 4218, 2);
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 6711, 6);
INSERT INTO public.moon VALUES (6, 'Callisto', false, 1070400, 1);
INSERT INTO public.moon VALUES (7, 'Amalthea', true, 1882700, 8);
INSERT INTO public.moon VALUES (8, 'Himalia', true, 1814, 4);
INSERT INTO public.moon VALUES (9, 'Elara', false, 11461000, 11);
INSERT INTO public.moon VALUES (10, 'Pasiphae', true, 11741000, 10);
INSERT INTO public.moon VALUES (11, 'Sinope', true, 23624000, 11);
INSERT INTO public.moon VALUES (12, 'Lysithea', true, 23939000, 7);
INSERT INTO public.moon VALUES (13, 'Megaclitee', true, 23493000, 11);
INSERT INTO public.moon VALUES (14, 'Taygeteee', true, 938, 10);
INSERT INTO public.moon VALUES (15, 'Chaldenewe', true, 2346, 5);
INSERT INTO public.moon VALUES (16, 'Harpalyke', true, 4218, 3);
INSERT INTO public.moon VALUES (17, 'Callirrhoe', true, 6711, 5);
INSERT INTO public.moon VALUES (18, 'Themisto', true, 1070400, 11);
INSERT INTO public.moon VALUES (19, 'Megaclite', true, 1882700, 9);
INSERT INTO public.moon VALUES (20, 'Taygeteds', true, 1814, 5);
INSERT INTO public.moon VALUES (21, 'Chaldene', true, 11461000, 1);
INSERT INTO public.moon VALUES (22, 'Hbarpalyke', true, 11741000, 10);
INSERT INTO public.moon VALUES (23, 'Ksdalyke', true, 23624000, 1);
INSERT INTO public.moon VALUES (24, 'Iocaste', true, 23939000, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 1000, false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 2000, true, 3);
INSERT INTO public.planet VALUES (7, 'Saturn', 5000, false, 5);
INSERT INTO public.planet VALUES (3, 'Neptune', 8000, false, 6);
INSERT INTO public.planet VALUES (4, 'Earth', 800, true, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 8544, false, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', 2342, false, 5);
INSERT INTO public.planet VALUES (8, 'Cetus', 1000, false, 2);
INSERT INTO public.planet VALUES (9, 'Aquarius', 2000, true, 5);
INSERT INTO public.planet VALUES (10, 'Libra', 5000, false, 5);
INSERT INTO public.planet VALUES (16, 'Watso', 8000, false, 6);
INSERT INTO public.planet VALUES (11, 'Martin', 800, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ophiuchi', 800, 6, -2.11);
INSERT INTO public.star VALUES (2, 'Draconis', 100, 1, -1.46);
INSERT INTO public.star VALUES (3, 'Indi', 600, 4, -0.74);
INSERT INTO public.star VALUES (4, 'Procyon', 300, 3, -0.50);
INSERT INTO public.star VALUES (5, 'Cygni', 450, 2, -0.50);
INSERT INTO public.star VALUES (6, 'Eridani', 200, 1, -0.50);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun1', 4235234, 2);
INSERT INTO public.sun VALUES (2, 'sun2', 426223, 1);
INSERT INTO public.sun VALUES (3, 'sun3', 612341, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

