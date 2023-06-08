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
    name character varying(40),
    radius_light_years integer,
    is_spiral boolean NOT NULL,
    constellations text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer NOT NULL,
    gravity numeric(6,2),
    radius numeric(10,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    star_id integer NOT NULL,
    has_life boolean,
    orbital_period integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(10,2),
    age_in_million_years numeric(20,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: superclusters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.superclusters (
    radius integer,
    name character varying(40) NOT NULL,
    superclusters_id integer NOT NULL
);


ALTER TABLE public.superclusters OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 52850, true, 'Sag, Orion, Canis, Scorp, Carina, Ara');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, true, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 30000, true, 'Canes Venatici');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 85000, true, 'Ursa Major');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 26481, true, 'Coma Berenices');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 3500, false, 'Tucana, Hydrus');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1.62, 1079.60);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 0.01, 7.00);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 0.00, 3.85);
INSERT INTO public.moon VALUES (4, 'Europa', 5, 1.32, 969.84);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, 1.43, 1636.80);
INSERT INTO public.moon VALUES (6, 'Io', 5, 1.80, 1131.90);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1.24, 1497.70);
INSERT INTO public.moon VALUES (8, 'LXI', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Thebe', 5, 0.04, 30.63);
INSERT INTO public.moon VALUES (10, 'Adrastea', 5, 0.01, 5.10);
INSERT INTO public.moon VALUES (11, 'Carme', 5, 0.02, 14.29);
INSERT INTO public.moon VALUES (12, 'Amalthea', 5, 0.02, 51.88);
INSERT INTO public.moon VALUES (13, 'Ananke', 5, NULL, 8.70);
INSERT INTO public.moon VALUES (14, 'Elara', 5, 0.03, 0.03);
INSERT INTO public.moon VALUES (15, 'Callirrhoe', 5, 0.00, NULL);
INSERT INTO public.moon VALUES (16, 'Titan', 6, 1.35, 1599.90);
INSERT INTO public.moon VALUES (17, 'Enceladus', 6, 0.11, 156.65);
INSERT INTO public.moon VALUES (18, 'Mimas', 6, NULL, 123.16);
INSERT INTO public.moon VALUES (19, 'Dione', 6, 0.23, 348.84);
INSERT INTO public.moon VALUES (20, 'Iapetus', 6, 0.22, 456.40);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 365);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, 88);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 225);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 687);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 4380);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 7685);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 22260);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 60225);
INSERT INTO public.planet VALUES (9, 'Filler1', 1, false, 165);
INSERT INTO public.planet VALUES (10, 'Filler2', 1, false, 163);
INSERT INTO public.planet VALUES (11, 'Filler3', 1, false, 162);
INSERT INTO public.planet VALUES (12, 'Filler4', 1, false, 161);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 92.96, 4603.00);
INSERT INTO public.star VALUES (2, 'Antares', 1, 554.50, 11.01);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 2, 96.87, 60.00);
INSERT INTO public.star VALUES (4, 'Upsilon Andromedae', 2, 44.26, 3100.00);
INSERT INTO public.star VALUES (5, 'Mizar', 4, 82.84, 370.00);
INSERT INTO public.star VALUES (6, 'Alkaid', 4, 104.00, 10.01);


--
-- Data for Name: superclusters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.superclusters VALUES (55, 'Virgo', 1);
INSERT INTO public.superclusters VALUES (170, 'Shapley', 2);
INSERT INTO public.superclusters VALUES (250, 'Laniakea', 3);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_radius_light_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_radius_light_years_key UNIQUE (radius_light_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_radius_key UNIQUE (radius);


--
-- Name: planet planet_orbital_period_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbital_period_key UNIQUE (orbital_period);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: superclusters superclusters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.superclusters
    ADD CONSTRAINT superclusters_pkey PRIMARY KEY (superclusters_id);


--
-- Name: superclusters superclusters_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.superclusters
    ADD CONSTRAINT superclusters_radius_key UNIQUE (radius);


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

