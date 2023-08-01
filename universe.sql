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
-- Name: astronauts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronauts (
    astronauts_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    is_active boolean,
    age integer NOT NULL,
    height numeric(5,2) NOT NULL
);


ALTER TABLE public.astronauts OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronauts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronauts_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronauts_id_seq OWNED BY public.astronauts.astronauts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    galaxy_types character varying(60) NOT NULL,
    distance_from_earth numeric(7,2) NOT NULL
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
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_years integer NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    planet_types character varying(60) NOT NULL,
    distance_from_earth numeric(7,2) NOT NULL,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(7,2) NOT NULL,
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
-- Name: astronauts astronauts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts ALTER COLUMN astronauts_id SET DEFAULT nextval('public.astronauts_astronauts_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: astronauts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronauts VALUES (1, 'John Doe', 'Astronauts on a space mission...', true, 34, 175.50);
INSERT INTO public.astronauts VALUES (2, 'Jane Smith', 'Former astronaut, now a scientist...', false, 48, 163.30);
INSERT INTO public.astronauts VALUES (3, 'Sasuke Uchiwa', 'New recruit for upcoming space programme...', true, 16, 176.25);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is a spiral galaxy...', false, true, 2200, 'Spiral', 2.54);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'The Milky Way is the galaxy...', true, false, 13000, 'Spiral', 0.03);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'The Triangulum galaxy is a spiral galaxy...', false, true, 4000, 'Spriral', 3.16);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Centaurus A is a peculiar galaxy...', false, false, 12000, 'Elliptical', 3.86);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'The whirlpool galaxy is spiral galaxy...', false, true, 23000, 'Spiral', 31.42);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'The Sombrero is an unbarred spiral', false, true, 28000, 'Spiral', 9.99);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth s natural satellite...', false, true, 4500, 384400.00, 1);
INSERT INTO public.moon VALUES (2, 'Titan', 'Saturne s largest moon...', false, true, 4400, 1272000.00, 4);
INSERT INTO public.moon VALUES (3, 'Europa', 'One of Jupiter s moons...', false, false, 4200, 671100.00, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Jupiter s largest moon...', false, true, 4100, 1070400.00, 3);
INSERT INTO public.moon VALUES (5, 'Enceladus', 'Moon of Saturne with subsurface ocean...', false, true, 100, 1272000.00, 4);
INSERT INTO public.moon VALUES (6, 'Io', 'One of Jupiter s four Galilean moons...', false, true, 100, 421700.00, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'One of Jupiter s four Galilean moons...', false, true, 4100, 1883000.00, 3);
INSERT INTO public.moon VALUES (8, 'Triton', 'Nepturne s largest moon...', false, true, 4500, 354800.00, 5);
INSERT INTO public.moon VALUES (9, 'Phobos', 'One of Mars moons...', false, true, 4500, 9378.00, 2);
INSERT INTO public.moon VALUES (10, 'Deimos', 'One of Mars moons...', false, true, 4500, 23459.00, 2);
INSERT INTO public.moon VALUES (11, 'Charon', 'Pluto s largest moon...', false, true, 100, 19563.00, 8);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Saturn s second-largest moon...', false, true, 4100, 1527000.00, 4);
INSERT INTO public.moon VALUES (13, 'Titania', 'Uranus largest moon...', false, true, 100, 436300.00, 6);
INSERT INTO public.moon VALUES (14, 'Oberon', 'Uranus second-largest moon...', false, true, 100, 583500.00, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 'Saturn s third-largest moon...', false, true, 4600, 3561300.00, 4);
INSERT INTO public.moon VALUES (16, 'Dione', 'One of Saturn s mid-sized moons...', false, true, 100, 1123900.00, 4);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Saturn s fifth-largest moon...', false, true, 100, 1168000.00, 4);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Uranus fifth-largest moon...', false, true, 100, 129900.00, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', 'Uranus fourth-largest moon...', false, true, 100, 191000.00, 6);
INSERT INTO public.moon VALUES (20, 'Umbriel', 'Uranus third-largest moon...', false, true, 100, 266000.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the sun...', true, true, 4500, 'Terrestrial', 0.00, 6);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars is often called the red planet...', false, true, 4000, 'Terrestrial', 54.60, 6);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Jupiter is the largest planet in our...', false, true, 4600, 'Gas Giant', 628.73, 6);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Saturn is known for its beautiful...', false, true, 4300, 'Gas Giant', 1278.70, 6);
INSERT INTO public.planet VALUES (5, 'Venus', 'Venus is the second planet from the Sun...', false, true, 4700, 'Terrestrial', 108.20, 6);
INSERT INTO public.planet VALUES (6, 'Nepturne', 'Nepturne is the eighth and farthest...', false, true, 5200, 'Ice Giant', 2816.20, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet...', false, true, 4100, 'Ice Giant', 2816.00, 6);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Mercury is the smallest and closest...', false, true, 3900, 'Terrestrial', 77.30, 6);
INSERT INTO public.planet VALUES (9, 'Pluton', 'Pluton was considered the ninth planet...', false, true, 4700, 'Dwarf', 5903.00, 6);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 'An exoplanet located whithin the abitable...', false, false, 11, 'exoplanet', 600.00, 4);
INSERT INTO public.planet VALUES (12, 'Proxima Centuri b', 'An exoplanete orbiting the star Proxima...', false, false, 4, 'exoplanet', 4.24, 4);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 'An exoplanet orbiting the star...', false, false, 15, 'exoplanet', 153.00, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Sun', 'The Sun is the star at center of...', true, 4600, 0.00, 3);
INSERT INTO public.star VALUES (1, 'Sirius', 'Sirius is the brightest star in the night sky...', true, 200, 8.60, 3);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Betelgeuse is a red super giant star...', true, 800, 643.70, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'proxima Centuri is a red dwarf star...', true, 400, 4.20, 3);
INSERT INTO public.star VALUES (3, 'Vega', 'Vega is the fifth brightest star in the sky...', true, 455, 25.30, 3);
INSERT INTO public.star VALUES (5, 'HD 209458', 'HD 209458, also known as Osiris, is a G-type star...', true, 7000, 153.00, 3);


--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronauts_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronauts astronauts_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_name_key UNIQUE (name);


--
-- Name: astronauts astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronauts_id);


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

