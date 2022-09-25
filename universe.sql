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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    name character varying(30) NOT NULL,
    fifth_table_id integer NOT NULL,
    third_column integer
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    picture character varying(30),
    reported_year integer,
    distance numeric,
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
    planet_id integer,
    fourth_column integer,
    fifth_column integer,
    sixth_column integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    has_water boolean,
    population integer,
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    fourth_column integer,
    fifth_column integer,
    sixt_column integer
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES ('test1', 1, NULL);
INSERT INTO public.fifth_table VALUES ('test2', 2, NULL);
INSERT INTO public.fifth_table VALUES ('test3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'milkyWay.png', 1785, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool galaxy', 'whirlpool.png', 1845, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'cygnusA.png', 1951, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, '3C279', '3C279.png', 1971, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'III Zw 2', 'IIIZw2.png', 2000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fictional Galaxy 1', 'fgal1.png', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Titania', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', 7, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 79800, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, false, 0, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, false, 0, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 0, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, false, 0, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, false, 0, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 0, 1);
INSERT INTO public.planet VALUES (9, 'Centaurs', false, false, 0, 1);
INSERT INTO public.planet VALUES (10, 'Fictional', true, false, 0, 2);
INSERT INTO public.planet VALUES (11, 'Fictional planet2', true, true, 0, 2);
INSERT INTO public.planet VALUES (12, 'Fictional planet 3', false, false, 0, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Fictional star 1', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Fictional star 2', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Fictional star 3', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Fictional star 4', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Fictional star 5', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Fictional star 6', 5, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 2, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy dist_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT dist_galaxy_name UNIQUE (name);


--
-- Name: moon dist_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT dist_moon_name UNIQUE (name);


--
-- Name: fifth_table dist_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT dist_name UNIQUE (name);


--
-- Name: planet dist_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT dist_planet_name UNIQUE (name);


--
-- Name: star dist_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT dist_star_name UNIQUE (name);


--
-- Name: fifth_table fifth_table_fifth_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_fifth_table_id_key UNIQUE (fifth_table_id);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: fifth_table fifth_table_third_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_third_column_key UNIQUE (third_column);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_fifth_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fifth_column_key UNIQUE (fifth_column);


--
-- Name: moon moon_fourth_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fourth_column_key UNIQUE (fourth_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_sixth_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sixth_column_key UNIQUE (sixth_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_fifth_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fifth_column_key UNIQUE (fifth_column);


--
-- Name: star star_fourth_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fourth_column_key UNIQUE (fourth_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sixt_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sixt_column_key UNIQUE (sixt_column);


--
-- Name: star galaxyfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxyfk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planetfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planetfk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet starfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT starfk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

