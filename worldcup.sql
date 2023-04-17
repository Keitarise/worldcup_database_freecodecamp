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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
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
    name character varying(100) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (129, 2018, 'Final', 261, 262, 4, 2);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 263, 264, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 262, 264, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 261, 263, 1, 0);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 262, 265, 3, 2);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 264, 266, 2, 0);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 263, 267, 2, 1);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 261, 268, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 264, 269, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 266, 270, 1, 0);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 263, 271, 3, 2);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 267, 272, 2, 0);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 262, 273, 2, 1);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 265, 274, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 268, 275, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 261, 276, 4, 3);
INSERT INTO public.games VALUES (145, 2014, 'Final', 277, 276, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 278, 267, 3, 0);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 276, 278, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 277, 267, 7, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 278, 279, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 276, 263, 1, 0);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 267, 269, 2, 1);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 277, 261, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 267, 280, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 269, 268, 2, 0);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 261, 281, 2, 0);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 277, 282, 2, 1);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 278, 272, 2, 1);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 279, 283, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 276, 270, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 263, 284, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 261);
INSERT INTO public.teams VALUES ('Croatia', 262);
INSERT INTO public.teams VALUES ('Belgium', 263);
INSERT INTO public.teams VALUES ('England', 264);
INSERT INTO public.teams VALUES ('Russia', 265);
INSERT INTO public.teams VALUES ('Sweden', 266);
INSERT INTO public.teams VALUES ('Brazil', 267);
INSERT INTO public.teams VALUES ('Uruguay', 268);
INSERT INTO public.teams VALUES ('Colombia', 269);
INSERT INTO public.teams VALUES ('Switzerland', 270);
INSERT INTO public.teams VALUES ('Japan', 271);
INSERT INTO public.teams VALUES ('Mexico', 272);
INSERT INTO public.teams VALUES ('Denmark', 273);
INSERT INTO public.teams VALUES ('Spain', 274);
INSERT INTO public.teams VALUES ('Portugal', 275);
INSERT INTO public.teams VALUES ('Argentina', 276);
INSERT INTO public.teams VALUES ('Germany', 277);
INSERT INTO public.teams VALUES ('Netherlands', 278);
INSERT INTO public.teams VALUES ('Costa Rica', 279);
INSERT INTO public.teams VALUES ('Chile', 280);
INSERT INTO public.teams VALUES ('Nigeria', 281);
INSERT INTO public.teams VALUES ('Algeria', 282);
INSERT INTO public.teams VALUES ('Greece', 283);
INSERT INTO public.teams VALUES ('United States', 284);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 284, true);


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

