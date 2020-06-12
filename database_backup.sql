--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: animals; Type: TABLE; Schema: public; Owner: Dan
--

CREATE TABLE public.animals (
    id bigint NOT NULL,
    name character varying,
    breed character varying,
    age character varying,
    gender character varying,
    quote character varying
);


ALTER TABLE public.animals OWNER TO "Dan";

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: Dan
--

CREATE SEQUENCE public.animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_id_seq OWNER TO "Dan";

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Dan
--

ALTER SEQUENCE public.animals_id_seq OWNED BY public.animals.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Dan
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Dan";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Dan
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Dan";

--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: Dan
--

ALTER TABLE ONLY public.animals ALTER COLUMN id SET DEFAULT nextval('public.animals_id_seq'::regclass);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: Dan
--

COPY public.animals (id, name, breed, age, gender, quote) FROM stdin;
1	Snoopy	English Hound	2	Male	Roses stop to smell him
3	Sophie	Otterhound	2	Male	He once went to the psychic, to warn her
6	Lucky	Schipperke	2	Female	He is allowed to talk about the fight club
7	Riley	Shihtzu	9	Female	His beard alone has experienced more than a lesser man’s entire body
8	Cookie	Norfolk Terrier	7	Female	His tears can cure cancer, too bad he never cries
9	Zeus	Affenpinscher	9	Female	He once won the Tour-de-France, but was disqualified for riding a unicycle
10	Gizmo	Fox Terrier	3	Female	He is left-handed. And right-handed
11	Lola	Gordon Setter	7	Male	He played a game of Russian Roulette with a fully loaded magnum, and won
12	Peanut	Dingo	6	Male	He played a game of Russian Roulette with a fully loaded magnum, and won
13	Zoe	Swiss Mountain	1	Male	His shirts never wrinkle
14	Baby	Australian Terrier	5	Male	He once turned a vampire into a vegetarian
15	Misty	Scottish Terrier	8	Female	Once he ran a marathon because it was “on the way”
16	Lucy	Dingo	10	Male	He has taught old dogs a variety of new tricks
17	Blue	Bluetick	2	Male	If he were to punch you in the face you would have to fight off a strong urge to thank him
18	Blue	Saluki	9	Female	He once started a fire using only dental floss and water
19	Toby	Yorkshire Terrier	5	Female	When he holds a lady’s purse, he looks manly
20	Gizmo	Pyrenees	8	Male	When he goes to Spain, he chases the bulls
21	Brutus	Sealyham Terrier	8	Male	Whatever side of the tracks he’s currently on is the right side, even if he crosses the tracks he’ll still be on the right side
22	Misty	Shetland Sheepdog	3	Male	If he was to pat you on the back, you would list it on your resume.
23	Ruby	Clumber	3	Female	He once won a staring contest with his own reflection
24	Cooper	Afghan Hound	9	Male	He’s never lost a game of chance
25	Rusty	Flatcoated Retriever	2	Female	He once taught a german shepherd how to bark in Spanish
26	Oliver	Savannah	11	Male	He can kill two stones with one bird
27	Jasper	Ojos Azules	6	Female	He once brought a knife to a gunfight… just to even the odds
28	Max	Foldex Cat	3	Female	Presidents take his birthday off
29	Chloe	Javanese	14	Female	The circus ran away to join him
30	Angel	Australian Mist	4	Female	His passport requires no photograph
31	Jasper	Pixie-bob	12	Male	Panhandlers give him money
32	Oliver	Selkirk Rex	7	Female	His business card simply says ‘I’ll Call You”
33	Alfie	Arabian Mau	2	Female	When he drives a car off the lot, its price increases in value
34	Chloe	Oregon Rex	2	Female	Werewolves are jealous of his beard
35	Oscar	Raas	5	Male	No less than 25 Mexican folk songs have been written about his beard
36	Jasper	Burmilla	11	Female	Roses stop to smell him
37	Lucy	Highlander	13	Male	He once brought a knife to a gunfight… just to even the odds
38	Angel	Oriental Bicolor	1	Female	If he were to say something costs an arm and a leg, it would
39	Sam	Ragdoll	6	Male	His wallet is woven out of chupacabra leather
40	Sooty	American Wirehair	12	Female	Respected archaeologists fight over his discarded apple cores
41	Millie	Ojos Azules	8	Female	The Holy Grail is looking for him
42	Sooty	Australian Mist	1	Male	Freemasons strive to learn HIS secret handshake.
43	Charlie	Manx	10	Female	He once taught a german shepherd how to bark in Spanish
44	Millie	Lykoi	7	Male	Batman watches Saturday morning cartoons about him
45	Oliver	Khao Manee	12	Female	The Holy Grail is looking for him
46	Misty	Snowshoe	5	Male	He once won the Tour-de-France, but was disqualified for riding a unicycle
47	Missy	Selkirk Rex	8	Female	Cars look both ways for him, before driving down a street
48	Charlie	Dwarf cat, or Dwelf	13	Female	He once brought a knife to a gunfight… just to even the odds
49	Lily	Oregon Rex	14	Female	Sharks have a week dedicated to him
50	Jasper	Toyger	11	Male	Roses stop to smell him
2	Lilly	Newfoundland	3	Female	Her business card simply says, 'I'll call you'.
4	Angel	Entlebucher	10	Female	If she was to pat you on the back, you would list it on your resume.
5	Snoopy	Beagle	5	Female	She is left-handed. And right-handed
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Dan
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-12 15:32:47.575045	2020-06-12 15:32:47.575045
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Dan
--

COPY public.schema_migrations (version) FROM stdin;
20200612152732
\.


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Dan
--

SELECT pg_catalog.setval('public.animals_id_seq', 50, true);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: Dan
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Dan
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Dan
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

