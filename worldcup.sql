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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(30) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 2018, 65, 67, 4, 2);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 66, 70, 2, 0);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 67, 70, 2, 1);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 65, 66, 1, 0);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 67, 78, 3, 2);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 70, 74, 2, 0);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 66, 76, 2, 1);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 65, 79, 2, 0);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 70, 90, 2, 1);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 74, 106, 1, 0);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 66, 107, 3, 2);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 76, 108, 2, 0);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 67, 109, 2, 1);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 78, 110, 2, 1);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 79, 111, 2, 1);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 65, 83, 4, 3);
INSERT INTO public.games VALUES (17, 'Final', 2014, 81, 83, 1, 0);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 82, 76, 3, 0);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 83, 82, 1, 0);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 81, 76, 7, 1);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 82, 94, 1, 0);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 83, 66, 1, 0);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 76, 90, 2, 1);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 81, 65, 1, 0);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 76, 121, 2, 1);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 90, 79, 2, 0);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 65, 123, 2, 0);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 81, 124, 2, 1);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 82, 108, 2, 1);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 94, 126, 2, 1);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 83, 106, 1, 0);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 66, 128, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (65, 'France');
INSERT INTO public.teams VALUES (66, 'Belgium');
INSERT INTO public.teams VALUES (67, 'Croatia');
INSERT INTO public.teams VALUES (70, 'England');
INSERT INTO public.teams VALUES (74, 'Sweden');
INSERT INTO public.teams VALUES (76, 'Brazil');
INSERT INTO public.teams VALUES (78, 'Russia');
INSERT INTO public.teams VALUES (79, 'Uruguay');
INSERT INTO public.teams VALUES (81, 'Germany');
INSERT INTO public.teams VALUES (82, 'Netherlands');
INSERT INTO public.teams VALUES (83, 'Argentina');
INSERT INTO public.teams VALUES (90, 'Colombia');
INSERT INTO public.teams VALUES (94, 'Costa Rica');
INSERT INTO public.teams VALUES (106, 'Switzerland');
INSERT INTO public.teams VALUES (107, 'Japan');
INSERT INTO public.teams VALUES (108, 'Mexico');
INSERT INTO public.teams VALUES (109, 'Denmark');
INSERT INTO public.teams VALUES (110, 'Spain');
INSERT INTO public.teams VALUES (111, 'Portugal');
INSERT INTO public.teams VALUES (121, 'Chile');
INSERT INTO public.teams VALUES (123, 'Nigeria');
INSERT INTO public.teams VALUES (124, 'Algeria');
INSERT INTO public.teams VALUES (126, 'Greece');
INSERT INTO public.teams VALUES (128, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 128, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

