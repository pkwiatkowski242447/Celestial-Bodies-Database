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
    name character varying(20),
    age numeric(4,2),
    radius_in_light_years integer NOT NULL,
    distance_in_mln_of_years numeric(4,2)
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
    planet_id integer NOT NULL,
    name character varying(30),
    age numeric(3,1),
    has_life boolean
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
    star_id integer NOT NULL,
    planet_type_id integer,
    name character varying(30),
    age numeric(3,1),
    has_life boolean
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_type_id integer,
    name character varying(30),
    age numeric(3,1)
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_type_id_seq OWNED BY public.star_type.star_type_id;


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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.60, 60000, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 9.50, 76000, 2.54);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 12.50, 30550, 2.73);
INSERT INTO public.galaxy VALUES (4, 'Whirpool Galaxy', 0.40, 30000, 23.00);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 3.00, 95000, 21.00);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 8.00, 32000, 28.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 4.5, false);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 4.5, false);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 4.5, false);
INSERT INTO public.moon VALUES (4, 5, 'Io', 4.5, false);
INSERT INTO public.moon VALUES (5, 5, 'Europe', 4.5, false);
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 4.5, false);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 4.5, false);
INSERT INTO public.moon VALUES (8, 5, 'Amalthea', 4.5, false);
INSERT INTO public.moon VALUES (9, 5, 'Himalia', 4.5, false);
INSERT INTO public.moon VALUES (10, 5, 'Elara', 4.5, false);
INSERT INTO public.moon VALUES (11, 6, 'Mimas', 4.5, false);
INSERT INTO public.moon VALUES (12, 6, 'Enceladus', 4.5, false);
INSERT INTO public.moon VALUES (13, 6, 'Tethys', 4.5, false);
INSERT INTO public.moon VALUES (14, 6, 'Dione', 4.5, false);
INSERT INTO public.moon VALUES (15, 6, 'Rhea', 4.5, false);
INSERT INTO public.moon VALUES (16, 6, 'Titan', 4.5, false);
INSERT INTO public.moon VALUES (17, 6, 'Iapetus', 4.5, false);
INSERT INTO public.moon VALUES (18, 8, 'Ariel', 4.5, false);
INSERT INTO public.moon VALUES (19, 8, 'Umbriel', 4.5, false);
INSERT INTO public.moon VALUES (20, 8, 'Titania', 4.5, false);
INSERT INTO public.moon VALUES (21, 8, 'Oberon', 4.5, false);
INSERT INTO public.moon VALUES (22, 8, 'Miranda', 4.5, false);
INSERT INTO public.moon VALUES (23, 7, 'Triton', 4.5, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 6, 'Earth', 4.5, true);
INSERT INTO public.planet VALUES (2, 1, 6, 'Mercury', 4.5, false);
INSERT INTO public.planet VALUES (3, 1, 6, 'Venus', 4.5, false);
INSERT INTO public.planet VALUES (4, 1, 6, 'Mars', 4.5, false);
INSERT INTO public.planet VALUES (5, 1, 1, 'Jupiter', 4.5, false);
INSERT INTO public.planet VALUES (6, 1, 1, 'Saturn', 4.5, false);
INSERT INTO public.planet VALUES (7, 1, 2, 'Neputune', 4.5, false);
INSERT INTO public.planet VALUES (8, 1, 2, 'Uranus', 4.5, false);
INSERT INTO public.planet VALUES (9, 1, 7, 'Ceres', 4.5, false);
INSERT INTO public.planet VALUES (10, 1, 7, 'Pluto', 4.5, false);
INSERT INTO public.planet VALUES (11, 1, 7, 'Orcus', 4.5, false);
INSERT INTO public.planet VALUES (12, 1, 7, 'Haumea', 4.5, false);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Gas giant', 'A very massive planet, made out of gas (like hydrogen and hellum).');
INSERT INTO public.planet_type VALUES (2, 'Ice giant', 'Planets of mass similar to Uranus or Neputne, but still larger than Earth.');
INSERT INTO public.planet_type VALUES (3, 'Mesoplanet', 'A planetary body, with a size smaller than Mercury, but larger than Ceres.');
INSERT INTO public.planet_type VALUES (4, 'Sub-earth', 'A classification of planets substantially less massive than Earth or Venus.');
INSERT INTO public.planet_type VALUES (5, 'Super-earth', 'A planet with mass higher than mass of the Earth, but still below mass of smaller giants like Neptune or Uranus.');
INSERT INTO public.planet_type VALUES (6, 'Other', NULL);
INSERT INTO public.planet_type VALUES (7, 'Dwarf planet', 'A small planetary mass, that has its direct orbit around a star, but much smaller than the rest of planets in a given solar system.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 6, 'Sun', 4.6);
INSERT INTO public.star VALUES (2, 1, 4, 'Proxima Centauri', 5.0);
INSERT INTO public.star VALUES (3, 1, 2, 'Sirius B', 0.2);
INSERT INTO public.star VALUES (4, 1, 6, 'Sirius A', 0.3);
INSERT INTO public.star VALUES (5, 1, 6, 'VY Canis Majoris', NULL);
INSERT INTO public.star VALUES (6, 1, 5, 'WISE 0855-0714', 10.0);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'Red Giant', 'It is a star of low or intermediate mass in late state of stellar evolution.');
INSERT INTO public.star_type VALUES (2, 'White Dwarf', 'It is the final stage of a star, which mass is not enough to become neutron star or black hole. It is a sterllar-core remnant composed mostly of electron-ddegenerate matter.');
INSERT INTO public.star_type VALUES (3, 'Neutron star', 'It is a collapsed core of a supergiant star, which had a total mass of between 10 to 25 solar masses. It radius is on the order of 10 km. It is a highly dense type of star.');
INSERT INTO public.star_type VALUES (4, 'Red dwarf', 'Type of star of relatively low luminosity, and low temperature on the surface of it. It is the most common type of star in Milky Way galaxy.');
INSERT INTO public.star_type VALUES (5, 'Brown dwarf', 'Also called failed star, these are object, which are not massive enough, to sustain nuclear fusion of oridnary hydrogen.');
INSERT INTO public.star_type VALUES (6, 'Other', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_type_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: star_type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_type_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unq UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_unq UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_type star_type_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_name_unq UNIQUE (name);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


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
