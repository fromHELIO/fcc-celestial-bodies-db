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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    constellation text NOT NULL,
    type text,
    apparent_magnitude numeric
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
    name character varying NOT NULL,
    description text,
    planet_id integer,
    surface_area_millionsqkm numeric NOT NULL
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
    name character varying NOT NULL,
    moon_count integer,
    distance_millionkm integer,
    viewable_from_earth boolean NOT NULL,
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
    name character varying NOT NULL,
    age_billion_yrs numeric,
    has_planets boolean NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Cygnus X-1', 'Stellar');
INSERT INTO public.black_hole VALUES (2, 'Great Annihilator', 'Intermediate');
INSERT INTO public.black_hole VALUES (3, 'Sagittarius A', 'Supermassive');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Andromeda', 'SA(s)b', 3.44);
INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'Centaurus', 'SA(r)ab', 12.6);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'Coma Berenices', '(R)SA(rs)ab', 8.52);
INSERT INTO public.galaxy VALUES (4, 'Butterfly Galaxy', 'Virgo', 'SA(rs)bc / SA(rs)bc', 10.9);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Sagittarius', 'SB(rs)bc', -5);
INSERT INTO public.galaxy VALUES (6, 'Eye of God', 'Eridanus', 'SAB(rs)c', 10.9);
INSERT INTO public.galaxy VALUES (7, 'NGC 7213', 'Grus', 'SA(s)0^0', 10.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Covered in lunar dust with mountains, impact craters, and such.', 8, 38);
INSERT INTO public.moon VALUES (2, 'Europa', 'Smallest of the Galilean Moons', 2, 30.9);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'The only moon with a substantial magnetic field', 2, 87.2);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Nearly as large as Mercury.', 2, 73.05);
INSERT INTO public.moon VALUES (5, 'Io', 'Has over 400 active volcanoes', 2, 41.698);
INSERT INTO public.moon VALUES (6, 'Titan', 'Made of mostly ice and rocky material', 1, 83.3);
INSERT INTO public.moon VALUES (7, 'Dione', 'Marked by large cliffs and scarps called chasmata', 1, 3.96);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Has a nearly circular orbit but is tidally locked', 1, 7.32);
INSERT INTO public.moon VALUES (9, 'Iapetus', 'Leading and trailing hemispheres are different colors', 1, 6.77);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'One of the most reflective boides in the Solar System', 1, 0.0799);
INSERT INTO public.moon VALUES (11, 'Tethys', 'May have cryovolcanic smooth plains', 1, 3.56);
INSERT INTO public.moon VALUES (12, 'Phobos', 'Small and irregularly shaped', 4, 0.00164);
INSERT INTO public.moon VALUES (13, 'Deimos', 'Takes 30.3 hours to orbit Mars', 4, 0.000522);
INSERT INTO public.moon VALUES (14, 'Triton', 'May have once been a dwarf planet', 6, 23.018);
INSERT INTO public.moon VALUES (15, 'Proteus', 'Predominantly icy irregular polyhedron', 6, 0.5542);
INSERT INTO public.moon VALUES (16, 'Larissa', 'Heavily cratered with a near-circular orbit', 6, 0.1182);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Total surface area is roughly as large as Texas', 3, 0.6981);
INSERT INTO public.moon VALUES (18, 'Titania', 'Relatively dark and lightly red in color', 3, 7.82);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Likely formed the accretion disk around Uranus during its formation', 3, 7.285);
INSERT INTO public.moon VALUES (20, 'Ariel', 'Has an extreme seasonal cycle', 3, 4.211);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Saturn', 146, 1469, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 95, 615, true, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 28, 2801, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 225, true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 0, 38, true, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 16, 4471, false, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 0, 133, true, 1);
INSERT INTO public.planet VALUES (8, 'Earth', 1, 0, true, 1);
INSERT INTO public.planet VALUES (9, 'Arion / 18 Delphini b', 0, 2147483647, false, 7);
INSERT INTO public.planet VALUES (10, 'Saffar / Upsilon Andromeda b', 0, 418730582, false, 5);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 0, 40113368, false, 8);
INSERT INTO public.planet VALUES (12, 'Kepler-16b', 0, 2147483647, false, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.603, true, 5);
INSERT INTO public.star VALUES (2, 'Achernar', 0.03733, false, 6);
INSERT INTO public.star VALUES (3, 'Alnair', 0.1, false, 7);
INSERT INTO public.star VALUES (4, 'TRAPPIST-1', 7.605, true, 5);
INSERT INTO public.star VALUES (5, 'Upsilon Andromedae', 3.1, true, 2);
INSERT INTO public.star VALUES (6, 'Elgafar', 1.5, false, 4);
INSERT INTO public.star VALUES (7, '18 Delphini', 0.65, true, 5);
INSERT INTO public.star VALUES (8, 'Proxima Centauri', 4.853, true, 5);
INSERT INTO public.star VALUES (9, 'Kepler-16', 2, true, 5);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

