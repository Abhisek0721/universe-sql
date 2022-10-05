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
    name character varying(255) NOT NULL,
    radius integer,
    mass integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: image; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.image (
    image_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type character varying(10)
);


ALTER TABLE public.image OWNER TO freecodecamp;

--
-- Name: image_image_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.image_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_image_id_seq OWNER TO freecodecamp;

--
-- Name: image_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.image_image_id_seq OWNED BY public.image.image_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer,
    mass integer,
    temp_in_kelvin numeric,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer,
    mass integer,
    temp_in_kelvin numeric,
    is_dwarf boolean,
    has_moon boolean,
    star_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer,
    mass integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: image image_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image ALTER COLUMN image_id SET DEFAULT nextval('public.image_image_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, 'It is a spiral galaxy where our solar system is included.');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', NULL, NULL, 'Closest galaxy from milky way.');
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sag DEG', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Segue 1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, 'It is a barred spiral galaxy.');


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.image VALUES (1, 'titan.jpg', 'moon');
INSERT INTO public.image VALUES (2, 'jupiter.jpeg', 'planet');
INSERT INTO public.image VALUES (3, 'saturn.jpg', 'planet');
INSERT INTO public.image VALUES (4, 'earth.jpg', 'planet');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Mimas', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Phoebe', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Dione', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Fenrir', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (12, 'Telesto', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Loge', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (14, 'Europa', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Io', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Callisto', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Cyllene', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 1, 'Natural Satellite of Earth');
INSERT INTO public.moon VALUES (16, 'Ganymede', NULL, NULL, NULL, 6, 'Largest Satellite of Solar System');
INSERT INTO public.moon VALUES (4, 'Titan', NULL, NULL, NULL, 5, 'Largest Satellite of Saturn.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6400, NULL, 288, false, true, 1, 'Life exist in this planet.');
INSERT INTO public.planet VALUES (2, 'Mercury', 2440, NULL, 740, false, false, 1, 'Nearest to sun');
INSERT INTO public.planet VALUES (3, 'Venus', 6052, NULL, 737, false, false, 1, 'Nearest to Earth');
INSERT INTO public.planet VALUES (4, 'Mars', 3390, NULL, 210, false, true, 1, 'Also know as Red Planet');
INSERT INTO public.planet VALUES (5, 'Saturn', 58232, NULL, 134, false, true, 1, 'Ring Planet');
INSERT INTO public.planet VALUES (6, 'Jupiter', 69911, NULL, 200, false, true, 1, 'Largest planet of sun solar system');
INSERT INTO public.planet VALUES (7, 'Pluto', 1188, NULL, 44, true, false, 1, 'It is dwarf planet');
INSERT INTO public.planet VALUES (8, 'Proxima b', NULL, NULL, NULL, true, false, 2, 'It is a super-earth exoplanet');
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, NULL, NULL, false, true, 1, 'Seventh planet of our solar system.');
INSERT INTO public.planet VALUES (10, 'Neptune', NULL, NULL, NULL, false, true, 1, 'Last and Eight planet of our solar system.');
INSERT INTO public.planet VALUES (11, 'Proxima c', NULL, NULL, NULL, false, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima d', NULL, NULL, NULL, false, false, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 696340, NULL, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 107280, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sirius A&B', NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'VI Canis Majoris', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'Delta Canis Majoris', NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'Antares', NULL, NULL, 2);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: image_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.image_image_id_seq', 4, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: image image_image_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_image_id_key UNIQUE (image_id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (image_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

