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
    name character varying(255) NOT NULL,
    dfe_mpc numeric,
    app_mag numeric,
    des text
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
    name character varying(255) NOT NULL,
    disc_d integer,
    disc_n text,
    opd numeric,
    des text,
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
    name character varying(255) NOT NULL,
    dfs_km numeric,
    mass numeric,
    ring_sys boolean,
    gmf boolean,
    nom integer,
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
-- Name: ptv; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ptv (
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    ptv_id integer NOT NULL
);


ALTER TABLE public.ptv OWNER TO freecodecamp;

--
-- Name: ptv_ptv_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ptv_ptv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ptv_ptv_id_seq OWNER TO freecodecamp;

--
-- Name: ptv_ptv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ptv_ptv_id_seq OWNED BY public.ptv.ptv_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    dfe_ly integer,
    app_mag numeric,
    des text,
    galaxy_id integer
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
-- Name: ptv ptv_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ptv ALTER COLUMN ptv_id SET DEFAULT nextval('public.ptv_ptv_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Ursa Major III', 0.010, 18.87, 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Draco II', 0.0215, 15.87, 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 0.075, 13.8, 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 0.0229, 15.5, 'Satellite of Milky Way that is being tidally disrupted');
INSERT INTO public.galaxy VALUES (6, 'Sagittarius Dwarf Sphr', 0.078, 4.5, 'Satellite of Milky Way (partial accretion by Milky Way)');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.008, 'NaN', 'Home galaxy of Earth. Barred spiral galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 27.322, 'Earth', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 'Asaph Hall', 0.3189, 'Mars', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 'Asaph Hall', 1.2624, 'Mars', 4);
INSERT INTO public.moon VALUES (4, 'Callisto', 1610, 'Galileo', 16.689, 'Jupiter', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 'Galileo', 3.551, 'Jupiter', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 'Galileo', 7.155, 'Jupiter', 5);
INSERT INTO public.moon VALUES (7, 'Io', 1610, 'Galileo', 1.769, 'Jupiter', 5);
INSERT INTO public.moon VALUES (8, 'Elara', 1905, 'C.Perrine', 259.65, 'Jupiter', 5);
INSERT INTO public.moon VALUES (9, 'Metis', 1979, 'S.Sunnott', 0.295, 'Jupiter', 5);
INSERT INTO public.moon VALUES (10, 'Carpo', 2003, 'S. Sheppard, D. Jewitt, & J. Kleyna', 456.5, 'Jupiter', 5);
INSERT INTO public.moon VALUES (11, 'Atlas', 1980, 'R.Terrile', 0.602, 'Saturn', 6);
INSERT INTO public.moon VALUES (12, 'Phoebe', 1898, 'C.C. Porco et al./Cassini', 1.14, 'Saturn', 6);
INSERT INTO public.moon VALUES (13, 'Pandora', 1980, 'S. Collins', 0.629, 'Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Oberon', 1787, 'W. Herschel', 13.463, 'Uranus', 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 1851, 'W. Lassell', 2.520, 'Uranus', 7);
INSERT INTO public.moon VALUES (16, 'Titania', 1787, 'W. Herschel', 8.706, 'Uranus', 7);
INSERT INTO public.moon VALUES (17, 'Neso', 2002, 'Holman & Gladman et al', 9007.1, 'Neptune', 8);
INSERT INTO public.moon VALUES (18, 'Galatea', 1989, 'Voyager 2', 0.33, 'Neptune', 8);
INSERT INTO public.moon VALUES (19, 'Hydra', 2005, 'H.A. Weaver, S.A. Stern, et al.', 38.206, 'Pluto', 9);
INSERT INTO public.moon VALUES (20, 'Charon', 1978, 'J. Christy', 6.387, 'Pluto', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 57.9, 0.330, false, true, 0, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 108.2, 4.87, false, false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 222.8, 0.642, false, false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778.5, 1898, true, true, 95, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1432.0, 568, true, true, 146, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2867.0, 86.8, true, true, 28, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4515.0, 102, true, true, 16, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5906.4, 0.0130, false, false, 5, 1);
INSERT INTO public.planet VALUES (1, 'Earth', 149.6, 5.97, false, true, 1, 1);
INSERT INTO public.planet VALUES (10, 'Benji', 3599.0, 9999, false, true, 1, 5);
INSERT INTO public.planet VALUES (11, 'Chungus', 3899.9, 123, false, false, 0, 6);
INSERT INTO public.planet VALUES (12, 'Kappa', 19171.8, 456, false, false, 0, 6);


--
-- Data for Name: ptv; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ptv VALUES ('Earth', 1, 1);
INSERT INTO public.ptv VALUES ('Benji', 10, 2);
INSERT INTO public.ptv VALUES ('Chungus', 11, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4.83, 'The Sun is the star at the center of the Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Alioth', 81, 1.77, 'Alioth; brown dwarf, located in the Ursa Major III galaxy.', 2);
INSERT INTO public.star VALUES (3, 'γ Dra', 148, 2.24, 'Eltanin, located in the Draco galaxy', 3);
INSERT INTO public.star VALUES (4, 'α Tuc', 199, 2.87, 'Astrometric binary, located in the Tucana galaxy.', 4);
INSERT INTO public.star VALUES (5, 'bunnzor', 204, 1.69, 'Located in the Segue galaxy.', 5);
INSERT INTO public.star VALUES (6, 'bjorn', 214, 4.59, 'Located in the Sagittarius Dwarf galaxy.', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: ptv_ptv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ptv_ptv_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: ptv ptv_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ptv
    ADD CONSTRAINT ptv_name_key UNIQUE (name);


--
-- Name: ptv ptv_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ptv
    ADD CONSTRAINT ptv_pkey PRIMARY KEY (ptv_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

