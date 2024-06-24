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
    name character varying(50) NOT NULL,
    s_mass numeric,
    kms_rotation numeric,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    km_from_earth integer,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    myo_age numeric,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(50) NOT NULL,
    n_of_missions integer,
    kg_weight numeric NOT NULL
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    s_mass numeric,
    s_size numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1.5, 220, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.0, 250, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 0.5, 100, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 1.2, 300, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 0.8, 150, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 1.3, 275, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 'Natural satellite of Earth', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9376, 'Natural satellite of Mars', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 'Natural satellite of Mars', 2);
INSERT INTO public.moon VALUES (4, 'Europa', 628300, 'Natural satellite of Jupiter', 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1070400, 'Largest moon of Jupiter', 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 1882700, 'Second largest moon of Jupiter', 4);
INSERT INTO public.moon VALUES (7, 'Titan', 1221870, 'Largest moon of Saturn', 5);
INSERT INTO public.moon VALUES (8, 'Rhea', 527040, 'Second largest moon of Saturn', 5);
INSERT INTO public.moon VALUES (9, 'Iapetus', 3561300, 'Third largest moon of Saturn', 5);
INSERT INTO public.moon VALUES (10, 'Triton', 3548000, 'Largest moon of Neptune', 6);
INSERT INTO public.moon VALUES (11, 'Nereid', 5513810, 'Third largest moon of Neptune', 6);
INSERT INTO public.moon VALUES (12, 'Oberon', 5835200, 'Second largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (13, 'Titania', 4363000, 'Largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (14, 'Miranda', 1293900, 'Fifth largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 1910200, 'Fourth largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 1906100, 'Third largest moon of Uranus', 7);
INSERT INTO public.moon VALUES (17, 'Charon', 19571000, 'Largest moon of Pluto', 8);
INSERT INTO public.moon VALUES (18, 'Nix', 49270000, 'Natural satellite of Pluto', 8);
INSERT INTO public.moon VALUES (19, 'Hydra', 65200000, 'Natural satellite of Pluto', 8);
INSERT INTO public.moon VALUES (20, 'Kerberos', 31900000, 'Natural satellite of Pluto', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4.5, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4.6, false, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 4.8, false, 2);
INSERT INTO public.planet VALUES (4, 'Kepler-22b', 6.0, false, 3);
INSERT INTO public.planet VALUES (5, 'GJ 1214b', 3.0, false, 4);
INSERT INTO public.planet VALUES (6, 'HD 209458 b', 5.5, false, 5);
INSERT INTO public.planet VALUES (7, '55 Cancri e', 8.0, false, 6);
INSERT INTO public.planet VALUES (8, 'TRAPPIST-1d', 7.6, false, 1);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1e', 7.6, false, 1);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 5.6, false, 2);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 10.2, false, 3);
INSERT INTO public.planet VALUES (12, 'Kepler-69c', 6.9, false, 4);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'Apollo 11', 1, 45000);
INSERT INTO public.rocket VALUES (2, 'Falcon 9', 10, 549054);
INSERT INTO public.rocket VALUES (3, 'Saturn V', 13, 2970000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.0, 1.0, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1.1, 1.1, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 20.0, 1000.0, 3);
INSERT INTO public.star VALUES (4, 'Sirius', 2.1, 1.7, 4);
INSERT INTO public.star VALUES (5, 'Vega', 2.3, 2.0, 5);
INSERT INTO public.star VALUES (6, 'Arcturus', 3.0, 2.5, 6);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: rocket rocket_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_name_key UNIQUE (name);


--
-- Name: rocket rocket_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pk PRIMARY KEY (rocket_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

