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
-- Name universe; Type DATABASE; Schema -; Owner freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

connect universe

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
-- Name aliens; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name aliens_alien_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name aliens_alien_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name galaxy; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    name character varying(50) NOT NULL,
    color character varying(30) DEFAULT 'black'character varying NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name galaxy_galaxy_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name moon; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(30),
    mass integer,
    description text,
    color character varying(30) DEFAULT 'yellow'character varying NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name moon_moon_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name moon_moon_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name planet; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    has_life boolean,
    age integer,
    color character varying(30) DEFAULT 'white'character varying NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name planet_planet_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name star; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age integer,
    color character varying(30) DEFAULT 'red'character varying NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name star_star_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name aliens aliens_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_alien_id_seq'regclass);


--
-- Name galaxy galaxy_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'regclass);


--
-- Name moon moon_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'regclass);


--
-- Name planet planet_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'regclass);


--
-- Name star star_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'regclass);


--
-- Data for Name aliens; Type TABLE DATA; Schema public; Owner freecodecamp
--

COPY public.aliens (aliens_id, planet_id, name, age) FROM stdin;
4	1	Marco	23
5	2	Laura	22
6	3	Mario	222
.


--
-- Data for Name galaxy; Type TABLE DATA; Schema public; Owner freecodecamp
--

COPY public.galaxy (galaxy_id, distance_from_earth, description, has_life, name, color) FROM stdin;
1	1223.1	Very kind galaxy	t	Andromeda	black
2	123.1	Dark galaxy	f	Sectepra	black
3	12.312	Light galaxy	f	Milky Way	black
4	12321.12	Really shitty galaxy	t	Optimus12	black
5	12312.15	Galaxy for the bros	t	Brolaxy	black
6	13974	Nightmare galaxy	t	Nightmarelaxy	black
.


--
-- Data for Name moon; Type TABLE DATA; Schema public; Owner freecodecamp
--

COPY public.moon (moon_id, planet_id, name, mass, description, color) FROM stdin;
1	1	moon1	234	fine	red
2	1	moon2	2323	fine	red
3	1	moon3	233	fine	green
4	1	moon4	299	fine	red
5	2	moon5	900	not fine	black
6	2	moon6	34	not fine	black
7	2	moon7	343	fine	black
8	2	moon8	423	fine	yellow
9	3	moon9	2323	fine	black
10	3	moon10	23232	fine	green
11	3	moon11	2323	fine	red
12	3	moon12	443	not fine	black
13	4	moon13	555	fine	black
14	2	moon14	2333	fine	green
15	2	moon15	43433	fine	black
16	2	moon16	222	fine	red
17	3	moon17	5455	fine	black
18	2	moon18	3222	fine	black
19	2	moon19	22	not fine	black
20	2	moon20	222	fine	green
.


--
-- Data for Name planet; Type TABLE DATA; Schema public; Owner freecodecamp
--

COPY public.planet (planet_id, star_id, name, has_life, age, color) FROM stdin;
1	1	terra1	t	13	black
2	1	terra2	t	10	black
3	2	terra3	t	102	black
4	2	terra4	t	129	red
5	1	terra5	f	10	yellow
6	1	terra6	f	1032	black
11	1	terra7	t	10	black
12	2	terra8	t	2323	black
13	1	terra9	f	129	red
14	1	terra10	f	122	red
15	1	terra11	f	155	green
16	1	terra12	f	11	red
.


--
-- Data for Name star; Type TABLE DATA; Schema public; Owner freecodecamp
--

COPY public.star (star_id, galaxy_id, name, distance_from_earth, age, color) FROM stdin;
1	1	Sun	123131	199999	red
2	1	Portinus	1232412	11222431	red
3	2	Proxima Centauri	86868543	12351666	red
4	2	Astrix	5654312	1335312	red
5	1	Orchid	123444111	12	red
6	2	Lumux	12444321	1222	red
.


--
-- Name aliens_alien_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 6, true);


--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name moon_moon_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name planet_planet_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name star_star_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name aliens aliens_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name aliens aliens_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name galaxy galaxy_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name galaxy galaxy_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name moon moon_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name moon moon_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name planet planet_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name planet planet_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name star star_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name star star_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name aliens aliens_planet_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name star star_galaxy_id_fkey; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name planet star_id; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

