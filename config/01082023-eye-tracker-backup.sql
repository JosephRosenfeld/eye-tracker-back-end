--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log (
    log_id bigint NOT NULL,
    log_type_id bigint NOT NULL,
    log_datetime timestamp with time zone NOT NULL,
    rating character(1),
    log_description character varying(1000),
    person_id bigint NOT NULL
);


ALTER TABLE public.log OWNER TO postgres;

--
-- Name: log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_log_id_seq OWNER TO postgres;

--
-- Name: log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_log_id_seq OWNED BY public.log.log_id;


--
-- Name: log_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_type (
    log_type_id bigint NOT NULL,
    log_type_name character varying(20) NOT NULL
);


ALTER TABLE public.log_type OWNER TO postgres;

--
-- Name: log_type_log_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_type_log_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_type_log_type_id_seq OWNER TO postgres;

--
-- Name: log_type_log_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_type_log_type_id_seq OWNED BY public.log_type.log_type_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    person_id bigint NOT NULL,
    full_name character varying(50) NOT NULL,
    email character varying(320) NOT NULL,
    pwd_encrypted character varying(255) NOT NULL,
    phone character varying(10),
    settings_obj_id bigint NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.session OWNER TO postgres;

--
-- Name: settings_obj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings_obj (
    settings_obj_id bigint NOT NULL,
    systane_color character varying(7) NOT NULL,
    muro_color character varying(7) NOT NULL,
    muro_ointment_color character varying(7) NOT NULL,
    erosion_color character varying(7) NOT NULL,
    note_color character varying(7) NOT NULL,
    daily_review1_color character varying(7) NOT NULL,
    daily_review2_color character varying(7) NOT NULL,
    daily_review3_color character varying(7) NOT NULL,
    daily_review4_color character varying(7) NOT NULL,
    daily_review5_color character varying(7) NOT NULL,
    systane_abbreviation character(1) NOT NULL,
    muro_abbreviation character(1) NOT NULL,
    muro_ointment_abbreviation character(1) NOT NULL,
    erosion_abbreviation character(1) NOT NULL,
    note_abbreviation character(1) NOT NULL,
    daily_review_abbreviation character(1) NOT NULL
);


ALTER TABLE public.settings_obj OWNER TO postgres;

--
-- Name: settings_obj_settings_obj_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.settings_obj_settings_obj_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_obj_settings_obj_id_seq OWNER TO postgres;

--
-- Name: settings_obj_settings_obj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.settings_obj_settings_obj_id_seq OWNED BY public.settings_obj.settings_obj_id;


--
-- Name: log log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log ALTER COLUMN log_id SET DEFAULT nextval('public.log_log_id_seq'::regclass);


--
-- Name: log_type log_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_type ALTER COLUMN log_type_id SET DEFAULT nextval('public.log_type_log_type_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Name: settings_obj settings_obj_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings_obj ALTER COLUMN settings_obj_id SET DEFAULT nextval('public.settings_obj_settings_obj_id_seq'::regclass);


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log (log_id, log_type_id, log_datetime, rating, log_description, person_id) FROM stdin;
10561	5	2020-10-23 11:56:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10562	1	2020-10-23 11:31:51+00	\N	\N	1
10563	1	2020-10-23 12:35:40+00	\N	\N	1
10564	1	2020-10-23 13:14:41+00	\N	\N	1
10565	1	2020-10-23 14:42:24+00	\N	\N	1
10566	1	2020-10-23 15:35:42+00	\N	\N	1
10567	1	2020-10-23 16:33:51+00	\N	\N	1
10568	1	2020-10-23 17:37:32+00	\N	\N	1
10569	1	2020-10-23 18:30:07+00	\N	\N	1
10570	1	2020-10-23 19:12:10+00	\N	\N	1
10571	1	2020-10-23 20:44:06+00	\N	\N	1
10572	1	2020-10-23 21:45:24+00	\N	\N	1
10573	1	2020-10-23 22:26:53+00	\N	\N	1
10574	1	2020-10-23 23:42:59+00	\N	\N	1
10575	1	2020-10-24 00:20:48+00	\N	\N	1
10576	1	2020-10-24 01:13:01+00	\N	\N	1
10577	1	2020-10-24 02:25:55+00	\N	\N	1
10578	2	2020-10-23 15:23:57+00	\N	\N	1
10579	2	2020-10-23 19:29:29+00	\N	\N	1
10580	2	2020-10-23 23:20:38+00	\N	\N	1
10581	3	2020-10-24 02:50:59+00	\N	\N	1
10582	6	2020-10-24 02:22:24+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10583	5	2020-10-24 10:38:10+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10584	1	2020-10-24 11:52:28+00	\N	\N	1
10585	1	2020-10-24 12:49:26+00	\N	\N	1
10586	1	2020-10-24 13:42:47+00	\N	\N	1
10587	1	2020-10-24 14:38:57+00	\N	\N	1
10588	1	2020-10-24 15:46:33+00	\N	\N	1
10589	1	2020-10-24 16:18:49+00	\N	\N	1
10590	1	2020-10-24 17:46:03+00	\N	\N	1
10591	1	2020-10-24 18:26:03+00	\N	\N	1
10592	1	2020-10-24 19:46:49+00	\N	\N	1
10593	1	2020-10-24 20:33:58+00	\N	\N	1
10594	1	2020-10-24 21:31:11+00	\N	\N	1
10595	1	2020-10-24 22:11:41+00	\N	\N	1
10596	1	2020-10-24 23:20:58+00	\N	\N	1
10597	1	2020-10-25 00:27:08+00	\N	\N	1
10598	1	2020-10-25 01:50:11+00	\N	\N	1
10599	1	2020-10-25 02:35:45+00	\N	\N	1
10600	2	2020-10-24 15:19:16+00	\N	\N	1
10601	2	2020-10-24 18:52:10+00	\N	\N	1
10602	2	2020-10-24 23:12:48+00	\N	\N	1
10603	3	2020-10-25 01:52:50+00	\N	\N	1
10604	6	2020-10-25 01:52:29+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10605	5	2020-10-25 10:55:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10606	1	2020-10-25 11:30:45+00	\N	\N	1
10607	1	2020-10-25 12:27:31+00	\N	\N	1
10608	1	2020-10-25 13:44:23+00	\N	\N	1
10609	1	2020-10-25 14:34:24+00	\N	\N	1
10610	1	2020-10-25 15:15:23+00	\N	\N	1
10611	1	2020-10-25 16:51:53+00	\N	\N	1
10612	1	2020-10-25 17:33:40+00	\N	\N	1
10613	1	2020-10-25 18:15:27+00	\N	\N	1
10614	1	2020-10-25 19:43:18+00	\N	\N	1
10615	1	2020-10-25 20:08:39+00	\N	\N	1
10616	1	2020-10-25 21:33:28+00	\N	\N	1
10617	1	2020-10-25 22:48:21+00	\N	\N	1
10618	1	2020-10-25 23:36:25+00	\N	\N	1
10619	1	2020-10-26 00:16:37+00	\N	\N	1
10620	1	2020-10-26 01:46:55+00	\N	\N	1
10621	1	2020-10-26 02:40:42+00	\N	\N	1
10622	2	2020-10-25 15:00:40+00	\N	\N	1
10623	2	2020-10-25 18:35:38+00	\N	\N	1
10624	2	2020-10-25 22:38:42+00	\N	\N	1
10625	3	2020-10-26 02:14:31+00	\N	\N	1
10626	6	2020-10-26 02:37:05+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10627	5	2020-10-26 11:26:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10628	1	2020-10-26 11:11:32+00	\N	\N	1
10629	1	2020-10-26 12:40:04+00	\N	\N	1
10630	1	2020-10-26 13:17:15+00	\N	\N	1
10631	1	2020-10-26 14:19:50+00	\N	\N	1
10632	1	2020-10-26 15:51:27+00	\N	\N	1
10633	1	2020-10-26 16:37:40+00	\N	\N	1
10634	1	2020-10-26 17:50:48+00	\N	\N	1
10635	1	2020-10-26 18:24:17+00	\N	\N	1
10636	1	2020-10-26 19:13:11+00	\N	\N	1
10637	1	2020-10-26 20:40:40+00	\N	\N	1
10638	1	2020-10-26 21:43:21+00	\N	\N	1
10639	1	2020-10-26 22:44:41+00	\N	\N	1
10640	1	2020-10-26 23:38:23+00	\N	\N	1
10641	1	2020-10-27 00:34:43+00	\N	\N	1
10642	1	2020-10-27 01:37:38+00	\N	\N	1
10643	1	2020-10-27 02:52:21+00	\N	\N	1
10644	2	2020-10-26 14:58:45+00	\N	\N	1
10645	2	2020-10-26 18:52:39+00	\N	\N	1
10646	2	2020-10-26 22:45:27+00	\N	\N	1
10647	3	2020-10-27 02:42:34+00	\N	\N	1
10648	6	2020-10-27 02:38:18+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10649	5	2020-10-27 11:48:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10650	1	2020-10-27 11:32:10+00	\N	\N	1
10651	1	2020-10-27 12:24:32+00	\N	\N	1
10652	1	2020-10-27 13:29:31+00	\N	\N	1
10653	1	2020-10-27 14:45:57+00	\N	\N	1
10654	1	2020-10-27 15:48:28+00	\N	\N	1
10655	1	2020-10-27 16:24:45+00	\N	\N	1
10656	1	2020-10-27 17:48:22+00	\N	\N	1
10657	1	2020-10-27 18:32:35+00	\N	\N	1
10658	1	2020-10-27 19:13:51+00	\N	\N	1
10659	1	2020-10-27 20:30:00+00	\N	\N	1
10660	1	2020-10-27 21:45:31+00	\N	\N	1
10661	1	2020-10-27 22:29:30+00	\N	\N	1
10662	1	2020-10-27 23:31:32+00	\N	\N	1
10663	1	2020-10-28 00:22:14+00	\N	\N	1
10664	1	2020-10-28 01:29:51+00	\N	\N	1
10665	1	2020-10-28 02:12:11+00	\N	\N	1
10666	2	2020-10-27 14:44:20+00	\N	\N	1
10667	2	2020-10-27 19:26:50+00	\N	\N	1
10668	2	2020-10-27 22:38:48+00	\N	\N	1
10669	3	2020-10-28 02:09:29+00	\N	\N	1
10670	6	2020-10-28 02:26:46+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10671	5	2020-10-28 12:25:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10672	1	2020-10-28 11:29:43+00	\N	\N	1
10673	1	2020-10-28 12:44:16+00	\N	\N	1
10674	1	2020-10-28 13:33:35+00	\N	\N	1
10675	1	2020-10-28 14:36:26+00	\N	\N	1
10676	1	2020-10-28 15:40:41+00	\N	\N	1
10677	1	2020-10-28 16:45:50+00	\N	\N	1
10678	1	2020-10-28 17:30:18+00	\N	\N	1
10679	1	2020-10-28 18:42:53+00	\N	\N	1
10680	1	2020-10-28 19:34:48+00	\N	\N	1
10681	1	2020-10-28 20:34:08+00	\N	\N	1
10682	1	2020-10-28 21:50:35+00	\N	\N	1
10683	1	2020-10-28 22:15:03+00	\N	\N	1
10684	1	2020-10-28 23:07:46+00	\N	\N	1
10685	1	2020-10-29 00:38:01+00	\N	\N	1
10686	1	2020-10-29 01:12:32+00	\N	\N	1
10687	1	2020-10-29 02:39:00+00	\N	\N	1
10688	2	2020-10-28 14:50:21+00	\N	\N	1
10689	2	2020-10-28 19:16:01+00	\N	\N	1
10690	2	2020-10-28 22:46:26+00	\N	\N	1
10691	3	2020-10-29 01:38:56+00	\N	\N	1
10692	6	2020-10-29 02:43:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10693	5	2020-10-29 11:01:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10694	1	2020-10-29 11:08:52+00	\N	\N	1
10695	1	2020-10-29 12:42:29+00	\N	\N	1
10696	1	2020-10-29 13:07:53+00	\N	\N	1
10697	1	2020-10-29 14:43:04+00	\N	\N	1
10698	1	2020-10-29 15:35:57+00	\N	\N	1
10699	1	2020-10-29 16:31:50+00	\N	\N	1
10700	1	2020-10-29 17:43:18+00	\N	\N	1
10701	1	2020-10-29 18:09:21+00	\N	\N	1
10702	1	2020-10-29 19:43:49+00	\N	\N	1
10703	1	2020-10-29 20:50:40+00	\N	\N	1
10704	1	2020-10-29 21:42:46+00	\N	\N	1
10705	1	2020-10-29 22:27:38+00	\N	\N	1
10706	1	2020-10-29 23:49:27+00	\N	\N	1
10707	1	2020-10-30 00:12:29+00	\N	\N	1
10708	1	2020-10-30 01:12:18+00	\N	\N	1
10709	1	2020-10-30 02:18:08+00	\N	\N	1
10710	2	2020-10-29 14:46:33+00	\N	\N	1
10711	2	2020-10-29 19:18:33+00	\N	\N	1
10712	2	2020-10-29 23:16:10+00	\N	\N	1
10713	3	2020-10-30 02:32:23+00	\N	\N	1
10714	6	2020-10-30 02:07:26+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10715	5	2020-10-30 10:38:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10716	1	2020-10-30 11:28:57+00	\N	\N	1
10717	1	2020-10-30 12:26:11+00	\N	\N	1
10718	1	2020-10-30 13:28:38+00	\N	\N	1
10719	1	2020-10-30 14:42:11+00	\N	\N	1
10720	1	2020-10-30 15:26:06+00	\N	\N	1
10721	1	2020-10-30 16:12:23+00	\N	\N	1
10722	1	2020-10-30 17:46:56+00	\N	\N	1
10723	1	2020-10-30 18:37:44+00	\N	\N	1
10724	1	2020-10-30 19:35:36+00	\N	\N	1
10725	1	2020-10-30 20:50:32+00	\N	\N	1
10726	1	2020-10-30 21:36:45+00	\N	\N	1
10727	1	2020-10-30 22:28:53+00	\N	\N	1
10728	1	2020-10-30 23:51:02+00	\N	\N	1
10729	1	2020-10-31 00:08:04+00	\N	\N	1
10730	1	2020-10-31 01:46:47+00	\N	\N	1
10731	1	2020-10-31 02:17:36+00	\N	\N	1
10732	2	2020-10-30 15:20:52+00	\N	\N	1
10733	2	2020-10-30 18:40:30+00	\N	\N	1
10734	2	2020-10-30 23:18:47+00	\N	\N	1
10735	3	2020-10-31 02:19:49+00	\N	\N	1
10736	6	2020-10-31 03:06:00+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10737	5	2020-10-31 11:34:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10738	1	2020-10-31 11:50:35+00	\N	\N	1
10739	1	2020-10-31 12:29:49+00	\N	\N	1
10740	1	2020-10-31 13:26:25+00	\N	\N	1
10741	1	2020-10-31 14:51:14+00	\N	\N	1
10742	1	2020-10-31 15:39:15+00	\N	\N	1
10743	1	2020-10-31 16:24:13+00	\N	\N	1
10744	1	2020-10-31 17:49:09+00	\N	\N	1
10745	1	2020-10-31 18:16:58+00	\N	\N	1
10746	1	2020-10-31 19:11:05+00	\N	\N	1
10747	1	2020-10-31 20:12:05+00	\N	\N	1
10748	1	2020-10-31 21:50:31+00	\N	\N	1
10749	1	2020-10-31 22:36:34+00	\N	\N	1
10750	1	2020-10-31 23:29:35+00	\N	\N	1
10751	1	2020-11-01 00:51:49+00	\N	\N	1
10752	1	2020-11-01 01:10:48+00	\N	\N	1
10753	1	2020-11-01 02:31:50+00	\N	\N	1
10754	2	2020-10-31 14:56:37+00	\N	\N	1
10755	2	2020-10-31 19:05:13+00	\N	\N	1
10756	2	2020-10-31 22:40:13+00	\N	\N	1
10757	3	2020-11-01 01:33:20+00	\N	\N	1
10758	6	2020-11-01 02:33:04+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10759	5	2020-11-01 11:26:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10760	1	2020-11-01 11:13:56+00	\N	\N	1
10761	1	2020-11-01 12:24:07+00	\N	\N	1
10762	1	2020-11-01 13:07:51+00	\N	\N	1
10763	1	2020-11-01 14:36:53+00	\N	\N	1
10764	1	2020-11-01 15:41:26+00	\N	\N	1
10765	1	2020-11-01 16:10:17+00	\N	\N	1
10766	1	2020-11-01 17:24:05+00	\N	\N	1
10767	1	2020-11-01 18:51:11+00	\N	\N	1
10768	1	2020-11-01 19:47:07+00	\N	\N	1
10769	1	2020-11-01 20:21:51+00	\N	\N	1
10770	1	2020-11-01 21:07:45+00	\N	\N	1
10771	1	2020-11-01 22:49:05+00	\N	\N	1
10772	1	2020-11-01 23:41:02+00	\N	\N	1
10773	1	2020-11-02 00:43:28+00	\N	\N	1
10774	1	2020-11-02 01:38:56+00	\N	\N	1
10775	1	2020-11-02 02:41:28+00	\N	\N	1
10776	2	2020-11-01 14:35:40+00	\N	\N	1
10777	2	2020-11-01 19:23:30+00	\N	\N	1
10778	2	2020-11-01 22:56:09+00	\N	\N	1
10779	3	2020-11-02 03:11:27+00	\N	\N	1
10780	6	2020-11-02 02:27:31+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10781	5	2020-11-02 11:44:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10782	1	2020-11-02 11:18:03+00	\N	\N	1
10783	1	2020-11-02 12:36:38+00	\N	\N	1
10784	1	2020-11-02 13:09:10+00	\N	\N	1
10785	1	2020-11-02 14:31:56+00	\N	\N	1
10786	1	2020-11-02 15:46:28+00	\N	\N	1
10787	1	2020-11-02 16:36:53+00	\N	\N	1
10788	1	2020-11-02 17:19:48+00	\N	\N	1
10789	1	2020-11-02 18:37:33+00	\N	\N	1
10790	1	2020-11-02 19:30:00+00	\N	\N	1
10791	1	2020-11-02 20:34:56+00	\N	\N	1
10792	1	2020-11-02 21:29:23+00	\N	\N	1
10793	1	2020-11-02 22:26:57+00	\N	\N	1
10794	1	2020-11-02 23:20:32+00	\N	\N	1
10795	1	2020-11-03 00:44:49+00	\N	\N	1
10796	1	2020-11-03 01:22:10+00	\N	\N	1
10797	1	2020-11-03 02:19:17+00	\N	\N	1
10798	2	2020-11-02 15:25:32+00	\N	\N	1
10799	2	2020-11-02 19:05:52+00	\N	\N	1
10800	2	2020-11-02 22:38:14+00	\N	\N	1
10801	3	2020-11-03 02:33:06+00	\N	\N	1
10802	6	2020-11-03 02:47:34+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10803	5	2020-11-03 10:44:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10804	1	2020-11-03 11:48:15+00	\N	\N	1
10805	1	2020-11-03 12:21:21+00	\N	\N	1
10806	1	2020-11-03 13:20:19+00	\N	\N	1
10807	1	2020-11-03 14:31:37+00	\N	\N	1
10808	1	2020-11-03 15:14:21+00	\N	\N	1
10809	1	2020-11-03 16:29:35+00	\N	\N	1
10810	1	2020-11-03 17:25:04+00	\N	\N	1
10811	1	2020-11-03 18:15:14+00	\N	\N	1
10812	1	2020-11-03 19:46:06+00	\N	\N	1
10813	1	2020-11-03 20:12:02+00	\N	\N	1
10814	1	2020-11-03 21:23:06+00	\N	\N	1
10815	1	2020-11-03 22:37:23+00	\N	\N	1
10816	1	2020-11-03 23:25:58+00	\N	\N	1
10817	1	2020-11-04 00:22:40+00	\N	\N	1
10818	1	2020-11-04 01:33:25+00	\N	\N	1
10819	1	2020-11-04 02:21:23+00	\N	\N	1
10820	2	2020-11-03 14:38:03+00	\N	\N	1
10821	2	2020-11-03 19:22:31+00	\N	\N	1
10822	2	2020-11-03 22:39:59+00	\N	\N	1
10823	3	2020-11-04 03:23:29+00	\N	\N	1
10824	6	2020-11-04 03:12:31+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10825	5	2020-11-04 10:32:43+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10826	1	2020-11-04 11:22:51+00	\N	\N	1
10827	1	2020-11-04 12:26:38+00	\N	\N	1
10828	1	2020-11-04 13:14:08+00	\N	\N	1
10829	1	2020-11-04 14:50:20+00	\N	\N	1
10830	1	2020-11-04 15:41:53+00	\N	\N	1
10831	1	2020-11-04 16:32:20+00	\N	\N	1
10832	1	2020-11-04 17:27:06+00	\N	\N	1
10833	1	2020-11-04 18:23:22+00	\N	\N	1
10834	1	2020-11-04 19:44:05+00	\N	\N	1
10835	1	2020-11-04 20:15:37+00	\N	\N	1
10836	1	2020-11-04 21:11:16+00	\N	\N	1
10837	1	2020-11-04 22:31:03+00	\N	\N	1
10838	1	2020-11-04 23:44:12+00	\N	\N	1
10839	1	2020-11-05 00:22:50+00	\N	\N	1
10840	1	2020-11-05 01:08:39+00	\N	\N	1
10841	1	2020-11-05 02:09:47+00	\N	\N	1
10842	2	2020-11-04 14:46:27+00	\N	\N	1
10843	2	2020-11-04 19:21:25+00	\N	\N	1
10844	2	2020-11-04 22:55:22+00	\N	\N	1
10845	3	2020-11-05 03:20:30+00	\N	\N	1
10846	6	2020-11-05 02:11:21+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10847	5	2020-11-05 12:27:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10848	1	2020-11-05 11:33:58+00	\N	\N	1
10849	1	2020-11-05 12:45:45+00	\N	\N	1
10850	1	2020-11-05 13:10:43+00	\N	\N	1
10851	1	2020-11-05 14:13:47+00	\N	\N	1
10852	1	2020-11-05 15:14:48+00	\N	\N	1
10853	1	2020-11-05 16:18:57+00	\N	\N	1
10854	1	2020-11-05 17:16:04+00	\N	\N	1
10855	1	2020-11-05 18:44:00+00	\N	\N	1
10856	1	2020-11-05 19:31:31+00	\N	\N	1
10857	1	2020-11-05 20:26:26+00	\N	\N	1
10858	1	2020-11-05 21:16:29+00	\N	\N	1
10859	1	2020-11-05 22:07:38+00	\N	\N	1
10860	1	2020-11-05 23:49:16+00	\N	\N	1
10861	1	2020-11-06 00:30:39+00	\N	\N	1
10862	1	2020-11-06 01:15:11+00	\N	\N	1
10863	1	2020-11-06 02:38:29+00	\N	\N	1
10864	2	2020-11-05 14:41:59+00	\N	\N	1
10865	2	2020-11-05 18:56:33+00	\N	\N	1
10866	2	2020-11-05 23:16:43+00	\N	\N	1
10867	3	2020-11-06 01:53:22+00	\N	\N	1
10968	1	2020-11-10 21:08:12+00	\N	\N	1
10969	1	2020-11-10 22:30:29+00	\N	\N	1
10970	1	2020-11-10 23:30:39+00	\N	\N	1
10971	1	2020-11-11 00:18:29+00	\N	\N	1
10972	1	2020-11-11 01:11:42+00	\N	\N	1
10868	6	2020-11-06 02:46:39+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10869	5	2020-11-06 12:27:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10870	1	2020-11-06 11:18:11+00	\N	\N	1
10871	1	2020-11-06 12:35:38+00	\N	\N	1
10872	1	2020-11-06 13:20:35+00	\N	\N	1
10873	1	2020-11-06 14:49:08+00	\N	\N	1
10874	1	2020-11-06 15:33:59+00	\N	\N	1
10875	1	2020-11-06 16:42:44+00	\N	\N	1
10876	1	2020-11-06 17:17:42+00	\N	\N	1
10877	1	2020-11-06 18:46:09+00	\N	\N	1
10878	1	2020-11-06 19:07:50+00	\N	\N	1
10879	1	2020-11-06 20:40:05+00	\N	\N	1
10880	1	2020-11-06 21:08:06+00	\N	\N	1
10881	1	2020-11-06 22:46:22+00	\N	\N	1
10882	1	2020-11-06 23:12:35+00	\N	\N	1
10883	1	2020-11-07 00:23:28+00	\N	\N	1
10884	1	2020-11-07 01:13:39+00	\N	\N	1
10885	1	2020-11-07 02:37:17+00	\N	\N	1
10886	2	2020-11-06 15:25:18+00	\N	\N	1
10887	2	2020-11-06 18:44:59+00	\N	\N	1
10888	2	2020-11-06 23:03:48+00	\N	\N	1
10889	3	2020-11-07 02:39:16+00	\N	\N	1
10890	6	2020-11-07 03:03:23+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10891	5	2020-11-07 12:17:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10892	1	2020-11-07 11:33:25+00	\N	\N	1
10893	1	2020-11-07 12:45:16+00	\N	\N	1
10894	1	2020-11-07 13:43:59+00	\N	\N	1
10895	1	2020-11-07 14:47:35+00	\N	\N	1
10896	1	2020-11-07 15:31:26+00	\N	\N	1
10897	1	2020-11-07 16:22:02+00	\N	\N	1
10898	1	2020-11-07 17:29:13+00	\N	\N	1
10899	1	2020-11-07 18:12:15+00	\N	\N	1
10900	1	2020-11-07 19:16:03+00	\N	\N	1
10901	1	2020-11-07 20:10:56+00	\N	\N	1
10902	1	2020-11-07 21:32:44+00	\N	\N	1
10903	1	2020-11-07 22:42:10+00	\N	\N	1
10904	1	2020-11-07 23:26:18+00	\N	\N	1
10905	1	2020-11-08 00:48:24+00	\N	\N	1
10906	1	2020-11-08 01:51:28+00	\N	\N	1
10907	1	2020-11-08 02:34:57+00	\N	\N	1
10908	2	2020-11-07 14:51:48+00	\N	\N	1
10909	2	2020-11-07 18:52:00+00	\N	\N	1
10910	2	2020-11-07 22:49:42+00	\N	\N	1
10911	3	2020-11-08 03:13:44+00	\N	\N	1
10912	6	2020-11-08 03:00:44+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10913	5	2020-11-08 11:28:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10914	1	2020-11-08 11:14:32+00	\N	\N	1
10915	1	2020-11-08 12:21:38+00	\N	\N	1
10916	1	2020-11-08 13:20:15+00	\N	\N	1
10917	1	2020-11-08 14:48:18+00	\N	\N	1
10918	1	2020-11-08 15:22:11+00	\N	\N	1
10919	1	2020-11-08 16:50:28+00	\N	\N	1
10920	1	2020-11-08 17:21:38+00	\N	\N	1
10921	1	2020-11-08 18:15:43+00	\N	\N	1
10922	1	2020-11-08 19:07:34+00	\N	\N	1
10923	1	2020-11-08 20:40:59+00	\N	\N	1
10924	1	2020-11-08 21:33:31+00	\N	\N	1
10925	1	2020-11-08 22:49:25+00	\N	\N	1
10926	1	2020-11-08 23:16:11+00	\N	\N	1
10927	1	2020-11-09 00:11:07+00	\N	\N	1
10928	1	2020-11-09 01:27:29+00	\N	\N	1
10929	1	2020-11-09 02:09:40+00	\N	\N	1
10930	2	2020-11-08 14:45:04+00	\N	\N	1
10931	2	2020-11-08 19:17:33+00	\N	\N	1
10932	2	2020-11-08 22:44:37+00	\N	\N	1
10933	3	2020-11-09 02:03:10+00	\N	\N	1
10934	6	2020-11-09 03:08:06+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10935	5	2020-11-09 11:06:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10936	1	2020-11-09 11:38:14+00	\N	\N	1
10937	1	2020-11-09 12:23:38+00	\N	\N	1
10938	1	2020-11-09 13:12:06+00	\N	\N	1
10939	1	2020-11-09 14:24:02+00	\N	\N	1
10940	1	2020-11-09 15:16:03+00	\N	\N	1
10941	1	2020-11-09 16:39:11+00	\N	\N	1
10942	1	2020-11-09 17:32:39+00	\N	\N	1
10943	1	2020-11-09 18:08:53+00	\N	\N	1
10944	1	2020-11-09 19:07:31+00	\N	\N	1
10945	1	2020-11-09 20:25:27+00	\N	\N	1
10946	1	2020-11-09 21:21:04+00	\N	\N	1
10947	1	2020-11-09 22:52:27+00	\N	\N	1
10948	1	2020-11-09 23:27:31+00	\N	\N	1
10949	1	2020-11-10 00:32:42+00	\N	\N	1
10950	1	2020-11-10 01:51:51+00	\N	\N	1
10951	1	2020-11-10 02:47:54+00	\N	\N	1
10952	2	2020-11-09 14:30:07+00	\N	\N	1
10953	2	2020-11-09 19:07:11+00	\N	\N	1
10954	2	2020-11-09 23:16:08+00	\N	\N	1
10955	3	2020-11-10 02:07:51+00	\N	\N	1
10956	6	2020-11-10 02:41:12+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10957	5	2020-11-10 11:08:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10958	1	2020-11-10 11:44:24+00	\N	\N	1
10959	1	2020-11-10 12:47:44+00	\N	\N	1
10960	1	2020-11-10 13:20:16+00	\N	\N	1
10961	1	2020-11-10 14:35:30+00	\N	\N	1
10962	1	2020-11-10 15:23:54+00	\N	\N	1
10963	1	2020-11-10 16:20:56+00	\N	\N	1
10964	1	2020-11-10 17:40:10+00	\N	\N	1
10965	1	2020-11-10 18:13:02+00	\N	\N	1
10966	1	2020-11-10 19:46:33+00	\N	\N	1
10967	1	2020-11-10 20:17:35+00	\N	\N	1
10973	1	2020-11-11 02:32:13+00	\N	\N	1
10974	2	2020-11-10 15:20:23+00	\N	\N	1
10975	2	2020-11-10 18:52:03+00	\N	\N	1
10976	2	2020-11-10 23:11:51+00	\N	\N	1
10977	3	2020-11-11 03:19:47+00	\N	\N	1
10978	6	2020-11-11 02:34:53+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
10979	5	2020-11-11 11:30:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
10980	1	2020-11-11 11:08:39+00	\N	\N	1
10981	1	2020-11-11 12:14:16+00	\N	\N	1
10982	1	2020-11-11 13:37:31+00	\N	\N	1
10983	1	2020-11-11 14:28:18+00	\N	\N	1
10984	1	2020-11-11 15:23:42+00	\N	\N	1
10985	1	2020-11-11 16:10:06+00	\N	\N	1
10986	1	2020-11-11 17:27:23+00	\N	\N	1
10987	1	2020-11-11 18:22:05+00	\N	\N	1
10988	1	2020-11-11 19:34:36+00	\N	\N	1
10989	1	2020-11-11 20:41:56+00	\N	\N	1
10990	1	2020-11-11 21:41:19+00	\N	\N	1
10991	1	2020-11-11 22:29:00+00	\N	\N	1
10992	1	2020-11-11 23:14:19+00	\N	\N	1
10993	1	2020-11-12 00:18:28+00	\N	\N	1
10994	1	2020-11-12 01:22:50+00	\N	\N	1
10995	1	2020-11-12 02:36:11+00	\N	\N	1
10996	2	2020-11-11 14:40:41+00	\N	\N	1
10997	2	2020-11-11 19:21:50+00	\N	\N	1
10998	2	2020-11-11 22:34:51+00	\N	\N	1
10999	3	2020-11-12 01:34:17+00	\N	\N	1
11000	6	2020-11-12 03:13:06+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11001	5	2020-11-12 11:10:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11002	1	2020-11-12 11:12:31+00	\N	\N	1
11003	1	2020-11-12 12:09:40+00	\N	\N	1
11004	1	2020-11-12 13:18:15+00	\N	\N	1
11005	1	2020-11-12 14:32:48+00	\N	\N	1
11006	1	2020-11-12 15:48:37+00	\N	\N	1
11007	1	2020-11-12 16:08:34+00	\N	\N	1
11008	1	2020-11-12 17:32:26+00	\N	\N	1
11009	1	2020-11-12 18:25:35+00	\N	\N	1
11010	1	2020-11-12 19:41:47+00	\N	\N	1
11011	1	2020-11-12 20:38:15+00	\N	\N	1
11012	1	2020-11-12 21:15:12+00	\N	\N	1
11013	1	2020-11-12 22:14:44+00	\N	\N	1
11014	1	2020-11-12 23:12:28+00	\N	\N	1
11015	1	2020-11-13 00:52:24+00	\N	\N	1
11016	1	2020-11-13 01:18:16+00	\N	\N	1
11017	1	2020-11-13 02:48:33+00	\N	\N	1
11018	2	2020-11-12 15:01:28+00	\N	\N	1
11019	2	2020-11-12 18:35:18+00	\N	\N	1
11020	2	2020-11-12 23:10:35+00	\N	\N	1
11021	3	2020-11-13 03:04:52+00	\N	\N	1
11022	6	2020-11-13 02:59:14+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11023	5	2020-11-13 11:54:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11024	1	2020-11-13 11:44:33+00	\N	\N	1
11025	1	2020-11-13 12:26:54+00	\N	\N	1
11026	1	2020-11-13 13:32:46+00	\N	\N	1
11027	1	2020-11-13 14:33:02+00	\N	\N	1
11028	1	2020-11-13 15:25:48+00	\N	\N	1
11029	1	2020-11-13 16:52:06+00	\N	\N	1
11030	1	2020-11-13 17:08:33+00	\N	\N	1
11031	1	2020-11-13 18:38:30+00	\N	\N	1
11032	1	2020-11-13 19:32:37+00	\N	\N	1
11033	1	2020-11-13 20:23:40+00	\N	\N	1
11034	1	2020-11-13 21:16:06+00	\N	\N	1
11035	1	2020-11-13 22:40:20+00	\N	\N	1
11036	1	2020-11-13 23:14:26+00	\N	\N	1
11037	1	2020-11-14 00:42:01+00	\N	\N	1
11038	1	2020-11-14 01:32:36+00	\N	\N	1
11039	1	2020-11-14 02:20:21+00	\N	\N	1
11040	2	2020-11-13 15:04:50+00	\N	\N	1
11041	2	2020-11-13 19:05:54+00	\N	\N	1
11042	2	2020-11-13 23:27:42+00	\N	\N	1
11043	3	2020-11-14 02:15:35+00	\N	\N	1
11044	6	2020-11-14 02:40:32+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11045	5	2020-11-14 10:59:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11046	1	2020-11-14 11:07:53+00	\N	\N	1
11047	1	2020-11-14 12:45:31+00	\N	\N	1
11048	1	2020-11-14 13:50:03+00	\N	\N	1
11049	1	2020-11-14 14:48:41+00	\N	\N	1
11050	1	2020-11-14 15:45:15+00	\N	\N	1
11051	1	2020-11-14 16:39:43+00	\N	\N	1
11052	1	2020-11-14 17:11:01+00	\N	\N	1
11053	1	2020-11-14 18:09:43+00	\N	\N	1
11054	1	2020-11-14 19:29:25+00	\N	\N	1
11055	1	2020-11-14 20:22:30+00	\N	\N	1
11056	1	2020-11-14 21:36:13+00	\N	\N	1
11057	1	2020-11-14 22:26:07+00	\N	\N	1
11058	1	2020-11-14 23:31:43+00	\N	\N	1
11059	1	2020-11-15 00:32:11+00	\N	\N	1
11060	1	2020-11-15 01:16:49+00	\N	\N	1
11061	1	2020-11-15 02:46:48+00	\N	\N	1
11062	2	2020-11-14 14:35:58+00	\N	\N	1
11063	2	2020-11-14 19:08:48+00	\N	\N	1
11064	2	2020-11-14 22:41:39+00	\N	\N	1
11065	3	2020-11-15 01:52:16+00	\N	\N	1
11066	6	2020-11-15 02:34:10+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11067	5	2020-11-15 11:55:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11068	1	2020-11-15 11:30:59+00	\N	\N	1
11069	1	2020-11-15 12:35:12+00	\N	\N	1
11070	1	2020-11-15 13:16:48+00	\N	\N	1
11071	1	2020-11-15 14:14:29+00	\N	\N	1
11072	1	2020-11-15 15:30:01+00	\N	\N	1
11073	1	2020-11-15 16:48:34+00	\N	\N	1
11074	1	2020-11-15 17:31:23+00	\N	\N	1
11075	1	2020-11-15 18:44:14+00	\N	\N	1
11076	1	2020-11-15 19:41:06+00	\N	\N	1
11077	1	2020-11-15 20:28:55+00	\N	\N	1
11078	1	2020-11-15 21:50:14+00	\N	\N	1
11079	1	2020-11-15 22:43:21+00	\N	\N	1
11080	1	2020-11-15 23:30:48+00	\N	\N	1
11081	1	2020-11-16 00:29:50+00	\N	\N	1
11082	1	2020-11-16 01:18:31+00	\N	\N	1
11083	1	2020-11-16 02:11:51+00	\N	\N	1
11084	2	2020-11-15 14:33:22+00	\N	\N	1
11085	2	2020-11-15 19:17:26+00	\N	\N	1
11086	2	2020-11-15 23:01:42+00	\N	\N	1
11087	3	2020-11-16 01:42:33+00	\N	\N	1
11088	6	2020-11-16 02:36:51+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11089	5	2020-11-16 10:38:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11090	1	2020-11-16 11:21:57+00	\N	\N	1
11091	1	2020-11-16 12:50:53+00	\N	\N	1
11092	1	2020-11-16 13:31:44+00	\N	\N	1
11093	1	2020-11-16 14:50:10+00	\N	\N	1
11094	1	2020-11-16 15:39:21+00	\N	\N	1
11095	1	2020-11-16 16:50:22+00	\N	\N	1
11096	1	2020-11-16 17:21:01+00	\N	\N	1
11097	1	2020-11-16 18:41:46+00	\N	\N	1
11098	1	2020-11-16 19:25:07+00	\N	\N	1
11099	1	2020-11-16 20:09:28+00	\N	\N	1
11100	1	2020-11-16 21:39:51+00	\N	\N	1
11101	1	2020-11-16 22:18:26+00	\N	\N	1
11102	1	2020-11-16 23:52:02+00	\N	\N	1
11103	1	2020-11-17 00:26:11+00	\N	\N	1
11104	1	2020-11-17 01:14:48+00	\N	\N	1
11105	1	2020-11-17 02:40:01+00	\N	\N	1
11106	2	2020-11-16 14:43:52+00	\N	\N	1
11107	2	2020-11-16 18:49:17+00	\N	\N	1
11108	2	2020-11-16 22:54:55+00	\N	\N	1
11109	3	2020-11-17 02:02:49+00	\N	\N	1
11110	6	2020-11-17 02:13:28+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11111	5	2020-11-17 11:53:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11112	1	2020-11-17 11:28:16+00	\N	\N	1
11113	1	2020-11-17 12:51:58+00	\N	\N	1
11114	1	2020-11-17 13:19:19+00	\N	\N	1
11115	1	2020-11-17 14:44:05+00	\N	\N	1
11116	1	2020-11-17 15:51:37+00	\N	\N	1
11117	1	2020-11-17 16:14:49+00	\N	\N	1
11118	1	2020-11-17 17:48:40+00	\N	\N	1
11119	1	2020-11-17 18:18:54+00	\N	\N	1
11120	1	2020-11-17 19:42:40+00	\N	\N	1
11121	1	2020-11-17 20:19:34+00	\N	\N	1
11122	1	2020-11-17 21:45:21+00	\N	\N	1
11123	1	2020-11-17 22:17:57+00	\N	\N	1
11124	1	2020-11-17 23:27:55+00	\N	\N	1
11125	1	2020-11-18 00:49:47+00	\N	\N	1
11126	1	2020-11-18 01:40:58+00	\N	\N	1
11127	1	2020-11-18 02:36:31+00	\N	\N	1
11128	2	2020-11-17 15:03:33+00	\N	\N	1
11129	2	2020-11-17 18:34:33+00	\N	\N	1
11130	2	2020-11-17 23:27:39+00	\N	\N	1
11131	3	2020-11-18 01:46:48+00	\N	\N	1
11132	6	2020-11-18 03:14:43+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11133	5	2020-11-18 10:58:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11134	1	2020-11-18 11:50:49+00	\N	\N	1
11135	1	2020-11-18 12:32:27+00	\N	\N	1
11136	1	2020-11-18 13:41:47+00	\N	\N	1
11137	1	2020-11-18 14:43:39+00	\N	\N	1
11138	1	2020-11-18 15:49:04+00	\N	\N	1
11139	1	2020-11-18 16:50:29+00	\N	\N	1
11140	1	2020-11-18 17:32:01+00	\N	\N	1
11141	1	2020-11-18 18:49:03+00	\N	\N	1
11142	1	2020-11-18 19:24:44+00	\N	\N	1
11143	1	2020-11-18 20:32:20+00	\N	\N	1
11144	1	2020-11-18 21:32:31+00	\N	\N	1
11145	1	2020-11-18 22:30:24+00	\N	\N	1
11146	1	2020-11-18 23:49:41+00	\N	\N	1
11147	1	2020-11-19 00:28:16+00	\N	\N	1
11148	1	2020-11-19 01:48:36+00	\N	\N	1
11149	1	2020-11-19 02:52:23+00	\N	\N	1
11150	2	2020-11-18 14:53:45+00	\N	\N	1
11151	2	2020-11-18 18:46:14+00	\N	\N	1
11152	2	2020-11-18 22:41:34+00	\N	\N	1
11153	3	2020-11-19 03:26:58+00	\N	\N	1
11154	6	2020-11-19 03:10:36+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11155	5	2020-11-19 12:09:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11156	1	2020-11-19 11:17:46+00	\N	\N	1
11157	1	2020-11-19 12:28:06+00	\N	\N	1
11158	1	2020-11-19 13:48:28+00	\N	\N	1
11159	1	2020-11-19 14:40:49+00	\N	\N	1
11160	1	2020-11-19 15:27:19+00	\N	\N	1
11161	1	2020-11-19 16:38:20+00	\N	\N	1
11162	1	2020-11-19 17:44:11+00	\N	\N	1
11163	1	2020-11-19 18:37:05+00	\N	\N	1
11164	1	2020-11-19 19:27:08+00	\N	\N	1
11165	1	2020-11-19 20:48:44+00	\N	\N	1
11166	1	2020-11-19 21:48:07+00	\N	\N	1
11167	1	2020-11-19 22:51:15+00	\N	\N	1
11168	1	2020-11-19 23:51:27+00	\N	\N	1
11169	1	2020-11-20 00:31:43+00	\N	\N	1
11170	1	2020-11-20 01:43:12+00	\N	\N	1
11171	1	2020-11-20 02:11:14+00	\N	\N	1
11172	2	2020-11-19 14:49:24+00	\N	\N	1
11173	2	2020-11-19 18:49:03+00	\N	\N	1
11174	2	2020-11-19 22:54:56+00	\N	\N	1
11175	3	2020-11-20 02:35:19+00	\N	\N	1
11276	1	2020-11-24 21:12:15+00	\N	\N	1
11277	1	2020-11-24 22:43:40+00	\N	\N	1
11278	1	2020-11-24 23:40:37+00	\N	\N	1
11279	1	2020-11-25 00:42:44+00	\N	\N	1
11176	6	2020-11-20 03:10:01+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11177	5	2020-11-20 10:50:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11178	1	2020-11-20 11:13:10+00	\N	\N	1
11179	1	2020-11-20 12:34:59+00	\N	\N	1
11180	1	2020-11-20 13:47:17+00	\N	\N	1
11181	1	2020-11-20 14:27:12+00	\N	\N	1
11182	1	2020-11-20 15:42:49+00	\N	\N	1
11183	1	2020-11-20 16:51:49+00	\N	\N	1
11184	1	2020-11-20 17:20:34+00	\N	\N	1
11185	1	2020-11-20 18:48:48+00	\N	\N	1
11186	1	2020-11-20 19:26:16+00	\N	\N	1
11187	1	2020-11-20 20:32:28+00	\N	\N	1
11188	1	2020-11-20 21:09:30+00	\N	\N	1
11189	1	2020-11-20 22:43:52+00	\N	\N	1
11190	1	2020-11-20 23:13:11+00	\N	\N	1
11191	1	2020-11-21 00:13:29+00	\N	\N	1
11192	1	2020-11-21 01:36:43+00	\N	\N	1
11193	1	2020-11-21 02:51:08+00	\N	\N	1
11194	2	2020-11-20 15:14:26+00	\N	\N	1
11195	2	2020-11-20 18:34:35+00	\N	\N	1
11196	2	2020-11-20 22:52:16+00	\N	\N	1
11197	3	2020-11-21 02:15:58+00	\N	\N	1
11198	6	2020-11-21 01:52:15+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11199	5	2020-11-21 11:07:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11200	1	2020-11-21 11:13:31+00	\N	\N	1
11201	1	2020-11-21 12:22:50+00	\N	\N	1
11202	1	2020-11-21 13:49:44+00	\N	\N	1
11203	1	2020-11-21 14:15:55+00	\N	\N	1
11204	1	2020-11-21 15:37:09+00	\N	\N	1
11205	1	2020-11-21 16:15:54+00	\N	\N	1
11206	1	2020-11-21 17:36:11+00	\N	\N	1
11207	1	2020-11-21 18:51:57+00	\N	\N	1
11208	1	2020-11-21 19:25:24+00	\N	\N	1
11209	1	2020-11-21 20:18:32+00	\N	\N	1
11210	1	2020-11-21 21:35:54+00	\N	\N	1
11211	1	2020-11-21 22:25:43+00	\N	\N	1
11212	1	2020-11-21 23:31:44+00	\N	\N	1
11213	1	2020-11-22 00:31:57+00	\N	\N	1
11214	1	2020-11-22 01:42:23+00	\N	\N	1
11215	1	2020-11-22 02:14:45+00	\N	\N	1
11216	2	2020-11-21 14:47:50+00	\N	\N	1
11217	2	2020-11-21 19:15:02+00	\N	\N	1
11218	2	2020-11-21 23:23:08+00	\N	\N	1
11219	3	2020-11-22 03:13:21+00	\N	\N	1
11220	6	2020-11-22 02:40:46+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11221	5	2020-11-22 11:13:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11222	1	2020-11-22 11:46:40+00	\N	\N	1
11223	1	2020-11-22 12:17:56+00	\N	\N	1
11224	1	2020-11-22 13:18:38+00	\N	\N	1
11225	1	2020-11-22 14:08:31+00	\N	\N	1
11226	1	2020-11-22 15:31:33+00	\N	\N	1
11227	1	2020-11-22 16:22:19+00	\N	\N	1
11228	1	2020-11-22 17:35:36+00	\N	\N	1
11229	1	2020-11-22 18:15:16+00	\N	\N	1
11230	1	2020-11-22 19:22:20+00	\N	\N	1
11231	1	2020-11-22 20:33:10+00	\N	\N	1
11232	1	2020-11-22 21:42:12+00	\N	\N	1
11233	1	2020-11-22 22:37:44+00	\N	\N	1
11234	1	2020-11-22 23:32:06+00	\N	\N	1
11235	1	2020-11-23 00:28:26+00	\N	\N	1
11236	1	2020-11-23 01:32:22+00	\N	\N	1
11237	1	2020-11-23 02:28:41+00	\N	\N	1
11238	2	2020-11-22 14:42:41+00	\N	\N	1
11239	2	2020-11-22 18:38:36+00	\N	\N	1
11240	2	2020-11-22 22:31:02+00	\N	\N	1
11241	3	2020-11-23 02:58:55+00	\N	\N	1
11242	6	2020-11-23 02:54:55+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11243	5	2020-11-23 11:25:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11244	1	2020-11-23 11:11:06+00	\N	\N	1
11245	1	2020-11-23 12:51:54+00	\N	\N	1
11246	1	2020-11-23 13:18:52+00	\N	\N	1
11247	1	2020-11-23 14:10:58+00	\N	\N	1
11248	1	2020-11-23 15:48:04+00	\N	\N	1
11249	1	2020-11-23 16:19:02+00	\N	\N	1
11250	1	2020-11-23 17:33:53+00	\N	\N	1
11251	1	2020-11-23 18:40:59+00	\N	\N	1
11252	1	2020-11-23 19:46:24+00	\N	\N	1
11253	1	2020-11-23 20:12:54+00	\N	\N	1
11254	1	2020-11-23 21:36:25+00	\N	\N	1
11255	1	2020-11-23 22:43:53+00	\N	\N	1
11256	1	2020-11-23 23:20:05+00	\N	\N	1
11257	1	2020-11-24 00:18:16+00	\N	\N	1
11258	1	2020-11-24 01:08:43+00	\N	\N	1
11259	1	2020-11-24 02:43:29+00	\N	\N	1
11260	2	2020-11-23 14:53:35+00	\N	\N	1
11261	2	2020-11-23 18:43:38+00	\N	\N	1
11262	2	2020-11-23 23:27:56+00	\N	\N	1
11263	3	2020-11-24 02:41:37+00	\N	\N	1
11264	6	2020-11-24 02:27:21+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11265	5	2020-11-24 12:11:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11266	1	2020-11-24 11:16:19+00	\N	\N	1
11267	1	2020-11-24 12:44:32+00	\N	\N	1
11268	1	2020-11-24 13:31:35+00	\N	\N	1
11269	1	2020-11-24 14:14:40+00	\N	\N	1
11270	1	2020-11-24 15:17:41+00	\N	\N	1
11271	1	2020-11-24 16:29:37+00	\N	\N	1
11272	1	2020-11-24 17:51:13+00	\N	\N	1
11273	1	2020-11-24 18:11:31+00	\N	\N	1
11274	1	2020-11-24 19:37:11+00	\N	\N	1
11275	1	2020-11-24 20:48:44+00	\N	\N	1
11280	1	2020-11-25 01:40:29+00	\N	\N	1
11281	1	2020-11-25 02:50:15+00	\N	\N	1
11282	2	2020-11-24 15:17:00+00	\N	\N	1
11283	2	2020-11-24 19:01:07+00	\N	\N	1
11284	2	2020-11-24 22:49:30+00	\N	\N	1
11285	3	2020-11-25 03:26:20+00	\N	\N	1
11286	6	2020-11-25 02:21:52+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11287	5	2020-11-25 12:11:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11288	1	2020-11-25 11:39:04+00	\N	\N	1
11289	1	2020-11-25 12:51:20+00	\N	\N	1
11290	1	2020-11-25 13:40:36+00	\N	\N	1
11291	1	2020-11-25 14:12:11+00	\N	\N	1
11292	1	2020-11-25 15:20:16+00	\N	\N	1
11293	1	2020-11-25 16:30:58+00	\N	\N	1
11294	1	2020-11-25 17:17:44+00	\N	\N	1
11295	1	2020-11-25 18:15:15+00	\N	\N	1
11296	1	2020-11-25 19:41:55+00	\N	\N	1
11297	1	2020-11-25 20:34:46+00	\N	\N	1
11298	1	2020-11-25 21:31:30+00	\N	\N	1
11299	1	2020-11-25 22:11:15+00	\N	\N	1
11300	1	2020-11-25 23:50:05+00	\N	\N	1
11301	1	2020-11-26 00:09:30+00	\N	\N	1
11302	1	2020-11-26 01:17:12+00	\N	\N	1
11303	1	2020-11-26 02:31:24+00	\N	\N	1
11304	2	2020-11-25 14:43:44+00	\N	\N	1
11305	2	2020-11-25 18:53:13+00	\N	\N	1
11306	2	2020-11-25 22:57:08+00	\N	\N	1
11307	3	2020-11-26 03:16:03+00	\N	\N	1
11308	6	2020-11-26 02:03:18+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11309	5	2020-11-26 10:49:12+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11310	1	2020-11-26 11:17:49+00	\N	\N	1
11311	1	2020-11-26 12:16:52+00	\N	\N	1
11312	1	2020-11-26 13:38:10+00	\N	\N	1
11313	1	2020-11-26 14:37:49+00	\N	\N	1
11314	1	2020-11-26 15:12:52+00	\N	\N	1
11315	1	2020-11-26 16:23:40+00	\N	\N	1
11316	1	2020-11-26 17:29:21+00	\N	\N	1
11317	1	2020-11-26 18:11:23+00	\N	\N	1
11318	1	2020-11-26 19:43:55+00	\N	\N	1
11319	1	2020-11-26 20:41:32+00	\N	\N	1
11320	1	2020-11-26 21:47:03+00	\N	\N	1
11321	1	2020-11-26 22:39:53+00	\N	\N	1
11322	1	2020-11-26 23:27:22+00	\N	\N	1
11323	1	2020-11-27 00:41:02+00	\N	\N	1
11324	1	2020-11-27 01:49:24+00	\N	\N	1
11325	1	2020-11-27 02:48:20+00	\N	\N	1
11326	2	2020-11-26 15:24:47+00	\N	\N	1
11327	2	2020-11-26 19:09:15+00	\N	\N	1
11328	2	2020-11-26 23:27:17+00	\N	\N	1
11329	3	2020-11-27 02:48:31+00	\N	\N	1
11330	6	2020-11-27 02:18:16+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11331	5	2020-11-27 11:29:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11332	1	2020-11-27 11:20:24+00	\N	\N	1
11333	1	2020-11-27 12:47:02+00	\N	\N	1
11334	1	2020-11-27 13:20:23+00	\N	\N	1
11335	1	2020-11-27 14:08:41+00	\N	\N	1
11336	1	2020-11-27 15:42:34+00	\N	\N	1
11337	1	2020-11-27 16:08:52+00	\N	\N	1
11338	1	2020-11-27 17:27:04+00	\N	\N	1
11339	1	2020-11-27 18:29:29+00	\N	\N	1
11340	1	2020-11-27 19:31:39+00	\N	\N	1
11341	1	2020-11-27 20:48:51+00	\N	\N	1
11342	1	2020-11-27 21:52:25+00	\N	\N	1
11343	1	2020-11-27 22:10:51+00	\N	\N	1
11344	1	2020-11-27 23:28:23+00	\N	\N	1
11345	1	2020-11-28 00:17:50+00	\N	\N	1
11346	1	2020-11-28 01:38:04+00	\N	\N	1
11347	1	2020-11-28 02:24:33+00	\N	\N	1
11348	2	2020-11-27 15:09:06+00	\N	\N	1
11349	2	2020-11-27 18:50:48+00	\N	\N	1
11350	2	2020-11-27 23:16:15+00	\N	\N	1
11351	3	2020-11-28 03:27:00+00	\N	\N	1
11352	6	2020-11-28 03:08:14+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11353	5	2020-11-28 12:05:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11354	1	2020-11-28 11:11:12+00	\N	\N	1
11355	1	2020-11-28 12:25:21+00	\N	\N	1
11356	1	2020-11-28 13:21:53+00	\N	\N	1
11357	1	2020-11-28 14:43:08+00	\N	\N	1
11358	1	2020-11-28 15:36:47+00	\N	\N	1
11359	1	2020-11-28 16:29:21+00	\N	\N	1
11360	1	2020-11-28 17:31:38+00	\N	\N	1
11361	1	2020-11-28 18:13:00+00	\N	\N	1
11362	1	2020-11-28 19:31:22+00	\N	\N	1
11363	1	2020-11-28 20:17:41+00	\N	\N	1
11364	1	2020-11-28 21:08:38+00	\N	\N	1
11365	1	2020-11-28 22:30:47+00	\N	\N	1
11366	1	2020-11-28 23:28:29+00	\N	\N	1
11367	1	2020-11-29 00:12:03+00	\N	\N	1
11368	1	2020-11-29 01:35:36+00	\N	\N	1
11369	1	2020-11-29 02:42:23+00	\N	\N	1
11370	2	2020-11-28 14:43:35+00	\N	\N	1
11371	2	2020-11-28 19:11:23+00	\N	\N	1
11372	2	2020-11-28 22:31:58+00	\N	\N	1
11373	3	2020-11-29 01:43:31+00	\N	\N	1
11374	6	2020-11-29 03:09:47+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11375	5	2020-11-29 10:53:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11376	1	2020-11-29 11:09:48+00	\N	\N	1
11377	1	2020-11-29 12:37:10+00	\N	\N	1
11378	1	2020-11-29 13:47:55+00	\N	\N	1
11379	1	2020-11-29 14:43:46+00	\N	\N	1
11380	1	2020-11-29 15:41:09+00	\N	\N	1
11381	1	2020-11-29 16:29:45+00	\N	\N	1
11382	1	2020-11-29 17:10:34+00	\N	\N	1
11383	1	2020-11-29 18:26:32+00	\N	\N	1
11384	1	2020-11-29 19:24:16+00	\N	\N	1
11385	1	2020-11-29 20:42:38+00	\N	\N	1
11386	1	2020-11-29 21:33:12+00	\N	\N	1
11387	1	2020-11-29 22:52:07+00	\N	\N	1
11388	1	2020-11-29 23:10:48+00	\N	\N	1
11389	1	2020-11-30 00:16:01+00	\N	\N	1
11390	1	2020-11-30 01:25:25+00	\N	\N	1
11391	1	2020-11-30 02:15:25+00	\N	\N	1
11392	2	2020-11-29 14:51:52+00	\N	\N	1
11393	2	2020-11-29 18:43:13+00	\N	\N	1
11394	2	2020-11-29 22:39:24+00	\N	\N	1
11395	3	2020-11-30 01:50:26+00	\N	\N	1
11396	6	2020-11-30 02:16:40+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11397	5	2020-11-30 12:09:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11398	1	2020-11-30 11:23:05+00	\N	\N	1
11399	1	2020-11-30 12:49:10+00	\N	\N	1
11400	1	2020-11-30 13:32:55+00	\N	\N	1
11401	1	2020-11-30 14:31:37+00	\N	\N	1
11402	1	2020-11-30 15:16:21+00	\N	\N	1
11403	1	2020-11-30 16:13:45+00	\N	\N	1
11404	1	2020-11-30 17:09:30+00	\N	\N	1
11405	1	2020-11-30 18:37:18+00	\N	\N	1
11406	1	2020-11-30 19:48:17+00	\N	\N	1
11407	1	2020-11-30 20:10:50+00	\N	\N	1
11408	1	2020-11-30 21:43:56+00	\N	\N	1
11409	1	2020-11-30 22:45:55+00	\N	\N	1
11410	1	2020-11-30 23:13:41+00	\N	\N	1
11411	1	2020-12-01 00:12:41+00	\N	\N	1
11412	1	2020-12-01 01:37:10+00	\N	\N	1
11413	1	2020-12-01 02:18:31+00	\N	\N	1
11414	2	2020-11-30 14:56:05+00	\N	\N	1
11415	2	2020-11-30 18:32:45+00	\N	\N	1
11416	2	2020-11-30 22:32:47+00	\N	\N	1
11417	3	2020-12-01 01:41:02+00	\N	\N	1
11418	6	2020-12-01 01:51:19+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11419	5	2020-12-01 12:06:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11420	1	2020-12-01 11:49:41+00	\N	\N	1
11421	1	2020-12-01 12:17:58+00	\N	\N	1
11422	1	2020-12-01 13:37:09+00	\N	\N	1
11423	1	2020-12-01 14:32:34+00	\N	\N	1
11424	1	2020-12-01 15:12:15+00	\N	\N	1
11425	1	2020-12-01 16:38:49+00	\N	\N	1
11426	1	2020-12-01 17:50:45+00	\N	\N	1
11427	1	2020-12-01 18:15:52+00	\N	\N	1
11428	1	2020-12-01 19:11:01+00	\N	\N	1
11429	1	2020-12-01 20:26:10+00	\N	\N	1
11430	1	2020-12-01 21:16:56+00	\N	\N	1
11431	1	2020-12-01 22:41:09+00	\N	\N	1
11432	1	2020-12-01 23:51:27+00	\N	\N	1
11433	1	2020-12-02 00:43:09+00	\N	\N	1
11434	1	2020-12-02 01:17:59+00	\N	\N	1
11435	1	2020-12-02 02:26:10+00	\N	\N	1
11436	2	2020-12-01 15:15:11+00	\N	\N	1
11437	2	2020-12-01 19:00:20+00	\N	\N	1
11438	2	2020-12-01 22:44:39+00	\N	\N	1
11439	3	2020-12-02 03:02:37+00	\N	\N	1
11440	6	2020-12-02 02:48:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11441	5	2020-12-02 12:28:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11442	1	2020-12-02 11:33:23+00	\N	\N	1
11443	1	2020-12-02 12:44:36+00	\N	\N	1
11444	1	2020-12-02 13:14:03+00	\N	\N	1
11445	1	2020-12-02 14:25:13+00	\N	\N	1
11446	1	2020-12-02 15:19:31+00	\N	\N	1
11447	1	2020-12-02 16:26:26+00	\N	\N	1
11448	1	2020-12-02 17:32:02+00	\N	\N	1
11449	1	2020-12-02 18:50:55+00	\N	\N	1
11450	1	2020-12-02 19:26:41+00	\N	\N	1
11451	1	2020-12-02 20:39:49+00	\N	\N	1
11452	1	2020-12-02 21:29:26+00	\N	\N	1
11453	1	2020-12-02 22:11:14+00	\N	\N	1
11454	1	2020-12-02 23:24:13+00	\N	\N	1
11455	1	2020-12-03 00:36:58+00	\N	\N	1
11456	1	2020-12-03 01:10:06+00	\N	\N	1
11457	1	2020-12-03 02:22:19+00	\N	\N	1
11458	2	2020-12-02 14:46:45+00	\N	\N	1
11459	2	2020-12-02 18:36:18+00	\N	\N	1
11460	2	2020-12-02 23:14:11+00	\N	\N	1
11461	3	2020-12-03 02:09:54+00	\N	\N	1
11462	6	2020-12-03 01:49:53+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11463	5	2020-12-03 12:10:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11464	1	2020-12-03 11:30:49+00	\N	\N	1
11465	1	2020-12-03 12:25:29+00	\N	\N	1
11466	1	2020-12-03 13:41:22+00	\N	\N	1
11467	1	2020-12-03 14:11:10+00	\N	\N	1
11468	1	2020-12-03 15:10:10+00	\N	\N	1
11469	1	2020-12-03 16:46:07+00	\N	\N	1
11470	1	2020-12-03 17:42:52+00	\N	\N	1
11471	1	2020-12-03 18:15:02+00	\N	\N	1
11472	1	2020-12-03 19:14:50+00	\N	\N	1
11473	1	2020-12-03 20:21:00+00	\N	\N	1
11474	1	2020-12-03 21:30:29+00	\N	\N	1
11475	1	2020-12-03 22:50:16+00	\N	\N	1
11476	1	2020-12-03 23:19:06+00	\N	\N	1
11477	1	2020-12-04 00:22:52+00	\N	\N	1
11478	1	2020-12-04 01:32:38+00	\N	\N	1
11479	1	2020-12-04 02:22:23+00	\N	\N	1
11480	2	2020-12-03 15:08:01+00	\N	\N	1
11481	2	2020-12-03 18:55:36+00	\N	\N	1
11482	2	2020-12-03 23:05:56+00	\N	\N	1
11483	3	2020-12-04 01:44:57+00	\N	\N	1
11584	1	2020-12-08 21:12:06+00	\N	\N	1
11585	1	2020-12-08 22:46:11+00	\N	\N	1
11586	1	2020-12-08 23:45:25+00	\N	\N	1
11484	6	2020-12-04 02:01:42+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11485	5	2020-12-04 11:22:35+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11486	1	2020-12-04 11:10:31+00	\N	\N	1
11487	1	2020-12-04 12:22:15+00	\N	\N	1
11488	1	2020-12-04 13:32:56+00	\N	\N	1
11489	1	2020-12-04 14:12:31+00	\N	\N	1
11490	1	2020-12-04 15:41:27+00	\N	\N	1
11491	1	2020-12-04 16:17:06+00	\N	\N	1
11492	1	2020-12-04 17:46:41+00	\N	\N	1
11493	1	2020-12-04 18:08:36+00	\N	\N	1
11494	1	2020-12-04 19:46:51+00	\N	\N	1
11495	1	2020-12-04 20:35:09+00	\N	\N	1
11496	1	2020-12-04 21:41:17+00	\N	\N	1
11497	1	2020-12-04 22:49:32+00	\N	\N	1
11498	1	2020-12-04 23:40:04+00	\N	\N	1
11499	1	2020-12-05 00:21:52+00	\N	\N	1
11500	1	2020-12-05 01:31:11+00	\N	\N	1
11501	1	2020-12-05 02:40:31+00	\N	\N	1
11502	2	2020-12-04 14:40:57+00	\N	\N	1
11503	2	2020-12-04 18:54:40+00	\N	\N	1
11504	2	2020-12-04 23:05:25+00	\N	\N	1
11505	3	2020-12-05 01:37:16+00	\N	\N	1
11506	6	2020-12-05 01:56:46+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11507	5	2020-12-05 11:07:07+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11508	1	2020-12-05 11:07:50+00	\N	\N	1
11509	1	2020-12-05 12:35:03+00	\N	\N	1
11510	1	2020-12-05 13:41:05+00	\N	\N	1
11511	1	2020-12-05 14:38:13+00	\N	\N	1
11512	1	2020-12-05 15:36:32+00	\N	\N	1
11513	1	2020-12-05 16:47:11+00	\N	\N	1
11514	1	2020-12-05 17:33:08+00	\N	\N	1
11515	1	2020-12-05 18:18:22+00	\N	\N	1
11516	1	2020-12-05 19:51:53+00	\N	\N	1
11517	1	2020-12-05 20:10:43+00	\N	\N	1
11518	1	2020-12-05 21:20:48+00	\N	\N	1
11519	1	2020-12-05 22:19:16+00	\N	\N	1
11520	1	2020-12-05 23:52:12+00	\N	\N	1
11521	1	2020-12-06 00:30:33+00	\N	\N	1
11522	1	2020-12-06 01:24:37+00	\N	\N	1
11523	1	2020-12-06 02:30:14+00	\N	\N	1
11524	2	2020-12-05 15:02:55+00	\N	\N	1
11525	2	2020-12-05 18:54:25+00	\N	\N	1
11526	2	2020-12-05 23:17:50+00	\N	\N	1
11527	3	2020-12-06 02:02:17+00	\N	\N	1
11528	6	2020-12-06 01:52:37+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11529	5	2020-12-06 10:44:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11530	1	2020-12-06 11:30:42+00	\N	\N	1
11531	1	2020-12-06 12:14:08+00	\N	\N	1
11532	1	2020-12-06 13:38:22+00	\N	\N	1
11533	1	2020-12-06 14:28:34+00	\N	\N	1
11534	1	2020-12-06 15:44:27+00	\N	\N	1
11535	1	2020-12-06 16:14:45+00	\N	\N	1
11536	1	2020-12-06 17:28:01+00	\N	\N	1
11537	1	2020-12-06 18:21:35+00	\N	\N	1
11538	1	2020-12-06 19:51:08+00	\N	\N	1
11539	1	2020-12-06 20:27:57+00	\N	\N	1
11540	1	2020-12-06 21:50:40+00	\N	\N	1
11541	1	2020-12-06 22:08:14+00	\N	\N	1
11542	1	2020-12-06 23:26:44+00	\N	\N	1
11543	1	2020-12-07 00:24:25+00	\N	\N	1
11544	1	2020-12-07 01:20:05+00	\N	\N	1
11545	1	2020-12-07 02:26:18+00	\N	\N	1
11546	2	2020-12-06 15:29:12+00	\N	\N	1
11547	2	2020-12-06 18:55:13+00	\N	\N	1
11548	2	2020-12-06 23:01:36+00	\N	\N	1
11549	3	2020-12-07 02:44:19+00	\N	\N	1
11550	6	2020-12-07 02:19:48+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11551	5	2020-12-07 11:20:10+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11552	1	2020-12-07 11:27:00+00	\N	\N	1
11553	1	2020-12-07 12:18:08+00	\N	\N	1
11554	1	2020-12-07 13:52:17+00	\N	\N	1
11555	1	2020-12-07 14:21:53+00	\N	\N	1
11556	1	2020-12-07 15:20:13+00	\N	\N	1
11557	1	2020-12-07 16:29:48+00	\N	\N	1
11558	1	2020-12-07 17:11:08+00	\N	\N	1
11559	1	2020-12-07 18:14:33+00	\N	\N	1
11560	1	2020-12-07 19:08:22+00	\N	\N	1
11561	1	2020-12-07 20:45:39+00	\N	\N	1
11562	1	2020-12-07 21:26:17+00	\N	\N	1
11563	1	2020-12-07 22:52:05+00	\N	\N	1
11564	1	2020-12-07 23:21:58+00	\N	\N	1
11565	1	2020-12-08 00:33:47+00	\N	\N	1
11566	1	2020-12-08 01:51:13+00	\N	\N	1
11567	1	2020-12-08 02:40:50+00	\N	\N	1
11568	2	2020-12-07 14:30:53+00	\N	\N	1
11569	2	2020-12-07 19:29:19+00	\N	\N	1
11570	2	2020-12-07 23:10:44+00	\N	\N	1
11571	3	2020-12-08 02:55:22+00	\N	\N	1
11572	6	2020-12-08 02:13:57+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11573	5	2020-12-08 12:05:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11574	1	2020-12-08 11:27:06+00	\N	\N	1
11575	1	2020-12-08 12:27:58+00	\N	\N	1
11576	1	2020-12-08 13:17:10+00	\N	\N	1
11577	1	2020-12-08 14:29:38+00	\N	\N	1
11578	1	2020-12-08 15:28:24+00	\N	\N	1
11579	1	2020-12-08 16:44:30+00	\N	\N	1
11580	1	2020-12-08 17:13:30+00	\N	\N	1
11581	1	2020-12-08 18:16:49+00	\N	\N	1
11582	1	2020-12-08 19:17:24+00	\N	\N	1
11583	1	2020-12-08 20:10:43+00	\N	\N	1
11587	1	2020-12-09 00:14:01+00	\N	\N	1
11588	1	2020-12-09 01:50:38+00	\N	\N	1
11589	1	2020-12-09 02:30:05+00	\N	\N	1
11590	2	2020-12-08 14:40:45+00	\N	\N	1
11591	2	2020-12-08 19:26:29+00	\N	\N	1
11592	2	2020-12-08 22:41:30+00	\N	\N	1
11593	3	2020-12-09 01:44:34+00	\N	\N	1
11594	6	2020-12-09 03:11:33+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11595	5	2020-12-09 11:25:07+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11596	1	2020-12-09 11:44:24+00	\N	\N	1
11597	1	2020-12-09 12:46:13+00	\N	\N	1
11598	1	2020-12-09 13:27:06+00	\N	\N	1
11599	1	2020-12-09 14:52:17+00	\N	\N	1
11600	1	2020-12-09 15:15:37+00	\N	\N	1
11601	1	2020-12-09 16:13:29+00	\N	\N	1
11602	1	2020-12-09 17:13:03+00	\N	\N	1
11603	1	2020-12-09 18:45:30+00	\N	\N	1
11604	1	2020-12-09 19:39:39+00	\N	\N	1
11605	1	2020-12-09 20:50:34+00	\N	\N	1
11606	1	2020-12-09 21:46:01+00	\N	\N	1
11607	1	2020-12-09 22:37:24+00	\N	\N	1
11608	1	2020-12-09 23:28:43+00	\N	\N	1
11609	1	2020-12-10 00:23:31+00	\N	\N	1
11610	1	2020-12-10 01:36:59+00	\N	\N	1
11611	1	2020-12-10 02:37:31+00	\N	\N	1
11612	2	2020-12-09 14:39:12+00	\N	\N	1
11613	2	2020-12-09 19:11:13+00	\N	\N	1
11614	2	2020-12-09 22:41:17+00	\N	\N	1
11615	3	2020-12-10 03:21:31+00	\N	\N	1
11616	6	2020-12-10 01:54:12+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11617	5	2020-12-10 11:13:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11618	1	2020-12-10 11:28:31+00	\N	\N	1
11619	1	2020-12-10 12:42:31+00	\N	\N	1
11620	1	2020-12-10 13:14:01+00	\N	\N	1
11621	1	2020-12-10 14:16:57+00	\N	\N	1
11622	1	2020-12-10 15:11:30+00	\N	\N	1
11623	1	2020-12-10 16:31:03+00	\N	\N	1
11624	1	2020-12-10 17:30:34+00	\N	\N	1
11625	1	2020-12-10 18:08:24+00	\N	\N	1
11626	1	2020-12-10 19:28:20+00	\N	\N	1
11627	1	2020-12-10 20:32:54+00	\N	\N	1
11628	1	2020-12-10 21:40:01+00	\N	\N	1
11629	1	2020-12-10 22:43:08+00	\N	\N	1
11630	1	2020-12-10 23:14:51+00	\N	\N	1
11631	1	2020-12-11 00:08:57+00	\N	\N	1
11632	1	2020-12-11 01:45:07+00	\N	\N	1
11633	1	2020-12-11 02:19:16+00	\N	\N	1
11634	2	2020-12-10 15:10:54+00	\N	\N	1
11635	2	2020-12-10 19:20:43+00	\N	\N	1
11636	2	2020-12-10 22:55:15+00	\N	\N	1
11637	3	2020-12-11 02:41:20+00	\N	\N	1
11638	6	2020-12-11 02:56:07+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11639	5	2020-12-11 12:13:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11640	1	2020-12-11 11:38:29+00	\N	\N	1
11641	1	2020-12-11 12:45:41+00	\N	\N	1
11642	1	2020-12-11 13:09:35+00	\N	\N	1
11643	1	2020-12-11 14:29:51+00	\N	\N	1
11644	1	2020-12-11 15:31:29+00	\N	\N	1
11645	1	2020-12-11 16:11:43+00	\N	\N	1
11646	1	2020-12-11 17:43:18+00	\N	\N	1
11647	1	2020-12-11 18:41:03+00	\N	\N	1
11648	1	2020-12-11 19:29:08+00	\N	\N	1
11649	1	2020-12-11 20:50:33+00	\N	\N	1
11650	1	2020-12-11 21:24:16+00	\N	\N	1
11651	1	2020-12-11 22:27:18+00	\N	\N	1
11652	1	2020-12-11 23:21:56+00	\N	\N	1
11653	1	2020-12-12 00:32:04+00	\N	\N	1
11654	1	2020-12-12 01:37:45+00	\N	\N	1
11655	1	2020-12-12 02:18:37+00	\N	\N	1
11656	2	2020-12-11 14:35:11+00	\N	\N	1
11657	2	2020-12-11 19:10:26+00	\N	\N	1
11658	2	2020-12-11 22:36:44+00	\N	\N	1
11659	3	2020-12-12 02:53:43+00	\N	\N	1
11660	6	2020-12-12 01:54:25+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11661	5	2020-12-12 11:24:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11662	1	2020-12-12 11:51:19+00	\N	\N	1
11663	1	2020-12-12 12:35:53+00	\N	\N	1
11664	1	2020-12-12 13:36:58+00	\N	\N	1
11665	1	2020-12-12 14:16:19+00	\N	\N	1
11666	1	2020-12-12 15:49:22+00	\N	\N	1
11667	1	2020-12-12 16:40:20+00	\N	\N	1
11668	1	2020-12-12 17:28:50+00	\N	\N	1
11669	1	2020-12-12 18:11:42+00	\N	\N	1
11670	1	2020-12-12 19:07:51+00	\N	\N	1
11671	1	2020-12-12 20:48:36+00	\N	\N	1
11672	1	2020-12-12 21:24:45+00	\N	\N	1
11673	1	2020-12-12 22:13:40+00	\N	\N	1
11674	1	2020-12-12 23:44:54+00	\N	\N	1
11675	1	2020-12-13 00:27:21+00	\N	\N	1
11676	1	2020-12-13 01:31:20+00	\N	\N	1
11677	1	2020-12-13 02:41:17+00	\N	\N	1
11678	2	2020-12-12 14:41:46+00	\N	\N	1
11679	2	2020-12-12 18:56:13+00	\N	\N	1
11680	2	2020-12-12 22:53:11+00	\N	\N	1
11681	3	2020-12-13 02:29:51+00	\N	\N	1
11682	6	2020-12-13 02:47:31+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11683	5	2020-12-13 11:28:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11684	1	2020-12-13 11:34:20+00	\N	\N	1
11685	1	2020-12-13 12:41:04+00	\N	\N	1
11686	1	2020-12-13 13:39:38+00	\N	\N	1
11687	1	2020-12-13 14:31:23+00	\N	\N	1
11688	1	2020-12-13 15:34:24+00	\N	\N	1
11689	1	2020-12-13 16:07:37+00	\N	\N	1
11690	1	2020-12-13 17:14:10+00	\N	\N	1
11691	1	2020-12-13 18:22:26+00	\N	\N	1
11692	1	2020-12-13 19:35:24+00	\N	\N	1
11693	1	2020-12-13 20:39:09+00	\N	\N	1
11694	1	2020-12-13 21:18:03+00	\N	\N	1
11695	1	2020-12-13 22:36:34+00	\N	\N	1
11696	1	2020-12-13 23:18:22+00	\N	\N	1
11697	1	2020-12-14 00:19:06+00	\N	\N	1
11698	1	2020-12-14 01:13:50+00	\N	\N	1
11699	1	2020-12-14 02:45:41+00	\N	\N	1
11700	2	2020-12-13 15:13:55+00	\N	\N	1
11701	2	2020-12-13 18:41:05+00	\N	\N	1
11702	2	2020-12-13 23:20:32+00	\N	\N	1
11703	3	2020-12-14 03:17:56+00	\N	\N	1
11704	6	2020-12-14 03:05:51+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11705	5	2020-12-14 10:44:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11706	1	2020-12-14 11:28:31+00	\N	\N	1
11707	1	2020-12-14 12:35:06+00	\N	\N	1
11708	1	2020-12-14 13:50:12+00	\N	\N	1
11709	1	2020-12-14 14:51:07+00	\N	\N	1
11710	1	2020-12-14 15:15:55+00	\N	\N	1
11711	1	2020-12-14 16:46:48+00	\N	\N	1
11712	1	2020-12-14 17:14:18+00	\N	\N	1
11713	1	2020-12-14 18:19:47+00	\N	\N	1
11714	1	2020-12-14 19:33:19+00	\N	\N	1
11715	1	2020-12-14 20:11:47+00	\N	\N	1
11716	1	2020-12-14 21:52:20+00	\N	\N	1
11717	1	2020-12-14 22:12:08+00	\N	\N	1
11718	1	2020-12-14 23:21:26+00	\N	\N	1
11719	1	2020-12-15 00:40:10+00	\N	\N	1
11720	1	2020-12-15 01:32:05+00	\N	\N	1
11721	1	2020-12-15 02:17:16+00	\N	\N	1
11722	2	2020-12-14 14:59:58+00	\N	\N	1
11723	2	2020-12-14 18:39:18+00	\N	\N	1
11724	2	2020-12-14 22:55:06+00	\N	\N	1
11725	3	2020-12-15 01:44:18+00	\N	\N	1
11726	6	2020-12-15 03:01:00+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11727	5	2020-12-15 10:37:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11728	1	2020-12-15 11:16:16+00	\N	\N	1
11729	1	2020-12-15 12:40:24+00	\N	\N	1
11730	1	2020-12-15 13:51:38+00	\N	\N	1
11731	1	2020-12-15 14:36:03+00	\N	\N	1
11732	1	2020-12-15 15:35:10+00	\N	\N	1
11733	1	2020-12-15 16:27:31+00	\N	\N	1
11734	1	2020-12-15 17:13:26+00	\N	\N	1
11735	1	2020-12-15 18:45:18+00	\N	\N	1
11736	1	2020-12-15 19:08:55+00	\N	\N	1
11737	1	2020-12-15 20:26:08+00	\N	\N	1
11738	1	2020-12-15 21:49:23+00	\N	\N	1
11739	1	2020-12-15 22:29:48+00	\N	\N	1
11740	1	2020-12-15 23:15:56+00	\N	\N	1
11741	1	2020-12-16 00:41:36+00	\N	\N	1
11742	1	2020-12-16 01:07:45+00	\N	\N	1
11743	1	2020-12-16 02:24:04+00	\N	\N	1
11744	2	2020-12-15 14:56:00+00	\N	\N	1
11745	2	2020-12-15 19:22:42+00	\N	\N	1
11746	2	2020-12-15 23:07:48+00	\N	\N	1
11747	3	2020-12-16 02:26:02+00	\N	\N	1
11748	6	2020-12-16 02:44:59+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11749	5	2020-12-16 12:02:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11750	1	2020-12-16 11:40:19+00	\N	\N	1
11751	1	2020-12-16 12:16:45+00	\N	\N	1
11752	1	2020-12-16 13:41:10+00	\N	\N	1
11753	1	2020-12-16 14:48:05+00	\N	\N	1
11754	1	2020-12-16 15:18:47+00	\N	\N	1
11755	1	2020-12-16 16:38:22+00	\N	\N	1
11756	1	2020-12-16 17:16:51+00	\N	\N	1
11757	1	2020-12-16 18:15:39+00	\N	\N	1
11758	1	2020-12-16 19:39:38+00	\N	\N	1
11759	1	2020-12-16 20:46:24+00	\N	\N	1
11760	1	2020-12-16 21:15:24+00	\N	\N	1
11761	1	2020-12-16 22:38:49+00	\N	\N	1
11762	1	2020-12-16 23:41:46+00	\N	\N	1
11763	1	2020-12-17 00:35:00+00	\N	\N	1
11764	1	2020-12-17 01:48:47+00	\N	\N	1
11765	1	2020-12-17 02:51:56+00	\N	\N	1
11766	2	2020-12-16 15:09:09+00	\N	\N	1
11767	2	2020-12-16 19:16:55+00	\N	\N	1
11768	2	2020-12-16 23:22:31+00	\N	\N	1
11769	3	2020-12-17 02:53:24+00	\N	\N	1
11770	6	2020-12-17 02:14:14+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11771	5	2020-12-17 11:32:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11772	1	2020-12-17 11:30:53+00	\N	\N	1
11773	1	2020-12-17 12:41:18+00	\N	\N	1
11774	1	2020-12-17 13:26:43+00	\N	\N	1
11775	1	2020-12-17 14:49:36+00	\N	\N	1
11776	1	2020-12-17 15:44:02+00	\N	\N	1
11777	1	2020-12-17 16:22:17+00	\N	\N	1
11778	1	2020-12-17 17:11:10+00	\N	\N	1
11779	1	2020-12-17 18:07:49+00	\N	\N	1
11780	1	2020-12-17 19:40:13+00	\N	\N	1
11781	1	2020-12-17 20:38:58+00	\N	\N	1
11782	1	2020-12-17 21:30:15+00	\N	\N	1
11783	1	2020-12-17 22:44:43+00	\N	\N	1
11784	1	2020-12-17 23:24:23+00	\N	\N	1
11785	1	2020-12-18 00:22:51+00	\N	\N	1
11786	1	2020-12-18 01:47:12+00	\N	\N	1
11787	1	2020-12-18 02:40:06+00	\N	\N	1
11788	2	2020-12-17 15:24:18+00	\N	\N	1
11789	2	2020-12-17 18:38:42+00	\N	\N	1
11790	2	2020-12-17 23:16:47+00	\N	\N	1
11791	3	2020-12-18 02:46:05+00	\N	\N	1
11892	1	2020-12-22 21:47:38+00	\N	\N	1
11893	1	2020-12-22 22:07:58+00	\N	\N	1
11792	6	2020-12-18 02:19:26+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11793	5	2020-12-18 10:37:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11794	1	2020-12-18 11:48:45+00	\N	\N	1
11795	1	2020-12-18 12:25:04+00	\N	\N	1
11796	1	2020-12-18 13:25:41+00	\N	\N	1
11797	1	2020-12-18 14:14:16+00	\N	\N	1
11798	1	2020-12-18 15:21:20+00	\N	\N	1
11799	1	2020-12-18 16:46:02+00	\N	\N	1
11800	1	2020-12-18 17:30:38+00	\N	\N	1
11801	1	2020-12-18 18:18:14+00	\N	\N	1
11802	1	2020-12-18 19:52:26+00	\N	\N	1
11803	1	2020-12-18 20:08:05+00	\N	\N	1
11804	1	2020-12-18 21:26:25+00	\N	\N	1
11805	1	2020-12-18 22:13:32+00	\N	\N	1
11806	1	2020-12-18 23:36:33+00	\N	\N	1
11807	1	2020-12-19 00:51:55+00	\N	\N	1
11808	1	2020-12-19 01:21:49+00	\N	\N	1
11809	1	2020-12-19 02:34:10+00	\N	\N	1
11810	2	2020-12-18 14:54:15+00	\N	\N	1
11811	2	2020-12-18 18:39:04+00	\N	\N	1
11812	2	2020-12-18 23:04:05+00	\N	\N	1
11813	3	2020-12-19 01:56:37+00	\N	\N	1
11814	6	2020-12-19 02:55:43+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11815	5	2020-12-19 11:15:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11816	1	2020-12-19 11:42:14+00	\N	\N	1
11817	1	2020-12-19 12:51:25+00	\N	\N	1
11818	1	2020-12-19 13:44:37+00	\N	\N	1
11819	1	2020-12-19 14:23:26+00	\N	\N	1
11820	1	2020-12-19 15:40:10+00	\N	\N	1
11821	1	2020-12-19 16:17:56+00	\N	\N	1
11822	1	2020-12-19 17:08:11+00	\N	\N	1
11823	1	2020-12-19 18:42:20+00	\N	\N	1
11824	1	2020-12-19 19:15:00+00	\N	\N	1
11825	1	2020-12-19 20:30:57+00	\N	\N	1
11826	1	2020-12-19 21:24:30+00	\N	\N	1
11827	1	2020-12-19 22:28:38+00	\N	\N	1
11828	1	2020-12-19 23:35:57+00	\N	\N	1
11829	1	2020-12-20 00:44:13+00	\N	\N	1
11830	1	2020-12-20 01:21:30+00	\N	\N	1
11831	1	2020-12-20 02:45:32+00	\N	\N	1
11832	2	2020-12-19 15:29:25+00	\N	\N	1
11833	2	2020-12-19 19:00:27+00	\N	\N	1
11834	2	2020-12-19 23:26:59+00	\N	\N	1
11835	3	2020-12-20 03:18:59+00	\N	\N	1
11836	6	2020-12-20 02:44:19+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11837	5	2020-12-20 11:20:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11838	1	2020-12-20 11:41:05+00	\N	\N	1
11839	1	2020-12-20 12:10:34+00	\N	\N	1
11840	1	2020-12-20 13:46:20+00	\N	\N	1
11841	1	2020-12-20 14:12:56+00	\N	\N	1
11842	1	2020-12-20 15:11:08+00	\N	\N	1
11843	1	2020-12-20 16:16:33+00	\N	\N	1
11844	1	2020-12-20 17:51:31+00	\N	\N	1
11845	1	2020-12-20 18:42:25+00	\N	\N	1
11846	1	2020-12-20 19:49:11+00	\N	\N	1
11847	1	2020-12-20 20:51:43+00	\N	\N	1
11848	1	2020-12-20 21:29:59+00	\N	\N	1
11849	1	2020-12-20 22:44:29+00	\N	\N	1
11850	1	2020-12-20 23:49:51+00	\N	\N	1
11851	1	2020-12-21 00:11:10+00	\N	\N	1
11852	1	2020-12-21 01:37:11+00	\N	\N	1
11853	1	2020-12-21 02:39:28+00	\N	\N	1
11854	2	2020-12-20 15:20:35+00	\N	\N	1
11855	2	2020-12-20 18:43:15+00	\N	\N	1
11856	2	2020-12-20 22:59:40+00	\N	\N	1
11857	3	2020-12-21 03:11:56+00	\N	\N	1
11858	6	2020-12-21 01:58:09+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11859	5	2020-12-21 10:40:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11860	1	2020-12-21 11:46:12+00	\N	\N	1
11861	1	2020-12-21 12:49:37+00	\N	\N	1
11862	1	2020-12-21 13:20:28+00	\N	\N	1
11863	1	2020-12-21 14:44:18+00	\N	\N	1
11864	1	2020-12-21 15:11:35+00	\N	\N	1
11865	1	2020-12-21 16:15:56+00	\N	\N	1
11866	1	2020-12-21 17:49:16+00	\N	\N	1
11867	1	2020-12-21 18:49:35+00	\N	\N	1
11868	1	2020-12-21 19:33:19+00	\N	\N	1
11869	1	2020-12-21 20:14:21+00	\N	\N	1
11870	1	2020-12-21 21:21:33+00	\N	\N	1
11871	1	2020-12-21 22:13:27+00	\N	\N	1
11872	1	2020-12-21 23:47:22+00	\N	\N	1
11873	1	2020-12-22 00:18:32+00	\N	\N	1
11874	1	2020-12-22 01:24:37+00	\N	\N	1
11875	1	2020-12-22 02:32:17+00	\N	\N	1
11876	2	2020-12-21 14:54:18+00	\N	\N	1
11877	2	2020-12-21 19:28:02+00	\N	\N	1
11878	2	2020-12-21 23:02:10+00	\N	\N	1
11879	3	2020-12-22 02:24:34+00	\N	\N	1
11880	6	2020-12-22 02:54:14+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11881	5	2020-12-22 11:53:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11882	1	2020-12-22 11:15:17+00	\N	\N	1
11883	1	2020-12-22 12:40:50+00	\N	\N	1
11884	1	2020-12-22 13:47:29+00	\N	\N	1
11885	1	2020-12-22 14:18:04+00	\N	\N	1
11886	1	2020-12-22 15:26:08+00	\N	\N	1
11887	1	2020-12-22 16:17:31+00	\N	\N	1
11888	1	2020-12-22 17:16:21+00	\N	\N	1
11889	1	2020-12-22 18:45:09+00	\N	\N	1
11890	1	2020-12-22 19:10:00+00	\N	\N	1
11891	1	2020-12-22 20:36:19+00	\N	\N	1
11894	1	2020-12-22 23:26:36+00	\N	\N	1
11895	1	2020-12-23 00:50:31+00	\N	\N	1
11896	1	2020-12-23 01:31:33+00	\N	\N	1
11897	1	2020-12-23 02:51:22+00	\N	\N	1
11898	2	2020-12-22 14:53:31+00	\N	\N	1
11899	2	2020-12-22 19:29:22+00	\N	\N	1
11900	2	2020-12-22 22:35:59+00	\N	\N	1
11901	3	2020-12-23 01:45:37+00	\N	\N	1
11902	6	2020-12-23 02:15:51+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11903	5	2020-12-23 11:20:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11904	1	2020-12-23 11:50:13+00	\N	\N	1
11905	1	2020-12-23 12:49:00+00	\N	\N	1
11906	1	2020-12-23 13:14:24+00	\N	\N	1
11907	1	2020-12-23 14:20:30+00	\N	\N	1
11908	1	2020-12-23 15:32:26+00	\N	\N	1
11909	1	2020-12-23 16:11:19+00	\N	\N	1
11910	1	2020-12-23 17:16:32+00	\N	\N	1
11911	1	2020-12-23 18:31:58+00	\N	\N	1
11912	1	2020-12-23 19:39:32+00	\N	\N	1
11913	1	2020-12-23 20:16:57+00	\N	\N	1
11914	1	2020-12-23 21:25:34+00	\N	\N	1
11915	1	2020-12-23 22:29:16+00	\N	\N	1
11916	1	2020-12-23 23:33:02+00	\N	\N	1
11917	1	2020-12-24 00:17:45+00	\N	\N	1
11918	1	2020-12-24 01:30:11+00	\N	\N	1
11919	1	2020-12-24 02:12:08+00	\N	\N	1
11920	2	2020-12-23 14:36:46+00	\N	\N	1
11921	2	2020-12-23 19:19:34+00	\N	\N	1
11922	2	2020-12-23 23:01:54+00	\N	\N	1
11923	3	2020-12-24 03:27:25+00	\N	\N	1
11924	6	2020-12-24 02:27:35+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11925	5	2020-12-24 12:08:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11926	1	2020-12-24 11:40:01+00	\N	\N	1
11927	1	2020-12-24 12:26:27+00	\N	\N	1
11928	1	2020-12-24 13:12:31+00	\N	\N	1
11929	1	2020-12-24 14:19:17+00	\N	\N	1
11930	1	2020-12-24 15:35:26+00	\N	\N	1
11931	1	2020-12-24 16:36:36+00	\N	\N	1
11932	1	2020-12-24 17:39:41+00	\N	\N	1
11933	1	2020-12-24 18:12:49+00	\N	\N	1
11934	1	2020-12-24 19:22:53+00	\N	\N	1
11935	1	2020-12-24 20:44:52+00	\N	\N	1
11936	1	2020-12-24 21:41:10+00	\N	\N	1
11937	1	2020-12-24 22:15:24+00	\N	\N	1
11938	1	2020-12-24 23:11:20+00	\N	\N	1
11939	1	2020-12-25 00:22:58+00	\N	\N	1
11940	1	2020-12-25 01:29:23+00	\N	\N	1
11941	1	2020-12-25 02:41:57+00	\N	\N	1
11942	2	2020-12-24 15:23:11+00	\N	\N	1
11943	2	2020-12-24 19:19:34+00	\N	\N	1
11944	2	2020-12-24 22:37:11+00	\N	\N	1
11945	3	2020-12-25 01:56:40+00	\N	\N	1
11946	6	2020-12-25 01:59:48+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11947	5	2020-12-25 11:58:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11948	1	2020-12-25 11:19:28+00	\N	\N	1
11949	1	2020-12-25 12:31:02+00	\N	\N	1
11950	1	2020-12-25 13:38:47+00	\N	\N	1
11951	1	2020-12-25 14:21:23+00	\N	\N	1
11952	1	2020-12-25 15:09:00+00	\N	\N	1
11953	1	2020-12-25 16:44:05+00	\N	\N	1
11954	1	2020-12-25 17:47:46+00	\N	\N	1
11955	1	2020-12-25 18:29:26+00	\N	\N	1
11956	1	2020-12-25 19:42:01+00	\N	\N	1
11957	1	2020-12-25 20:09:39+00	\N	\N	1
11958	1	2020-12-25 21:36:30+00	\N	\N	1
11959	1	2020-12-25 22:36:21+00	\N	\N	1
11960	1	2020-12-25 23:35:04+00	\N	\N	1
11961	1	2020-12-26 00:43:35+00	\N	\N	1
11962	1	2020-12-26 01:24:38+00	\N	\N	1
11963	1	2020-12-26 02:27:20+00	\N	\N	1
11964	2	2020-12-25 15:26:38+00	\N	\N	1
11965	2	2020-12-25 19:09:18+00	\N	\N	1
11966	2	2020-12-25 23:28:30+00	\N	\N	1
11967	3	2020-12-26 03:15:19+00	\N	\N	1
11968	6	2020-12-26 02:09:14+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11969	5	2020-12-26 11:13:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11970	1	2020-12-26 11:15:16+00	\N	\N	1
11971	1	2020-12-26 12:51:03+00	\N	\N	1
11972	1	2020-12-26 13:49:36+00	\N	\N	1
11973	1	2020-12-26 14:29:44+00	\N	\N	1
11974	1	2020-12-26 15:30:14+00	\N	\N	1
11975	1	2020-12-26 16:08:42+00	\N	\N	1
11976	1	2020-12-26 17:08:35+00	\N	\N	1
11977	1	2020-12-26 18:14:56+00	\N	\N	1
11978	1	2020-12-26 19:29:40+00	\N	\N	1
11979	1	2020-12-26 20:09:05+00	\N	\N	1
11980	1	2020-12-26 21:28:04+00	\N	\N	1
11981	1	2020-12-26 22:47:50+00	\N	\N	1
11982	1	2020-12-26 23:12:28+00	\N	\N	1
11983	1	2020-12-27 00:12:35+00	\N	\N	1
11984	1	2020-12-27 01:33:23+00	\N	\N	1
11985	1	2020-12-27 02:51:56+00	\N	\N	1
11986	2	2020-12-26 15:01:28+00	\N	\N	1
11987	2	2020-12-26 18:43:08+00	\N	\N	1
11988	2	2020-12-26 23:11:10+00	\N	\N	1
11989	3	2020-12-27 01:47:09+00	\N	\N	1
11990	6	2020-12-27 02:26:49+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
11991	5	2020-12-27 10:31:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
11992	1	2020-12-27 11:33:10+00	\N	\N	1
11993	1	2020-12-27 12:18:15+00	\N	\N	1
11994	1	2020-12-27 13:15:51+00	\N	\N	1
11995	1	2020-12-27 14:22:41+00	\N	\N	1
11996	1	2020-12-27 15:51:26+00	\N	\N	1
11997	1	2020-12-27 16:43:15+00	\N	\N	1
11998	1	2020-12-27 17:25:21+00	\N	\N	1
11999	1	2020-12-27 18:31:09+00	\N	\N	1
12000	1	2020-12-27 19:32:43+00	\N	\N	1
12001	1	2020-12-27 20:49:56+00	\N	\N	1
12002	1	2020-12-27 21:38:33+00	\N	\N	1
12003	1	2020-12-27 22:27:40+00	\N	\N	1
12004	1	2020-12-27 23:33:17+00	\N	\N	1
12005	1	2020-12-28 00:38:04+00	\N	\N	1
12006	1	2020-12-28 01:22:53+00	\N	\N	1
12007	1	2020-12-28 02:16:49+00	\N	\N	1
12008	2	2020-12-27 15:06:25+00	\N	\N	1
12009	2	2020-12-27 19:09:10+00	\N	\N	1
12010	2	2020-12-27 23:05:36+00	\N	\N	1
12011	3	2020-12-28 02:44:18+00	\N	\N	1
12012	6	2020-12-28 01:45:07+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12013	5	2020-12-28 11:33:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12014	1	2020-12-28 11:40:39+00	\N	\N	1
12015	1	2020-12-28 12:15:25+00	\N	\N	1
12016	1	2020-12-28 13:24:32+00	\N	\N	1
12017	1	2020-12-28 14:33:37+00	\N	\N	1
12018	1	2020-12-28 15:47:18+00	\N	\N	1
12019	1	2020-12-28 16:33:49+00	\N	\N	1
12020	1	2020-12-28 17:50:18+00	\N	\N	1
12021	1	2020-12-28 18:16:28+00	\N	\N	1
12022	1	2020-12-28 19:20:51+00	\N	\N	1
12023	1	2020-12-28 20:18:58+00	\N	\N	1
12024	1	2020-12-28 21:11:37+00	\N	\N	1
12025	1	2020-12-28 22:37:09+00	\N	\N	1
12026	1	2020-12-28 23:35:51+00	\N	\N	1
12027	1	2020-12-29 00:29:53+00	\N	\N	1
12028	1	2020-12-29 01:09:46+00	\N	\N	1
12029	1	2020-12-29 02:49:26+00	\N	\N	1
12030	2	2020-12-28 15:26:56+00	\N	\N	1
12031	2	2020-12-28 19:06:20+00	\N	\N	1
12032	2	2020-12-28 23:03:02+00	\N	\N	1
12033	3	2020-12-29 01:30:25+00	\N	\N	1
12034	6	2020-12-29 02:58:19+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12035	5	2020-12-29 11:57:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12036	1	2020-12-29 11:36:50+00	\N	\N	1
12037	1	2020-12-29 12:43:06+00	\N	\N	1
12038	1	2020-12-29 13:07:48+00	\N	\N	1
12039	1	2020-12-29 14:17:15+00	\N	\N	1
12040	1	2020-12-29 15:38:16+00	\N	\N	1
12041	1	2020-12-29 16:30:47+00	\N	\N	1
12042	1	2020-12-29 17:43:12+00	\N	\N	1
12043	1	2020-12-29 18:33:23+00	\N	\N	1
12044	1	2020-12-29 19:13:39+00	\N	\N	1
12045	1	2020-12-29 20:44:03+00	\N	\N	1
12046	1	2020-12-29 21:50:16+00	\N	\N	1
12047	1	2020-12-29 22:17:07+00	\N	\N	1
12048	1	2020-12-29 23:23:40+00	\N	\N	1
12049	1	2020-12-30 00:29:10+00	\N	\N	1
12050	1	2020-12-30 01:10:02+00	\N	\N	1
12051	1	2020-12-30 02:15:07+00	\N	\N	1
12052	2	2020-12-29 15:02:49+00	\N	\N	1
12053	2	2020-12-29 18:51:40+00	\N	\N	1
12054	2	2020-12-29 23:06:31+00	\N	\N	1
12055	3	2020-12-30 02:48:18+00	\N	\N	1
12056	6	2020-12-30 01:50:14+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12057	5	2020-12-30 10:32:14+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12058	1	2020-12-30 11:15:43+00	\N	\N	1
12059	1	2020-12-30 12:13:25+00	\N	\N	1
12060	1	2020-12-30 13:31:25+00	\N	\N	1
12061	1	2020-12-30 14:29:13+00	\N	\N	1
12062	1	2020-12-30 15:37:40+00	\N	\N	1
12063	1	2020-12-30 16:41:50+00	\N	\N	1
12064	1	2020-12-30 17:15:47+00	\N	\N	1
12065	1	2020-12-30 18:24:00+00	\N	\N	1
12066	1	2020-12-30 19:39:41+00	\N	\N	1
12067	1	2020-12-30 20:07:35+00	\N	\N	1
12068	1	2020-12-30 21:33:11+00	\N	\N	1
12069	1	2020-12-30 22:09:25+00	\N	\N	1
12070	1	2020-12-30 23:17:28+00	\N	\N	1
12071	1	2020-12-31 00:35:59+00	\N	\N	1
12072	1	2020-12-31 01:40:50+00	\N	\N	1
12073	1	2020-12-31 02:36:26+00	\N	\N	1
12074	2	2020-12-30 14:45:05+00	\N	\N	1
12075	2	2020-12-30 19:07:56+00	\N	\N	1
12076	2	2020-12-30 23:07:40+00	\N	\N	1
12077	3	2020-12-31 03:10:49+00	\N	\N	1
12078	6	2020-12-31 03:14:32+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12079	5	2020-12-31 11:01:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12080	1	2020-12-31 11:52:16+00	\N	\N	1
12081	1	2020-12-31 12:10:21+00	\N	\N	1
12082	1	2020-12-31 13:31:13+00	\N	\N	1
12083	1	2020-12-31 14:42:17+00	\N	\N	1
12084	1	2020-12-31 15:08:53+00	\N	\N	1
12085	1	2020-12-31 16:44:55+00	\N	\N	1
12086	1	2020-12-31 17:17:11+00	\N	\N	1
12087	1	2020-12-31 18:51:53+00	\N	\N	1
12088	1	2020-12-31 19:25:19+00	\N	\N	1
12089	1	2020-12-31 20:35:34+00	\N	\N	1
12090	1	2020-12-31 21:22:05+00	\N	\N	1
12091	1	2020-12-31 22:18:02+00	\N	\N	1
12092	1	2020-12-31 23:51:21+00	\N	\N	1
12093	1	2021-01-01 00:37:38+00	\N	\N	1
12094	1	2021-01-01 01:29:23+00	\N	\N	1
12095	1	2021-01-01 02:37:46+00	\N	\N	1
12096	2	2020-12-31 15:17:35+00	\N	\N	1
12097	2	2020-12-31 18:56:12+00	\N	\N	1
12098	2	2020-12-31 22:56:55+00	\N	\N	1
12099	3	2021-01-01 01:57:36+00	\N	\N	1
12200	1	2021-01-05 21:23:26+00	\N	\N	1
12100	6	2021-01-01 02:39:00+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12101	5	2021-01-01 11:15:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12102	1	2021-01-01 11:50:20+00	\N	\N	1
12103	1	2021-01-01 12:37:34+00	\N	\N	1
12104	1	2021-01-01 13:39:40+00	\N	\N	1
12105	1	2021-01-01 14:21:50+00	\N	\N	1
12106	1	2021-01-01 15:34:59+00	\N	\N	1
12107	1	2021-01-01 16:31:07+00	\N	\N	1
12108	1	2021-01-01 17:34:17+00	\N	\N	1
12109	1	2021-01-01 18:21:43+00	\N	\N	1
12110	1	2021-01-01 19:36:28+00	\N	\N	1
12111	1	2021-01-01 20:21:46+00	\N	\N	1
12112	1	2021-01-01 21:29:40+00	\N	\N	1
12113	1	2021-01-01 22:08:31+00	\N	\N	1
12114	1	2021-01-01 23:41:21+00	\N	\N	1
12115	1	2021-01-02 00:29:26+00	\N	\N	1
12116	1	2021-01-02 01:10:02+00	\N	\N	1
12117	1	2021-01-02 02:08:37+00	\N	\N	1
12118	2	2021-01-01 14:56:56+00	\N	\N	1
12119	2	2021-01-01 19:14:35+00	\N	\N	1
12120	2	2021-01-01 22:35:46+00	\N	\N	1
12121	3	2021-01-02 02:09:15+00	\N	\N	1
12122	6	2021-01-02 02:57:04+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12123	5	2021-01-02 11:51:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12124	1	2021-01-02 11:08:23+00	\N	\N	1
12125	1	2021-01-02 12:14:17+00	\N	\N	1
12126	1	2021-01-02 13:26:59+00	\N	\N	1
12127	1	2021-01-02 14:24:06+00	\N	\N	1
12128	1	2021-01-02 15:46:07+00	\N	\N	1
12129	1	2021-01-02 16:26:04+00	\N	\N	1
12130	1	2021-01-02 17:26:48+00	\N	\N	1
12131	1	2021-01-02 18:28:46+00	\N	\N	1
12132	1	2021-01-02 19:25:48+00	\N	\N	1
12133	1	2021-01-02 20:11:26+00	\N	\N	1
12134	1	2021-01-02 21:27:59+00	\N	\N	1
12135	1	2021-01-02 22:38:42+00	\N	\N	1
12136	1	2021-01-02 23:21:17+00	\N	\N	1
12137	1	2021-01-03 00:34:25+00	\N	\N	1
12138	1	2021-01-03 01:33:06+00	\N	\N	1
12139	1	2021-01-03 02:27:59+00	\N	\N	1
12140	2	2021-01-02 15:17:27+00	\N	\N	1
12141	2	2021-01-02 18:41:34+00	\N	\N	1
12142	2	2021-01-02 22:44:18+00	\N	\N	1
12143	3	2021-01-03 02:46:12+00	\N	\N	1
12144	6	2021-01-03 02:33:22+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12145	5	2021-01-03 11:42:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12146	1	2021-01-03 11:39:24+00	\N	\N	1
12147	1	2021-01-03 12:31:03+00	\N	\N	1
12148	1	2021-01-03 13:23:02+00	\N	\N	1
12149	1	2021-01-03 14:13:02+00	\N	\N	1
12150	1	2021-01-03 15:52:24+00	\N	\N	1
12151	1	2021-01-03 16:33:41+00	\N	\N	1
12152	1	2021-01-03 17:19:28+00	\N	\N	1
12153	1	2021-01-03 18:50:26+00	\N	\N	1
12154	1	2021-01-03 19:28:12+00	\N	\N	1
12155	1	2021-01-03 20:29:25+00	\N	\N	1
12156	1	2021-01-03 21:12:47+00	\N	\N	1
12157	1	2021-01-03 22:20:04+00	\N	\N	1
12158	1	2021-01-03 23:15:15+00	\N	\N	1
12159	1	2021-01-04 00:32:24+00	\N	\N	1
12160	1	2021-01-04 01:15:50+00	\N	\N	1
12161	1	2021-01-04 02:43:42+00	\N	\N	1
12162	2	2021-01-03 15:05:49+00	\N	\N	1
12163	2	2021-01-03 18:36:29+00	\N	\N	1
12164	2	2021-01-03 22:46:02+00	\N	\N	1
12165	3	2021-01-04 03:12:17+00	\N	\N	1
12166	6	2021-01-04 03:09:00+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12167	5	2021-01-04 11:49:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12168	1	2021-01-04 11:20:22+00	\N	\N	1
12169	1	2021-01-04 12:20:35+00	\N	\N	1
12170	1	2021-01-04 13:21:07+00	\N	\N	1
12171	1	2021-01-04 14:28:57+00	\N	\N	1
12172	1	2021-01-04 15:20:08+00	\N	\N	1
12173	1	2021-01-04 16:18:51+00	\N	\N	1
12174	1	2021-01-04 17:50:23+00	\N	\N	1
12175	1	2021-01-04 18:50:10+00	\N	\N	1
12176	1	2021-01-04 19:09:00+00	\N	\N	1
12177	1	2021-01-04 20:18:11+00	\N	\N	1
12178	1	2021-01-04 21:36:00+00	\N	\N	1
12179	1	2021-01-04 22:48:33+00	\N	\N	1
12180	1	2021-01-04 23:32:45+00	\N	\N	1
12181	1	2021-01-05 00:19:49+00	\N	\N	1
12182	1	2021-01-05 01:30:44+00	\N	\N	1
12183	1	2021-01-05 02:40:18+00	\N	\N	1
12184	2	2021-01-04 15:07:26+00	\N	\N	1
12185	2	2021-01-04 19:05:03+00	\N	\N	1
12186	2	2021-01-04 22:31:41+00	\N	\N	1
12187	3	2021-01-05 01:48:17+00	\N	\N	1
12188	6	2021-01-05 03:02:51+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12189	5	2021-01-05 11:06:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12190	1	2021-01-05 11:25:19+00	\N	\N	1
12191	1	2021-01-05 12:38:41+00	\N	\N	1
12192	1	2021-01-05 13:42:03+00	\N	\N	1
12193	1	2021-01-05 14:08:54+00	\N	\N	1
12194	1	2021-01-05 15:48:19+00	\N	\N	1
12195	1	2021-01-05 16:22:02+00	\N	\N	1
12196	1	2021-01-05 17:41:28+00	\N	\N	1
12197	1	2021-01-05 18:19:21+00	\N	\N	1
12198	1	2021-01-05 19:28:31+00	\N	\N	1
12199	1	2021-01-05 20:18:02+00	\N	\N	1
12201	1	2021-01-05 22:39:45+00	\N	\N	1
12202	1	2021-01-05 23:40:59+00	\N	\N	1
12203	1	2021-01-06 00:51:30+00	\N	\N	1
12204	1	2021-01-06 01:21:56+00	\N	\N	1
12205	1	2021-01-06 02:47:19+00	\N	\N	1
12206	2	2021-01-05 14:41:50+00	\N	\N	1
12207	2	2021-01-05 19:01:35+00	\N	\N	1
12208	2	2021-01-05 22:56:46+00	\N	\N	1
12209	3	2021-01-06 01:37:50+00	\N	\N	1
12210	6	2021-01-06 02:50:11+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12211	5	2021-01-06 11:03:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12212	1	2021-01-06 11:35:36+00	\N	\N	1
12213	1	2021-01-06 12:47:57+00	\N	\N	1
12214	1	2021-01-06 13:24:45+00	\N	\N	1
12215	1	2021-01-06 14:25:28+00	\N	\N	1
12216	1	2021-01-06 15:44:11+00	\N	\N	1
12217	1	2021-01-06 16:27:48+00	\N	\N	1
12218	1	2021-01-06 17:52:29+00	\N	\N	1
12219	1	2021-01-06 18:25:12+00	\N	\N	1
12220	1	2021-01-06 19:15:34+00	\N	\N	1
12221	1	2021-01-06 20:26:44+00	\N	\N	1
12222	1	2021-01-06 21:48:52+00	\N	\N	1
12223	1	2021-01-06 22:24:24+00	\N	\N	1
12224	1	2021-01-06 23:32:27+00	\N	\N	1
12225	1	2021-01-07 00:31:53+00	\N	\N	1
12226	1	2021-01-07 01:24:15+00	\N	\N	1
12227	1	2021-01-07 02:45:30+00	\N	\N	1
12228	2	2021-01-06 14:32:28+00	\N	\N	1
12229	2	2021-01-06 19:07:09+00	\N	\N	1
12230	2	2021-01-06 23:20:16+00	\N	\N	1
12231	3	2021-01-07 02:59:15+00	\N	\N	1
12232	6	2021-01-07 01:52:25+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12233	5	2021-01-07 12:01:35+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12234	1	2021-01-07 11:31:03+00	\N	\N	1
12235	1	2021-01-07 12:13:28+00	\N	\N	1
12236	1	2021-01-07 13:16:59+00	\N	\N	1
12237	1	2021-01-07 14:22:02+00	\N	\N	1
12238	1	2021-01-07 15:28:03+00	\N	\N	1
12239	1	2021-01-07 16:47:03+00	\N	\N	1
12240	1	2021-01-07 17:43:48+00	\N	\N	1
12241	1	2021-01-07 18:43:33+00	\N	\N	1
12242	1	2021-01-07 19:13:00+00	\N	\N	1
12243	1	2021-01-07 20:42:21+00	\N	\N	1
12244	1	2021-01-07 21:48:25+00	\N	\N	1
12245	1	2021-01-07 22:51:09+00	\N	\N	1
12246	1	2021-01-07 23:21:16+00	\N	\N	1
12247	1	2021-01-08 00:46:15+00	\N	\N	1
12248	1	2021-01-08 01:49:56+00	\N	\N	1
12249	1	2021-01-08 02:50:00+00	\N	\N	1
12250	2	2021-01-07 14:51:08+00	\N	\N	1
12251	2	2021-01-07 19:12:58+00	\N	\N	1
12252	2	2021-01-07 23:20:36+00	\N	\N	1
12253	3	2021-01-08 03:10:43+00	\N	\N	1
12254	6	2021-01-08 02:20:35+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12255	5	2021-01-08 12:12:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12256	1	2021-01-08 11:31:31+00	\N	\N	1
12257	1	2021-01-08 12:42:49+00	\N	\N	1
12258	1	2021-01-08 13:28:41+00	\N	\N	1
12259	1	2021-01-08 14:33:08+00	\N	\N	1
12260	1	2021-01-08 15:36:18+00	\N	\N	1
12261	1	2021-01-08 16:19:29+00	\N	\N	1
12262	1	2021-01-08 17:30:45+00	\N	\N	1
12263	1	2021-01-08 18:32:26+00	\N	\N	1
12264	1	2021-01-08 19:32:39+00	\N	\N	1
12265	1	2021-01-08 20:12:17+00	\N	\N	1
12266	1	2021-01-08 21:40:30+00	\N	\N	1
12267	1	2021-01-08 22:16:10+00	\N	\N	1
12268	1	2021-01-08 23:18:40+00	\N	\N	1
12269	1	2021-01-09 00:45:46+00	\N	\N	1
12270	1	2021-01-09 01:16:51+00	\N	\N	1
12271	1	2021-01-09 02:16:45+00	\N	\N	1
12272	2	2021-01-08 15:29:21+00	\N	\N	1
12273	2	2021-01-08 18:30:53+00	\N	\N	1
12274	2	2021-01-08 22:44:00+00	\N	\N	1
12275	3	2021-01-09 03:18:14+00	\N	\N	1
12276	6	2021-01-09 02:08:08+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12277	5	2021-01-09 10:43:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12278	1	2021-01-09 11:29:38+00	\N	\N	1
12279	1	2021-01-09 12:31:18+00	\N	\N	1
12280	1	2021-01-09 13:34:34+00	\N	\N	1
12281	1	2021-01-09 14:51:24+00	\N	\N	1
12282	1	2021-01-09 15:26:54+00	\N	\N	1
12283	1	2021-01-09 16:08:19+00	\N	\N	1
12284	1	2021-01-09 17:09:55+00	\N	\N	1
12285	1	2021-01-09 18:50:45+00	\N	\N	1
12286	1	2021-01-09 19:25:50+00	\N	\N	1
12287	1	2021-01-09 20:26:43+00	\N	\N	1
12288	1	2021-01-09 21:44:38+00	\N	\N	1
12289	1	2021-01-09 22:28:01+00	\N	\N	1
12290	1	2021-01-09 23:30:38+00	\N	\N	1
12291	1	2021-01-10 00:38:13+00	\N	\N	1
12292	1	2021-01-10 01:23:13+00	\N	\N	1
12293	1	2021-01-10 02:35:42+00	\N	\N	1
12294	2	2021-01-09 15:17:30+00	\N	\N	1
12295	2	2021-01-09 19:02:53+00	\N	\N	1
12296	2	2021-01-09 23:05:54+00	\N	\N	1
12297	3	2021-01-10 01:42:57+00	\N	\N	1
12298	6	2021-01-10 02:20:43+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12299	5	2021-01-10 11:27:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12300	1	2021-01-10 11:36:20+00	\N	\N	1
12301	1	2021-01-10 12:30:38+00	\N	\N	1
12302	1	2021-01-10 13:18:33+00	\N	\N	1
12303	1	2021-01-10 14:11:15+00	\N	\N	1
12304	1	2021-01-10 15:48:57+00	\N	\N	1
12305	1	2021-01-10 16:47:04+00	\N	\N	1
12306	1	2021-01-10 17:47:26+00	\N	\N	1
12307	1	2021-01-10 18:07:37+00	\N	\N	1
12308	1	2021-01-10 19:21:38+00	\N	\N	1
12309	1	2021-01-10 20:37:55+00	\N	\N	1
12310	1	2021-01-10 21:39:32+00	\N	\N	1
12311	1	2021-01-10 22:09:01+00	\N	\N	1
12312	1	2021-01-10 23:48:49+00	\N	\N	1
12313	1	2021-01-11 00:13:45+00	\N	\N	1
12314	1	2021-01-11 01:25:55+00	\N	\N	1
12315	1	2021-01-11 02:26:22+00	\N	\N	1
12316	2	2021-01-10 15:01:33+00	\N	\N	1
12317	2	2021-01-10 19:05:36+00	\N	\N	1
12318	2	2021-01-10 22:52:46+00	\N	\N	1
12319	3	2021-01-11 02:16:38+00	\N	\N	1
12320	6	2021-01-11 03:07:33+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12321	5	2021-01-11 11:32:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12322	1	2021-01-11 11:30:08+00	\N	\N	1
12323	1	2021-01-11 12:50:56+00	\N	\N	1
12324	1	2021-01-11 13:34:09+00	\N	\N	1
12325	1	2021-01-11 14:36:28+00	\N	\N	1
12326	1	2021-01-11 15:47:39+00	\N	\N	1
12327	1	2021-01-11 16:43:46+00	\N	\N	1
12328	1	2021-01-11 17:27:34+00	\N	\N	1
12329	1	2021-01-11 18:37:54+00	\N	\N	1
12330	1	2021-01-11 19:28:53+00	\N	\N	1
12331	1	2021-01-11 20:41:59+00	\N	\N	1
12332	1	2021-01-11 21:46:01+00	\N	\N	1
12333	1	2021-01-11 22:36:24+00	\N	\N	1
12334	1	2021-01-11 23:16:11+00	\N	\N	1
12335	1	2021-01-12 00:24:38+00	\N	\N	1
12336	1	2021-01-12 01:22:19+00	\N	\N	1
12337	1	2021-01-12 02:42:46+00	\N	\N	1
12338	2	2021-01-11 15:01:42+00	\N	\N	1
12339	2	2021-01-11 18:41:30+00	\N	\N	1
12340	2	2021-01-11 23:09:09+00	\N	\N	1
12341	3	2021-01-12 01:39:36+00	\N	\N	1
12342	6	2021-01-12 02:51:41+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12343	5	2021-01-12 11:18:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12344	1	2021-01-12 11:31:44+00	\N	\N	1
12345	1	2021-01-12 12:26:20+00	\N	\N	1
12346	1	2021-01-12 13:19:23+00	\N	\N	1
12347	1	2021-01-12 14:20:01+00	\N	\N	1
12348	1	2021-01-12 15:12:40+00	\N	\N	1
12349	1	2021-01-12 16:44:16+00	\N	\N	1
12350	1	2021-01-12 17:21:33+00	\N	\N	1
12351	1	2021-01-12 18:28:13+00	\N	\N	1
12352	1	2021-01-12 19:22:47+00	\N	\N	1
12353	1	2021-01-12 20:45:05+00	\N	\N	1
12354	1	2021-01-12 21:08:28+00	\N	\N	1
12355	1	2021-01-12 22:51:00+00	\N	\N	1
12356	1	2021-01-12 23:14:05+00	\N	\N	1
12357	1	2021-01-13 00:16:12+00	\N	\N	1
12358	1	2021-01-13 01:23:19+00	\N	\N	1
12359	1	2021-01-13 02:20:57+00	\N	\N	1
12360	2	2021-01-12 14:49:56+00	\N	\N	1
12361	2	2021-01-12 19:22:52+00	\N	\N	1
12362	2	2021-01-12 22:52:24+00	\N	\N	1
12363	3	2021-01-13 03:09:20+00	\N	\N	1
12364	6	2021-01-13 03:08:09+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12365	5	2021-01-13 12:27:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12366	1	2021-01-13 11:12:43+00	\N	\N	1
12367	1	2021-01-13 12:09:19+00	\N	\N	1
12368	1	2021-01-13 13:19:35+00	\N	\N	1
12369	1	2021-01-13 14:24:26+00	\N	\N	1
12370	1	2021-01-13 15:34:39+00	\N	\N	1
12371	1	2021-01-13 16:43:02+00	\N	\N	1
12372	1	2021-01-13 17:44:47+00	\N	\N	1
12373	1	2021-01-13 18:49:46+00	\N	\N	1
12374	1	2021-01-13 19:24:48+00	\N	\N	1
12375	1	2021-01-13 20:16:15+00	\N	\N	1
12376	1	2021-01-13 21:42:33+00	\N	\N	1
12377	1	2021-01-13 22:12:29+00	\N	\N	1
12378	1	2021-01-13 23:37:13+00	\N	\N	1
12379	1	2021-01-14 00:07:56+00	\N	\N	1
12380	1	2021-01-14 01:46:02+00	\N	\N	1
12381	1	2021-01-14 02:35:56+00	\N	\N	1
12382	2	2021-01-13 14:30:21+00	\N	\N	1
12383	2	2021-01-13 19:15:50+00	\N	\N	1
12384	2	2021-01-13 22:36:55+00	\N	\N	1
12385	3	2021-01-14 01:59:51+00	\N	\N	1
12386	6	2021-01-14 02:00:34+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12387	5	2021-01-14 11:09:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12388	1	2021-01-14 11:38:10+00	\N	\N	1
12389	1	2021-01-14 12:23:42+00	\N	\N	1
12390	1	2021-01-14 13:49:16+00	\N	\N	1
12391	1	2021-01-14 14:31:22+00	\N	\N	1
12392	1	2021-01-14 15:44:17+00	\N	\N	1
12393	1	2021-01-14 16:47:46+00	\N	\N	1
12394	1	2021-01-14 17:40:28+00	\N	\N	1
12395	1	2021-01-14 18:28:43+00	\N	\N	1
12396	1	2021-01-14 19:43:53+00	\N	\N	1
12397	1	2021-01-14 20:13:58+00	\N	\N	1
12398	1	2021-01-14 21:38:36+00	\N	\N	1
12399	1	2021-01-14 22:30:44+00	\N	\N	1
12400	1	2021-01-14 23:36:39+00	\N	\N	1
12401	1	2021-01-15 00:19:20+00	\N	\N	1
12402	1	2021-01-15 01:27:49+00	\N	\N	1
12403	1	2021-01-15 02:45:30+00	\N	\N	1
12404	2	2021-01-14 15:16:07+00	\N	\N	1
12405	2	2021-01-14 19:04:06+00	\N	\N	1
12406	2	2021-01-14 22:37:04+00	\N	\N	1
12407	3	2021-01-15 02:17:48+00	\N	\N	1
12408	6	2021-01-15 02:26:49+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12409	5	2021-01-15 11:19:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12410	1	2021-01-15 11:24:29+00	\N	\N	1
12411	1	2021-01-15 12:24:01+00	\N	\N	1
12412	1	2021-01-15 13:33:35+00	\N	\N	1
12413	1	2021-01-15 14:39:32+00	\N	\N	1
12414	1	2021-01-15 15:47:33+00	\N	\N	1
12415	1	2021-01-15 16:35:36+00	\N	\N	1
12416	1	2021-01-15 17:17:31+00	\N	\N	1
12417	1	2021-01-15 18:43:45+00	\N	\N	1
12418	1	2021-01-15 19:48:21+00	\N	\N	1
12419	1	2021-01-15 20:38:21+00	\N	\N	1
12420	1	2021-01-15 21:18:05+00	\N	\N	1
12421	1	2021-01-15 22:20:53+00	\N	\N	1
12422	1	2021-01-15 23:32:07+00	\N	\N	1
12423	1	2021-01-16 00:09:25+00	\N	\N	1
12424	1	2021-01-16 01:41:09+00	\N	\N	1
12425	1	2021-01-16 02:14:18+00	\N	\N	1
12426	2	2021-01-15 14:42:32+00	\N	\N	1
12427	2	2021-01-15 19:21:40+00	\N	\N	1
12428	2	2021-01-15 22:47:09+00	\N	\N	1
12429	3	2021-01-16 03:13:05+00	\N	\N	1
12430	6	2021-01-16 02:36:44+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12431	5	2021-01-16 10:33:19+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12432	1	2021-01-16 11:27:51+00	\N	\N	1
12433	1	2021-01-16 12:21:56+00	\N	\N	1
12434	1	2021-01-16 13:51:52+00	\N	\N	1
12435	1	2021-01-16 14:20:58+00	\N	\N	1
12436	1	2021-01-16 15:16:27+00	\N	\N	1
12437	1	2021-01-16 16:36:09+00	\N	\N	1
12438	1	2021-01-16 17:40:14+00	\N	\N	1
12439	1	2021-01-16 18:32:54+00	\N	\N	1
12440	1	2021-01-16 19:31:32+00	\N	\N	1
12441	1	2021-01-16 20:45:14+00	\N	\N	1
12442	1	2021-01-16 21:50:13+00	\N	\N	1
12443	1	2021-01-16 22:24:29+00	\N	\N	1
12444	1	2021-01-16 23:49:54+00	\N	\N	1
12445	1	2021-01-17 00:14:13+00	\N	\N	1
12446	1	2021-01-17 01:18:40+00	\N	\N	1
12447	1	2021-01-17 02:17:19+00	\N	\N	1
12448	2	2021-01-16 14:36:29+00	\N	\N	1
12449	2	2021-01-16 19:23:04+00	\N	\N	1
12450	2	2021-01-16 22:50:31+00	\N	\N	1
12451	3	2021-01-17 02:45:31+00	\N	\N	1
12452	6	2021-01-17 02:18:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12453	5	2021-01-17 12:01:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12454	1	2021-01-17 11:12:37+00	\N	\N	1
12455	1	2021-01-17 12:10:15+00	\N	\N	1
12456	1	2021-01-17 13:37:41+00	\N	\N	1
12457	1	2021-01-17 14:46:10+00	\N	\N	1
12458	1	2021-01-17 15:11:29+00	\N	\N	1
12459	1	2021-01-17 16:42:40+00	\N	\N	1
12460	1	2021-01-17 17:13:37+00	\N	\N	1
12461	1	2021-01-17 18:38:20+00	\N	\N	1
12462	1	2021-01-17 19:14:07+00	\N	\N	1
12463	1	2021-01-17 20:17:33+00	\N	\N	1
12464	1	2021-01-17 21:49:16+00	\N	\N	1
12465	1	2021-01-17 22:52:00+00	\N	\N	1
12466	1	2021-01-17 23:38:06+00	\N	\N	1
12467	1	2021-01-18 00:38:02+00	\N	\N	1
12468	1	2021-01-18 01:09:14+00	\N	\N	1
12469	1	2021-01-18 02:19:06+00	\N	\N	1
12470	2	2021-01-17 15:15:21+00	\N	\N	1
12471	2	2021-01-17 18:54:02+00	\N	\N	1
12472	2	2021-01-17 23:28:55+00	\N	\N	1
12473	3	2021-01-18 01:49:28+00	\N	\N	1
12474	6	2021-01-18 02:01:45+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12475	5	2021-01-18 10:35:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12476	1	2021-01-18 11:28:47+00	\N	\N	1
12477	1	2021-01-18 12:08:36+00	\N	\N	1
12478	1	2021-01-18 13:42:01+00	\N	\N	1
12479	1	2021-01-18 14:49:21+00	\N	\N	1
12480	1	2021-01-18 15:50:21+00	\N	\N	1
12481	1	2021-01-18 16:47:37+00	\N	\N	1
12482	1	2021-01-18 17:32:05+00	\N	\N	1
12483	1	2021-01-18 18:29:45+00	\N	\N	1
12484	1	2021-01-18 19:21:41+00	\N	\N	1
12485	1	2021-01-18 20:31:06+00	\N	\N	1
12486	1	2021-01-18 21:44:19+00	\N	\N	1
12487	1	2021-01-18 22:16:31+00	\N	\N	1
12488	1	2021-01-18 23:23:36+00	\N	\N	1
12489	1	2021-01-19 00:40:46+00	\N	\N	1
12490	1	2021-01-19 01:17:20+00	\N	\N	1
12491	1	2021-01-19 02:50:46+00	\N	\N	1
12492	2	2021-01-18 15:18:55+00	\N	\N	1
12493	2	2021-01-18 19:00:00+00	\N	\N	1
12494	2	2021-01-18 23:26:50+00	\N	\N	1
12495	3	2021-01-19 02:59:24+00	\N	\N	1
12496	6	2021-01-19 02:46:23+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12497	5	2021-01-19 12:12:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12498	1	2021-01-19 11:51:27+00	\N	\N	1
12499	1	2021-01-19 12:17:50+00	\N	\N	1
12500	1	2021-01-19 13:14:05+00	\N	\N	1
12501	1	2021-01-19 14:24:22+00	\N	\N	1
12502	1	2021-01-19 15:19:48+00	\N	\N	1
12503	1	2021-01-19 16:08:44+00	\N	\N	1
12504	1	2021-01-19 17:26:45+00	\N	\N	1
12505	1	2021-01-19 18:08:21+00	\N	\N	1
12506	1	2021-01-19 19:14:21+00	\N	\N	1
12507	1	2021-01-19 20:10:43+00	\N	\N	1
12508	1	2021-01-19 21:42:09+00	\N	\N	1
12509	1	2021-01-19 22:34:26+00	\N	\N	1
12510	1	2021-01-19 23:16:53+00	\N	\N	1
12511	1	2021-01-20 00:51:14+00	\N	\N	1
12512	1	2021-01-20 01:39:08+00	\N	\N	1
12513	1	2021-01-20 02:46:39+00	\N	\N	1
12514	2	2021-01-19 14:46:30+00	\N	\N	1
12515	2	2021-01-19 19:08:51+00	\N	\N	1
12516	2	2021-01-19 23:02:41+00	\N	\N	1
12517	3	2021-01-20 02:59:15+00	\N	\N	1
12518	6	2021-01-20 02:31:18+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12519	5	2021-01-20 12:07:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12520	1	2021-01-20 11:40:39+00	\N	\N	1
12521	1	2021-01-20 12:23:49+00	\N	\N	1
12522	1	2021-01-20 13:17:26+00	\N	\N	1
12523	1	2021-01-20 14:27:38+00	\N	\N	1
12524	1	2021-01-20 15:16:42+00	\N	\N	1
12525	1	2021-01-20 16:13:42+00	\N	\N	1
12526	1	2021-01-20 17:20:49+00	\N	\N	1
12527	1	2021-01-20 18:44:16+00	\N	\N	1
12528	1	2021-01-20 19:42:04+00	\N	\N	1
12529	1	2021-01-20 20:40:06+00	\N	\N	1
12530	1	2021-01-20 21:48:19+00	\N	\N	1
12531	1	2021-01-20 22:38:50+00	\N	\N	1
12532	1	2021-01-20 23:40:56+00	\N	\N	1
12533	1	2021-01-21 00:33:23+00	\N	\N	1
12534	1	2021-01-21 01:37:19+00	\N	\N	1
12535	1	2021-01-21 02:17:30+00	\N	\N	1
12536	2	2021-01-20 14:35:36+00	\N	\N	1
12537	2	2021-01-20 19:17:57+00	\N	\N	1
12538	2	2021-01-20 23:26:24+00	\N	\N	1
12539	3	2021-01-21 02:51:52+00	\N	\N	1
12540	6	2021-01-21 02:54:54+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12541	5	2021-01-21 12:22:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12542	1	2021-01-21 11:25:59+00	\N	\N	1
12543	1	2021-01-21 12:25:17+00	\N	\N	1
12544	1	2021-01-21 13:47:35+00	\N	\N	1
12545	1	2021-01-21 14:52:23+00	\N	\N	1
12546	1	2021-01-21 15:50:20+00	\N	\N	1
12547	1	2021-01-21 16:49:26+00	\N	\N	1
12548	1	2021-01-21 17:27:09+00	\N	\N	1
12549	1	2021-01-21 18:21:22+00	\N	\N	1
12550	1	2021-01-21 19:19:10+00	\N	\N	1
12551	1	2021-01-21 20:24:14+00	\N	\N	1
12552	1	2021-01-21 21:51:39+00	\N	\N	1
12553	1	2021-01-21 22:46:20+00	\N	\N	1
12554	1	2021-01-21 23:19:46+00	\N	\N	1
12555	1	2021-01-22 00:10:30+00	\N	\N	1
12556	1	2021-01-22 01:41:32+00	\N	\N	1
12557	1	2021-01-22 02:32:20+00	\N	\N	1
12558	2	2021-01-21 14:47:03+00	\N	\N	1
12559	2	2021-01-21 18:57:38+00	\N	\N	1
12560	2	2021-01-21 22:57:13+00	\N	\N	1
12561	3	2021-01-22 03:08:40+00	\N	\N	1
12562	6	2021-01-22 02:01:42+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12563	5	2021-01-22 11:37:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12564	1	2021-01-22 11:35:04+00	\N	\N	1
12565	1	2021-01-22 12:51:03+00	\N	\N	1
12566	1	2021-01-22 13:23:40+00	\N	\N	1
12567	1	2021-01-22 14:49:09+00	\N	\N	1
12568	1	2021-01-22 15:45:03+00	\N	\N	1
12569	1	2021-01-22 16:41:23+00	\N	\N	1
12570	1	2021-01-22 17:44:56+00	\N	\N	1
12571	1	2021-01-22 18:38:18+00	\N	\N	1
12572	1	2021-01-22 19:07:42+00	\N	\N	1
12573	1	2021-01-22 20:30:09+00	\N	\N	1
12574	1	2021-01-22 21:23:24+00	\N	\N	1
12575	1	2021-01-22 22:24:11+00	\N	\N	1
12576	1	2021-01-22 23:39:28+00	\N	\N	1
12577	1	2021-01-23 00:24:35+00	\N	\N	1
12578	1	2021-01-23 01:46:55+00	\N	\N	1
12579	1	2021-01-23 02:35:15+00	\N	\N	1
12580	2	2021-01-22 15:24:57+00	\N	\N	1
12581	2	2021-01-22 18:43:27+00	\N	\N	1
12582	2	2021-01-22 22:40:29+00	\N	\N	1
12583	3	2021-01-23 02:14:44+00	\N	\N	1
12584	6	2021-01-23 02:05:29+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12585	5	2021-01-23 10:45:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12586	1	2021-01-23 11:13:56+00	\N	\N	1
12587	1	2021-01-23 12:37:55+00	\N	\N	1
12588	1	2021-01-23 13:25:37+00	\N	\N	1
12589	1	2021-01-23 14:13:58+00	\N	\N	1
12590	1	2021-01-23 15:36:59+00	\N	\N	1
12591	1	2021-01-23 16:24:10+00	\N	\N	1
12592	1	2021-01-23 17:31:00+00	\N	\N	1
12593	1	2021-01-23 18:26:06+00	\N	\N	1
12594	1	2021-01-23 19:24:20+00	\N	\N	1
12595	1	2021-01-23 20:14:18+00	\N	\N	1
12596	1	2021-01-23 21:49:58+00	\N	\N	1
12597	1	2021-01-23 22:36:29+00	\N	\N	1
12598	1	2021-01-23 23:07:52+00	\N	\N	1
12599	1	2021-01-24 00:36:26+00	\N	\N	1
12600	1	2021-01-24 01:40:44+00	\N	\N	1
12601	1	2021-01-24 02:45:23+00	\N	\N	1
12602	2	2021-01-23 15:06:24+00	\N	\N	1
12603	2	2021-01-23 19:03:05+00	\N	\N	1
12604	2	2021-01-23 23:14:06+00	\N	\N	1
12605	3	2021-01-24 02:36:39+00	\N	\N	1
12606	6	2021-01-24 02:15:52+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12607	5	2021-01-24 12:19:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12608	1	2021-01-24 11:25:45+00	\N	\N	1
12609	1	2021-01-24 12:40:46+00	\N	\N	1
12610	1	2021-01-24 13:10:37+00	\N	\N	1
12611	1	2021-01-24 14:10:05+00	\N	\N	1
12612	1	2021-01-24 15:13:18+00	\N	\N	1
12613	1	2021-01-24 16:47:31+00	\N	\N	1
12614	1	2021-01-24 17:32:15+00	\N	\N	1
12615	1	2021-01-24 18:52:22+00	\N	\N	1
12616	1	2021-01-24 19:51:09+00	\N	\N	1
12617	1	2021-01-24 20:27:50+00	\N	\N	1
12618	1	2021-01-24 21:41:37+00	\N	\N	1
12619	1	2021-01-24 22:30:55+00	\N	\N	1
12620	1	2021-01-24 23:49:52+00	\N	\N	1
12621	1	2021-01-25 00:29:36+00	\N	\N	1
12622	1	2021-01-25 01:21:27+00	\N	\N	1
12623	1	2021-01-25 02:18:57+00	\N	\N	1
12624	2	2021-01-24 14:37:15+00	\N	\N	1
12625	2	2021-01-24 18:30:03+00	\N	\N	1
12626	2	2021-01-24 22:33:29+00	\N	\N	1
12627	3	2021-01-25 02:21:46+00	\N	\N	1
12628	6	2021-01-25 03:12:16+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12629	5	2021-01-25 11:53:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12630	1	2021-01-25 11:51:57+00	\N	\N	1
12631	1	2021-01-25 12:21:27+00	\N	\N	1
12632	1	2021-01-25 13:20:01+00	\N	\N	1
12633	1	2021-01-25 14:26:27+00	\N	\N	1
12634	1	2021-01-25 15:25:04+00	\N	\N	1
12635	1	2021-01-25 16:32:13+00	\N	\N	1
12636	1	2021-01-25 17:20:10+00	\N	\N	1
12637	1	2021-01-25 18:17:02+00	\N	\N	1
12638	1	2021-01-25 19:13:48+00	\N	\N	1
12639	1	2021-01-25 20:27:39+00	\N	\N	1
12640	1	2021-01-25 21:40:00+00	\N	\N	1
12641	1	2021-01-25 22:32:52+00	\N	\N	1
12642	1	2021-01-25 23:14:18+00	\N	\N	1
12643	1	2021-01-26 00:50:29+00	\N	\N	1
12644	1	2021-01-26 01:23:49+00	\N	\N	1
12645	1	2021-01-26 02:22:20+00	\N	\N	1
12646	2	2021-01-25 14:39:35+00	\N	\N	1
12647	2	2021-01-25 19:05:33+00	\N	\N	1
12648	2	2021-01-25 23:17:04+00	\N	\N	1
12649	3	2021-01-26 03:25:37+00	\N	\N	1
12650	6	2021-01-26 02:28:38+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12651	5	2021-01-26 11:37:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12652	1	2021-01-26 11:37:56+00	\N	\N	1
12653	1	2021-01-26 12:43:05+00	\N	\N	1
12654	1	2021-01-26 13:37:46+00	\N	\N	1
12655	1	2021-01-26 14:48:48+00	\N	\N	1
12656	1	2021-01-26 15:24:02+00	\N	\N	1
12657	1	2021-01-26 16:45:54+00	\N	\N	1
12658	1	2021-01-26 17:29:02+00	\N	\N	1
12659	1	2021-01-26 18:30:17+00	\N	\N	1
12660	1	2021-01-26 19:34:28+00	\N	\N	1
12661	1	2021-01-26 20:34:49+00	\N	\N	1
12662	1	2021-01-26 21:18:22+00	\N	\N	1
12663	1	2021-01-26 22:28:20+00	\N	\N	1
12664	1	2021-01-26 23:17:58+00	\N	\N	1
12665	1	2021-01-27 00:16:19+00	\N	\N	1
12666	1	2021-01-27 01:09:04+00	\N	\N	1
12667	1	2021-01-27 02:27:02+00	\N	\N	1
12668	2	2021-01-26 15:23:34+00	\N	\N	1
12669	2	2021-01-26 18:40:12+00	\N	\N	1
12670	2	2021-01-26 22:35:53+00	\N	\N	1
12671	3	2021-01-27 02:17:57+00	\N	\N	1
12672	6	2021-01-27 02:04:46+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12673	5	2021-01-27 11:04:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12674	1	2021-01-27 11:11:31+00	\N	\N	1
12675	1	2021-01-27 12:35:41+00	\N	\N	1
12676	1	2021-01-27 13:37:55+00	\N	\N	1
12677	1	2021-01-27 14:18:53+00	\N	\N	1
12678	1	2021-01-27 15:36:15+00	\N	\N	1
12679	1	2021-01-27 16:11:20+00	\N	\N	1
12680	1	2021-01-27 17:21:40+00	\N	\N	1
12681	1	2021-01-27 18:41:49+00	\N	\N	1
12682	1	2021-01-27 19:35:54+00	\N	\N	1
12683	1	2021-01-27 20:34:36+00	\N	\N	1
12684	1	2021-01-27 21:44:44+00	\N	\N	1
12685	1	2021-01-27 22:12:16+00	\N	\N	1
12686	1	2021-01-27 23:27:40+00	\N	\N	1
12687	1	2021-01-28 00:33:59+00	\N	\N	1
12688	1	2021-01-28 01:27:06+00	\N	\N	1
12689	1	2021-01-28 02:52:08+00	\N	\N	1
12690	2	2021-01-27 15:02:46+00	\N	\N	1
12691	2	2021-01-27 18:37:52+00	\N	\N	1
12692	2	2021-01-27 22:57:11+00	\N	\N	1
12693	3	2021-01-28 03:18:28+00	\N	\N	1
12694	6	2021-01-28 02:40:38+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12695	5	2021-01-28 11:15:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12696	1	2021-01-28 11:08:48+00	\N	\N	1
12697	1	2021-01-28 12:48:54+00	\N	\N	1
12698	1	2021-01-28 13:29:34+00	\N	\N	1
12699	1	2021-01-28 14:11:44+00	\N	\N	1
12700	1	2021-01-28 15:30:28+00	\N	\N	1
12701	1	2021-01-28 16:16:20+00	\N	\N	1
12702	1	2021-01-28 17:31:10+00	\N	\N	1
12703	1	2021-01-28 18:15:20+00	\N	\N	1
12704	1	2021-01-28 19:40:34+00	\N	\N	1
12705	1	2021-01-28 20:35:10+00	\N	\N	1
12706	1	2021-01-28 21:36:32+00	\N	\N	1
12707	1	2021-01-28 22:24:26+00	\N	\N	1
12708	1	2021-01-28 23:19:44+00	\N	\N	1
12709	1	2021-01-29 00:51:05+00	\N	\N	1
12710	1	2021-01-29 01:50:19+00	\N	\N	1
12711	1	2021-01-29 02:19:23+00	\N	\N	1
12712	2	2021-01-28 14:36:18+00	\N	\N	1
12713	2	2021-01-28 19:12:19+00	\N	\N	1
12714	2	2021-01-28 23:03:04+00	\N	\N	1
12715	3	2021-01-29 02:27:53+00	\N	\N	1
12716	6	2021-01-29 02:11:50+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12717	5	2021-01-29 12:18:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12718	1	2021-01-29 11:47:21+00	\N	\N	1
12719	1	2021-01-29 12:38:44+00	\N	\N	1
12720	1	2021-01-29 13:51:57+00	\N	\N	1
12721	1	2021-01-29 14:36:06+00	\N	\N	1
12722	1	2021-01-29 15:28:11+00	\N	\N	1
12723	1	2021-01-29 16:42:48+00	\N	\N	1
12724	1	2021-01-29 17:16:26+00	\N	\N	1
12725	1	2021-01-29 18:36:21+00	\N	\N	1
12726	1	2021-01-29 19:23:29+00	\N	\N	1
12727	1	2021-01-29 20:20:24+00	\N	\N	1
12728	1	2021-01-29 21:30:25+00	\N	\N	1
12729	1	2021-01-29 22:46:14+00	\N	\N	1
12730	1	2021-01-29 23:26:10+00	\N	\N	1
12731	1	2021-01-30 00:12:11+00	\N	\N	1
12732	1	2021-01-30 01:20:34+00	\N	\N	1
12733	1	2021-01-30 02:30:28+00	\N	\N	1
12734	2	2021-01-29 14:42:59+00	\N	\N	1
12735	2	2021-01-29 18:48:55+00	\N	\N	1
12736	2	2021-01-29 23:19:19+00	\N	\N	1
12737	3	2021-01-30 01:42:27+00	\N	\N	1
12738	6	2021-01-30 03:02:36+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12739	5	2021-01-30 11:13:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12740	1	2021-01-30 11:15:22+00	\N	\N	1
12741	1	2021-01-30 12:42:45+00	\N	\N	1
12742	1	2021-01-30 13:14:58+00	\N	\N	1
12743	1	2021-01-30 14:13:25+00	\N	\N	1
12744	1	2021-01-30 15:28:12+00	\N	\N	1
12745	1	2021-01-30 16:36:07+00	\N	\N	1
12746	1	2021-01-30 17:08:27+00	\N	\N	1
12747	1	2021-01-30 18:19:15+00	\N	\N	1
12748	1	2021-01-30 19:44:20+00	\N	\N	1
12749	1	2021-01-30 20:34:06+00	\N	\N	1
12750	1	2021-01-30 21:27:34+00	\N	\N	1
12751	1	2021-01-30 22:33:00+00	\N	\N	1
12752	1	2021-01-30 23:29:09+00	\N	\N	1
12753	1	2021-01-31 00:43:24+00	\N	\N	1
12754	1	2021-01-31 01:18:09+00	\N	\N	1
12755	1	2021-01-31 02:22:12+00	\N	\N	1
12756	2	2021-01-30 15:06:21+00	\N	\N	1
12757	2	2021-01-30 19:05:47+00	\N	\N	1
12758	2	2021-01-30 22:58:35+00	\N	\N	1
12759	3	2021-01-31 02:38:43+00	\N	\N	1
12760	6	2021-01-31 02:09:57+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12761	5	2021-01-31 11:40:32+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12762	1	2021-01-31 11:41:49+00	\N	\N	1
12763	1	2021-01-31 12:22:13+00	\N	\N	1
12764	1	2021-01-31 13:42:04+00	\N	\N	1
12765	1	2021-01-31 14:42:19+00	\N	\N	1
12766	1	2021-01-31 15:44:12+00	\N	\N	1
12767	1	2021-01-31 16:47:17+00	\N	\N	1
12768	1	2021-01-31 17:08:21+00	\N	\N	1
12769	1	2021-01-31 18:23:08+00	\N	\N	1
12770	1	2021-01-31 19:44:02+00	\N	\N	1
12771	1	2021-01-31 20:41:21+00	\N	\N	1
12772	1	2021-01-31 21:46:47+00	\N	\N	1
12773	1	2021-01-31 22:09:17+00	\N	\N	1
12774	1	2021-01-31 23:09:53+00	\N	\N	1
12775	1	2021-02-01 00:20:38+00	\N	\N	1
12776	1	2021-02-01 01:51:37+00	\N	\N	1
12777	1	2021-02-01 02:10:07+00	\N	\N	1
12778	2	2021-01-31 14:34:29+00	\N	\N	1
12779	2	2021-01-31 19:19:55+00	\N	\N	1
12780	2	2021-01-31 23:20:28+00	\N	\N	1
12781	3	2021-02-01 01:57:41+00	\N	\N	1
12782	6	2021-02-01 01:57:36+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12783	5	2021-02-01 11:13:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12784	1	2021-02-01 11:21:48+00	\N	\N	1
12785	1	2021-02-01 12:22:05+00	\N	\N	1
12786	1	2021-02-01 13:33:09+00	\N	\N	1
12787	1	2021-02-01 14:11:49+00	\N	\N	1
12788	1	2021-02-01 15:34:51+00	\N	\N	1
12789	1	2021-02-01 16:39:31+00	\N	\N	1
12790	1	2021-02-01 17:24:23+00	\N	\N	1
12791	1	2021-02-01 18:32:33+00	\N	\N	1
12792	1	2021-02-01 19:20:48+00	\N	\N	1
12793	1	2021-02-01 20:18:01+00	\N	\N	1
12794	1	2021-02-01 21:10:43+00	\N	\N	1
12795	1	2021-02-01 22:35:24+00	\N	\N	1
12796	1	2021-02-01 23:19:59+00	\N	\N	1
12797	1	2021-02-02 00:12:29+00	\N	\N	1
12798	1	2021-02-02 01:28:51+00	\N	\N	1
12799	1	2021-02-02 02:12:24+00	\N	\N	1
12800	2	2021-02-01 15:12:22+00	\N	\N	1
12801	2	2021-02-01 19:09:11+00	\N	\N	1
12802	2	2021-02-01 22:30:43+00	\N	\N	1
12803	3	2021-02-02 02:09:49+00	\N	\N	1
12804	6	2021-02-02 02:41:24+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12805	5	2021-02-02 11:29:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12806	1	2021-02-02 11:19:51+00	\N	\N	1
12807	1	2021-02-02 12:47:31+00	\N	\N	1
12808	1	2021-02-02 13:28:29+00	\N	\N	1
12809	1	2021-02-02 14:30:48+00	\N	\N	1
12810	1	2021-02-02 15:32:44+00	\N	\N	1
12811	1	2021-02-02 16:17:31+00	\N	\N	1
12812	1	2021-02-02 17:50:53+00	\N	\N	1
12813	1	2021-02-02 18:39:49+00	\N	\N	1
12814	1	2021-02-02 19:12:14+00	\N	\N	1
12815	1	2021-02-02 20:21:52+00	\N	\N	1
12816	1	2021-02-02 21:34:46+00	\N	\N	1
12817	1	2021-02-02 22:18:53+00	\N	\N	1
12818	1	2021-02-02 23:08:14+00	\N	\N	1
12819	1	2021-02-03 00:17:08+00	\N	\N	1
12820	1	2021-02-03 01:32:45+00	\N	\N	1
12821	1	2021-02-03 02:19:09+00	\N	\N	1
12822	2	2021-02-02 15:09:32+00	\N	\N	1
12823	2	2021-02-02 18:50:43+00	\N	\N	1
12824	2	2021-02-02 22:59:35+00	\N	\N	1
12825	3	2021-02-03 02:07:54+00	\N	\N	1
12826	6	2021-02-03 02:45:25+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12827	5	2021-02-03 11:44:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12828	1	2021-02-03 11:38:32+00	\N	\N	1
12829	1	2021-02-03 12:50:16+00	\N	\N	1
12830	1	2021-02-03 13:17:00+00	\N	\N	1
12831	1	2021-02-03 14:09:15+00	\N	\N	1
12832	1	2021-02-03 15:25:51+00	\N	\N	1
12833	1	2021-02-03 16:25:36+00	\N	\N	1
12834	1	2021-02-03 17:47:10+00	\N	\N	1
12835	1	2021-02-03 18:43:27+00	\N	\N	1
12836	1	2021-02-03 19:47:48+00	\N	\N	1
12837	1	2021-02-03 20:21:14+00	\N	\N	1
12838	1	2021-02-03 21:27:25+00	\N	\N	1
12839	1	2021-02-03 22:23:12+00	\N	\N	1
12840	1	2021-02-03 23:35:36+00	\N	\N	1
12841	1	2021-02-04 00:10:44+00	\N	\N	1
12842	1	2021-02-04 01:52:05+00	\N	\N	1
12843	1	2021-02-04 02:08:22+00	\N	\N	1
12844	2	2021-02-03 14:59:04+00	\N	\N	1
12845	2	2021-02-03 19:10:19+00	\N	\N	1
12846	2	2021-02-03 22:59:13+00	\N	\N	1
12847	3	2021-02-04 02:22:48+00	\N	\N	1
12848	6	2021-02-04 01:55:54+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12849	5	2021-02-04 12:04:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12850	1	2021-02-04 11:19:36+00	\N	\N	1
12851	1	2021-02-04 12:19:27+00	\N	\N	1
12852	1	2021-02-04 13:19:38+00	\N	\N	1
12853	1	2021-02-04 14:12:25+00	\N	\N	1
12854	1	2021-02-04 15:35:03+00	\N	\N	1
12855	1	2021-02-04 16:46:27+00	\N	\N	1
12856	1	2021-02-04 17:13:30+00	\N	\N	1
12857	1	2021-02-04 18:08:27+00	\N	\N	1
12858	1	2021-02-04 19:50:18+00	\N	\N	1
12859	1	2021-02-04 20:15:43+00	\N	\N	1
12860	1	2021-02-04 21:37:42+00	\N	\N	1
12861	1	2021-02-04 22:25:22+00	\N	\N	1
12862	1	2021-02-04 23:34:01+00	\N	\N	1
12863	1	2021-02-05 00:37:14+00	\N	\N	1
12864	1	2021-02-05 01:21:19+00	\N	\N	1
12865	1	2021-02-05 02:32:53+00	\N	\N	1
12866	2	2021-02-04 14:40:13+00	\N	\N	1
12867	2	2021-02-04 18:56:28+00	\N	\N	1
12868	2	2021-02-04 22:33:29+00	\N	\N	1
12869	3	2021-02-05 02:19:20+00	\N	\N	1
12870	6	2021-02-05 02:02:02+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12871	5	2021-02-05 11:14:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12872	1	2021-02-05 11:22:13+00	\N	\N	1
12873	1	2021-02-05 12:47:30+00	\N	\N	1
12874	1	2021-02-05 13:29:19+00	\N	\N	1
12875	1	2021-02-05 14:48:14+00	\N	\N	1
12876	1	2021-02-05 15:27:01+00	\N	\N	1
12877	1	2021-02-05 16:10:33+00	\N	\N	1
12878	1	2021-02-05 17:25:03+00	\N	\N	1
12879	1	2021-02-05 18:25:48+00	\N	\N	1
12880	1	2021-02-05 19:51:26+00	\N	\N	1
12881	1	2021-02-05 20:14:23+00	\N	\N	1
12882	1	2021-02-05 21:47:39+00	\N	\N	1
12883	1	2021-02-05 22:44:13+00	\N	\N	1
12884	1	2021-02-05 23:30:07+00	\N	\N	1
12885	1	2021-02-06 00:09:39+00	\N	\N	1
12886	1	2021-02-06 01:18:27+00	\N	\N	1
12887	1	2021-02-06 02:30:16+00	\N	\N	1
12888	2	2021-02-05 14:45:52+00	\N	\N	1
12889	2	2021-02-05 18:58:47+00	\N	\N	1
12890	2	2021-02-05 22:44:08+00	\N	\N	1
12891	3	2021-02-06 02:36:29+00	\N	\N	1
12892	6	2021-02-06 02:21:59+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12893	5	2021-02-06 11:59:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12894	1	2021-02-06 11:15:41+00	\N	\N	1
12895	1	2021-02-06 12:52:13+00	\N	\N	1
12896	1	2021-02-06 13:10:25+00	\N	\N	1
12897	1	2021-02-06 14:27:00+00	\N	\N	1
12898	1	2021-02-06 15:34:11+00	\N	\N	1
12899	1	2021-02-06 16:36:13+00	\N	\N	1
12900	1	2021-02-06 17:31:57+00	\N	\N	1
12901	1	2021-02-06 18:19:28+00	\N	\N	1
12902	1	2021-02-06 19:26:12+00	\N	\N	1
12903	1	2021-02-06 20:16:46+00	\N	\N	1
12904	1	2021-02-06 21:38:17+00	\N	\N	1
12905	1	2021-02-06 22:14:27+00	\N	\N	1
12906	1	2021-02-06 23:37:02+00	\N	\N	1
12907	1	2021-02-07 00:40:56+00	\N	\N	1
12908	1	2021-02-07 01:38:37+00	\N	\N	1
12909	1	2021-02-07 02:13:15+00	\N	\N	1
12910	2	2021-02-06 15:15:11+00	\N	\N	1
12911	2	2021-02-06 18:30:53+00	\N	\N	1
12912	2	2021-02-06 22:31:47+00	\N	\N	1
12913	3	2021-02-07 02:15:48+00	\N	\N	1
12914	6	2021-02-07 02:55:40+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13020	2	2021-02-11 15:28:28+00	\N	\N	1
12915	5	2021-02-07 10:58:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12916	1	2021-02-07 11:25:03+00	\N	\N	1
12917	1	2021-02-07 12:44:24+00	\N	\N	1
12918	1	2021-02-07 13:34:38+00	\N	\N	1
12919	1	2021-02-07 14:41:32+00	\N	\N	1
12920	1	2021-02-07 15:22:53+00	\N	\N	1
12921	1	2021-02-07 16:27:57+00	\N	\N	1
12922	1	2021-02-07 17:25:33+00	\N	\N	1
12923	1	2021-02-07 18:31:15+00	\N	\N	1
12924	1	2021-02-07 19:18:40+00	\N	\N	1
12925	1	2021-02-07 20:48:07+00	\N	\N	1
12926	1	2021-02-07 21:21:18+00	\N	\N	1
12927	1	2021-02-07 22:38:44+00	\N	\N	1
12928	1	2021-02-07 23:35:06+00	\N	\N	1
12929	1	2021-02-08 00:13:16+00	\N	\N	1
12930	1	2021-02-08 01:10:30+00	\N	\N	1
12931	1	2021-02-08 02:22:20+00	\N	\N	1
12932	2	2021-02-07 15:01:55+00	\N	\N	1
12933	2	2021-02-07 19:27:43+00	\N	\N	1
12934	2	2021-02-07 22:52:18+00	\N	\N	1
12935	3	2021-02-08 02:33:09+00	\N	\N	1
12936	6	2021-02-08 02:18:58+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12937	5	2021-02-08 11:01:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12938	1	2021-02-08 11:44:22+00	\N	\N	1
12939	1	2021-02-08 12:50:21+00	\N	\N	1
12940	1	2021-02-08 13:32:23+00	\N	\N	1
12941	1	2021-02-08 14:49:34+00	\N	\N	1
12942	1	2021-02-08 15:40:03+00	\N	\N	1
12943	1	2021-02-08 16:28:32+00	\N	\N	1
12944	1	2021-02-08 17:45:37+00	\N	\N	1
12945	1	2021-02-08 18:52:29+00	\N	\N	1
12946	1	2021-02-08 19:14:50+00	\N	\N	1
12947	1	2021-02-08 20:11:42+00	\N	\N	1
12948	1	2021-02-08 21:36:50+00	\N	\N	1
12949	1	2021-02-08 22:07:33+00	\N	\N	1
12950	1	2021-02-08 23:38:36+00	\N	\N	1
12951	1	2021-02-09 00:10:37+00	\N	\N	1
12952	1	2021-02-09 01:21:22+00	\N	\N	1
12953	1	2021-02-09 02:45:34+00	\N	\N	1
12954	2	2021-02-08 15:11:51+00	\N	\N	1
12955	2	2021-02-08 19:00:35+00	\N	\N	1
12956	2	2021-02-08 22:48:26+00	\N	\N	1
12957	3	2021-02-09 02:56:29+00	\N	\N	1
12958	6	2021-02-09 03:03:57+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12959	5	2021-02-09 12:09:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12960	1	2021-02-09 11:41:35+00	\N	\N	1
12961	1	2021-02-09 12:22:47+00	\N	\N	1
12962	1	2021-02-09 13:37:11+00	\N	\N	1
12963	1	2021-02-09 14:24:34+00	\N	\N	1
12964	1	2021-02-09 15:10:00+00	\N	\N	1
12965	1	2021-02-09 16:10:47+00	\N	\N	1
12966	1	2021-02-09 17:15:44+00	\N	\N	1
12967	1	2021-02-09 18:25:27+00	\N	\N	1
12968	1	2021-02-09 19:34:36+00	\N	\N	1
12969	1	2021-02-09 20:29:05+00	\N	\N	1
12970	1	2021-02-09 21:44:46+00	\N	\N	1
12971	1	2021-02-09 22:23:38+00	\N	\N	1
12972	1	2021-02-09 23:08:02+00	\N	\N	1
12973	1	2021-02-10 00:18:40+00	\N	\N	1
12974	1	2021-02-10 01:42:40+00	\N	\N	1
12975	1	2021-02-10 02:49:39+00	\N	\N	1
12976	2	2021-02-09 15:10:28+00	\N	\N	1
12977	2	2021-02-09 18:56:58+00	\N	\N	1
12978	2	2021-02-09 23:08:04+00	\N	\N	1
12979	3	2021-02-10 02:18:42+00	\N	\N	1
12980	6	2021-02-10 03:12:30+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
12981	5	2021-02-10 11:54:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
12982	1	2021-02-10 11:17:13+00	\N	\N	1
12983	1	2021-02-10 12:21:57+00	\N	\N	1
12984	1	2021-02-10 13:36:25+00	\N	\N	1
12985	1	2021-02-10 14:16:31+00	\N	\N	1
12986	1	2021-02-10 15:21:30+00	\N	\N	1
12987	1	2021-02-10 16:21:00+00	\N	\N	1
12988	1	2021-02-10 17:29:54+00	\N	\N	1
12989	1	2021-02-10 18:39:02+00	\N	\N	1
12990	1	2021-02-10 19:43:55+00	\N	\N	1
12991	1	2021-02-10 20:28:40+00	\N	\N	1
12992	1	2021-02-10 21:29:30+00	\N	\N	1
12993	1	2021-02-10 22:32:54+00	\N	\N	1
12994	1	2021-02-10 23:08:17+00	\N	\N	1
12995	1	2021-02-11 00:21:54+00	\N	\N	1
12996	1	2021-02-11 01:34:31+00	\N	\N	1
12997	1	2021-02-11 02:28:53+00	\N	\N	1
12998	2	2021-02-10 14:39:27+00	\N	\N	1
12999	2	2021-02-10 18:47:15+00	\N	\N	1
13000	2	2021-02-10 23:17:39+00	\N	\N	1
13001	3	2021-02-11 02:25:15+00	\N	\N	1
13002	6	2021-02-11 02:50:13+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13003	5	2021-02-11 10:49:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13004	1	2021-02-11 11:26:25+00	\N	\N	1
13005	1	2021-02-11 12:43:10+00	\N	\N	1
13006	1	2021-02-11 13:26:01+00	\N	\N	1
13007	1	2021-02-11 14:25:07+00	\N	\N	1
13008	1	2021-02-11 15:14:44+00	\N	\N	1
13009	1	2021-02-11 16:24:01+00	\N	\N	1
13010	1	2021-02-11 17:49:12+00	\N	\N	1
13011	1	2021-02-11 18:40:24+00	\N	\N	1
13012	1	2021-02-11 19:16:49+00	\N	\N	1
13013	1	2021-02-11 20:35:01+00	\N	\N	1
13014	1	2021-02-11 21:17:08+00	\N	\N	1
13015	1	2021-02-11 22:37:39+00	\N	\N	1
13016	1	2021-02-11 23:38:06+00	\N	\N	1
13017	1	2021-02-12 00:26:20+00	\N	\N	1
13018	1	2021-02-12 01:40:11+00	\N	\N	1
13019	1	2021-02-12 02:25:06+00	\N	\N	1
13021	2	2021-02-11 19:19:49+00	\N	\N	1
13022	2	2021-02-11 22:48:56+00	\N	\N	1
13023	3	2021-02-12 02:06:28+00	\N	\N	1
13024	6	2021-02-12 02:09:02+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13025	5	2021-02-12 11:34:12+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13026	1	2021-02-12 11:13:33+00	\N	\N	1
13027	1	2021-02-12 12:20:48+00	\N	\N	1
13028	1	2021-02-12 13:49:18+00	\N	\N	1
13029	1	2021-02-12 14:14:27+00	\N	\N	1
13030	1	2021-02-12 15:26:17+00	\N	\N	1
13031	1	2021-02-12 16:42:54+00	\N	\N	1
13032	1	2021-02-12 17:45:56+00	\N	\N	1
13033	1	2021-02-12 18:27:43+00	\N	\N	1
13034	1	2021-02-12 19:35:30+00	\N	\N	1
13035	1	2021-02-12 20:15:11+00	\N	\N	1
13036	1	2021-02-12 21:27:52+00	\N	\N	1
13037	1	2021-02-12 22:40:53+00	\N	\N	1
13038	1	2021-02-12 23:30:30+00	\N	\N	1
13039	1	2021-02-13 00:20:09+00	\N	\N	1
13040	1	2021-02-13 01:08:36+00	\N	\N	1
13041	1	2021-02-13 02:47:57+00	\N	\N	1
13042	2	2021-02-12 14:53:37+00	\N	\N	1
13043	2	2021-02-12 19:23:39+00	\N	\N	1
13044	2	2021-02-12 22:30:49+00	\N	\N	1
13045	3	2021-02-13 03:14:54+00	\N	\N	1
13046	6	2021-02-13 02:47:21+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13047	5	2021-02-13 10:45:19+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13048	1	2021-02-13 11:33:15+00	\N	\N	1
13049	1	2021-02-13 12:14:18+00	\N	\N	1
13050	1	2021-02-13 13:41:05+00	\N	\N	1
13051	1	2021-02-13 14:17:13+00	\N	\N	1
13052	1	2021-02-13 15:51:09+00	\N	\N	1
13053	1	2021-02-13 16:14:09+00	\N	\N	1
13054	1	2021-02-13 17:42:48+00	\N	\N	1
13055	1	2021-02-13 18:07:39+00	\N	\N	1
13056	1	2021-02-13 19:29:04+00	\N	\N	1
13057	1	2021-02-13 20:13:22+00	\N	\N	1
13058	1	2021-02-13 21:13:08+00	\N	\N	1
13059	1	2021-02-13 22:30:38+00	\N	\N	1
13060	1	2021-02-13 23:25:22+00	\N	\N	1
13061	1	2021-02-14 00:22:39+00	\N	\N	1
13062	1	2021-02-14 01:10:30+00	\N	\N	1
13063	1	2021-02-14 02:24:59+00	\N	\N	1
13064	2	2021-02-13 14:42:17+00	\N	\N	1
13065	2	2021-02-13 19:03:14+00	\N	\N	1
13066	2	2021-02-13 23:23:52+00	\N	\N	1
13067	3	2021-02-14 01:54:42+00	\N	\N	1
13068	6	2021-02-14 02:40:10+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13069	5	2021-02-14 11:15:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13070	1	2021-02-14 11:14:44+00	\N	\N	1
13071	1	2021-02-14 12:14:16+00	\N	\N	1
13072	1	2021-02-14 13:44:14+00	\N	\N	1
13073	1	2021-02-14 14:29:04+00	\N	\N	1
13074	1	2021-02-14 15:46:04+00	\N	\N	1
13075	1	2021-02-14 16:39:21+00	\N	\N	1
13076	1	2021-02-14 17:36:45+00	\N	\N	1
13077	1	2021-02-14 18:13:05+00	\N	\N	1
13078	1	2021-02-14 19:40:18+00	\N	\N	1
13079	1	2021-02-14 20:33:35+00	\N	\N	1
13080	1	2021-02-14 21:23:58+00	\N	\N	1
13081	1	2021-02-14 22:24:27+00	\N	\N	1
13082	1	2021-02-14 23:28:43+00	\N	\N	1
13083	1	2021-02-15 00:50:38+00	\N	\N	1
13084	1	2021-02-15 01:38:23+00	\N	\N	1
13085	1	2021-02-15 02:52:25+00	\N	\N	1
13086	2	2021-02-14 14:54:25+00	\N	\N	1
13087	2	2021-02-14 19:04:27+00	\N	\N	1
13088	2	2021-02-14 22:42:29+00	\N	\N	1
13089	3	2021-02-15 02:56:09+00	\N	\N	1
13090	6	2021-02-15 02:39:51+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13091	5	2021-02-15 11:34:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13092	1	2021-02-15 11:10:36+00	\N	\N	1
13093	1	2021-02-15 12:45:22+00	\N	\N	1
13094	1	2021-02-15 13:33:57+00	\N	\N	1
13095	1	2021-02-15 14:33:30+00	\N	\N	1
13096	1	2021-02-15 15:34:04+00	\N	\N	1
13097	1	2021-02-15 16:30:05+00	\N	\N	1
13098	1	2021-02-15 17:25:13+00	\N	\N	1
13099	1	2021-02-15 18:16:08+00	\N	\N	1
13100	1	2021-02-15 19:14:48+00	\N	\N	1
13101	1	2021-02-15 20:17:12+00	\N	\N	1
13102	1	2021-02-15 21:14:32+00	\N	\N	1
13103	1	2021-02-15 22:35:02+00	\N	\N	1
13104	1	2021-02-15 23:45:33+00	\N	\N	1
13105	1	2021-02-16 00:48:22+00	\N	\N	1
13106	1	2021-02-16 01:39:37+00	\N	\N	1
13107	1	2021-02-16 02:09:25+00	\N	\N	1
13108	2	2021-02-15 15:03:49+00	\N	\N	1
13109	2	2021-02-15 18:30:08+00	\N	\N	1
13110	2	2021-02-15 22:56:35+00	\N	\N	1
13111	3	2021-02-16 03:03:45+00	\N	\N	1
13112	6	2021-02-16 02:21:13+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13113	5	2021-02-16 11:30:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13114	1	2021-02-16 11:11:34+00	\N	\N	1
13115	1	2021-02-16 12:52:02+00	\N	\N	1
13116	1	2021-02-16 13:29:30+00	\N	\N	1
13117	1	2021-02-16 14:40:57+00	\N	\N	1
13118	1	2021-02-16 15:27:00+00	\N	\N	1
13119	1	2021-02-16 16:51:14+00	\N	\N	1
13120	1	2021-02-16 17:50:09+00	\N	\N	1
13121	1	2021-02-16 18:43:18+00	\N	\N	1
13122	1	2021-02-16 19:09:01+00	\N	\N	1
13123	1	2021-02-16 20:45:58+00	\N	\N	1
13124	1	2021-02-16 21:15:29+00	\N	\N	1
13125	1	2021-02-16 22:41:48+00	\N	\N	1
13126	1	2021-02-16 23:09:46+00	\N	\N	1
13127	1	2021-02-17 00:33:08+00	\N	\N	1
13128	1	2021-02-17 01:21:52+00	\N	\N	1
13129	1	2021-02-17 02:38:43+00	\N	\N	1
13130	2	2021-02-16 15:09:52+00	\N	\N	1
13131	2	2021-02-16 19:24:28+00	\N	\N	1
13132	2	2021-02-16 22:54:55+00	\N	\N	1
13133	3	2021-02-17 02:26:07+00	\N	\N	1
13134	6	2021-02-17 02:49:47+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13135	5	2021-02-17 12:01:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13136	1	2021-02-17 11:50:42+00	\N	\N	1
13137	1	2021-02-17 12:11:01+00	\N	\N	1
13138	1	2021-02-17 13:27:08+00	\N	\N	1
13139	1	2021-02-17 14:21:06+00	\N	\N	1
13140	1	2021-02-17 15:34:11+00	\N	\N	1
13141	1	2021-02-17 16:47:20+00	\N	\N	1
13142	1	2021-02-17 17:08:03+00	\N	\N	1
13143	1	2021-02-17 18:15:17+00	\N	\N	1
13144	1	2021-02-17 19:27:16+00	\N	\N	1
13145	1	2021-02-17 20:28:55+00	\N	\N	1
13146	1	2021-02-17 21:23:26+00	\N	\N	1
13147	1	2021-02-17 22:52:23+00	\N	\N	1
13148	1	2021-02-17 23:25:42+00	\N	\N	1
13149	1	2021-02-18 00:36:54+00	\N	\N	1
13150	1	2021-02-18 01:22:34+00	\N	\N	1
13151	1	2021-02-18 02:42:25+00	\N	\N	1
13152	2	2021-02-17 14:52:17+00	\N	\N	1
13153	2	2021-02-17 19:15:13+00	\N	\N	1
13154	2	2021-02-17 23:09:44+00	\N	\N	1
13155	3	2021-02-18 01:34:25+00	\N	\N	1
13156	6	2021-02-18 02:01:05+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13157	5	2021-02-18 11:12:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13158	1	2021-02-18 11:29:24+00	\N	\N	1
13159	1	2021-02-18 12:29:57+00	\N	\N	1
13160	1	2021-02-18 13:36:35+00	\N	\N	1
13161	1	2021-02-18 14:50:49+00	\N	\N	1
13162	1	2021-02-18 15:15:16+00	\N	\N	1
13163	1	2021-02-18 16:50:20+00	\N	\N	1
13164	1	2021-02-18 17:16:35+00	\N	\N	1
13165	1	2021-02-18 18:32:33+00	\N	\N	1
13166	1	2021-02-18 19:48:32+00	\N	\N	1
13167	1	2021-02-18 20:30:05+00	\N	\N	1
13168	1	2021-02-18 21:49:28+00	\N	\N	1
13169	1	2021-02-18 22:49:50+00	\N	\N	1
13170	1	2021-02-18 23:32:01+00	\N	\N	1
13171	1	2021-02-19 00:29:28+00	\N	\N	1
13172	1	2021-02-19 01:26:33+00	\N	\N	1
13173	1	2021-02-19 02:26:54+00	\N	\N	1
13174	2	2021-02-18 15:29:46+00	\N	\N	1
13175	2	2021-02-18 19:11:49+00	\N	\N	1
13176	2	2021-02-18 22:35:03+00	\N	\N	1
13177	3	2021-02-19 03:27:54+00	\N	\N	1
13178	6	2021-02-19 02:48:09+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13179	5	2021-02-19 11:15:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13180	1	2021-02-19 11:18:25+00	\N	\N	1
13181	1	2021-02-19 12:14:42+00	\N	\N	1
13182	1	2021-02-19 13:13:06+00	\N	\N	1
13183	1	2021-02-19 14:43:28+00	\N	\N	1
13184	1	2021-02-19 15:24:49+00	\N	\N	1
13185	1	2021-02-19 16:12:07+00	\N	\N	1
13186	1	2021-02-19 17:43:46+00	\N	\N	1
13187	1	2021-02-19 18:10:42+00	\N	\N	1
13188	1	2021-02-19 19:38:40+00	\N	\N	1
13189	1	2021-02-19 20:28:26+00	\N	\N	1
13190	1	2021-02-19 21:13:05+00	\N	\N	1
13191	1	2021-02-19 22:09:40+00	\N	\N	1
13192	1	2021-02-19 23:50:00+00	\N	\N	1
13193	1	2021-02-20 00:19:06+00	\N	\N	1
13194	1	2021-02-20 01:48:44+00	\N	\N	1
13195	1	2021-02-20 02:45:22+00	\N	\N	1
13196	2	2021-02-19 15:08:07+00	\N	\N	1
13197	2	2021-02-19 19:25:48+00	\N	\N	1
13198	2	2021-02-19 22:44:28+00	\N	\N	1
13199	3	2021-02-20 02:44:53+00	\N	\N	1
13200	6	2021-02-20 01:49:43+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13201	5	2021-02-20 12:18:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13202	1	2021-02-20 11:22:33+00	\N	\N	1
13203	1	2021-02-20 12:39:41+00	\N	\N	1
13204	1	2021-02-20 13:35:48+00	\N	\N	1
13205	1	2021-02-20 14:45:38+00	\N	\N	1
13206	1	2021-02-20 15:38:58+00	\N	\N	1
13207	1	2021-02-20 16:44:19+00	\N	\N	1
13208	1	2021-02-20 17:24:40+00	\N	\N	1
13209	1	2021-02-20 18:15:33+00	\N	\N	1
13210	1	2021-02-20 19:40:22+00	\N	\N	1
13211	1	2021-02-20 20:11:52+00	\N	\N	1
13212	1	2021-02-20 21:35:36+00	\N	\N	1
13213	1	2021-02-20 22:14:55+00	\N	\N	1
13214	1	2021-02-20 23:32:48+00	\N	\N	1
13215	1	2021-02-21 00:14:16+00	\N	\N	1
13216	1	2021-02-21 01:12:38+00	\N	\N	1
13217	1	2021-02-21 02:35:06+00	\N	\N	1
13218	2	2021-02-20 14:33:01+00	\N	\N	1
13219	2	2021-02-20 18:44:32+00	\N	\N	1
13220	2	2021-02-20 22:35:10+00	\N	\N	1
13221	3	2021-02-21 02:27:53+00	\N	\N	1
13322	1	2021-02-25 21:32:46+00	\N	\N	1
13323	1	2021-02-25 22:45:55+00	\N	\N	1
13324	1	2021-02-25 23:26:40+00	\N	\N	1
13325	1	2021-02-26 00:36:45+00	\N	\N	1
13326	1	2021-02-26 01:38:21+00	\N	\N	1
13327	1	2021-02-26 02:11:32+00	\N	\N	1
13222	6	2021-02-21 02:32:29+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13223	5	2021-02-21 10:58:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13224	1	2021-02-21 11:34:46+00	\N	\N	1
13225	1	2021-02-21 12:09:22+00	\N	\N	1
13226	1	2021-02-21 13:09:18+00	\N	\N	1
13227	1	2021-02-21 14:16:00+00	\N	\N	1
13228	1	2021-02-21 15:17:47+00	\N	\N	1
13229	1	2021-02-21 16:52:27+00	\N	\N	1
13230	1	2021-02-21 17:45:09+00	\N	\N	1
13231	1	2021-02-21 18:28:59+00	\N	\N	1
13232	1	2021-02-21 19:41:14+00	\N	\N	1
13233	1	2021-02-21 20:35:17+00	\N	\N	1
13234	1	2021-02-21 21:28:03+00	\N	\N	1
13235	1	2021-02-21 22:30:08+00	\N	\N	1
13236	1	2021-02-21 23:17:26+00	\N	\N	1
13237	1	2021-02-22 00:43:41+00	\N	\N	1
13238	1	2021-02-22 01:11:26+00	\N	\N	1
13239	1	2021-02-22 02:22:48+00	\N	\N	1
13240	2	2021-02-21 14:48:25+00	\N	\N	1
13241	2	2021-02-21 19:24:14+00	\N	\N	1
13242	2	2021-02-21 22:46:34+00	\N	\N	1
13243	3	2021-02-22 02:44:55+00	\N	\N	1
13244	6	2021-02-22 03:01:20+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13245	5	2021-02-22 11:29:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13246	1	2021-02-22 11:08:31+00	\N	\N	1
13247	1	2021-02-22 12:43:50+00	\N	\N	1
13248	1	2021-02-22 13:38:45+00	\N	\N	1
13249	1	2021-02-22 14:26:37+00	\N	\N	1
13250	1	2021-02-22 15:40:59+00	\N	\N	1
13251	1	2021-02-22 16:15:07+00	\N	\N	1
13252	1	2021-02-22 17:27:50+00	\N	\N	1
13253	1	2021-02-22 18:44:29+00	\N	\N	1
13254	1	2021-02-22 19:38:13+00	\N	\N	1
13255	1	2021-02-22 20:33:45+00	\N	\N	1
13256	1	2021-02-22 21:31:04+00	\N	\N	1
13257	1	2021-02-22 22:45:46+00	\N	\N	1
13258	1	2021-02-22 23:38:55+00	\N	\N	1
13259	1	2021-02-23 00:48:13+00	\N	\N	1
13260	1	2021-02-23 01:22:30+00	\N	\N	1
13261	1	2021-02-23 02:34:59+00	\N	\N	1
13262	2	2021-02-22 14:40:13+00	\N	\N	1
13263	2	2021-02-22 19:19:54+00	\N	\N	1
13264	2	2021-02-22 23:07:15+00	\N	\N	1
13265	3	2021-02-23 03:17:58+00	\N	\N	1
13266	6	2021-02-23 02:56:00+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13267	5	2021-02-23 12:26:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13268	1	2021-02-23 11:29:54+00	\N	\N	1
13269	1	2021-02-23 12:49:35+00	\N	\N	1
13270	1	2021-02-23 13:45:13+00	\N	\N	1
13271	1	2021-02-23 14:40:18+00	\N	\N	1
13272	1	2021-02-23 15:38:02+00	\N	\N	1
13273	1	2021-02-23 16:23:08+00	\N	\N	1
13274	1	2021-02-23 17:37:56+00	\N	\N	1
13275	1	2021-02-23 18:07:50+00	\N	\N	1
13276	1	2021-02-23 19:36:06+00	\N	\N	1
13277	1	2021-02-23 20:43:16+00	\N	\N	1
13278	1	2021-02-23 21:22:04+00	\N	\N	1
13279	1	2021-02-23 22:13:47+00	\N	\N	1
13280	1	2021-02-23 23:49:22+00	\N	\N	1
13281	1	2021-02-24 00:32:18+00	\N	\N	1
13282	1	2021-02-24 01:46:27+00	\N	\N	1
13283	1	2021-02-24 02:23:12+00	\N	\N	1
13284	2	2021-02-23 14:47:44+00	\N	\N	1
13285	2	2021-02-23 19:08:56+00	\N	\N	1
13286	2	2021-02-23 22:59:05+00	\N	\N	1
13287	3	2021-02-24 02:09:31+00	\N	\N	1
13288	6	2021-02-24 02:34:21+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13289	5	2021-02-24 12:04:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13290	1	2021-02-24 11:09:32+00	\N	\N	1
13291	1	2021-02-24 12:27:54+00	\N	\N	1
13292	1	2021-02-24 13:09:13+00	\N	\N	1
13293	1	2021-02-24 14:16:23+00	\N	\N	1
13294	1	2021-02-24 15:19:07+00	\N	\N	1
13295	1	2021-02-24 16:50:55+00	\N	\N	1
13296	1	2021-02-24 17:50:54+00	\N	\N	1
13297	1	2021-02-24 18:25:06+00	\N	\N	1
13298	1	2021-02-24 19:08:02+00	\N	\N	1
13299	1	2021-02-24 20:48:46+00	\N	\N	1
13300	1	2021-02-24 21:35:52+00	\N	\N	1
13301	1	2021-02-24 22:08:18+00	\N	\N	1
13302	1	2021-02-24 23:41:04+00	\N	\N	1
13303	1	2021-02-25 00:21:20+00	\N	\N	1
13304	1	2021-02-25 01:23:14+00	\N	\N	1
13305	1	2021-02-25 02:47:30+00	\N	\N	1
13306	2	2021-02-24 14:34:06+00	\N	\N	1
13307	2	2021-02-24 18:50:39+00	\N	\N	1
13308	2	2021-02-24 22:51:26+00	\N	\N	1
13309	3	2021-02-25 01:38:29+00	\N	\N	1
13310	6	2021-02-25 02:14:07+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13311	5	2021-02-25 12:23:14+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13312	1	2021-02-25 11:32:28+00	\N	\N	1
13313	1	2021-02-25 12:23:07+00	\N	\N	1
13314	1	2021-02-25 13:22:12+00	\N	\N	1
13315	1	2021-02-25 14:49:03+00	\N	\N	1
13316	1	2021-02-25 15:37:07+00	\N	\N	1
13317	1	2021-02-25 16:35:21+00	\N	\N	1
13318	1	2021-02-25 17:21:07+00	\N	\N	1
13319	1	2021-02-25 18:16:07+00	\N	\N	1
13320	1	2021-02-25 19:11:17+00	\N	\N	1
13321	1	2021-02-25 20:08:31+00	\N	\N	1
13328	2	2021-02-25 15:05:36+00	\N	\N	1
13329	2	2021-02-25 18:48:46+00	\N	\N	1
13330	2	2021-02-25 22:30:57+00	\N	\N	1
13331	3	2021-02-26 01:37:40+00	\N	\N	1
13332	6	2021-02-26 02:05:43+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13333	5	2021-02-26 11:16:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13334	1	2021-02-26 11:31:02+00	\N	\N	1
13335	1	2021-02-26 12:18:37+00	\N	\N	1
13336	1	2021-02-26 13:47:16+00	\N	\N	1
13337	1	2021-02-26 14:48:31+00	\N	\N	1
13338	1	2021-02-26 15:15:59+00	\N	\N	1
13339	1	2021-02-26 16:26:50+00	\N	\N	1
13340	1	2021-02-26 17:19:59+00	\N	\N	1
13341	1	2021-02-26 18:38:26+00	\N	\N	1
13342	1	2021-02-26 19:18:41+00	\N	\N	1
13343	1	2021-02-26 20:10:05+00	\N	\N	1
13344	1	2021-02-26 21:12:02+00	\N	\N	1
13345	1	2021-02-26 22:20:54+00	\N	\N	1
13346	1	2021-02-26 23:31:52+00	\N	\N	1
13347	1	2021-02-27 00:15:32+00	\N	\N	1
13348	1	2021-02-27 01:42:25+00	\N	\N	1
13349	1	2021-02-27 02:09:24+00	\N	\N	1
13350	2	2021-02-26 15:25:56+00	\N	\N	1
13351	2	2021-02-26 19:17:00+00	\N	\N	1
13352	2	2021-02-26 22:33:43+00	\N	\N	1
13353	3	2021-02-27 03:24:35+00	\N	\N	1
13354	6	2021-02-27 02:42:01+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13355	5	2021-02-27 11:53:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13356	1	2021-02-27 11:32:26+00	\N	\N	1
13357	1	2021-02-27 12:20:28+00	\N	\N	1
13358	1	2021-02-27 13:08:28+00	\N	\N	1
13359	1	2021-02-27 14:51:35+00	\N	\N	1
13360	1	2021-02-27 15:25:03+00	\N	\N	1
13361	1	2021-02-27 16:36:15+00	\N	\N	1
13362	1	2021-02-27 17:47:41+00	\N	\N	1
13363	1	2021-02-27 18:28:39+00	\N	\N	1
13364	1	2021-02-27 19:29:59+00	\N	\N	1
13365	1	2021-02-27 20:47:42+00	\N	\N	1
13366	1	2021-02-27 21:30:24+00	\N	\N	1
13367	1	2021-02-27 22:19:58+00	\N	\N	1
13368	1	2021-02-27 23:39:43+00	\N	\N	1
13369	1	2021-02-28 00:09:56+00	\N	\N	1
13370	1	2021-02-28 01:30:20+00	\N	\N	1
13371	1	2021-02-28 02:34:17+00	\N	\N	1
13372	2	2021-02-27 14:58:43+00	\N	\N	1
13373	2	2021-02-27 19:12:25+00	\N	\N	1
13374	2	2021-02-27 22:52:54+00	\N	\N	1
13375	3	2021-02-28 02:54:58+00	\N	\N	1
13376	6	2021-02-28 02:10:27+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13377	5	2021-02-28 11:58:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13378	1	2021-02-28 11:21:21+00	\N	\N	1
13379	1	2021-02-28 12:44:01+00	\N	\N	1
13380	1	2021-02-28 13:37:09+00	\N	\N	1
13381	1	2021-02-28 14:36:13+00	\N	\N	1
13382	1	2021-02-28 15:49:04+00	\N	\N	1
13383	1	2021-02-28 16:08:45+00	\N	\N	1
13384	1	2021-02-28 17:47:18+00	\N	\N	1
13385	1	2021-02-28 18:22:54+00	\N	\N	1
13386	1	2021-02-28 19:09:40+00	\N	\N	1
13387	1	2021-02-28 20:19:56+00	\N	\N	1
13388	1	2021-02-28 21:49:39+00	\N	\N	1
13389	1	2021-02-28 22:22:32+00	\N	\N	1
13390	1	2021-02-28 23:15:03+00	\N	\N	1
13391	1	2021-03-01 00:36:50+00	\N	\N	1
13392	1	2021-03-01 01:13:30+00	\N	\N	1
13393	1	2021-03-01 02:28:59+00	\N	\N	1
13394	2	2021-02-28 14:49:41+00	\N	\N	1
13395	2	2021-02-28 18:48:15+00	\N	\N	1
13396	2	2021-02-28 23:15:10+00	\N	\N	1
13397	3	2021-03-01 01:41:26+00	\N	\N	1
13398	6	2021-03-01 02:02:47+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13399	5	2021-03-01 11:16:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13400	1	2021-03-01 11:36:22+00	\N	\N	1
13401	1	2021-03-01 12:33:26+00	\N	\N	1
13402	1	2021-03-01 13:21:25+00	\N	\N	1
13403	1	2021-03-01 14:27:54+00	\N	\N	1
13404	1	2021-03-01 15:25:07+00	\N	\N	1
13405	1	2021-03-01 16:12:34+00	\N	\N	1
13406	1	2021-03-01 17:21:42+00	\N	\N	1
13407	1	2021-03-01 18:16:01+00	\N	\N	1
13408	1	2021-03-01 19:49:35+00	\N	\N	1
13409	1	2021-03-01 20:09:41+00	\N	\N	1
13410	1	2021-03-01 21:48:31+00	\N	\N	1
13411	1	2021-03-01 22:43:02+00	\N	\N	1
13412	1	2021-03-01 23:35:47+00	\N	\N	1
13413	1	2021-03-02 00:29:53+00	\N	\N	1
13414	1	2021-03-02 01:27:46+00	\N	\N	1
13415	1	2021-03-02 02:40:55+00	\N	\N	1
13416	2	2021-03-01 15:12:02+00	\N	\N	1
13417	2	2021-03-01 18:34:06+00	\N	\N	1
13418	2	2021-03-01 22:56:17+00	\N	\N	1
13419	3	2021-03-02 01:37:14+00	\N	\N	1
13420	6	2021-03-02 02:32:23+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13421	5	2021-03-02 12:29:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13422	1	2021-03-02 11:44:46+00	\N	\N	1
13423	1	2021-03-02 12:14:40+00	\N	\N	1
13424	1	2021-03-02 13:39:32+00	\N	\N	1
13425	1	2021-03-02 14:17:38+00	\N	\N	1
13426	1	2021-03-02 15:35:31+00	\N	\N	1
13427	1	2021-03-02 16:27:36+00	\N	\N	1
13428	1	2021-03-02 17:47:08+00	\N	\N	1
13429	1	2021-03-02 18:32:47+00	\N	\N	1
13430	1	2021-03-02 19:43:42+00	\N	\N	1
13431	1	2021-03-02 20:37:16+00	\N	\N	1
13432	1	2021-03-02 21:32:00+00	\N	\N	1
13433	1	2021-03-02 22:49:46+00	\N	\N	1
13434	1	2021-03-02 23:50:23+00	\N	\N	1
13435	1	2021-03-03 00:20:34+00	\N	\N	1
13436	1	2021-03-03 01:29:56+00	\N	\N	1
13437	1	2021-03-03 02:24:29+00	\N	\N	1
13438	2	2021-03-02 15:27:59+00	\N	\N	1
13439	2	2021-03-02 18:53:47+00	\N	\N	1
13440	2	2021-03-02 22:39:54+00	\N	\N	1
13441	3	2021-03-03 02:09:26+00	\N	\N	1
13442	6	2021-03-03 01:49:08+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13443	5	2021-03-03 11:39:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13444	1	2021-03-03 11:48:40+00	\N	\N	1
13445	1	2021-03-03 12:30:20+00	\N	\N	1
13446	1	2021-03-03 13:48:24+00	\N	\N	1
13447	1	2021-03-03 14:13:35+00	\N	\N	1
13448	1	2021-03-03 15:33:42+00	\N	\N	1
13449	1	2021-03-03 16:27:06+00	\N	\N	1
13450	1	2021-03-03 17:08:05+00	\N	\N	1
13451	1	2021-03-03 18:40:51+00	\N	\N	1
13452	1	2021-03-03 19:40:33+00	\N	\N	1
13453	1	2021-03-03 20:37:02+00	\N	\N	1
13454	1	2021-03-03 21:34:20+00	\N	\N	1
13455	1	2021-03-03 22:22:13+00	\N	\N	1
13456	1	2021-03-03 23:40:12+00	\N	\N	1
13457	1	2021-03-04 00:32:11+00	\N	\N	1
13458	1	2021-03-04 01:33:19+00	\N	\N	1
13459	1	2021-03-04 02:46:47+00	\N	\N	1
13460	2	2021-03-03 14:45:16+00	\N	\N	1
13461	2	2021-03-03 18:47:38+00	\N	\N	1
13462	2	2021-03-03 22:54:19+00	\N	\N	1
13463	3	2021-03-04 03:11:22+00	\N	\N	1
13464	6	2021-03-04 02:12:42+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13465	5	2021-03-04 11:20:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13466	1	2021-03-04 11:15:05+00	\N	\N	1
13467	1	2021-03-04 12:34:54+00	\N	\N	1
13468	1	2021-03-04 13:30:12+00	\N	\N	1
13469	1	2021-03-04 14:22:42+00	\N	\N	1
13470	1	2021-03-04 15:28:12+00	\N	\N	1
13471	1	2021-03-04 16:49:58+00	\N	\N	1
13472	1	2021-03-04 17:45:52+00	\N	\N	1
13473	1	2021-03-04 18:45:18+00	\N	\N	1
13474	1	2021-03-04 19:42:32+00	\N	\N	1
13475	1	2021-03-04 20:17:57+00	\N	\N	1
13476	1	2021-03-04 21:10:40+00	\N	\N	1
13477	1	2021-03-04 22:52:23+00	\N	\N	1
13478	1	2021-03-04 23:49:33+00	\N	\N	1
13479	1	2021-03-05 00:16:15+00	\N	\N	1
13480	1	2021-03-05 01:48:03+00	\N	\N	1
13481	1	2021-03-05 02:19:46+00	\N	\N	1
13482	2	2021-03-04 14:39:37+00	\N	\N	1
13483	2	2021-03-04 18:48:43+00	\N	\N	1
13484	2	2021-03-04 23:22:13+00	\N	\N	1
13485	3	2021-03-05 02:10:39+00	\N	\N	1
13486	6	2021-03-05 02:46:48+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13487	5	2021-03-05 10:57:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13488	1	2021-03-05 11:20:53+00	\N	\N	1
13489	1	2021-03-05 12:26:21+00	\N	\N	1
13490	1	2021-03-05 13:43:33+00	\N	\N	1
13491	1	2021-03-05 14:30:23+00	\N	\N	1
13492	1	2021-03-05 15:51:46+00	\N	\N	1
13493	1	2021-03-05 16:08:04+00	\N	\N	1
13494	1	2021-03-05 17:37:19+00	\N	\N	1
13495	1	2021-03-05 18:32:00+00	\N	\N	1
13496	1	2021-03-05 19:47:00+00	\N	\N	1
13497	1	2021-03-05 20:26:07+00	\N	\N	1
13498	1	2021-03-05 21:18:26+00	\N	\N	1
13499	1	2021-03-05 22:20:07+00	\N	\N	1
13500	1	2021-03-05 23:50:41+00	\N	\N	1
13501	1	2021-03-06 00:29:01+00	\N	\N	1
13502	1	2021-03-06 01:08:57+00	\N	\N	1
13503	1	2021-03-06 02:44:20+00	\N	\N	1
13504	2	2021-03-05 14:51:55+00	\N	\N	1
13505	2	2021-03-05 19:29:54+00	\N	\N	1
13506	2	2021-03-05 22:46:22+00	\N	\N	1
13507	3	2021-03-06 02:58:37+00	\N	\N	1
13508	6	2021-03-06 02:27:16+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13509	5	2021-03-06 10:41:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13510	1	2021-03-06 11:24:19+00	\N	\N	1
13511	1	2021-03-06 12:32:42+00	\N	\N	1
13512	1	2021-03-06 13:31:23+00	\N	\N	1
13513	1	2021-03-06 14:20:14+00	\N	\N	1
13514	1	2021-03-06 15:40:16+00	\N	\N	1
13515	1	2021-03-06 16:23:52+00	\N	\N	1
13516	1	2021-03-06 17:09:58+00	\N	\N	1
13517	1	2021-03-06 18:43:01+00	\N	\N	1
13518	1	2021-03-06 19:28:40+00	\N	\N	1
13519	1	2021-03-06 20:38:07+00	\N	\N	1
13520	1	2021-03-06 21:39:30+00	\N	\N	1
13521	1	2021-03-06 22:26:27+00	\N	\N	1
13522	1	2021-03-06 23:40:34+00	\N	\N	1
13523	1	2021-03-07 00:21:16+00	\N	\N	1
13524	1	2021-03-07 01:35:31+00	\N	\N	1
13525	1	2021-03-07 02:23:15+00	\N	\N	1
13526	2	2021-03-06 15:02:58+00	\N	\N	1
13527	2	2021-03-06 18:57:00+00	\N	\N	1
13528	2	2021-03-06 23:22:16+00	\N	\N	1
13529	3	2021-03-07 03:01:42+00	\N	\N	1
13630	1	2021-03-11 21:42:49+00	\N	\N	1
13631	1	2021-03-11 22:34:33+00	\N	\N	1
13632	1	2021-03-11 23:37:55+00	\N	\N	1
13633	1	2021-03-12 00:41:49+00	\N	\N	1
13634	1	2021-03-12 01:39:13+00	\N	\N	1
13530	6	2021-03-07 02:55:41+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13531	5	2021-03-07 12:19:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13532	1	2021-03-07 11:31:59+00	\N	\N	1
13533	1	2021-03-07 12:43:28+00	\N	\N	1
13534	1	2021-03-07 13:35:32+00	\N	\N	1
13535	1	2021-03-07 14:11:08+00	\N	\N	1
13536	1	2021-03-07 15:19:10+00	\N	\N	1
13537	1	2021-03-07 16:50:17+00	\N	\N	1
13538	1	2021-03-07 17:36:14+00	\N	\N	1
13539	1	2021-03-07 18:11:29+00	\N	\N	1
13540	1	2021-03-07 19:42:03+00	\N	\N	1
13541	1	2021-03-07 20:10:47+00	\N	\N	1
13542	1	2021-03-07 21:15:47+00	\N	\N	1
13543	1	2021-03-07 22:44:24+00	\N	\N	1
13544	1	2021-03-07 23:42:14+00	\N	\N	1
13545	1	2021-03-08 00:39:09+00	\N	\N	1
13546	1	2021-03-08 01:18:26+00	\N	\N	1
13547	1	2021-03-08 02:49:53+00	\N	\N	1
13548	2	2021-03-07 14:45:38+00	\N	\N	1
13549	2	2021-03-07 18:59:12+00	\N	\N	1
13550	2	2021-03-07 22:39:00+00	\N	\N	1
13551	3	2021-03-08 02:30:41+00	\N	\N	1
13552	6	2021-03-08 02:18:05+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13553	5	2021-03-08 11:12:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13554	1	2021-03-08 11:21:26+00	\N	\N	1
13555	1	2021-03-08 12:41:46+00	\N	\N	1
13556	1	2021-03-08 13:16:49+00	\N	\N	1
13557	1	2021-03-08 14:23:43+00	\N	\N	1
13558	1	2021-03-08 15:46:33+00	\N	\N	1
13559	1	2021-03-08 16:42:49+00	\N	\N	1
13560	1	2021-03-08 17:49:17+00	\N	\N	1
13561	1	2021-03-08 18:34:12+00	\N	\N	1
13562	1	2021-03-08 19:44:11+00	\N	\N	1
13563	1	2021-03-08 20:37:46+00	\N	\N	1
13564	1	2021-03-08 21:09:21+00	\N	\N	1
13565	1	2021-03-08 22:48:09+00	\N	\N	1
13566	1	2021-03-08 23:08:45+00	\N	\N	1
13567	1	2021-03-09 00:48:11+00	\N	\N	1
13568	1	2021-03-09 01:25:09+00	\N	\N	1
13569	1	2021-03-09 02:51:02+00	\N	\N	1
13570	2	2021-03-08 15:13:26+00	\N	\N	1
13571	2	2021-03-08 18:32:00+00	\N	\N	1
13572	2	2021-03-08 22:57:05+00	\N	\N	1
13573	3	2021-03-09 03:12:32+00	\N	\N	1
13574	6	2021-03-09 01:57:11+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13575	5	2021-03-09 11:55:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13576	1	2021-03-09 11:27:09+00	\N	\N	1
13577	1	2021-03-09 12:36:41+00	\N	\N	1
13578	1	2021-03-09 13:25:05+00	\N	\N	1
13579	1	2021-03-09 14:30:40+00	\N	\N	1
13580	1	2021-03-09 15:44:10+00	\N	\N	1
13581	1	2021-03-09 16:34:23+00	\N	\N	1
13582	1	2021-03-09 17:37:52+00	\N	\N	1
13583	1	2021-03-09 18:42:37+00	\N	\N	1
13584	1	2021-03-09 19:39:41+00	\N	\N	1
13585	1	2021-03-09 20:28:34+00	\N	\N	1
13586	1	2021-03-09 21:50:05+00	\N	\N	1
13587	1	2021-03-09 22:15:47+00	\N	\N	1
13588	1	2021-03-09 23:22:38+00	\N	\N	1
13589	1	2021-03-10 00:19:00+00	\N	\N	1
13590	1	2021-03-10 01:14:14+00	\N	\N	1
13591	1	2021-03-10 02:39:32+00	\N	\N	1
13592	2	2021-03-09 15:26:08+00	\N	\N	1
13593	2	2021-03-09 18:35:45+00	\N	\N	1
13594	2	2021-03-09 22:42:21+00	\N	\N	1
13595	3	2021-03-10 03:19:16+00	\N	\N	1
13596	6	2021-03-10 02:46:56+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13597	5	2021-03-10 12:17:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13598	1	2021-03-10 11:52:29+00	\N	\N	1
13599	1	2021-03-10 12:48:42+00	\N	\N	1
13600	1	2021-03-10 13:37:51+00	\N	\N	1
13601	1	2021-03-10 14:39:52+00	\N	\N	1
13602	1	2021-03-10 15:22:32+00	\N	\N	1
13603	1	2021-03-10 16:34:07+00	\N	\N	1
13604	1	2021-03-10 17:40:46+00	\N	\N	1
13605	1	2021-03-10 18:38:07+00	\N	\N	1
13606	1	2021-03-10 19:45:26+00	\N	\N	1
13607	1	2021-03-10 20:17:14+00	\N	\N	1
13608	1	2021-03-10 21:23:50+00	\N	\N	1
13609	1	2021-03-10 22:25:44+00	\N	\N	1
13610	1	2021-03-10 23:19:49+00	\N	\N	1
13611	1	2021-03-11 00:28:36+00	\N	\N	1
13612	1	2021-03-11 01:37:18+00	\N	\N	1
13613	1	2021-03-11 02:30:23+00	\N	\N	1
13614	2	2021-03-10 15:28:18+00	\N	\N	1
13615	2	2021-03-10 19:21:40+00	\N	\N	1
13616	2	2021-03-10 22:37:33+00	\N	\N	1
13617	3	2021-03-11 02:15:30+00	\N	\N	1
13618	6	2021-03-11 02:47:48+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13619	5	2021-03-11 10:57:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13620	1	2021-03-11 11:41:40+00	\N	\N	1
13621	1	2021-03-11 12:37:43+00	\N	\N	1
13622	1	2021-03-11 13:34:06+00	\N	\N	1
13623	1	2021-03-11 14:45:19+00	\N	\N	1
13624	1	2021-03-11 15:14:57+00	\N	\N	1
13625	1	2021-03-11 16:39:00+00	\N	\N	1
13626	1	2021-03-11 17:15:58+00	\N	\N	1
13627	1	2021-03-11 18:08:32+00	\N	\N	1
13628	1	2021-03-11 19:17:39+00	\N	\N	1
13629	1	2021-03-11 20:23:48+00	\N	\N	1
13635	1	2021-03-12 02:21:10+00	\N	\N	1
13636	2	2021-03-11 15:24:19+00	\N	\N	1
13637	2	2021-03-11 18:39:28+00	\N	\N	1
13638	2	2021-03-11 23:13:08+00	\N	\N	1
13639	3	2021-03-12 02:06:45+00	\N	\N	1
13640	6	2021-03-12 02:16:01+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13641	5	2021-03-12 12:04:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13642	1	2021-03-12 11:50:40+00	\N	\N	1
13643	1	2021-03-12 12:34:54+00	\N	\N	1
13644	1	2021-03-12 13:23:02+00	\N	\N	1
13645	1	2021-03-12 14:38:34+00	\N	\N	1
13646	1	2021-03-12 15:29:43+00	\N	\N	1
13647	1	2021-03-12 16:25:02+00	\N	\N	1
13648	1	2021-03-12 17:14:17+00	\N	\N	1
13649	1	2021-03-12 18:30:53+00	\N	\N	1
13650	1	2021-03-12 19:36:56+00	\N	\N	1
13651	1	2021-03-12 20:35:21+00	\N	\N	1
13652	1	2021-03-12 21:34:12+00	\N	\N	1
13653	1	2021-03-12 22:34:51+00	\N	\N	1
13654	1	2021-03-12 23:48:44+00	\N	\N	1
13655	1	2021-03-13 00:17:50+00	\N	\N	1
13656	1	2021-03-13 01:08:27+00	\N	\N	1
13657	1	2021-03-13 02:22:08+00	\N	\N	1
13658	2	2021-03-12 15:04:05+00	\N	\N	1
13659	2	2021-03-12 19:23:07+00	\N	\N	1
13660	2	2021-03-12 22:31:07+00	\N	\N	1
13661	3	2021-03-13 01:38:41+00	\N	\N	1
13662	6	2021-03-13 02:32:56+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13663	5	2021-03-13 10:35:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13664	1	2021-03-13 11:22:40+00	\N	\N	1
13665	1	2021-03-13 12:48:06+00	\N	\N	1
13666	1	2021-03-13 13:29:04+00	\N	\N	1
13667	1	2021-03-13 14:49:50+00	\N	\N	1
13668	1	2021-03-13 15:35:44+00	\N	\N	1
13669	1	2021-03-13 16:26:50+00	\N	\N	1
13670	1	2021-03-13 17:10:33+00	\N	\N	1
13671	1	2021-03-13 18:44:39+00	\N	\N	1
13672	1	2021-03-13 19:17:47+00	\N	\N	1
13673	1	2021-03-13 20:25:30+00	\N	\N	1
13674	1	2021-03-13 21:22:28+00	\N	\N	1
13675	1	2021-03-13 22:19:39+00	\N	\N	1
13676	1	2021-03-13 23:44:20+00	\N	\N	1
13677	1	2021-03-14 00:38:38+00	\N	\N	1
13678	1	2021-03-14 01:41:24+00	\N	\N	1
13679	1	2021-03-14 02:17:38+00	\N	\N	1
13680	2	2021-03-13 15:13:12+00	\N	\N	1
13681	2	2021-03-13 18:49:47+00	\N	\N	1
13682	2	2021-03-13 23:06:22+00	\N	\N	1
13683	3	2021-03-14 03:29:04+00	\N	\N	1
13684	6	2021-03-14 03:09:13+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13685	5	2021-03-14 11:22:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13686	1	2021-03-14 11:20:00+00	\N	\N	1
13687	1	2021-03-14 12:36:54+00	\N	\N	1
13688	1	2021-03-14 13:40:22+00	\N	\N	1
13689	1	2021-03-14 14:24:33+00	\N	\N	1
13690	1	2021-03-14 15:14:06+00	\N	\N	1
13691	1	2021-03-14 16:44:45+00	\N	\N	1
13692	1	2021-03-14 17:35:15+00	\N	\N	1
13693	1	2021-03-14 18:08:55+00	\N	\N	1
13694	1	2021-03-14 19:31:16+00	\N	\N	1
13695	1	2021-03-14 20:10:52+00	\N	\N	1
13696	1	2021-03-14 21:18:14+00	\N	\N	1
13697	1	2021-03-14 22:40:56+00	\N	\N	1
13698	1	2021-03-14 23:08:29+00	\N	\N	1
13699	1	2021-03-15 00:51:39+00	\N	\N	1
13700	1	2021-03-15 01:14:53+00	\N	\N	1
13701	1	2021-03-15 02:43:01+00	\N	\N	1
13702	2	2021-03-14 14:42:46+00	\N	\N	1
13703	2	2021-03-14 18:35:17+00	\N	\N	1
13704	2	2021-03-14 22:58:34+00	\N	\N	1
13705	3	2021-03-15 03:05:25+00	\N	\N	1
13706	6	2021-03-15 01:47:30+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13707	5	2021-03-15 10:48:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13708	1	2021-03-15 11:49:52+00	\N	\N	1
13709	1	2021-03-15 12:49:26+00	\N	\N	1
13710	1	2021-03-15 13:21:49+00	\N	\N	1
13711	1	2021-03-15 14:44:00+00	\N	\N	1
13712	1	2021-03-15 15:28:27+00	\N	\N	1
13713	1	2021-03-15 16:46:28+00	\N	\N	1
13714	1	2021-03-15 17:52:09+00	\N	\N	1
13715	1	2021-03-15 18:16:36+00	\N	\N	1
13716	1	2021-03-15 19:38:40+00	\N	\N	1
13717	1	2021-03-15 20:39:53+00	\N	\N	1
13718	1	2021-03-15 21:40:02+00	\N	\N	1
13719	1	2021-03-15 22:20:14+00	\N	\N	1
13720	1	2021-03-15 23:34:49+00	\N	\N	1
13721	1	2021-03-16 00:14:11+00	\N	\N	1
13722	1	2021-03-16 01:30:34+00	\N	\N	1
13723	1	2021-03-16 02:43:23+00	\N	\N	1
13724	2	2021-03-15 14:50:32+00	\N	\N	1
13725	2	2021-03-15 19:02:14+00	\N	\N	1
13726	2	2021-03-15 22:37:35+00	\N	\N	1
13727	3	2021-03-16 02:44:03+00	\N	\N	1
13728	6	2021-03-16 02:08:56+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13729	5	2021-03-16 11:43:46+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13730	1	2021-03-16 11:39:49+00	\N	\N	1
13731	1	2021-03-16 12:36:55+00	\N	\N	1
13732	1	2021-03-16 13:18:55+00	\N	\N	1
13733	1	2021-03-16 14:20:51+00	\N	\N	1
13734	1	2021-03-16 15:32:27+00	\N	\N	1
13735	1	2021-03-16 16:34:47+00	\N	\N	1
13736	1	2021-03-16 17:20:15+00	\N	\N	1
13737	1	2021-03-16 18:09:40+00	\N	\N	1
13738	1	2021-03-16 19:16:05+00	\N	\N	1
13739	1	2021-03-16 20:31:23+00	\N	\N	1
13740	1	2021-03-16 21:12:48+00	\N	\N	1
13741	1	2021-03-16 22:35:18+00	\N	\N	1
13742	1	2021-03-16 23:15:00+00	\N	\N	1
13743	1	2021-03-17 00:31:03+00	\N	\N	1
13744	1	2021-03-17 01:17:13+00	\N	\N	1
13745	1	2021-03-17 02:12:05+00	\N	\N	1
13746	2	2021-03-16 15:15:11+00	\N	\N	1
13747	2	2021-03-16 19:01:29+00	\N	\N	1
13748	2	2021-03-16 23:04:50+00	\N	\N	1
13749	3	2021-03-17 02:16:20+00	\N	\N	1
13750	6	2021-03-17 02:24:19+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13751	5	2021-03-17 11:45:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13752	1	2021-03-17 11:46:25+00	\N	\N	1
13753	1	2021-03-17 12:48:48+00	\N	\N	1
13754	1	2021-03-17 13:38:40+00	\N	\N	1
13755	1	2021-03-17 14:10:55+00	\N	\N	1
13756	1	2021-03-17 15:32:49+00	\N	\N	1
13757	1	2021-03-17 16:14:08+00	\N	\N	1
13758	1	2021-03-17 17:34:52+00	\N	\N	1
13759	1	2021-03-17 18:10:27+00	\N	\N	1
13760	1	2021-03-17 19:40:12+00	\N	\N	1
13761	1	2021-03-17 20:26:45+00	\N	\N	1
13762	1	2021-03-17 21:45:28+00	\N	\N	1
13763	1	2021-03-17 22:08:47+00	\N	\N	1
13764	1	2021-03-17 23:24:11+00	\N	\N	1
13765	1	2021-03-18 00:09:02+00	\N	\N	1
13766	1	2021-03-18 01:39:20+00	\N	\N	1
13767	1	2021-03-18 02:16:30+00	\N	\N	1
13768	2	2021-03-17 14:38:45+00	\N	\N	1
13769	2	2021-03-17 18:46:11+00	\N	\N	1
13770	2	2021-03-17 22:46:27+00	\N	\N	1
13771	3	2021-03-18 03:21:43+00	\N	\N	1
13772	6	2021-03-18 02:26:58+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13773	5	2021-03-18 11:45:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13774	1	2021-03-18 11:45:14+00	\N	\N	1
13775	1	2021-03-18 12:21:45+00	\N	\N	1
13776	1	2021-03-18 13:36:20+00	\N	\N	1
13777	1	2021-03-18 14:37:37+00	\N	\N	1
13778	1	2021-03-18 15:43:24+00	\N	\N	1
13779	1	2021-03-18 16:31:51+00	\N	\N	1
13780	1	2021-03-18 17:24:07+00	\N	\N	1
13781	1	2021-03-18 18:31:49+00	\N	\N	1
13782	1	2021-03-18 19:19:46+00	\N	\N	1
13783	1	2021-03-18 20:19:28+00	\N	\N	1
13784	1	2021-03-18 21:41:09+00	\N	\N	1
13785	1	2021-03-18 22:51:37+00	\N	\N	1
13786	1	2021-03-18 23:38:41+00	\N	\N	1
13787	1	2021-03-19 00:13:21+00	\N	\N	1
13788	1	2021-03-19 01:38:35+00	\N	\N	1
13789	1	2021-03-19 02:32:39+00	\N	\N	1
13790	2	2021-03-18 14:54:34+00	\N	\N	1
13791	2	2021-03-18 18:34:39+00	\N	\N	1
13792	2	2021-03-18 23:09:29+00	\N	\N	1
13793	3	2021-03-19 02:56:44+00	\N	\N	1
13794	6	2021-03-19 02:12:27+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13795	5	2021-03-19 12:13:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13796	1	2021-03-19 11:43:38+00	\N	\N	1
13797	1	2021-03-19 12:38:50+00	\N	\N	1
13798	1	2021-03-19 13:25:24+00	\N	\N	1
13799	1	2021-03-19 14:26:19+00	\N	\N	1
13800	1	2021-03-19 15:22:21+00	\N	\N	1
13801	1	2021-03-19 16:40:52+00	\N	\N	1
13802	1	2021-03-19 17:31:27+00	\N	\N	1
13803	1	2021-03-19 18:49:14+00	\N	\N	1
13804	1	2021-03-19 19:43:31+00	\N	\N	1
13805	1	2021-03-19 20:47:20+00	\N	\N	1
13806	1	2021-03-19 21:12:40+00	\N	\N	1
13807	1	2021-03-19 22:21:32+00	\N	\N	1
13808	1	2021-03-19 23:48:18+00	\N	\N	1
13809	1	2021-03-20 00:44:02+00	\N	\N	1
13810	1	2021-03-20 01:44:32+00	\N	\N	1
13811	1	2021-03-20 02:23:49+00	\N	\N	1
13812	2	2021-03-19 15:16:50+00	\N	\N	1
13813	2	2021-03-19 18:36:24+00	\N	\N	1
13814	2	2021-03-19 22:36:48+00	\N	\N	1
13815	3	2021-03-20 02:22:37+00	\N	\N	1
13816	6	2021-03-20 03:11:56+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13817	5	2021-03-20 10:45:05+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13818	1	2021-03-20 11:09:27+00	\N	\N	1
13819	1	2021-03-20 12:23:02+00	\N	\N	1
13820	1	2021-03-20 13:32:38+00	\N	\N	1
13821	1	2021-03-20 14:21:34+00	\N	\N	1
13822	1	2021-03-20 15:41:22+00	\N	\N	1
13823	1	2021-03-20 16:30:40+00	\N	\N	1
13824	1	2021-03-20 17:44:15+00	\N	\N	1
13825	1	2021-03-20 18:18:15+00	\N	\N	1
13826	1	2021-03-20 19:49:40+00	\N	\N	1
13827	1	2021-03-20 20:47:42+00	\N	\N	1
13828	1	2021-03-20 21:23:15+00	\N	\N	1
13829	1	2021-03-20 22:42:02+00	\N	\N	1
13830	1	2021-03-20 23:22:49+00	\N	\N	1
13831	1	2021-03-21 00:14:30+00	\N	\N	1
13832	1	2021-03-21 01:08:23+00	\N	\N	1
13833	1	2021-03-21 02:48:14+00	\N	\N	1
13834	2	2021-03-20 15:21:56+00	\N	\N	1
13835	2	2021-03-20 18:38:09+00	\N	\N	1
13836	2	2021-03-20 23:11:30+00	\N	\N	1
13837	3	2021-03-21 02:27:30+00	\N	\N	1
13938	1	2021-03-25 21:36:53+00	\N	\N	1
13939	1	2021-03-25 22:48:24+00	\N	\N	1
13940	1	2021-03-25 23:17:51+00	\N	\N	1
13941	1	2021-03-26 00:27:36+00	\N	\N	1
13838	6	2021-03-21 03:12:16+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13839	5	2021-03-21 12:24:14+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13840	1	2021-03-21 11:40:22+00	\N	\N	1
13841	1	2021-03-21 12:09:59+00	\N	\N	1
13842	1	2021-03-21 13:08:01+00	\N	\N	1
13843	1	2021-03-21 14:37:37+00	\N	\N	1
13844	1	2021-03-21 15:38:50+00	\N	\N	1
13845	1	2021-03-21 16:48:07+00	\N	\N	1
13846	1	2021-03-21 17:15:40+00	\N	\N	1
13847	1	2021-03-21 18:44:44+00	\N	\N	1
13848	1	2021-03-21 19:45:14+00	\N	\N	1
13849	1	2021-03-21 20:46:03+00	\N	\N	1
13850	1	2021-03-21 21:21:40+00	\N	\N	1
13851	1	2021-03-21 22:21:05+00	\N	\N	1
13852	1	2021-03-21 23:48:55+00	\N	\N	1
13853	1	2021-03-22 00:31:40+00	\N	\N	1
13854	1	2021-03-22 01:08:21+00	\N	\N	1
13855	1	2021-03-22 02:24:26+00	\N	\N	1
13856	2	2021-03-21 14:51:10+00	\N	\N	1
13857	2	2021-03-21 19:18:57+00	\N	\N	1
13858	2	2021-03-21 22:54:03+00	\N	\N	1
13859	3	2021-03-22 02:23:38+00	\N	\N	1
13860	6	2021-03-22 02:31:45+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13861	5	2021-03-22 11:36:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13862	1	2021-03-22 11:37:43+00	\N	\N	1
13863	1	2021-03-22 12:30:20+00	\N	\N	1
13864	1	2021-03-22 13:17:03+00	\N	\N	1
13865	1	2021-03-22 14:25:12+00	\N	\N	1
13866	1	2021-03-22 15:24:34+00	\N	\N	1
13867	1	2021-03-22 16:45:54+00	\N	\N	1
13868	1	2021-03-22 17:20:23+00	\N	\N	1
13869	1	2021-03-22 18:12:36+00	\N	\N	1
13870	1	2021-03-22 19:47:56+00	\N	\N	1
13871	1	2021-03-22 20:38:53+00	\N	\N	1
13872	1	2021-03-22 21:21:25+00	\N	\N	1
13873	1	2021-03-22 22:26:43+00	\N	\N	1
13874	1	2021-03-22 23:32:54+00	\N	\N	1
13875	1	2021-03-23 00:10:54+00	\N	\N	1
13876	1	2021-03-23 01:35:27+00	\N	\N	1
13877	1	2021-03-23 02:18:41+00	\N	\N	1
13878	2	2021-03-22 14:30:14+00	\N	\N	1
13879	2	2021-03-22 18:33:38+00	\N	\N	1
13880	2	2021-03-22 23:17:57+00	\N	\N	1
13881	3	2021-03-23 02:40:44+00	\N	\N	1
13882	6	2021-03-23 02:03:45+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13883	5	2021-03-23 12:14:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13884	1	2021-03-23 11:46:00+00	\N	\N	1
13885	1	2021-03-23 12:21:51+00	\N	\N	1
13886	1	2021-03-23 13:18:14+00	\N	\N	1
13887	1	2021-03-23 14:23:50+00	\N	\N	1
13888	1	2021-03-23 15:25:25+00	\N	\N	1
13889	1	2021-03-23 16:37:42+00	\N	\N	1
13890	1	2021-03-23 17:42:52+00	\N	\N	1
13891	1	2021-03-23 18:09:52+00	\N	\N	1
13892	1	2021-03-23 19:25:04+00	\N	\N	1
13893	1	2021-03-23 20:22:22+00	\N	\N	1
13894	1	2021-03-23 21:44:33+00	\N	\N	1
13895	1	2021-03-23 22:45:06+00	\N	\N	1
13896	1	2021-03-23 23:44:55+00	\N	\N	1
13897	1	2021-03-24 00:40:01+00	\N	\N	1
13898	1	2021-03-24 01:29:03+00	\N	\N	1
13899	1	2021-03-24 02:26:29+00	\N	\N	1
13900	2	2021-03-23 15:00:48+00	\N	\N	1
13901	2	2021-03-23 19:13:58+00	\N	\N	1
13902	2	2021-03-23 23:06:19+00	\N	\N	1
13903	3	2021-03-24 01:52:43+00	\N	\N	1
13904	6	2021-03-24 02:00:48+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13905	5	2021-03-24 11:26:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13906	1	2021-03-24 11:24:17+00	\N	\N	1
13907	1	2021-03-24 12:12:18+00	\N	\N	1
13908	1	2021-03-24 13:42:49+00	\N	\N	1
13909	1	2021-03-24 14:14:46+00	\N	\N	1
13910	1	2021-03-24 15:27:49+00	\N	\N	1
13911	1	2021-03-24 16:16:14+00	\N	\N	1
13912	1	2021-03-24 17:10:29+00	\N	\N	1
13913	1	2021-03-24 18:32:06+00	\N	\N	1
13914	1	2021-03-24 19:41:26+00	\N	\N	1
13915	1	2021-03-24 20:41:27+00	\N	\N	1
13916	1	2021-03-24 21:42:28+00	\N	\N	1
13917	1	2021-03-24 22:29:58+00	\N	\N	1
13918	1	2021-03-24 23:39:16+00	\N	\N	1
13919	1	2021-03-25 00:26:51+00	\N	\N	1
13920	1	2021-03-25 01:49:58+00	\N	\N	1
13921	1	2021-03-25 02:47:38+00	\N	\N	1
13922	2	2021-03-24 14:31:35+00	\N	\N	1
13923	2	2021-03-24 18:57:23+00	\N	\N	1
13924	2	2021-03-24 22:36:30+00	\N	\N	1
13925	3	2021-03-25 02:23:44+00	\N	\N	1
13926	6	2021-03-25 02:32:20+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13927	5	2021-03-25 12:04:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13928	1	2021-03-25 11:34:52+00	\N	\N	1
13929	1	2021-03-25 12:45:11+00	\N	\N	1
13930	1	2021-03-25 13:32:48+00	\N	\N	1
13931	1	2021-03-25 14:10:25+00	\N	\N	1
13932	1	2021-03-25 15:18:06+00	\N	\N	1
13933	1	2021-03-25 16:32:26+00	\N	\N	1
13934	1	2021-03-25 17:37:43+00	\N	\N	1
13935	1	2021-03-25 18:16:56+00	\N	\N	1
13936	1	2021-03-25 19:35:43+00	\N	\N	1
13937	1	2021-03-25 20:25:12+00	\N	\N	1
13942	1	2021-03-26 01:14:32+00	\N	\N	1
13943	1	2021-03-26 02:23:04+00	\N	\N	1
13944	2	2021-03-25 14:38:53+00	\N	\N	1
13945	2	2021-03-25 18:58:35+00	\N	\N	1
13946	2	2021-03-25 22:52:15+00	\N	\N	1
13947	3	2021-03-26 02:04:46+00	\N	\N	1
13948	6	2021-03-26 01:56:06+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13949	5	2021-03-26 11:22:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13950	1	2021-03-26 11:48:08+00	\N	\N	1
13951	1	2021-03-26 12:49:23+00	\N	\N	1
13952	1	2021-03-26 13:11:09+00	\N	\N	1
13953	1	2021-03-26 14:07:50+00	\N	\N	1
13954	1	2021-03-26 15:21:01+00	\N	\N	1
13955	1	2021-03-26 16:50:03+00	\N	\N	1
13956	1	2021-03-26 17:38:24+00	\N	\N	1
13957	1	2021-03-26 18:21:15+00	\N	\N	1
13958	1	2021-03-26 19:45:27+00	\N	\N	1
13959	1	2021-03-26 20:11:55+00	\N	\N	1
13960	1	2021-03-26 21:26:13+00	\N	\N	1
13961	1	2021-03-26 22:52:05+00	\N	\N	1
13962	1	2021-03-26 23:41:02+00	\N	\N	1
13963	1	2021-03-27 00:14:55+00	\N	\N	1
13964	1	2021-03-27 01:41:50+00	\N	\N	1
13965	1	2021-03-27 02:18:51+00	\N	\N	1
13966	2	2021-03-26 14:32:29+00	\N	\N	1
13967	2	2021-03-26 19:14:56+00	\N	\N	1
13968	2	2021-03-26 22:57:28+00	\N	\N	1
13969	3	2021-03-27 02:04:49+00	\N	\N	1
13970	6	2021-03-27 02:11:23+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13971	5	2021-03-27 11:10:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13972	1	2021-03-27 11:11:04+00	\N	\N	1
13973	1	2021-03-27 12:15:35+00	\N	\N	1
13974	1	2021-03-27 13:34:30+00	\N	\N	1
13975	1	2021-03-27 14:22:13+00	\N	\N	1
13976	1	2021-03-27 15:13:53+00	\N	\N	1
13977	1	2021-03-27 16:18:21+00	\N	\N	1
13978	1	2021-03-27 17:43:01+00	\N	\N	1
13979	1	2021-03-27 18:52:17+00	\N	\N	1
13980	1	2021-03-27 19:19:40+00	\N	\N	1
13981	1	2021-03-27 20:31:24+00	\N	\N	1
13982	1	2021-03-27 21:11:49+00	\N	\N	1
13983	1	2021-03-27 22:30:41+00	\N	\N	1
13984	1	2021-03-27 23:27:46+00	\N	\N	1
13985	1	2021-03-28 00:32:12+00	\N	\N	1
13986	1	2021-03-28 01:31:31+00	\N	\N	1
13987	1	2021-03-28 02:08:18+00	\N	\N	1
13988	2	2021-03-27 15:25:33+00	\N	\N	1
13989	2	2021-03-27 18:32:01+00	\N	\N	1
13990	2	2021-03-27 23:23:05+00	\N	\N	1
13991	3	2021-03-28 02:15:21+00	\N	\N	1
13992	6	2021-03-28 02:44:08+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
13993	5	2021-03-28 11:42:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
13994	1	2021-03-28 11:52:18+00	\N	\N	1
13995	1	2021-03-28 12:38:15+00	\N	\N	1
13996	1	2021-03-28 13:18:35+00	\N	\N	1
13997	1	2021-03-28 14:23:21+00	\N	\N	1
13998	1	2021-03-28 15:25:00+00	\N	\N	1
13999	1	2021-03-28 16:47:19+00	\N	\N	1
14000	1	2021-03-28 17:23:41+00	\N	\N	1
14001	1	2021-03-28 18:31:47+00	\N	\N	1
14002	1	2021-03-28 19:40:21+00	\N	\N	1
14003	1	2021-03-28 20:38:22+00	\N	\N	1
14004	1	2021-03-28 21:23:44+00	\N	\N	1
14005	1	2021-03-28 22:49:32+00	\N	\N	1
14006	1	2021-03-28 23:23:12+00	\N	\N	1
14007	1	2021-03-29 00:37:54+00	\N	\N	1
14008	1	2021-03-29 01:35:59+00	\N	\N	1
14009	1	2021-03-29 02:23:41+00	\N	\N	1
14010	2	2021-03-28 14:52:06+00	\N	\N	1
14011	2	2021-03-28 18:48:57+00	\N	\N	1
14012	2	2021-03-28 22:55:26+00	\N	\N	1
14013	3	2021-03-29 02:01:48+00	\N	\N	1
14014	6	2021-03-29 01:55:55+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14015	5	2021-03-29 12:25:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14016	1	2021-03-29 11:10:50+00	\N	\N	1
14017	1	2021-03-29 12:38:14+00	\N	\N	1
14018	1	2021-03-29 13:12:30+00	\N	\N	1
14019	1	2021-03-29 14:22:17+00	\N	\N	1
14020	1	2021-03-29 15:44:54+00	\N	\N	1
14021	1	2021-03-29 16:30:01+00	\N	\N	1
14022	1	2021-03-29 17:25:08+00	\N	\N	1
14023	1	2021-03-29 18:11:57+00	\N	\N	1
14024	1	2021-03-29 19:37:21+00	\N	\N	1
14025	1	2021-03-29 20:38:10+00	\N	\N	1
14026	1	2021-03-29 21:08:02+00	\N	\N	1
14027	1	2021-03-29 22:49:27+00	\N	\N	1
14028	1	2021-03-29 23:38:23+00	\N	\N	1
14029	1	2021-03-30 00:29:44+00	\N	\N	1
14030	1	2021-03-30 01:36:16+00	\N	\N	1
14031	1	2021-03-30 02:33:22+00	\N	\N	1
14032	2	2021-03-29 15:15:47+00	\N	\N	1
14033	2	2021-03-29 18:35:52+00	\N	\N	1
14034	2	2021-03-29 23:20:23+00	\N	\N	1
14035	3	2021-03-30 03:13:41+00	\N	\N	1
14036	6	2021-03-30 03:11:19+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14037	5	2021-03-30 10:51:05+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14038	1	2021-03-30 11:38:31+00	\N	\N	1
14039	1	2021-03-30 12:10:29+00	\N	\N	1
14040	1	2021-03-30 13:47:05+00	\N	\N	1
14041	1	2021-03-30 14:39:02+00	\N	\N	1
14042	1	2021-03-30 15:16:45+00	\N	\N	1
14043	1	2021-03-30 16:22:44+00	\N	\N	1
14044	1	2021-03-30 17:08:26+00	\N	\N	1
14045	1	2021-03-30 18:37:56+00	\N	\N	1
14046	1	2021-03-30 19:39:12+00	\N	\N	1
14047	1	2021-03-30 20:47:24+00	\N	\N	1
14048	1	2021-03-30 21:28:39+00	\N	\N	1
14049	1	2021-03-30 22:45:02+00	\N	\N	1
14050	1	2021-03-30 23:18:20+00	\N	\N	1
14051	1	2021-03-31 00:28:14+00	\N	\N	1
14052	1	2021-03-31 01:13:44+00	\N	\N	1
14053	1	2021-03-31 02:13:19+00	\N	\N	1
14054	2	2021-03-30 14:43:35+00	\N	\N	1
14055	2	2021-03-30 19:05:44+00	\N	\N	1
14056	2	2021-03-30 23:02:56+00	\N	\N	1
14057	3	2021-03-31 02:02:06+00	\N	\N	1
14058	6	2021-03-31 03:06:20+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14059	5	2021-03-31 11:20:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14060	1	2021-03-31 11:24:02+00	\N	\N	1
14061	1	2021-03-31 12:38:37+00	\N	\N	1
14062	1	2021-03-31 13:37:30+00	\N	\N	1
14063	1	2021-03-31 14:48:19+00	\N	\N	1
14064	1	2021-03-31 15:31:27+00	\N	\N	1
14065	1	2021-03-31 16:24:46+00	\N	\N	1
14066	1	2021-03-31 17:35:22+00	\N	\N	1
14067	1	2021-03-31 18:40:42+00	\N	\N	1
14068	1	2021-03-31 19:25:35+00	\N	\N	1
14069	1	2021-03-31 20:43:05+00	\N	\N	1
14070	1	2021-03-31 21:47:28+00	\N	\N	1
14071	1	2021-03-31 22:20:56+00	\N	\N	1
14072	1	2021-03-31 23:34:57+00	\N	\N	1
14073	1	2021-04-01 00:34:01+00	\N	\N	1
14074	1	2021-04-01 01:44:59+00	\N	\N	1
14075	1	2021-04-01 02:15:23+00	\N	\N	1
14076	2	2021-03-31 15:00:11+00	\N	\N	1
14077	2	2021-03-31 19:00:11+00	\N	\N	1
14078	2	2021-03-31 23:22:40+00	\N	\N	1
14079	3	2021-04-01 02:22:16+00	\N	\N	1
14080	6	2021-04-01 02:04:21+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14081	5	2021-04-01 10:37:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14082	1	2021-04-01 11:31:58+00	\N	\N	1
14083	1	2021-04-01 12:44:26+00	\N	\N	1
14084	1	2021-04-01 13:12:22+00	\N	\N	1
14085	1	2021-04-01 14:26:57+00	\N	\N	1
14086	1	2021-04-01 15:42:41+00	\N	\N	1
14087	1	2021-04-01 16:30:26+00	\N	\N	1
14088	1	2021-04-01 17:51:41+00	\N	\N	1
14089	1	2021-04-01 18:12:19+00	\N	\N	1
14090	1	2021-04-01 19:50:29+00	\N	\N	1
14091	1	2021-04-01 20:38:26+00	\N	\N	1
14092	1	2021-04-01 21:16:30+00	\N	\N	1
14093	1	2021-04-01 22:25:03+00	\N	\N	1
14094	1	2021-04-01 23:26:44+00	\N	\N	1
14095	1	2021-04-02 00:23:13+00	\N	\N	1
14096	1	2021-04-02 01:25:13+00	\N	\N	1
14097	1	2021-04-02 02:51:35+00	\N	\N	1
14098	2	2021-04-01 14:58:30+00	\N	\N	1
14099	2	2021-04-01 19:09:52+00	\N	\N	1
14100	2	2021-04-01 22:44:38+00	\N	\N	1
14101	3	2021-04-02 02:44:25+00	\N	\N	1
14102	6	2021-04-02 01:56:28+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14103	5	2021-04-02 11:39:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14104	1	2021-04-02 11:17:42+00	\N	\N	1
14105	1	2021-04-02 12:10:45+00	\N	\N	1
14106	1	2021-04-02 13:44:07+00	\N	\N	1
14107	1	2021-04-02 14:37:36+00	\N	\N	1
14108	1	2021-04-02 15:29:15+00	\N	\N	1
14109	1	2021-04-02 16:31:44+00	\N	\N	1
14110	1	2021-04-02 17:48:16+00	\N	\N	1
14111	1	2021-04-02 18:23:48+00	\N	\N	1
14112	1	2021-04-02 19:38:39+00	\N	\N	1
14113	1	2021-04-02 20:51:55+00	\N	\N	1
14114	1	2021-04-02 21:36:06+00	\N	\N	1
14115	1	2021-04-02 22:45:14+00	\N	\N	1
14116	1	2021-04-02 23:34:26+00	\N	\N	1
14117	1	2021-04-03 00:43:10+00	\N	\N	1
14118	1	2021-04-03 01:40:09+00	\N	\N	1
14119	1	2021-04-03 02:39:44+00	\N	\N	1
14120	2	2021-04-02 15:28:48+00	\N	\N	1
14121	2	2021-04-02 18:42:49+00	\N	\N	1
14122	2	2021-04-02 23:07:06+00	\N	\N	1
14123	3	2021-04-03 02:28:23+00	\N	\N	1
14124	6	2021-04-03 01:48:18+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14125	5	2021-04-03 12:18:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14126	1	2021-04-03 11:17:34+00	\N	\N	1
14127	1	2021-04-03 12:22:54+00	\N	\N	1
14128	1	2021-04-03 13:52:06+00	\N	\N	1
14129	1	2021-04-03 14:23:30+00	\N	\N	1
14130	1	2021-04-03 15:24:36+00	\N	\N	1
14131	1	2021-04-03 16:13:25+00	\N	\N	1
14132	1	2021-04-03 17:12:54+00	\N	\N	1
14133	1	2021-04-03 18:33:37+00	\N	\N	1
14134	1	2021-04-03 19:22:07+00	\N	\N	1
14135	1	2021-04-03 20:32:45+00	\N	\N	1
14136	1	2021-04-03 21:11:29+00	\N	\N	1
14137	1	2021-04-03 22:41:32+00	\N	\N	1
14138	1	2021-04-03 23:08:51+00	\N	\N	1
14139	1	2021-04-04 00:49:27+00	\N	\N	1
14140	1	2021-04-04 01:41:58+00	\N	\N	1
14141	1	2021-04-04 02:39:08+00	\N	\N	1
14142	2	2021-04-03 15:01:43+00	\N	\N	1
14143	2	2021-04-03 19:00:45+00	\N	\N	1
14144	2	2021-04-03 22:40:46+00	\N	\N	1
14145	3	2021-04-04 03:23:36+00	\N	\N	1
14246	1	2021-04-08 21:32:53+00	\N	\N	1
14247	1	2021-04-08 22:48:47+00	\N	\N	1
14248	1	2021-04-08 23:50:35+00	\N	\N	1
14146	6	2021-04-04 02:06:52+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14147	5	2021-04-04 10:42:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14148	1	2021-04-04 11:10:44+00	\N	\N	1
14149	1	2021-04-04 12:52:20+00	\N	\N	1
14150	1	2021-04-04 13:29:14+00	\N	\N	1
14151	1	2021-04-04 14:43:29+00	\N	\N	1
14152	1	2021-04-04 15:11:40+00	\N	\N	1
14153	1	2021-04-04 16:16:18+00	\N	\N	1
14154	1	2021-04-04 17:20:14+00	\N	\N	1
14155	1	2021-04-04 18:45:34+00	\N	\N	1
14156	1	2021-04-04 19:41:24+00	\N	\N	1
14157	1	2021-04-04 20:37:04+00	\N	\N	1
14158	1	2021-04-04 21:52:00+00	\N	\N	1
14159	1	2021-04-04 22:17:12+00	\N	\N	1
14160	1	2021-04-04 23:30:38+00	\N	\N	1
14161	1	2021-04-05 00:29:30+00	\N	\N	1
14162	1	2021-04-05 01:21:55+00	\N	\N	1
14163	1	2021-04-05 02:14:42+00	\N	\N	1
14164	2	2021-04-04 14:58:15+00	\N	\N	1
14165	2	2021-04-04 18:36:10+00	\N	\N	1
14166	2	2021-04-04 23:17:37+00	\N	\N	1
14167	3	2021-04-05 01:33:22+00	\N	\N	1
14168	6	2021-04-05 01:58:00+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14169	5	2021-04-05 11:08:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14170	1	2021-04-05 11:18:19+00	\N	\N	1
14171	1	2021-04-05 12:46:59+00	\N	\N	1
14172	1	2021-04-05 13:09:38+00	\N	\N	1
14173	1	2021-04-05 14:10:30+00	\N	\N	1
14174	1	2021-04-05 15:29:47+00	\N	\N	1
14175	1	2021-04-05 16:34:31+00	\N	\N	1
14176	1	2021-04-05 17:37:22+00	\N	\N	1
14177	1	2021-04-05 18:42:08+00	\N	\N	1
14178	1	2021-04-05 19:46:17+00	\N	\N	1
14179	1	2021-04-05 20:51:02+00	\N	\N	1
14180	1	2021-04-05 21:09:48+00	\N	\N	1
14181	1	2021-04-05 22:13:24+00	\N	\N	1
14182	1	2021-04-05 23:23:39+00	\N	\N	1
14183	1	2021-04-06 00:46:50+00	\N	\N	1
14184	1	2021-04-06 01:21:11+00	\N	\N	1
14185	1	2021-04-06 02:09:47+00	\N	\N	1
14186	2	2021-04-05 14:36:04+00	\N	\N	1
14187	2	2021-04-05 18:45:53+00	\N	\N	1
14188	2	2021-04-05 23:02:59+00	\N	\N	1
14189	3	2021-04-06 01:36:30+00	\N	\N	1
14190	6	2021-04-06 02:24:07+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14191	5	2021-04-06 10:39:43+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14192	1	2021-04-06 11:18:53+00	\N	\N	1
14193	1	2021-04-06 12:07:41+00	\N	\N	1
14194	1	2021-04-06 13:45:47+00	\N	\N	1
14195	1	2021-04-06 14:50:57+00	\N	\N	1
14196	1	2021-04-06 15:25:48+00	\N	\N	1
14197	1	2021-04-06 16:22:37+00	\N	\N	1
14198	1	2021-04-06 17:19:33+00	\N	\N	1
14199	1	2021-04-06 18:36:21+00	\N	\N	1
14200	1	2021-04-06 19:07:58+00	\N	\N	1
14201	1	2021-04-06 20:44:30+00	\N	\N	1
14202	1	2021-04-06 21:40:27+00	\N	\N	1
14203	1	2021-04-06 22:44:35+00	\N	\N	1
14204	1	2021-04-06 23:47:31+00	\N	\N	1
14205	1	2021-04-07 00:29:49+00	\N	\N	1
14206	1	2021-04-07 01:51:19+00	\N	\N	1
14207	1	2021-04-07 02:22:14+00	\N	\N	1
14208	2	2021-04-06 14:40:19+00	\N	\N	1
14209	2	2021-04-06 18:55:17+00	\N	\N	1
14210	2	2021-04-06 23:01:52+00	\N	\N	1
14211	3	2021-04-07 02:11:48+00	\N	\N	1
14212	6	2021-04-07 01:58:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14213	5	2021-04-07 11:16:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14214	1	2021-04-07 11:25:28+00	\N	\N	1
14215	1	2021-04-07 12:41:03+00	\N	\N	1
14216	1	2021-04-07 13:34:45+00	\N	\N	1
14217	1	2021-04-07 14:51:48+00	\N	\N	1
14218	1	2021-04-07 15:50:54+00	\N	\N	1
14219	1	2021-04-07 16:08:44+00	\N	\N	1
14220	1	2021-04-07 17:25:36+00	\N	\N	1
14221	1	2021-04-07 18:19:08+00	\N	\N	1
14222	1	2021-04-07 19:51:48+00	\N	\N	1
14223	1	2021-04-07 20:07:33+00	\N	\N	1
14224	1	2021-04-07 21:24:56+00	\N	\N	1
14225	1	2021-04-07 22:20:27+00	\N	\N	1
14226	1	2021-04-07 23:30:50+00	\N	\N	1
14227	1	2021-04-08 00:42:10+00	\N	\N	1
14228	1	2021-04-08 01:29:28+00	\N	\N	1
14229	1	2021-04-08 02:46:29+00	\N	\N	1
14230	2	2021-04-07 14:35:06+00	\N	\N	1
14231	2	2021-04-07 19:20:00+00	\N	\N	1
14232	2	2021-04-07 23:11:39+00	\N	\N	1
14233	3	2021-04-08 03:15:29+00	\N	\N	1
14234	6	2021-04-08 02:54:02+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14235	5	2021-04-08 11:00:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14236	1	2021-04-08 11:21:35+00	\N	\N	1
14237	1	2021-04-08 12:43:17+00	\N	\N	1
14238	1	2021-04-08 13:29:37+00	\N	\N	1
14239	1	2021-04-08 14:34:20+00	\N	\N	1
14240	1	2021-04-08 15:46:38+00	\N	\N	1
14241	1	2021-04-08 16:47:21+00	\N	\N	1
14242	1	2021-04-08 17:24:27+00	\N	\N	1
14243	1	2021-04-08 18:32:36+00	\N	\N	1
14244	1	2021-04-08 19:51:07+00	\N	\N	1
14245	1	2021-04-08 20:37:20+00	\N	\N	1
14249	1	2021-04-09 00:22:16+00	\N	\N	1
14250	1	2021-04-09 01:24:46+00	\N	\N	1
14251	1	2021-04-09 02:30:07+00	\N	\N	1
14252	2	2021-04-08 15:14:14+00	\N	\N	1
14253	2	2021-04-08 19:16:26+00	\N	\N	1
14254	2	2021-04-08 23:09:56+00	\N	\N	1
14255	3	2021-04-09 03:29:20+00	\N	\N	1
14256	6	2021-04-09 02:14:32+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14257	5	2021-04-09 12:00:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14258	1	2021-04-09 11:10:05+00	\N	\N	1
14259	1	2021-04-09 12:41:52+00	\N	\N	1
14260	1	2021-04-09 13:39:20+00	\N	\N	1
14261	1	2021-04-09 14:35:31+00	\N	\N	1
14262	1	2021-04-09 15:27:20+00	\N	\N	1
14263	1	2021-04-09 16:40:43+00	\N	\N	1
14264	1	2021-04-09 17:47:31+00	\N	\N	1
14265	1	2021-04-09 18:45:37+00	\N	\N	1
14266	1	2021-04-09 19:51:37+00	\N	\N	1
14267	1	2021-04-09 20:46:15+00	\N	\N	1
14268	1	2021-04-09 21:52:10+00	\N	\N	1
14269	1	2021-04-09 22:11:12+00	\N	\N	1
14270	1	2021-04-09 23:51:56+00	\N	\N	1
14271	1	2021-04-10 00:39:29+00	\N	\N	1
14272	1	2021-04-10 01:24:29+00	\N	\N	1
14273	1	2021-04-10 02:40:53+00	\N	\N	1
14274	2	2021-04-09 15:14:20+00	\N	\N	1
14275	2	2021-04-09 19:29:37+00	\N	\N	1
14276	2	2021-04-09 22:34:02+00	\N	\N	1
14277	3	2021-04-10 02:13:59+00	\N	\N	1
14278	6	2021-04-10 03:03:30+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14279	5	2021-04-10 10:42:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14280	1	2021-04-10 11:45:26+00	\N	\N	1
14281	1	2021-04-10 12:28:19+00	\N	\N	1
14282	1	2021-04-10 13:45:28+00	\N	\N	1
14283	1	2021-04-10 14:08:49+00	\N	\N	1
14284	1	2021-04-10 15:11:44+00	\N	\N	1
14285	1	2021-04-10 16:43:02+00	\N	\N	1
14286	1	2021-04-10 17:29:45+00	\N	\N	1
14287	1	2021-04-10 18:34:01+00	\N	\N	1
14288	1	2021-04-10 19:12:36+00	\N	\N	1
14289	1	2021-04-10 20:50:27+00	\N	\N	1
14290	1	2021-04-10 21:37:06+00	\N	\N	1
14291	1	2021-04-10 22:37:21+00	\N	\N	1
14292	1	2021-04-10 23:32:26+00	\N	\N	1
14293	1	2021-04-11 00:12:24+00	\N	\N	1
14294	1	2021-04-11 01:41:49+00	\N	\N	1
14295	1	2021-04-11 02:15:45+00	\N	\N	1
14296	2	2021-04-10 15:26:57+00	\N	\N	1
14297	2	2021-04-10 18:56:45+00	\N	\N	1
14298	2	2021-04-10 22:46:10+00	\N	\N	1
14299	3	2021-04-11 02:09:02+00	\N	\N	1
14300	6	2021-04-11 01:51:07+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14301	5	2021-04-11 12:16:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14302	1	2021-04-11 11:45:08+00	\N	\N	1
14303	1	2021-04-11 12:36:50+00	\N	\N	1
14304	1	2021-04-11 13:11:17+00	\N	\N	1
14305	1	2021-04-11 14:28:09+00	\N	\N	1
14306	1	2021-04-11 15:19:44+00	\N	\N	1
14307	1	2021-04-11 16:35:06+00	\N	\N	1
14308	1	2021-04-11 17:33:32+00	\N	\N	1
14309	1	2021-04-11 18:12:36+00	\N	\N	1
14310	1	2021-04-11 19:30:16+00	\N	\N	1
14311	1	2021-04-11 20:41:38+00	\N	\N	1
14312	1	2021-04-11 21:12:45+00	\N	\N	1
14313	1	2021-04-11 22:32:52+00	\N	\N	1
14314	1	2021-04-11 23:49:18+00	\N	\N	1
14315	1	2021-04-12 00:43:04+00	\N	\N	1
14316	1	2021-04-12 01:17:11+00	\N	\N	1
14317	1	2021-04-12 02:24:28+00	\N	\N	1
14318	2	2021-04-11 14:38:53+00	\N	\N	1
14319	2	2021-04-11 18:34:50+00	\N	\N	1
14320	2	2021-04-11 22:50:42+00	\N	\N	1
14321	3	2021-04-12 02:39:09+00	\N	\N	1
14322	6	2021-04-12 02:22:34+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14323	5	2021-04-12 12:01:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14324	1	2021-04-12 11:47:19+00	\N	\N	1
14325	1	2021-04-12 12:41:49+00	\N	\N	1
14326	1	2021-04-12 13:14:26+00	\N	\N	1
14327	1	2021-04-12 14:39:31+00	\N	\N	1
14328	1	2021-04-12 15:43:09+00	\N	\N	1
14329	1	2021-04-12 16:24:18+00	\N	\N	1
14330	1	2021-04-12 17:31:36+00	\N	\N	1
14331	1	2021-04-12 18:33:39+00	\N	\N	1
14332	1	2021-04-12 19:14:47+00	\N	\N	1
14333	1	2021-04-12 20:09:37+00	\N	\N	1
14334	1	2021-04-12 21:50:26+00	\N	\N	1
14335	1	2021-04-12 22:44:05+00	\N	\N	1
14336	1	2021-04-12 23:27:31+00	\N	\N	1
14337	1	2021-04-13 00:40:25+00	\N	\N	1
14338	1	2021-04-13 01:46:49+00	\N	\N	1
14339	1	2021-04-13 02:14:21+00	\N	\N	1
14340	2	2021-04-12 14:56:36+00	\N	\N	1
14341	2	2021-04-12 19:10:22+00	\N	\N	1
14342	2	2021-04-12 22:38:03+00	\N	\N	1
14343	3	2021-04-13 02:56:32+00	\N	\N	1
14344	6	2021-04-13 02:44:17+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14345	5	2021-04-13 11:31:32+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14346	1	2021-04-13 11:41:13+00	\N	\N	1
14347	1	2021-04-13 12:22:12+00	\N	\N	1
14348	1	2021-04-13 13:10:02+00	\N	\N	1
14349	1	2021-04-13 14:42:25+00	\N	\N	1
14350	1	2021-04-13 15:40:55+00	\N	\N	1
14351	1	2021-04-13 16:29:29+00	\N	\N	1
14352	1	2021-04-13 17:25:09+00	\N	\N	1
14353	1	2021-04-13 18:09:00+00	\N	\N	1
14354	1	2021-04-13 19:08:34+00	\N	\N	1
14355	1	2021-04-13 20:38:13+00	\N	\N	1
14356	1	2021-04-13 21:42:19+00	\N	\N	1
14357	1	2021-04-13 22:34:31+00	\N	\N	1
14358	1	2021-04-13 23:36:59+00	\N	\N	1
14359	1	2021-04-14 00:42:08+00	\N	\N	1
14360	1	2021-04-14 01:37:41+00	\N	\N	1
14361	1	2021-04-14 02:37:34+00	\N	\N	1
14362	2	2021-04-13 15:03:27+00	\N	\N	1
14363	2	2021-04-13 19:24:43+00	\N	\N	1
14364	2	2021-04-13 22:56:18+00	\N	\N	1
14365	3	2021-04-14 03:14:46+00	\N	\N	1
14366	6	2021-04-14 02:31:02+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14367	5	2021-04-14 11:31:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14368	1	2021-04-14 11:25:13+00	\N	\N	1
14369	1	2021-04-14 12:38:26+00	\N	\N	1
14370	1	2021-04-14 13:42:46+00	\N	\N	1
14371	1	2021-04-14 14:49:59+00	\N	\N	1
14372	1	2021-04-14 15:42:12+00	\N	\N	1
14373	1	2021-04-14 16:21:48+00	\N	\N	1
14374	1	2021-04-14 17:29:08+00	\N	\N	1
14375	1	2021-04-14 18:18:19+00	\N	\N	1
14376	1	2021-04-14 19:10:29+00	\N	\N	1
14377	1	2021-04-14 20:22:19+00	\N	\N	1
14378	1	2021-04-14 21:18:23+00	\N	\N	1
14379	1	2021-04-14 22:28:59+00	\N	\N	1
14380	1	2021-04-14 23:44:30+00	\N	\N	1
14381	1	2021-04-15 00:42:29+00	\N	\N	1
14382	1	2021-04-15 01:33:38+00	\N	\N	1
14383	1	2021-04-15 02:33:16+00	\N	\N	1
14384	2	2021-04-14 14:39:49+00	\N	\N	1
14385	2	2021-04-14 18:35:52+00	\N	\N	1
14386	2	2021-04-14 23:16:20+00	\N	\N	1
14387	3	2021-04-15 02:39:21+00	\N	\N	1
14388	6	2021-04-15 01:56:16+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14389	5	2021-04-15 12:17:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14390	1	2021-04-15 11:10:18+00	\N	\N	1
14391	1	2021-04-15 12:21:49+00	\N	\N	1
14392	1	2021-04-15 13:41:57+00	\N	\N	1
14393	1	2021-04-15 14:14:07+00	\N	\N	1
14394	1	2021-04-15 15:45:33+00	\N	\N	1
14395	1	2021-04-15 16:28:01+00	\N	\N	1
14396	1	2021-04-15 17:37:56+00	\N	\N	1
14397	1	2021-04-15 18:48:41+00	\N	\N	1
14398	1	2021-04-15 19:21:10+00	\N	\N	1
14399	1	2021-04-15 20:18:08+00	\N	\N	1
14400	1	2021-04-15 21:51:06+00	\N	\N	1
14401	1	2021-04-15 22:35:32+00	\N	\N	1
14402	1	2021-04-15 23:34:13+00	\N	\N	1
14403	1	2021-04-16 00:09:24+00	\N	\N	1
14404	1	2021-04-16 01:36:53+00	\N	\N	1
14405	1	2021-04-16 02:44:17+00	\N	\N	1
14406	2	2021-04-15 15:28:40+00	\N	\N	1
14407	2	2021-04-15 19:17:07+00	\N	\N	1
14408	2	2021-04-15 22:38:11+00	\N	\N	1
14409	3	2021-04-16 03:24:43+00	\N	\N	1
14410	6	2021-04-16 03:02:14+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14411	5	2021-04-16 10:47:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14412	1	2021-04-16 11:38:24+00	\N	\N	1
14413	1	2021-04-16 12:33:03+00	\N	\N	1
14414	1	2021-04-16 13:07:36+00	\N	\N	1
14415	1	2021-04-16 14:43:19+00	\N	\N	1
14416	1	2021-04-16 15:49:00+00	\N	\N	1
14417	1	2021-04-16 16:39:05+00	\N	\N	1
14418	1	2021-04-16 17:31:56+00	\N	\N	1
14419	1	2021-04-16 18:49:54+00	\N	\N	1
14420	1	2021-04-16 19:41:44+00	\N	\N	1
14421	1	2021-04-16 20:14:11+00	\N	\N	1
14422	1	2021-04-16 21:31:08+00	\N	\N	1
14423	1	2021-04-16 22:43:00+00	\N	\N	1
14424	1	2021-04-16 23:24:54+00	\N	\N	1
14425	1	2021-04-17 00:37:43+00	\N	\N	1
14426	1	2021-04-17 01:08:35+00	\N	\N	1
14427	1	2021-04-17 02:38:19+00	\N	\N	1
14428	2	2021-04-16 15:27:34+00	\N	\N	1
14429	2	2021-04-16 18:39:48+00	\N	\N	1
14430	2	2021-04-16 22:59:09+00	\N	\N	1
14431	3	2021-04-17 02:20:24+00	\N	\N	1
14432	6	2021-04-17 02:15:12+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14433	5	2021-04-17 12:05:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14434	1	2021-04-17 11:13:56+00	\N	\N	1
14435	1	2021-04-17 12:19:51+00	\N	\N	1
14436	1	2021-04-17 13:30:48+00	\N	\N	1
14437	1	2021-04-17 14:16:51+00	\N	\N	1
14438	1	2021-04-17 15:18:34+00	\N	\N	1
14439	1	2021-04-17 16:39:54+00	\N	\N	1
14440	1	2021-04-17 17:39:52+00	\N	\N	1
14441	1	2021-04-17 18:32:37+00	\N	\N	1
14442	1	2021-04-17 19:16:52+00	\N	\N	1
14443	1	2021-04-17 20:24:49+00	\N	\N	1
14444	1	2021-04-17 21:35:53+00	\N	\N	1
14445	1	2021-04-17 22:14:37+00	\N	\N	1
14446	1	2021-04-17 23:09:09+00	\N	\N	1
14447	1	2021-04-18 00:25:00+00	\N	\N	1
14448	1	2021-04-18 01:10:09+00	\N	\N	1
14449	1	2021-04-18 02:21:05+00	\N	\N	1
14450	2	2021-04-17 14:34:59+00	\N	\N	1
14451	2	2021-04-17 18:42:26+00	\N	\N	1
14452	2	2021-04-17 22:48:24+00	\N	\N	1
14453	3	2021-04-18 02:26:32+00	\N	\N	1
14554	1	2021-04-22 21:17:22+00	\N	\N	1
14555	1	2021-04-22 22:43:23+00	\N	\N	1
14454	6	2021-04-18 02:21:50+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14455	5	2021-04-18 12:22:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14456	1	2021-04-18 11:13:09+00	\N	\N	1
14457	1	2021-04-18 12:38:36+00	\N	\N	1
14458	1	2021-04-18 13:50:34+00	\N	\N	1
14459	1	2021-04-18 14:27:03+00	\N	\N	1
14460	1	2021-04-18 15:08:17+00	\N	\N	1
14461	1	2021-04-18 16:43:01+00	\N	\N	1
14462	1	2021-04-18 17:21:45+00	\N	\N	1
14463	1	2021-04-18 18:51:01+00	\N	\N	1
14464	1	2021-04-18 19:47:47+00	\N	\N	1
14465	1	2021-04-18 20:25:07+00	\N	\N	1
14466	1	2021-04-18 21:38:39+00	\N	\N	1
14467	1	2021-04-18 22:31:31+00	\N	\N	1
14468	1	2021-04-18 23:27:18+00	\N	\N	1
14469	1	2021-04-19 00:36:17+00	\N	\N	1
14470	1	2021-04-19 01:20:22+00	\N	\N	1
14471	1	2021-04-19 02:34:19+00	\N	\N	1
14472	2	2021-04-18 14:45:48+00	\N	\N	1
14473	2	2021-04-18 19:19:40+00	\N	\N	1
14474	2	2021-04-18 22:44:57+00	\N	\N	1
14475	3	2021-04-19 01:45:59+00	\N	\N	1
14476	6	2021-04-19 02:55:52+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14477	5	2021-04-19 12:27:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14478	1	2021-04-19 11:49:46+00	\N	\N	1
14479	1	2021-04-19 12:08:14+00	\N	\N	1
14480	1	2021-04-19 13:14:34+00	\N	\N	1
14481	1	2021-04-19 14:49:28+00	\N	\N	1
14482	1	2021-04-19 15:43:29+00	\N	\N	1
14483	1	2021-04-19 16:24:38+00	\N	\N	1
14484	1	2021-04-19 17:40:40+00	\N	\N	1
14485	1	2021-04-19 18:37:16+00	\N	\N	1
14486	1	2021-04-19 19:40:50+00	\N	\N	1
14487	1	2021-04-19 20:29:43+00	\N	\N	1
14488	1	2021-04-19 21:50:06+00	\N	\N	1
14489	1	2021-04-19 22:22:08+00	\N	\N	1
14490	1	2021-04-19 23:25:25+00	\N	\N	1
14491	1	2021-04-20 00:22:34+00	\N	\N	1
14492	1	2021-04-20 01:11:00+00	\N	\N	1
14493	1	2021-04-20 02:11:35+00	\N	\N	1
14494	2	2021-04-19 15:29:04+00	\N	\N	1
14495	2	2021-04-19 19:21:57+00	\N	\N	1
14496	2	2021-04-19 23:15:30+00	\N	\N	1
14497	3	2021-04-20 01:41:51+00	\N	\N	1
14498	6	2021-04-20 02:58:59+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14499	5	2021-04-20 10:39:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14500	1	2021-04-20 11:11:17+00	\N	\N	1
14501	1	2021-04-20 12:35:25+00	\N	\N	1
14502	1	2021-04-20 13:25:06+00	\N	\N	1
14503	1	2021-04-20 14:43:31+00	\N	\N	1
14504	1	2021-04-20 15:41:58+00	\N	\N	1
14505	1	2021-04-20 16:52:29+00	\N	\N	1
14506	1	2021-04-20 17:36:40+00	\N	\N	1
14507	1	2021-04-20 18:44:18+00	\N	\N	1
14508	1	2021-04-20 19:21:45+00	\N	\N	1
14509	1	2021-04-20 20:19:36+00	\N	\N	1
14510	1	2021-04-20 21:24:46+00	\N	\N	1
14511	1	2021-04-20 22:10:27+00	\N	\N	1
14512	1	2021-04-20 23:48:19+00	\N	\N	1
14513	1	2021-04-21 00:28:13+00	\N	\N	1
14514	1	2021-04-21 01:46:14+00	\N	\N	1
14515	1	2021-04-21 02:28:06+00	\N	\N	1
14516	2	2021-04-20 15:29:42+00	\N	\N	1
14517	2	2021-04-20 19:04:41+00	\N	\N	1
14518	2	2021-04-20 23:00:32+00	\N	\N	1
14519	3	2021-04-21 01:35:46+00	\N	\N	1
14520	6	2021-04-21 02:30:24+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14521	5	2021-04-21 12:27:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14522	1	2021-04-21 11:16:33+00	\N	\N	1
14523	1	2021-04-21 12:47:40+00	\N	\N	1
14524	1	2021-04-21 13:12:28+00	\N	\N	1
14525	1	2021-04-21 14:16:33+00	\N	\N	1
14526	1	2021-04-21 15:29:05+00	\N	\N	1
14527	1	2021-04-21 16:38:48+00	\N	\N	1
14528	1	2021-04-21 17:17:22+00	\N	\N	1
14529	1	2021-04-21 18:36:10+00	\N	\N	1
14530	1	2021-04-21 19:23:17+00	\N	\N	1
14531	1	2021-04-21 20:07:34+00	\N	\N	1
14532	1	2021-04-21 21:18:42+00	\N	\N	1
14533	1	2021-04-21 22:28:03+00	\N	\N	1
14534	1	2021-04-21 23:31:01+00	\N	\N	1
14535	1	2021-04-22 00:25:48+00	\N	\N	1
14536	1	2021-04-22 01:34:22+00	\N	\N	1
14537	1	2021-04-22 02:51:27+00	\N	\N	1
14538	2	2021-04-21 14:37:32+00	\N	\N	1
14539	2	2021-04-21 19:22:36+00	\N	\N	1
14540	2	2021-04-21 23:08:21+00	\N	\N	1
14541	3	2021-04-22 03:27:08+00	\N	\N	1
14542	6	2021-04-22 02:30:40+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14543	5	2021-04-22 11:25:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14544	1	2021-04-22 11:15:41+00	\N	\N	1
14545	1	2021-04-22 12:38:33+00	\N	\N	1
14546	1	2021-04-22 13:34:48+00	\N	\N	1
14547	1	2021-04-22 14:12:08+00	\N	\N	1
14548	1	2021-04-22 15:37:20+00	\N	\N	1
14549	1	2021-04-22 16:34:54+00	\N	\N	1
14550	1	2021-04-22 17:43:23+00	\N	\N	1
14551	1	2021-04-22 18:52:29+00	\N	\N	1
14552	1	2021-04-22 19:51:29+00	\N	\N	1
14553	1	2021-04-22 20:47:36+00	\N	\N	1
14556	1	2021-04-22 23:42:22+00	\N	\N	1
14557	1	2021-04-23 00:45:08+00	\N	\N	1
14558	1	2021-04-23 01:24:41+00	\N	\N	1
14559	1	2021-04-23 02:45:51+00	\N	\N	1
14560	2	2021-04-22 15:07:44+00	\N	\N	1
14561	2	2021-04-22 18:51:29+00	\N	\N	1
14562	2	2021-04-22 22:45:19+00	\N	\N	1
14563	3	2021-04-23 02:46:04+00	\N	\N	1
14564	6	2021-04-23 02:39:12+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14565	5	2021-04-23 11:13:26+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14566	1	2021-04-23 11:33:41+00	\N	\N	1
14567	1	2021-04-23 12:38:03+00	\N	\N	1
14568	1	2021-04-23 13:49:48+00	\N	\N	1
14569	1	2021-04-23 14:15:45+00	\N	\N	1
14570	1	2021-04-23 15:34:46+00	\N	\N	1
14571	1	2021-04-23 16:25:58+00	\N	\N	1
14572	1	2021-04-23 17:12:34+00	\N	\N	1
14573	1	2021-04-23 18:42:11+00	\N	\N	1
14574	1	2021-04-23 19:38:17+00	\N	\N	1
14575	1	2021-04-23 20:07:35+00	\N	\N	1
14576	1	2021-04-23 21:50:29+00	\N	\N	1
14577	1	2021-04-23 22:21:34+00	\N	\N	1
14578	1	2021-04-23 23:41:05+00	\N	\N	1
14579	1	2021-04-24 00:31:21+00	\N	\N	1
14580	1	2021-04-24 01:46:14+00	\N	\N	1
14581	1	2021-04-24 02:13:05+00	\N	\N	1
14582	2	2021-04-23 15:02:59+00	\N	\N	1
14583	2	2021-04-23 19:25:08+00	\N	\N	1
14584	2	2021-04-23 22:50:19+00	\N	\N	1
14585	3	2021-04-24 03:12:55+00	\N	\N	1
14586	6	2021-04-24 03:03:18+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14587	5	2021-04-24 12:15:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14588	1	2021-04-24 11:21:31+00	\N	\N	1
14589	1	2021-04-24 12:17:11+00	\N	\N	1
14590	1	2021-04-24 13:09:57+00	\N	\N	1
14591	1	2021-04-24 14:34:20+00	\N	\N	1
14592	1	2021-04-24 15:46:28+00	\N	\N	1
14593	1	2021-04-24 16:13:48+00	\N	\N	1
14594	1	2021-04-24 17:07:47+00	\N	\N	1
14595	1	2021-04-24 18:48:18+00	\N	\N	1
14596	1	2021-04-24 19:27:10+00	\N	\N	1
14597	1	2021-04-24 20:16:41+00	\N	\N	1
14598	1	2021-04-24 21:22:33+00	\N	\N	1
14599	1	2021-04-24 22:25:22+00	\N	\N	1
14600	1	2021-04-24 23:42:20+00	\N	\N	1
14601	1	2021-04-25 00:41:33+00	\N	\N	1
14602	1	2021-04-25 01:25:33+00	\N	\N	1
14603	1	2021-04-25 02:24:25+00	\N	\N	1
14604	2	2021-04-24 15:06:29+00	\N	\N	1
14605	2	2021-04-24 18:36:49+00	\N	\N	1
14606	2	2021-04-24 22:31:42+00	\N	\N	1
14607	3	2021-04-25 03:01:38+00	\N	\N	1
14608	6	2021-04-25 02:27:27+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14609	5	2021-04-25 11:58:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14610	1	2021-04-25 11:37:56+00	\N	\N	1
14611	1	2021-04-25 12:15:39+00	\N	\N	1
14612	1	2021-04-25 13:45:44+00	\N	\N	1
14613	1	2021-04-25 14:08:21+00	\N	\N	1
14614	1	2021-04-25 15:10:37+00	\N	\N	1
14615	1	2021-04-25 16:47:07+00	\N	\N	1
14616	1	2021-04-25 17:48:34+00	\N	\N	1
14617	1	2021-04-25 18:28:15+00	\N	\N	1
14618	1	2021-04-25 19:15:58+00	\N	\N	1
14619	1	2021-04-25 20:51:50+00	\N	\N	1
14620	1	2021-04-25 21:33:50+00	\N	\N	1
14621	1	2021-04-25 22:32:07+00	\N	\N	1
14622	1	2021-04-25 23:28:59+00	\N	\N	1
14623	1	2021-04-26 00:17:41+00	\N	\N	1
14624	1	2021-04-26 01:30:19+00	\N	\N	1
14625	1	2021-04-26 02:32:10+00	\N	\N	1
14626	2	2021-04-25 15:08:12+00	\N	\N	1
14627	2	2021-04-25 19:06:23+00	\N	\N	1
14628	2	2021-04-25 23:04:06+00	\N	\N	1
14629	3	2021-04-26 02:32:52+00	\N	\N	1
14630	6	2021-04-26 01:47:31+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14631	5	2021-04-26 10:36:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14632	1	2021-04-26 11:16:00+00	\N	\N	1
14633	1	2021-04-26 12:47:38+00	\N	\N	1
14634	1	2021-04-26 13:47:59+00	\N	\N	1
14635	1	2021-04-26 14:47:45+00	\N	\N	1
14636	1	2021-04-26 15:13:12+00	\N	\N	1
14637	1	2021-04-26 16:21:33+00	\N	\N	1
14638	1	2021-04-26 17:43:15+00	\N	\N	1
14639	1	2021-04-26 18:10:31+00	\N	\N	1
14640	1	2021-04-26 19:27:58+00	\N	\N	1
14641	1	2021-04-26 20:30:51+00	\N	\N	1
14642	1	2021-04-26 21:30:44+00	\N	\N	1
14643	1	2021-04-26 22:17:53+00	\N	\N	1
14644	1	2021-04-26 23:43:49+00	\N	\N	1
14645	1	2021-04-27 00:32:46+00	\N	\N	1
14646	1	2021-04-27 01:12:57+00	\N	\N	1
14647	1	2021-04-27 02:15:42+00	\N	\N	1
14648	2	2021-04-26 15:18:42+00	\N	\N	1
14649	2	2021-04-26 18:42:57+00	\N	\N	1
14650	2	2021-04-26 22:52:46+00	\N	\N	1
14651	3	2021-04-27 02:01:54+00	\N	\N	1
14652	6	2021-04-27 01:46:49+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14653	5	2021-04-27 11:02:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14654	1	2021-04-27 11:14:23+00	\N	\N	1
14655	1	2021-04-27 12:17:32+00	\N	\N	1
14656	1	2021-04-27 13:42:32+00	\N	\N	1
14657	1	2021-04-27 14:40:17+00	\N	\N	1
14658	1	2021-04-27 15:23:21+00	\N	\N	1
14659	1	2021-04-27 16:50:57+00	\N	\N	1
14660	1	2021-04-27 17:38:15+00	\N	\N	1
14661	1	2021-04-27 18:41:58+00	\N	\N	1
14662	1	2021-04-27 19:49:00+00	\N	\N	1
14663	1	2021-04-27 20:45:41+00	\N	\N	1
14664	1	2021-04-27 21:25:00+00	\N	\N	1
14665	1	2021-04-27 22:32:30+00	\N	\N	1
14666	1	2021-04-27 23:25:58+00	\N	\N	1
14667	1	2021-04-28 00:23:59+00	\N	\N	1
14668	1	2021-04-28 01:43:17+00	\N	\N	1
14669	1	2021-04-28 02:52:19+00	\N	\N	1
14670	2	2021-04-27 15:13:01+00	\N	\N	1
14671	2	2021-04-27 19:21:00+00	\N	\N	1
14672	2	2021-04-27 23:19:16+00	\N	\N	1
14673	3	2021-04-28 01:31:08+00	\N	\N	1
14674	6	2021-04-28 02:44:21+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14675	5	2021-04-28 10:42:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14676	1	2021-04-28 11:35:07+00	\N	\N	1
14677	1	2021-04-28 12:31:38+00	\N	\N	1
14678	1	2021-04-28 13:35:18+00	\N	\N	1
14679	1	2021-04-28 14:36:21+00	\N	\N	1
14680	1	2021-04-28 15:34:53+00	\N	\N	1
14681	1	2021-04-28 16:14:49+00	\N	\N	1
14682	1	2021-04-28 17:46:52+00	\N	\N	1
14683	1	2021-04-28 18:26:08+00	\N	\N	1
14684	1	2021-04-28 19:40:32+00	\N	\N	1
14685	1	2021-04-28 20:13:08+00	\N	\N	1
14686	1	2021-04-28 21:44:05+00	\N	\N	1
14687	1	2021-04-28 22:33:40+00	\N	\N	1
14688	1	2021-04-28 23:48:54+00	\N	\N	1
14689	1	2021-04-29 00:29:10+00	\N	\N	1
14690	1	2021-04-29 01:51:19+00	\N	\N	1
14691	1	2021-04-29 02:50:01+00	\N	\N	1
14692	2	2021-04-28 15:27:31+00	\N	\N	1
14693	2	2021-04-28 19:09:46+00	\N	\N	1
14694	2	2021-04-28 23:28:39+00	\N	\N	1
14695	3	2021-04-29 01:38:00+00	\N	\N	1
14696	6	2021-04-29 02:46:51+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14697	5	2021-04-29 11:31:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14698	1	2021-04-29 11:44:48+00	\N	\N	1
14699	1	2021-04-29 12:43:18+00	\N	\N	1
14700	1	2021-04-29 13:50:30+00	\N	\N	1
14701	1	2021-04-29 14:12:02+00	\N	\N	1
14702	1	2021-04-29 15:20:17+00	\N	\N	1
14703	1	2021-04-29 16:19:28+00	\N	\N	1
14704	1	2021-04-29 17:22:13+00	\N	\N	1
14705	1	2021-04-29 18:12:07+00	\N	\N	1
14706	1	2021-04-29 19:24:33+00	\N	\N	1
14707	1	2021-04-29 20:30:36+00	\N	\N	1
14708	1	2021-04-29 21:47:13+00	\N	\N	1
14709	1	2021-04-29 22:28:36+00	\N	\N	1
14710	1	2021-04-29 23:21:06+00	\N	\N	1
14711	1	2021-04-30 00:35:36+00	\N	\N	1
14712	1	2021-04-30 01:16:11+00	\N	\N	1
14713	1	2021-04-30 02:47:49+00	\N	\N	1
14714	2	2021-04-29 15:25:23+00	\N	\N	1
14715	2	2021-04-29 18:31:35+00	\N	\N	1
14716	2	2021-04-29 22:41:46+00	\N	\N	1
14717	3	2021-04-30 02:07:33+00	\N	\N	1
14718	6	2021-04-30 02:27:06+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14719	5	2021-04-30 11:01:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14720	1	2021-04-30 11:40:23+00	\N	\N	1
14721	1	2021-04-30 12:31:09+00	\N	\N	1
14722	1	2021-04-30 13:51:25+00	\N	\N	1
14723	1	2021-04-30 14:32:49+00	\N	\N	1
14724	1	2021-04-30 15:19:13+00	\N	\N	1
14725	1	2021-04-30 16:40:26+00	\N	\N	1
14726	1	2021-04-30 17:30:31+00	\N	\N	1
14727	1	2021-04-30 18:32:12+00	\N	\N	1
14728	1	2021-04-30 19:27:12+00	\N	\N	1
14729	1	2021-04-30 20:29:31+00	\N	\N	1
14730	1	2021-04-30 21:42:07+00	\N	\N	1
14731	1	2021-04-30 22:48:01+00	\N	\N	1
14732	1	2021-04-30 23:24:07+00	\N	\N	1
14733	1	2021-05-01 00:34:49+00	\N	\N	1
14734	1	2021-05-01 01:26:22+00	\N	\N	1
14735	1	2021-05-01 02:50:15+00	\N	\N	1
14736	2	2021-04-30 14:40:37+00	\N	\N	1
14737	2	2021-04-30 18:48:46+00	\N	\N	1
14738	2	2021-04-30 23:28:54+00	\N	\N	1
14739	3	2021-05-01 02:47:46+00	\N	\N	1
14740	6	2021-05-01 02:35:34+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14741	5	2021-05-01 11:23:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14742	1	2021-05-01 11:08:43+00	\N	\N	1
14743	1	2021-05-01 12:22:46+00	\N	\N	1
14744	1	2021-05-01 13:38:09+00	\N	\N	1
14745	1	2021-05-01 14:15:42+00	\N	\N	1
14746	1	2021-05-01 15:34:30+00	\N	\N	1
14747	1	2021-05-01 16:34:47+00	\N	\N	1
14748	1	2021-05-01 17:48:32+00	\N	\N	1
14749	1	2021-05-01 18:14:08+00	\N	\N	1
14750	1	2021-05-01 19:28:39+00	\N	\N	1
14751	1	2021-05-01 20:46:55+00	\N	\N	1
14752	1	2021-05-01 21:14:36+00	\N	\N	1
14753	1	2021-05-01 22:50:04+00	\N	\N	1
14754	1	2021-05-01 23:22:20+00	\N	\N	1
14755	1	2021-05-02 00:26:11+00	\N	\N	1
14756	1	2021-05-02 01:18:11+00	\N	\N	1
14757	1	2021-05-02 02:09:16+00	\N	\N	1
14758	2	2021-05-01 14:40:39+00	\N	\N	1
14759	2	2021-05-01 18:31:54+00	\N	\N	1
14760	2	2021-05-01 22:57:50+00	\N	\N	1
14761	3	2021-05-02 02:35:16+00	\N	\N	1
14862	1	2021-05-06 21:14:57+00	\N	\N	1
14762	6	2021-05-02 01:47:06+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14763	5	2021-05-02 10:46:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14764	1	2021-05-02 11:45:28+00	\N	\N	1
14765	1	2021-05-02 12:19:49+00	\N	\N	1
14766	1	2021-05-02 13:24:25+00	\N	\N	1
14767	1	2021-05-02 14:35:46+00	\N	\N	1
14768	1	2021-05-02 15:32:19+00	\N	\N	1
14769	1	2021-05-02 16:41:57+00	\N	\N	1
14770	1	2021-05-02 17:08:28+00	\N	\N	1
14771	1	2021-05-02 18:46:51+00	\N	\N	1
14772	1	2021-05-02 19:27:22+00	\N	\N	1
14773	1	2021-05-02 20:37:09+00	\N	\N	1
14774	1	2021-05-02 21:39:34+00	\N	\N	1
14775	1	2021-05-02 22:44:56+00	\N	\N	1
14776	1	2021-05-02 23:26:32+00	\N	\N	1
14777	1	2021-05-03 00:48:53+00	\N	\N	1
14778	1	2021-05-03 01:48:03+00	\N	\N	1
14779	1	2021-05-03 02:29:45+00	\N	\N	1
14780	2	2021-05-02 14:49:48+00	\N	\N	1
14781	2	2021-05-02 19:23:48+00	\N	\N	1
14782	2	2021-05-02 23:24:44+00	\N	\N	1
14783	3	2021-05-03 02:26:29+00	\N	\N	1
14784	6	2021-05-03 03:04:23+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14785	5	2021-05-03 10:32:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14786	1	2021-05-03 11:39:50+00	\N	\N	1
14787	1	2021-05-03 12:09:40+00	\N	\N	1
14788	1	2021-05-03 13:22:02+00	\N	\N	1
14789	1	2021-05-03 14:51:21+00	\N	\N	1
14790	1	2021-05-03 15:44:09+00	\N	\N	1
14791	1	2021-05-03 16:45:25+00	\N	\N	1
14792	1	2021-05-03 17:09:36+00	\N	\N	1
14793	1	2021-05-03 18:30:39+00	\N	\N	1
14794	1	2021-05-03 19:50:44+00	\N	\N	1
14795	1	2021-05-03 20:20:00+00	\N	\N	1
14796	1	2021-05-03 21:20:20+00	\N	\N	1
14797	1	2021-05-03 22:36:36+00	\N	\N	1
14798	1	2021-05-03 23:37:11+00	\N	\N	1
14799	1	2021-05-04 00:28:12+00	\N	\N	1
14800	1	2021-05-04 01:38:17+00	\N	\N	1
14801	1	2021-05-04 02:23:26+00	\N	\N	1
14802	2	2021-05-03 14:46:42+00	\N	\N	1
14803	2	2021-05-03 18:36:21+00	\N	\N	1
14804	2	2021-05-03 22:48:46+00	\N	\N	1
14805	3	2021-05-04 02:59:27+00	\N	\N	1
14806	6	2021-05-04 02:33:16+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14807	5	2021-05-04 11:43:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14808	1	2021-05-04 11:26:04+00	\N	\N	1
14809	1	2021-05-04 12:35:56+00	\N	\N	1
14810	1	2021-05-04 13:18:36+00	\N	\N	1
14811	1	2021-05-04 14:45:53+00	\N	\N	1
14812	1	2021-05-04 15:49:11+00	\N	\N	1
14813	1	2021-05-04 16:23:23+00	\N	\N	1
14814	1	2021-05-04 17:38:30+00	\N	\N	1
14815	1	2021-05-04 18:41:48+00	\N	\N	1
14816	1	2021-05-04 19:39:04+00	\N	\N	1
14817	1	2021-05-04 20:13:32+00	\N	\N	1
14818	1	2021-05-04 21:45:27+00	\N	\N	1
14819	1	2021-05-04 22:48:51+00	\N	\N	1
14820	1	2021-05-04 23:08:02+00	\N	\N	1
14821	1	2021-05-05 00:46:00+00	\N	\N	1
14822	1	2021-05-05 01:46:59+00	\N	\N	1
14823	1	2021-05-05 02:40:19+00	\N	\N	1
14824	2	2021-05-04 15:06:45+00	\N	\N	1
14825	2	2021-05-04 19:23:12+00	\N	\N	1
14826	2	2021-05-04 23:21:25+00	\N	\N	1
14827	3	2021-05-05 02:45:53+00	\N	\N	1
14828	6	2021-05-05 01:59:00+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14829	5	2021-05-05 11:24:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14830	1	2021-05-05 11:47:42+00	\N	\N	1
14831	1	2021-05-05 12:31:05+00	\N	\N	1
14832	1	2021-05-05 13:34:47+00	\N	\N	1
14833	1	2021-05-05 14:49:11+00	\N	\N	1
14834	1	2021-05-05 15:15:31+00	\N	\N	1
14835	1	2021-05-05 16:09:51+00	\N	\N	1
14836	1	2021-05-05 17:23:05+00	\N	\N	1
14837	1	2021-05-05 18:30:44+00	\N	\N	1
14838	1	2021-05-05 19:38:12+00	\N	\N	1
14839	1	2021-05-05 20:43:47+00	\N	\N	1
14840	1	2021-05-05 21:29:10+00	\N	\N	1
14841	1	2021-05-05 22:09:18+00	\N	\N	1
14842	1	2021-05-05 23:13:19+00	\N	\N	1
14843	1	2021-05-06 00:13:17+00	\N	\N	1
14844	1	2021-05-06 01:21:23+00	\N	\N	1
14845	1	2021-05-06 02:47:52+00	\N	\N	1
14846	2	2021-05-05 14:56:34+00	\N	\N	1
14847	2	2021-05-05 18:44:44+00	\N	\N	1
14848	2	2021-05-05 23:06:23+00	\N	\N	1
14849	3	2021-05-06 02:05:57+00	\N	\N	1
14850	6	2021-05-06 02:25:43+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14851	5	2021-05-06 11:47:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14852	1	2021-05-06 11:33:57+00	\N	\N	1
14853	1	2021-05-06 12:09:46+00	\N	\N	1
14854	1	2021-05-06 13:15:29+00	\N	\N	1
14855	1	2021-05-06 14:47:55+00	\N	\N	1
14856	1	2021-05-06 15:32:35+00	\N	\N	1
14857	1	2021-05-06 16:41:18+00	\N	\N	1
14858	1	2021-05-06 17:49:07+00	\N	\N	1
14859	1	2021-05-06 18:42:55+00	\N	\N	1
14860	1	2021-05-06 19:33:38+00	\N	\N	1
14861	1	2021-05-06 20:28:46+00	\N	\N	1
14863	1	2021-05-06 22:35:34+00	\N	\N	1
14864	1	2021-05-06 23:40:53+00	\N	\N	1
14865	1	2021-05-07 00:29:06+00	\N	\N	1
14866	1	2021-05-07 01:51:52+00	\N	\N	1
14867	1	2021-05-07 02:27:16+00	\N	\N	1
14868	2	2021-05-06 14:38:13+00	\N	\N	1
14869	2	2021-05-06 18:30:01+00	\N	\N	1
14870	2	2021-05-06 23:23:26+00	\N	\N	1
14871	3	2021-05-07 02:32:48+00	\N	\N	1
14872	6	2021-05-07 02:05:21+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14873	5	2021-05-07 11:54:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14874	1	2021-05-07 11:20:52+00	\N	\N	1
14875	1	2021-05-07 12:35:05+00	\N	\N	1
14876	1	2021-05-07 13:40:50+00	\N	\N	1
14877	1	2021-05-07 14:08:48+00	\N	\N	1
14878	1	2021-05-07 15:10:12+00	\N	\N	1
14879	1	2021-05-07 16:38:34+00	\N	\N	1
14880	1	2021-05-07 17:36:04+00	\N	\N	1
14881	1	2021-05-07 18:19:39+00	\N	\N	1
14882	1	2021-05-07 19:34:09+00	\N	\N	1
14883	1	2021-05-07 20:17:49+00	\N	\N	1
14884	1	2021-05-07 21:20:20+00	\N	\N	1
14885	1	2021-05-07 22:20:19+00	\N	\N	1
14886	1	2021-05-07 23:29:56+00	\N	\N	1
14887	1	2021-05-08 00:32:14+00	\N	\N	1
14888	1	2021-05-08 01:16:23+00	\N	\N	1
14889	1	2021-05-08 02:08:54+00	\N	\N	1
14890	2	2021-05-07 14:43:12+00	\N	\N	1
14891	2	2021-05-07 18:55:05+00	\N	\N	1
14892	2	2021-05-07 22:39:23+00	\N	\N	1
14893	3	2021-05-08 02:20:15+00	\N	\N	1
14894	6	2021-05-08 02:17:37+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14895	5	2021-05-08 11:15:35+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14896	1	2021-05-08 11:15:43+00	\N	\N	1
14897	1	2021-05-08 12:17:12+00	\N	\N	1
14898	1	2021-05-08 13:38:06+00	\N	\N	1
14899	1	2021-05-08 14:41:52+00	\N	\N	1
14900	1	2021-05-08 15:10:26+00	\N	\N	1
14901	1	2021-05-08 16:21:42+00	\N	\N	1
14902	1	2021-05-08 17:38:28+00	\N	\N	1
14903	1	2021-05-08 18:14:52+00	\N	\N	1
14904	1	2021-05-08 19:29:59+00	\N	\N	1
14905	1	2021-05-08 20:32:49+00	\N	\N	1
14906	1	2021-05-08 21:16:23+00	\N	\N	1
14907	1	2021-05-08 22:12:52+00	\N	\N	1
14908	1	2021-05-08 23:24:18+00	\N	\N	1
14909	1	2021-05-09 00:37:28+00	\N	\N	1
14910	1	2021-05-09 01:43:41+00	\N	\N	1
14911	1	2021-05-09 02:14:36+00	\N	\N	1
14912	2	2021-05-08 15:15:09+00	\N	\N	1
14913	2	2021-05-08 19:09:55+00	\N	\N	1
14914	2	2021-05-08 23:18:28+00	\N	\N	1
14915	3	2021-05-09 02:27:25+00	\N	\N	1
14916	6	2021-05-09 01:46:17+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14917	5	2021-05-09 12:25:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14918	1	2021-05-09 11:38:31+00	\N	\N	1
14919	1	2021-05-09 12:46:50+00	\N	\N	1
14920	1	2021-05-09 13:22:15+00	\N	\N	1
14921	1	2021-05-09 14:22:01+00	\N	\N	1
14922	1	2021-05-09 15:26:21+00	\N	\N	1
14923	1	2021-05-09 16:47:51+00	\N	\N	1
14924	1	2021-05-09 17:48:07+00	\N	\N	1
14925	1	2021-05-09 18:29:22+00	\N	\N	1
14926	1	2021-05-09 19:16:46+00	\N	\N	1
14927	1	2021-05-09 20:20:59+00	\N	\N	1
14928	1	2021-05-09 21:41:45+00	\N	\N	1
14929	1	2021-05-09 22:34:08+00	\N	\N	1
14930	1	2021-05-09 23:34:40+00	\N	\N	1
14931	1	2021-05-10 00:08:32+00	\N	\N	1
14932	1	2021-05-10 01:49:21+00	\N	\N	1
14933	1	2021-05-10 02:22:34+00	\N	\N	1
14934	2	2021-05-09 15:26:32+00	\N	\N	1
14935	2	2021-05-09 19:28:46+00	\N	\N	1
14936	2	2021-05-09 23:27:14+00	\N	\N	1
14937	3	2021-05-10 01:49:44+00	\N	\N	1
14938	6	2021-05-10 02:40:21+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14939	5	2021-05-10 11:39:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14940	1	2021-05-10 11:45:21+00	\N	\N	1
14941	1	2021-05-10 12:08:47+00	\N	\N	1
14942	1	2021-05-10 13:27:48+00	\N	\N	1
14943	1	2021-05-10 14:40:28+00	\N	\N	1
14944	1	2021-05-10 15:46:20+00	\N	\N	1
14945	1	2021-05-10 16:43:52+00	\N	\N	1
14946	1	2021-05-10 17:28:26+00	\N	\N	1
14947	1	2021-05-10 18:39:35+00	\N	\N	1
14948	1	2021-05-10 19:32:30+00	\N	\N	1
14949	1	2021-05-10 20:23:23+00	\N	\N	1
14950	1	2021-05-10 21:07:50+00	\N	\N	1
14951	1	2021-05-10 22:50:58+00	\N	\N	1
14952	1	2021-05-10 23:12:40+00	\N	\N	1
14953	1	2021-05-11 00:11:12+00	\N	\N	1
14954	1	2021-05-11 01:20:07+00	\N	\N	1
14955	1	2021-05-11 02:39:06+00	\N	\N	1
14956	2	2021-05-10 15:13:48+00	\N	\N	1
14957	2	2021-05-10 19:01:18+00	\N	\N	1
14958	2	2021-05-10 22:56:30+00	\N	\N	1
14959	3	2021-05-11 02:50:36+00	\N	\N	1
14960	6	2021-05-11 02:21:27+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14961	5	2021-05-11 10:54:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14962	1	2021-05-11 11:32:36+00	\N	\N	1
14963	1	2021-05-11 12:48:44+00	\N	\N	1
14964	1	2021-05-11 13:16:35+00	\N	\N	1
14965	1	2021-05-11 14:10:15+00	\N	\N	1
14966	1	2021-05-11 15:17:47+00	\N	\N	1
14967	1	2021-05-11 16:43:34+00	\N	\N	1
14968	1	2021-05-11 17:13:44+00	\N	\N	1
14969	1	2021-05-11 18:49:35+00	\N	\N	1
14970	1	2021-05-11 19:29:52+00	\N	\N	1
14971	1	2021-05-11 20:34:32+00	\N	\N	1
14972	1	2021-05-11 21:51:56+00	\N	\N	1
14973	1	2021-05-11 22:37:58+00	\N	\N	1
14974	1	2021-05-11 23:30:04+00	\N	\N	1
14975	1	2021-05-12 00:11:54+00	\N	\N	1
14976	1	2021-05-12 01:23:11+00	\N	\N	1
14977	1	2021-05-12 02:42:35+00	\N	\N	1
14978	2	2021-05-11 14:37:02+00	\N	\N	1
14979	2	2021-05-11 19:18:18+00	\N	\N	1
14980	2	2021-05-11 23:10:41+00	\N	\N	1
14981	3	2021-05-12 01:34:56+00	\N	\N	1
14982	6	2021-05-12 02:25:52+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
14983	5	2021-05-12 12:22:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
14984	1	2021-05-12 11:09:31+00	\N	\N	1
14985	1	2021-05-12 12:51:30+00	\N	\N	1
14986	1	2021-05-12 13:11:43+00	\N	\N	1
14987	1	2021-05-12 14:30:53+00	\N	\N	1
14988	1	2021-05-12 15:42:39+00	\N	\N	1
14989	1	2021-05-12 16:40:51+00	\N	\N	1
14990	1	2021-05-12 17:29:06+00	\N	\N	1
14991	1	2021-05-12 18:23:21+00	\N	\N	1
14992	1	2021-05-12 19:30:44+00	\N	\N	1
14993	1	2021-05-12 20:43:17+00	\N	\N	1
14994	1	2021-05-12 21:30:00+00	\N	\N	1
14995	1	2021-05-12 22:31:27+00	\N	\N	1
14996	1	2021-05-12 23:17:25+00	\N	\N	1
14997	1	2021-05-13 00:45:42+00	\N	\N	1
14998	1	2021-05-13 01:08:13+00	\N	\N	1
14999	1	2021-05-13 02:09:42+00	\N	\N	1
15000	2	2021-05-12 15:22:06+00	\N	\N	1
15001	2	2021-05-12 18:58:28+00	\N	\N	1
15002	2	2021-05-12 22:56:56+00	\N	\N	1
15003	3	2021-05-13 02:31:14+00	\N	\N	1
15004	6	2021-05-13 02:38:44+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15005	5	2021-05-13 11:12:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15006	1	2021-05-13 11:40:03+00	\N	\N	1
15007	1	2021-05-13 12:37:22+00	\N	\N	1
15008	1	2021-05-13 13:47:18+00	\N	\N	1
15009	1	2021-05-13 14:47:51+00	\N	\N	1
15010	1	2021-05-13 15:38:01+00	\N	\N	1
15011	1	2021-05-13 16:12:14+00	\N	\N	1
15012	1	2021-05-13 17:09:54+00	\N	\N	1
15013	1	2021-05-13 18:28:58+00	\N	\N	1
15014	1	2021-05-13 19:47:48+00	\N	\N	1
15015	1	2021-05-13 20:43:55+00	\N	\N	1
15016	1	2021-05-13 21:36:08+00	\N	\N	1
15017	1	2021-05-13 22:31:38+00	\N	\N	1
15018	1	2021-05-13 23:18:51+00	\N	\N	1
15019	1	2021-05-14 00:46:37+00	\N	\N	1
15020	1	2021-05-14 01:08:06+00	\N	\N	1
15021	1	2021-05-14 02:23:01+00	\N	\N	1
15022	2	2021-05-13 15:10:12+00	\N	\N	1
15023	2	2021-05-13 19:16:35+00	\N	\N	1
15024	2	2021-05-13 22:36:16+00	\N	\N	1
15025	3	2021-05-14 01:43:03+00	\N	\N	1
15026	6	2021-05-14 02:17:39+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15027	5	2021-05-14 12:01:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15028	1	2021-05-14 11:47:59+00	\N	\N	1
15029	1	2021-05-14 12:29:41+00	\N	\N	1
15030	1	2021-05-14 13:35:43+00	\N	\N	1
15031	1	2021-05-14 14:34:21+00	\N	\N	1
15032	1	2021-05-14 15:33:20+00	\N	\N	1
15033	1	2021-05-14 16:47:32+00	\N	\N	1
15034	1	2021-05-14 17:33:27+00	\N	\N	1
15035	1	2021-05-14 18:13:20+00	\N	\N	1
15036	1	2021-05-14 19:27:59+00	\N	\N	1
15037	1	2021-05-14 20:14:34+00	\N	\N	1
15038	1	2021-05-14 21:48:45+00	\N	\N	1
15039	1	2021-05-14 22:47:12+00	\N	\N	1
15040	1	2021-05-14 23:13:24+00	\N	\N	1
15041	1	2021-05-15 00:41:47+00	\N	\N	1
15042	1	2021-05-15 01:24:47+00	\N	\N	1
15043	1	2021-05-15 02:38:07+00	\N	\N	1
15044	2	2021-05-14 15:25:16+00	\N	\N	1
15045	2	2021-05-14 18:38:30+00	\N	\N	1
15046	2	2021-05-14 23:19:22+00	\N	\N	1
15047	3	2021-05-15 02:01:01+00	\N	\N	1
15048	6	2021-05-15 03:01:47+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15049	5	2021-05-15 10:46:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15050	1	2021-05-15 11:38:50+00	\N	\N	1
15051	1	2021-05-15 12:13:27+00	\N	\N	1
15052	1	2021-05-15 13:34:48+00	\N	\N	1
15053	1	2021-05-15 14:27:44+00	\N	\N	1
15054	1	2021-05-15 15:50:09+00	\N	\N	1
15055	1	2021-05-15 16:08:12+00	\N	\N	1
15056	1	2021-05-15 17:12:59+00	\N	\N	1
15057	1	2021-05-15 18:26:11+00	\N	\N	1
15058	1	2021-05-15 19:38:08+00	\N	\N	1
15059	1	2021-05-15 20:30:54+00	\N	\N	1
15060	1	2021-05-15 21:08:19+00	\N	\N	1
15061	1	2021-05-15 22:12:02+00	\N	\N	1
15062	1	2021-05-15 23:48:29+00	\N	\N	1
15063	1	2021-05-16 00:08:44+00	\N	\N	1
15064	1	2021-05-16 01:47:57+00	\N	\N	1
15065	1	2021-05-16 02:51:01+00	\N	\N	1
15066	2	2021-05-15 15:11:07+00	\N	\N	1
15067	2	2021-05-15 18:50:37+00	\N	\N	1
15068	2	2021-05-15 22:55:07+00	\N	\N	1
15069	3	2021-05-16 02:25:42+00	\N	\N	1
15070	6	2021-05-16 01:52:23+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15071	5	2021-05-16 12:06:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15072	1	2021-05-16 11:17:09+00	\N	\N	1
15073	1	2021-05-16 12:23:40+00	\N	\N	1
15074	1	2021-05-16 13:39:15+00	\N	\N	1
15075	1	2021-05-16 14:44:45+00	\N	\N	1
15076	1	2021-05-16 15:10:47+00	\N	\N	1
15077	1	2021-05-16 16:35:52+00	\N	\N	1
15078	1	2021-05-16 17:43:27+00	\N	\N	1
15079	1	2021-05-16 18:35:32+00	\N	\N	1
15080	1	2021-05-16 19:11:43+00	\N	\N	1
15081	1	2021-05-16 20:27:16+00	\N	\N	1
15082	1	2021-05-16 21:35:10+00	\N	\N	1
15083	1	2021-05-16 22:12:39+00	\N	\N	1
15084	1	2021-05-16 23:12:31+00	\N	\N	1
15085	1	2021-05-17 00:12:00+00	\N	\N	1
15086	1	2021-05-17 01:16:40+00	\N	\N	1
15087	1	2021-05-17 02:45:53+00	\N	\N	1
15088	2	2021-05-16 15:13:14+00	\N	\N	1
15089	2	2021-05-16 18:49:33+00	\N	\N	1
15090	2	2021-05-16 22:55:56+00	\N	\N	1
15091	3	2021-05-17 03:24:24+00	\N	\N	1
15092	6	2021-05-17 02:40:21+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15093	5	2021-05-17 10:35:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15094	1	2021-05-17 11:31:49+00	\N	\N	1
15095	1	2021-05-17 12:44:53+00	\N	\N	1
15096	1	2021-05-17 13:30:42+00	\N	\N	1
15097	1	2021-05-17 14:13:45+00	\N	\N	1
15098	1	2021-05-17 15:14:39+00	\N	\N	1
15099	1	2021-05-17 16:25:07+00	\N	\N	1
15100	1	2021-05-17 17:25:17+00	\N	\N	1
15101	1	2021-05-17 18:11:51+00	\N	\N	1
15102	1	2021-05-17 19:49:36+00	\N	\N	1
15103	1	2021-05-17 20:18:46+00	\N	\N	1
15104	1	2021-05-17 21:48:39+00	\N	\N	1
15105	1	2021-05-17 22:52:19+00	\N	\N	1
15106	1	2021-05-17 23:42:11+00	\N	\N	1
15107	1	2021-05-18 00:31:14+00	\N	\N	1
15108	1	2021-05-18 01:22:22+00	\N	\N	1
15109	1	2021-05-18 02:40:51+00	\N	\N	1
15110	2	2021-05-17 14:52:12+00	\N	\N	1
15111	2	2021-05-17 19:12:06+00	\N	\N	1
15112	2	2021-05-17 22:58:37+00	\N	\N	1
15113	3	2021-05-18 02:10:15+00	\N	\N	1
15114	6	2021-05-18 02:52:37+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15115	5	2021-05-18 11:46:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15116	1	2021-05-18 11:29:09+00	\N	\N	1
15117	1	2021-05-18 12:43:02+00	\N	\N	1
15118	1	2021-05-18 13:11:53+00	\N	\N	1
15119	1	2021-05-18 14:16:01+00	\N	\N	1
15120	1	2021-05-18 15:26:05+00	\N	\N	1
15121	1	2021-05-18 16:10:06+00	\N	\N	1
15122	1	2021-05-18 17:26:38+00	\N	\N	1
15123	1	2021-05-18 18:48:19+00	\N	\N	1
15124	1	2021-05-18 19:15:14+00	\N	\N	1
15125	1	2021-05-18 20:24:13+00	\N	\N	1
15126	1	2021-05-18 21:12:26+00	\N	\N	1
15127	1	2021-05-18 22:14:21+00	\N	\N	1
15128	1	2021-05-18 23:29:26+00	\N	\N	1
15129	1	2021-05-19 00:14:05+00	\N	\N	1
15130	1	2021-05-19 01:29:24+00	\N	\N	1
15131	1	2021-05-19 02:27:12+00	\N	\N	1
15132	2	2021-05-18 14:52:51+00	\N	\N	1
15133	2	2021-05-18 19:01:23+00	\N	\N	1
15134	2	2021-05-18 22:41:48+00	\N	\N	1
15135	3	2021-05-19 02:17:47+00	\N	\N	1
15136	6	2021-05-19 02:33:24+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15137	5	2021-05-19 10:30:12+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15138	1	2021-05-19 11:46:14+00	\N	\N	1
15139	1	2021-05-19 12:23:21+00	\N	\N	1
15140	1	2021-05-19 13:23:19+00	\N	\N	1
15141	1	2021-05-19 14:28:21+00	\N	\N	1
15142	1	2021-05-19 15:13:21+00	\N	\N	1
15143	1	2021-05-19 16:22:46+00	\N	\N	1
15144	1	2021-05-19 17:21:01+00	\N	\N	1
15145	1	2021-05-19 18:23:55+00	\N	\N	1
15146	1	2021-05-19 19:11:48+00	\N	\N	1
15147	1	2021-05-19 20:41:39+00	\N	\N	1
15148	1	2021-05-19 21:24:48+00	\N	\N	1
15149	1	2021-05-19 22:39:18+00	\N	\N	1
15150	1	2021-05-19 23:19:21+00	\N	\N	1
15151	1	2021-05-20 00:48:54+00	\N	\N	1
15152	1	2021-05-20 01:49:56+00	\N	\N	1
15153	1	2021-05-20 02:11:24+00	\N	\N	1
15154	2	2021-05-19 14:43:37+00	\N	\N	1
15155	2	2021-05-19 19:07:48+00	\N	\N	1
15156	2	2021-05-19 23:25:04+00	\N	\N	1
15157	3	2021-05-20 02:58:24+00	\N	\N	1
15158	6	2021-05-20 02:30:54+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15159	5	2021-05-20 12:17:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15160	1	2021-05-20 11:42:40+00	\N	\N	1
15161	1	2021-05-20 12:39:44+00	\N	\N	1
15162	1	2021-05-20 13:34:11+00	\N	\N	1
15163	1	2021-05-20 14:46:50+00	\N	\N	1
15164	1	2021-05-20 15:34:42+00	\N	\N	1
15165	1	2021-05-20 16:41:40+00	\N	\N	1
15166	1	2021-05-20 17:37:16+00	\N	\N	1
15167	1	2021-05-20 18:24:38+00	\N	\N	1
15168	1	2021-05-20 19:14:34+00	\N	\N	1
15169	1	2021-05-20 20:45:07+00	\N	\N	1
15170	1	2021-05-20 21:45:01+00	\N	\N	1
15171	1	2021-05-20 22:28:39+00	\N	\N	1
15172	1	2021-05-20 23:38:17+00	\N	\N	1
15173	1	2021-05-21 00:15:28+00	\N	\N	1
15174	1	2021-05-21 01:07:34+00	\N	\N	1
15175	1	2021-05-21 02:08:56+00	\N	\N	1
15176	2	2021-05-20 14:57:42+00	\N	\N	1
15177	2	2021-05-20 18:49:07+00	\N	\N	1
15178	2	2021-05-20 23:29:21+00	\N	\N	1
15179	3	2021-05-21 02:05:46+00	\N	\N	1
15180	6	2021-05-21 02:42:22+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15181	5	2021-05-21 12:02:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15182	1	2021-05-21 11:41:41+00	\N	\N	1
15183	1	2021-05-21 12:16:41+00	\N	\N	1
15184	1	2021-05-21 13:08:03+00	\N	\N	1
15185	1	2021-05-21 14:31:12+00	\N	\N	1
15186	1	2021-05-21 15:37:21+00	\N	\N	1
15187	1	2021-05-21 16:15:46+00	\N	\N	1
15188	1	2021-05-21 17:13:02+00	\N	\N	1
15189	1	2021-05-21 18:40:13+00	\N	\N	1
15190	1	2021-05-21 19:15:32+00	\N	\N	1
15191	1	2021-05-21 20:34:30+00	\N	\N	1
15192	1	2021-05-21 21:41:02+00	\N	\N	1
15193	1	2021-05-21 22:08:37+00	\N	\N	1
15194	1	2021-05-21 23:13:42+00	\N	\N	1
15195	1	2021-05-22 00:18:12+00	\N	\N	1
15196	1	2021-05-22 01:18:43+00	\N	\N	1
15197	1	2021-05-22 02:41:52+00	\N	\N	1
15198	2	2021-05-21 15:06:49+00	\N	\N	1
15199	2	2021-05-21 18:37:42+00	\N	\N	1
15200	2	2021-05-21 23:13:04+00	\N	\N	1
15201	3	2021-05-22 01:51:11+00	\N	\N	1
15202	6	2021-05-22 02:15:04+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15203	5	2021-05-22 11:39:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15204	1	2021-05-22 11:27:47+00	\N	\N	1
15205	1	2021-05-22 12:12:31+00	\N	\N	1
15206	1	2021-05-22 13:42:32+00	\N	\N	1
15207	1	2021-05-22 14:28:20+00	\N	\N	1
15208	1	2021-05-22 15:19:18+00	\N	\N	1
15209	1	2021-05-22 16:45:26+00	\N	\N	1
15210	1	2021-05-22 17:18:20+00	\N	\N	1
15211	1	2021-05-22 18:45:56+00	\N	\N	1
15212	1	2021-05-22 19:31:53+00	\N	\N	1
15213	1	2021-05-22 20:37:07+00	\N	\N	1
15214	1	2021-05-22 21:10:14+00	\N	\N	1
15215	1	2021-05-22 22:45:25+00	\N	\N	1
15216	1	2021-05-22 23:21:20+00	\N	\N	1
15217	1	2021-05-23 00:13:12+00	\N	\N	1
15218	1	2021-05-23 01:50:33+00	\N	\N	1
15219	1	2021-05-23 02:52:20+00	\N	\N	1
15220	2	2021-05-22 15:14:59+00	\N	\N	1
15221	2	2021-05-22 19:27:53+00	\N	\N	1
15222	2	2021-05-22 23:06:40+00	\N	\N	1
15223	3	2021-05-23 02:40:12+00	\N	\N	1
15224	6	2021-05-23 01:56:02+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15225	5	2021-05-23 11:30:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15226	1	2021-05-23 11:10:26+00	\N	\N	1
15227	1	2021-05-23 12:41:33+00	\N	\N	1
15228	1	2021-05-23 13:42:29+00	\N	\N	1
15229	1	2021-05-23 14:20:04+00	\N	\N	1
15230	1	2021-05-23 15:34:39+00	\N	\N	1
15231	1	2021-05-23 16:50:40+00	\N	\N	1
15232	1	2021-05-23 17:21:27+00	\N	\N	1
15233	1	2021-05-23 18:38:25+00	\N	\N	1
15234	1	2021-05-23 19:11:36+00	\N	\N	1
15235	1	2021-05-23 20:11:43+00	\N	\N	1
15236	1	2021-05-23 21:36:44+00	\N	\N	1
15237	1	2021-05-23 22:48:19+00	\N	\N	1
15238	1	2021-05-23 23:38:46+00	\N	\N	1
15239	1	2021-05-24 00:32:55+00	\N	\N	1
15240	1	2021-05-24 01:24:53+00	\N	\N	1
15241	1	2021-05-24 02:42:45+00	\N	\N	1
15242	2	2021-05-23 14:49:19+00	\N	\N	1
15243	2	2021-05-23 18:42:21+00	\N	\N	1
15244	2	2021-05-23 23:01:01+00	\N	\N	1
15245	3	2021-05-24 02:45:05+00	\N	\N	1
15246	6	2021-05-24 02:07:45+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15247	5	2021-05-24 11:32:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15248	1	2021-05-24 11:31:17+00	\N	\N	1
15249	1	2021-05-24 12:33:01+00	\N	\N	1
15250	1	2021-05-24 13:41:38+00	\N	\N	1
15251	1	2021-05-24 14:16:53+00	\N	\N	1
15252	1	2021-05-24 15:24:42+00	\N	\N	1
15253	1	2021-05-24 16:21:23+00	\N	\N	1
15254	1	2021-05-24 17:41:42+00	\N	\N	1
15255	1	2021-05-24 18:10:54+00	\N	\N	1
15256	1	2021-05-24 19:27:47+00	\N	\N	1
15257	1	2021-05-24 20:40:31+00	\N	\N	1
15258	1	2021-05-24 21:52:13+00	\N	\N	1
15259	1	2021-05-24 22:18:42+00	\N	\N	1
15260	1	2021-05-24 23:33:51+00	\N	\N	1
15261	1	2021-05-25 00:32:49+00	\N	\N	1
15262	1	2021-05-25 01:15:28+00	\N	\N	1
15263	1	2021-05-25 02:25:52+00	\N	\N	1
15264	2	2021-05-24 14:41:21+00	\N	\N	1
15265	2	2021-05-24 18:41:22+00	\N	\N	1
15266	2	2021-05-24 23:14:07+00	\N	\N	1
15267	3	2021-05-25 03:18:03+00	\N	\N	1
15268	6	2021-05-25 02:03:56+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15269	5	2021-05-25 11:53:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15270	1	2021-05-25 11:16:52+00	\N	\N	1
15271	1	2021-05-25 12:48:40+00	\N	\N	1
15272	1	2021-05-25 13:20:42+00	\N	\N	1
15273	1	2021-05-25 14:28:28+00	\N	\N	1
15274	1	2021-05-25 15:27:18+00	\N	\N	1
15275	1	2021-05-25 16:27:18+00	\N	\N	1
15276	1	2021-05-25 17:42:39+00	\N	\N	1
15277	1	2021-05-25 18:43:08+00	\N	\N	1
15278	1	2021-05-25 19:28:53+00	\N	\N	1
15279	1	2021-05-25 20:17:09+00	\N	\N	1
15280	1	2021-05-25 21:20:18+00	\N	\N	1
15281	1	2021-05-25 22:41:19+00	\N	\N	1
15282	1	2021-05-25 23:10:36+00	\N	\N	1
15283	1	2021-05-26 00:49:48+00	\N	\N	1
15284	1	2021-05-26 01:47:44+00	\N	\N	1
15285	1	2021-05-26 02:49:11+00	\N	\N	1
15286	2	2021-05-25 14:47:14+00	\N	\N	1
15287	2	2021-05-25 19:19:48+00	\N	\N	1
15288	2	2021-05-25 23:13:50+00	\N	\N	1
15289	3	2021-05-26 01:50:02+00	\N	\N	1
15290	6	2021-05-26 02:47:56+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15291	5	2021-05-26 10:33:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15292	1	2021-05-26 11:34:54+00	\N	\N	1
15293	1	2021-05-26 12:30:00+00	\N	\N	1
15294	1	2021-05-26 13:28:21+00	\N	\N	1
15295	1	2021-05-26 14:49:00+00	\N	\N	1
15296	1	2021-05-26 15:43:22+00	\N	\N	1
15297	1	2021-05-26 16:11:59+00	\N	\N	1
15298	1	2021-05-26 17:33:19+00	\N	\N	1
15299	1	2021-05-26 18:52:16+00	\N	\N	1
15300	1	2021-05-26 19:45:57+00	\N	\N	1
15301	1	2021-05-26 20:21:45+00	\N	\N	1
15302	1	2021-05-26 21:27:49+00	\N	\N	1
15303	1	2021-05-26 22:47:55+00	\N	\N	1
15304	1	2021-05-26 23:22:33+00	\N	\N	1
15305	1	2021-05-27 00:31:07+00	\N	\N	1
15306	1	2021-05-27 01:47:17+00	\N	\N	1
15307	1	2021-05-27 02:22:04+00	\N	\N	1
15308	2	2021-05-26 14:46:16+00	\N	\N	1
15309	2	2021-05-26 18:53:16+00	\N	\N	1
15310	2	2021-05-26 22:59:17+00	\N	\N	1
15311	3	2021-05-27 02:05:37+00	\N	\N	1
15312	6	2021-05-27 02:54:17+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15313	5	2021-05-27 12:09:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15314	1	2021-05-27 11:09:21+00	\N	\N	1
15315	1	2021-05-27 12:21:56+00	\N	\N	1
15316	1	2021-05-27 13:40:53+00	\N	\N	1
15317	1	2021-05-27 14:40:14+00	\N	\N	1
15318	1	2021-05-27 15:45:20+00	\N	\N	1
15319	1	2021-05-27 16:37:52+00	\N	\N	1
15320	1	2021-05-27 17:49:33+00	\N	\N	1
15321	1	2021-05-27 18:23:03+00	\N	\N	1
15322	1	2021-05-27 19:40:24+00	\N	\N	1
15323	1	2021-05-27 20:17:21+00	\N	\N	1
15324	1	2021-05-27 21:24:00+00	\N	\N	1
15325	1	2021-05-27 22:32:16+00	\N	\N	1
15326	1	2021-05-27 23:11:02+00	\N	\N	1
15327	1	2021-05-28 00:13:28+00	\N	\N	1
15328	1	2021-05-28 01:27:52+00	\N	\N	1
15329	1	2021-05-28 02:48:15+00	\N	\N	1
15330	2	2021-05-27 14:36:35+00	\N	\N	1
15331	2	2021-05-27 18:51:31+00	\N	\N	1
15332	2	2021-05-27 23:13:19+00	\N	\N	1
15333	3	2021-05-28 03:27:25+00	\N	\N	1
15334	6	2021-05-28 03:09:17+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15335	5	2021-05-28 11:17:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15336	1	2021-05-28 11:21:51+00	\N	\N	1
15337	1	2021-05-28 12:20:19+00	\N	\N	1
15338	1	2021-05-28 13:12:35+00	\N	\N	1
15339	1	2021-05-28 14:43:24+00	\N	\N	1
15340	1	2021-05-28 15:18:18+00	\N	\N	1
15341	1	2021-05-28 16:41:34+00	\N	\N	1
15342	1	2021-05-28 17:39:01+00	\N	\N	1
15343	1	2021-05-28 18:19:48+00	\N	\N	1
15344	1	2021-05-28 19:16:28+00	\N	\N	1
15345	1	2021-05-28 20:26:09+00	\N	\N	1
15346	1	2021-05-28 21:23:38+00	\N	\N	1
15347	1	2021-05-28 22:34:23+00	\N	\N	1
15348	1	2021-05-28 23:19:15+00	\N	\N	1
15349	1	2021-05-29 00:41:29+00	\N	\N	1
15350	1	2021-05-29 01:50:59+00	\N	\N	1
15351	1	2021-05-29 02:41:25+00	\N	\N	1
15352	2	2021-05-28 14:34:59+00	\N	\N	1
15353	2	2021-05-28 19:11:55+00	\N	\N	1
15354	2	2021-05-28 22:35:33+00	\N	\N	1
15355	3	2021-05-29 01:39:36+00	\N	\N	1
15356	6	2021-05-29 03:07:55+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15357	5	2021-05-29 12:23:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15358	1	2021-05-29 11:41:49+00	\N	\N	1
15359	1	2021-05-29 12:47:48+00	\N	\N	1
15360	1	2021-05-29 13:30:41+00	\N	\N	1
15361	1	2021-05-29 14:10:20+00	\N	\N	1
15362	1	2021-05-29 15:37:27+00	\N	\N	1
15363	1	2021-05-29 16:41:57+00	\N	\N	1
15364	1	2021-05-29 17:31:31+00	\N	\N	1
15365	1	2021-05-29 18:28:37+00	\N	\N	1
15366	1	2021-05-29 19:08:38+00	\N	\N	1
15367	1	2021-05-29 20:35:01+00	\N	\N	1
15368	1	2021-05-29 21:08:56+00	\N	\N	1
15369	1	2021-05-29 22:26:54+00	\N	\N	1
15370	1	2021-05-29 23:24:49+00	\N	\N	1
15371	1	2021-05-30 00:29:01+00	\N	\N	1
15372	1	2021-05-30 01:18:13+00	\N	\N	1
15373	1	2021-05-30 02:26:41+00	\N	\N	1
15374	2	2021-05-29 14:48:57+00	\N	\N	1
15375	2	2021-05-29 18:50:11+00	\N	\N	1
15376	2	2021-05-29 23:18:49+00	\N	\N	1
15377	3	2021-05-30 01:40:30+00	\N	\N	1
15378	6	2021-05-30 02:41:14+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15379	5	2021-05-30 11:18:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15380	1	2021-05-30 11:23:30+00	\N	\N	1
15381	1	2021-05-30 12:22:17+00	\N	\N	1
15382	1	2021-05-30 13:39:41+00	\N	\N	1
15383	1	2021-05-30 14:42:59+00	\N	\N	1
15384	1	2021-05-30 15:25:53+00	\N	\N	1
15385	1	2021-05-30 16:17:17+00	\N	\N	1
15386	1	2021-05-30 17:11:19+00	\N	\N	1
15387	1	2021-05-30 18:16:05+00	\N	\N	1
15388	1	2021-05-30 19:20:15+00	\N	\N	1
15389	1	2021-05-30 20:16:43+00	\N	\N	1
15390	1	2021-05-30 21:31:04+00	\N	\N	1
15391	1	2021-05-30 22:26:43+00	\N	\N	1
15392	1	2021-05-30 23:48:24+00	\N	\N	1
15393	1	2021-05-31 00:21:20+00	\N	\N	1
15394	1	2021-05-31 01:30:06+00	\N	\N	1
15395	1	2021-05-31 02:42:46+00	\N	\N	1
15396	2	2021-05-30 15:03:07+00	\N	\N	1
15397	2	2021-05-30 18:46:55+00	\N	\N	1
15398	2	2021-05-30 23:02:13+00	\N	\N	1
15399	3	2021-05-31 01:47:43+00	\N	\N	1
15400	6	2021-05-31 02:26:42+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15401	5	2021-05-31 12:26:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15402	1	2021-05-31 11:41:54+00	\N	\N	1
15403	1	2021-05-31 12:44:34+00	\N	\N	1
15404	1	2021-05-31 13:31:59+00	\N	\N	1
15405	1	2021-05-31 14:20:00+00	\N	\N	1
15406	1	2021-05-31 15:42:00+00	\N	\N	1
15407	1	2021-05-31 16:30:35+00	\N	\N	1
15408	1	2021-05-31 17:32:35+00	\N	\N	1
15409	1	2021-05-31 18:30:10+00	\N	\N	1
15410	1	2021-05-31 19:31:48+00	\N	\N	1
15411	1	2021-05-31 20:43:54+00	\N	\N	1
15412	1	2021-05-31 21:34:33+00	\N	\N	1
15413	1	2021-05-31 22:10:22+00	\N	\N	1
15414	1	2021-05-31 23:20:16+00	\N	\N	1
15415	1	2021-06-01 00:50:03+00	\N	\N	1
15416	1	2021-06-01 01:25:45+00	\N	\N	1
15417	1	2021-06-01 02:24:55+00	\N	\N	1
15418	2	2021-05-31 14:41:25+00	\N	\N	1
15419	2	2021-05-31 19:10:46+00	\N	\N	1
15420	2	2021-05-31 23:14:46+00	\N	\N	1
15421	3	2021-06-01 03:09:09+00	\N	\N	1
15422	6	2021-06-01 02:21:18+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15423	5	2021-06-01 11:14:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15424	1	2021-06-01 11:23:07+00	\N	\N	1
15425	1	2021-06-01 12:46:59+00	\N	\N	1
15426	1	2021-06-01 13:33:29+00	\N	\N	1
15427	1	2021-06-01 14:43:41+00	\N	\N	1
15428	1	2021-06-01 15:32:37+00	\N	\N	1
15429	1	2021-06-01 16:51:54+00	\N	\N	1
15430	1	2021-06-01 17:08:57+00	\N	\N	1
15431	1	2021-06-01 18:29:05+00	\N	\N	1
15432	1	2021-06-01 19:21:33+00	\N	\N	1
15433	1	2021-06-01 20:50:23+00	\N	\N	1
15434	1	2021-06-01 21:12:19+00	\N	\N	1
15435	1	2021-06-01 22:08:22+00	\N	\N	1
15436	1	2021-06-01 23:46:42+00	\N	\N	1
15437	1	2021-06-02 00:09:52+00	\N	\N	1
15438	1	2021-06-02 01:45:08+00	\N	\N	1
15439	1	2021-06-02 02:36:57+00	\N	\N	1
15440	2	2021-06-01 15:18:05+00	\N	\N	1
15441	2	2021-06-01 18:32:03+00	\N	\N	1
15442	2	2021-06-01 22:42:19+00	\N	\N	1
15443	3	2021-06-02 01:54:16+00	\N	\N	1
15444	6	2021-06-02 01:52:01+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15445	5	2021-06-02 11:45:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15446	1	2021-06-02 11:38:56+00	\N	\N	1
15447	1	2021-06-02 12:30:06+00	\N	\N	1
15448	1	2021-06-02 13:35:06+00	\N	\N	1
15449	1	2021-06-02 14:22:11+00	\N	\N	1
15450	1	2021-06-02 15:39:21+00	\N	\N	1
15451	1	2021-06-02 16:26:02+00	\N	\N	1
15452	1	2021-06-02 17:41:56+00	\N	\N	1
15453	1	2021-06-02 18:38:57+00	\N	\N	1
15454	1	2021-06-02 19:18:13+00	\N	\N	1
15455	1	2021-06-02 20:43:14+00	\N	\N	1
15456	1	2021-06-02 21:17:32+00	\N	\N	1
15457	1	2021-06-02 22:27:47+00	\N	\N	1
15458	1	2021-06-02 23:34:32+00	\N	\N	1
15459	1	2021-06-03 00:29:25+00	\N	\N	1
15460	1	2021-06-03 01:08:54+00	\N	\N	1
15461	1	2021-06-03 02:20:44+00	\N	\N	1
15462	2	2021-06-02 14:32:47+00	\N	\N	1
15463	2	2021-06-02 19:28:49+00	\N	\N	1
15464	2	2021-06-02 23:16:17+00	\N	\N	1
15465	3	2021-06-03 01:32:47+00	\N	\N	1
15466	6	2021-06-03 02:32:10+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15467	5	2021-06-03 11:47:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15468	1	2021-06-03 11:11:58+00	\N	\N	1
15469	1	2021-06-03 12:50:58+00	\N	\N	1
15470	1	2021-06-03 13:42:06+00	\N	\N	1
15471	1	2021-06-03 14:27:21+00	\N	\N	1
15472	1	2021-06-03 15:33:09+00	\N	\N	1
15473	1	2021-06-03 16:24:59+00	\N	\N	1
15474	1	2021-06-03 17:35:28+00	\N	\N	1
15475	1	2021-06-03 18:36:58+00	\N	\N	1
15476	1	2021-06-03 19:33:56+00	\N	\N	1
15477	1	2021-06-03 20:20:27+00	\N	\N	1
15478	1	2021-06-03 21:12:34+00	\N	\N	1
15479	1	2021-06-03 22:27:43+00	\N	\N	1
15480	1	2021-06-03 23:25:25+00	\N	\N	1
15481	1	2021-06-04 00:51:21+00	\N	\N	1
15482	1	2021-06-04 01:18:10+00	\N	\N	1
15483	1	2021-06-04 02:38:46+00	\N	\N	1
15484	2	2021-06-03 14:44:00+00	\N	\N	1
15485	2	2021-06-03 18:31:09+00	\N	\N	1
15486	2	2021-06-03 23:21:21+00	\N	\N	1
15487	3	2021-06-04 01:36:19+00	\N	\N	1
15488	6	2021-06-04 02:28:40+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15489	5	2021-06-04 11:32:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15490	1	2021-06-04 11:32:02+00	\N	\N	1
15491	1	2021-06-04 12:19:36+00	\N	\N	1
15492	1	2021-06-04 13:50:20+00	\N	\N	1
15493	1	2021-06-04 14:42:05+00	\N	\N	1
15494	1	2021-06-04 15:25:50+00	\N	\N	1
15495	1	2021-06-04 16:25:02+00	\N	\N	1
15496	1	2021-06-04 17:31:22+00	\N	\N	1
15497	1	2021-06-04 18:28:52+00	\N	\N	1
15498	1	2021-06-04 19:34:04+00	\N	\N	1
15499	1	2021-06-04 20:40:53+00	\N	\N	1
15500	1	2021-06-04 21:43:51+00	\N	\N	1
15501	1	2021-06-04 22:27:50+00	\N	\N	1
15502	1	2021-06-04 23:20:11+00	\N	\N	1
15503	1	2021-06-05 00:42:34+00	\N	\N	1
15504	1	2021-06-05 01:30:01+00	\N	\N	1
15505	1	2021-06-05 02:47:29+00	\N	\N	1
15506	2	2021-06-04 14:45:39+00	\N	\N	1
15507	2	2021-06-04 18:48:16+00	\N	\N	1
15508	2	2021-06-04 22:32:28+00	\N	\N	1
15509	3	2021-06-05 02:04:14+00	\N	\N	1
15510	6	2021-06-05 01:59:55+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15511	5	2021-06-05 11:11:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15512	1	2021-06-05 11:13:18+00	\N	\N	1
15513	1	2021-06-05 12:30:21+00	\N	\N	1
15514	1	2021-06-05 13:22:16+00	\N	\N	1
15515	1	2021-06-05 14:10:02+00	\N	\N	1
15516	1	2021-06-05 15:10:19+00	\N	\N	1
15517	1	2021-06-05 16:08:18+00	\N	\N	1
15518	1	2021-06-05 17:31:25+00	\N	\N	1
15519	1	2021-06-05 18:52:28+00	\N	\N	1
15520	1	2021-06-05 19:15:06+00	\N	\N	1
15521	1	2021-06-05 20:09:02+00	\N	\N	1
15522	1	2021-06-05 21:37:10+00	\N	\N	1
15523	1	2021-06-05 22:39:19+00	\N	\N	1
15524	1	2021-06-05 23:16:53+00	\N	\N	1
15525	1	2021-06-06 00:41:18+00	\N	\N	1
15526	1	2021-06-06 01:29:21+00	\N	\N	1
15527	1	2021-06-06 02:32:49+00	\N	\N	1
15528	2	2021-06-05 14:30:55+00	\N	\N	1
15529	2	2021-06-05 18:47:45+00	\N	\N	1
15530	2	2021-06-05 23:04:06+00	\N	\N	1
15531	3	2021-06-06 03:23:04+00	\N	\N	1
15532	6	2021-06-06 02:29:57+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15533	5	2021-06-06 10:58:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15534	1	2021-06-06 11:27:09+00	\N	\N	1
15535	1	2021-06-06 12:50:07+00	\N	\N	1
15536	1	2021-06-06 13:19:40+00	\N	\N	1
15537	1	2021-06-06 14:17:43+00	\N	\N	1
15538	1	2021-06-06 15:24:35+00	\N	\N	1
15539	1	2021-06-06 16:09:00+00	\N	\N	1
15540	1	2021-06-06 17:27:07+00	\N	\N	1
15541	1	2021-06-06 18:48:10+00	\N	\N	1
15542	1	2021-06-06 19:31:22+00	\N	\N	1
15543	1	2021-06-06 20:33:03+00	\N	\N	1
15544	1	2021-06-06 21:34:31+00	\N	\N	1
15545	1	2021-06-06 22:23:09+00	\N	\N	1
15546	1	2021-06-06 23:25:34+00	\N	\N	1
15547	1	2021-06-07 00:42:33+00	\N	\N	1
15548	1	2021-06-07 01:19:45+00	\N	\N	1
15549	1	2021-06-07 02:22:24+00	\N	\N	1
15550	2	2021-06-06 15:17:50+00	\N	\N	1
15551	2	2021-06-06 19:01:56+00	\N	\N	1
15552	2	2021-06-06 22:30:05+00	\N	\N	1
15553	3	2021-06-07 02:24:22+00	\N	\N	1
15554	6	2021-06-07 01:53:14+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15555	5	2021-06-07 12:29:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15556	1	2021-06-07 11:42:51+00	\N	\N	1
15557	1	2021-06-07 12:27:51+00	\N	\N	1
15558	1	2021-06-07 13:50:24+00	\N	\N	1
15559	1	2021-06-07 14:41:48+00	\N	\N	1
15560	1	2021-06-07 15:35:38+00	\N	\N	1
15561	1	2021-06-07 16:50:58+00	\N	\N	1
15562	1	2021-06-07 17:22:15+00	\N	\N	1
15563	1	2021-06-07 18:11:03+00	\N	\N	1
15564	1	2021-06-07 19:09:05+00	\N	\N	1
15565	1	2021-06-07 20:36:50+00	\N	\N	1
15566	1	2021-06-07 21:48:39+00	\N	\N	1
15567	1	2021-06-07 22:41:12+00	\N	\N	1
15568	1	2021-06-07 23:28:36+00	\N	\N	1
15569	1	2021-06-08 00:51:37+00	\N	\N	1
15570	1	2021-06-08 01:33:21+00	\N	\N	1
15571	1	2021-06-08 02:17:50+00	\N	\N	1
15572	2	2021-06-07 15:10:30+00	\N	\N	1
15573	2	2021-06-07 18:47:44+00	\N	\N	1
15574	2	2021-06-07 22:43:13+00	\N	\N	1
15575	3	2021-06-08 02:39:01+00	\N	\N	1
15576	6	2021-06-08 02:26:20+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15682	2	2021-06-12 14:42:35+00	\N	\N	1
15577	5	2021-06-08 11:10:05+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15578	1	2021-06-08 11:32:04+00	\N	\N	1
15579	1	2021-06-08 12:33:59+00	\N	\N	1
15580	1	2021-06-08 13:47:00+00	\N	\N	1
15581	1	2021-06-08 14:29:50+00	\N	\N	1
15582	1	2021-06-08 15:30:21+00	\N	\N	1
15583	1	2021-06-08 16:43:57+00	\N	\N	1
15584	1	2021-06-08 17:17:04+00	\N	\N	1
15585	1	2021-06-08 18:46:50+00	\N	\N	1
15586	1	2021-06-08 19:44:54+00	\N	\N	1
15587	1	2021-06-08 20:31:58+00	\N	\N	1
15588	1	2021-06-08 21:52:09+00	\N	\N	1
15589	1	2021-06-08 22:08:43+00	\N	\N	1
15590	1	2021-06-08 23:17:53+00	\N	\N	1
15591	1	2021-06-09 00:29:28+00	\N	\N	1
15592	1	2021-06-09 01:25:44+00	\N	\N	1
15593	1	2021-06-09 02:23:07+00	\N	\N	1
15594	2	2021-06-08 15:20:42+00	\N	\N	1
15595	2	2021-06-08 18:33:31+00	\N	\N	1
15596	2	2021-06-08 22:40:17+00	\N	\N	1
15597	3	2021-06-09 02:01:04+00	\N	\N	1
15598	6	2021-06-09 02:57:21+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15599	5	2021-06-09 12:07:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15600	1	2021-06-09 11:42:30+00	\N	\N	1
15601	1	2021-06-09 12:42:01+00	\N	\N	1
15602	1	2021-06-09 13:45:11+00	\N	\N	1
15603	1	2021-06-09 14:18:31+00	\N	\N	1
15604	1	2021-06-09 15:40:11+00	\N	\N	1
15605	1	2021-06-09 16:09:18+00	\N	\N	1
15606	1	2021-06-09 17:21:33+00	\N	\N	1
15607	1	2021-06-09 18:20:47+00	\N	\N	1
15608	1	2021-06-09 19:28:43+00	\N	\N	1
15609	1	2021-06-09 20:39:07+00	\N	\N	1
15610	1	2021-06-09 21:19:42+00	\N	\N	1
15611	1	2021-06-09 22:20:05+00	\N	\N	1
15612	1	2021-06-09 23:19:54+00	\N	\N	1
15613	1	2021-06-10 00:08:54+00	\N	\N	1
15614	1	2021-06-10 01:40:37+00	\N	\N	1
15615	1	2021-06-10 02:14:08+00	\N	\N	1
15616	2	2021-06-09 15:10:37+00	\N	\N	1
15617	2	2021-06-09 19:17:50+00	\N	\N	1
15618	2	2021-06-09 23:13:30+00	\N	\N	1
15619	3	2021-06-10 02:27:35+00	\N	\N	1
15620	6	2021-06-10 03:01:01+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15621	5	2021-06-10 11:25:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15622	1	2021-06-10 11:08:22+00	\N	\N	1
15623	1	2021-06-10 12:41:30+00	\N	\N	1
15624	1	2021-06-10 13:25:53+00	\N	\N	1
15625	1	2021-06-10 14:34:30+00	\N	\N	1
15626	1	2021-06-10 15:13:13+00	\N	\N	1
15627	1	2021-06-10 16:40:22+00	\N	\N	1
15628	1	2021-06-10 17:31:29+00	\N	\N	1
15629	1	2021-06-10 18:08:04+00	\N	\N	1
15630	1	2021-06-10 19:08:20+00	\N	\N	1
15631	1	2021-06-10 20:21:04+00	\N	\N	1
15632	1	2021-06-10 21:45:03+00	\N	\N	1
15633	1	2021-06-10 22:26:55+00	\N	\N	1
15634	1	2021-06-10 23:41:23+00	\N	\N	1
15635	1	2021-06-11 00:18:24+00	\N	\N	1
15636	1	2021-06-11 01:33:48+00	\N	\N	1
15637	1	2021-06-11 02:47:05+00	\N	\N	1
15638	2	2021-06-10 14:38:12+00	\N	\N	1
15639	2	2021-06-10 19:06:54+00	\N	\N	1
15640	2	2021-06-10 22:47:25+00	\N	\N	1
15641	3	2021-06-11 02:45:18+00	\N	\N	1
15642	6	2021-06-11 02:08:47+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15643	5	2021-06-11 10:45:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15644	1	2021-06-11 11:09:17+00	\N	\N	1
15645	1	2021-06-11 12:37:24+00	\N	\N	1
15646	1	2021-06-11 13:38:28+00	\N	\N	1
15647	1	2021-06-11 14:16:02+00	\N	\N	1
15648	1	2021-06-11 15:42:49+00	\N	\N	1
15649	1	2021-06-11 16:37:08+00	\N	\N	1
15650	1	2021-06-11 17:29:30+00	\N	\N	1
15651	1	2021-06-11 18:16:59+00	\N	\N	1
15652	1	2021-06-11 19:15:13+00	\N	\N	1
15653	1	2021-06-11 20:43:49+00	\N	\N	1
15654	1	2021-06-11 21:25:32+00	\N	\N	1
15655	1	2021-06-11 22:20:46+00	\N	\N	1
15656	1	2021-06-11 23:48:53+00	\N	\N	1
15657	1	2021-06-12 00:21:29+00	\N	\N	1
15658	1	2021-06-12 01:26:31+00	\N	\N	1
15659	1	2021-06-12 02:08:34+00	\N	\N	1
15660	2	2021-06-11 14:59:06+00	\N	\N	1
15661	2	2021-06-11 18:35:37+00	\N	\N	1
15662	2	2021-06-11 23:25:34+00	\N	\N	1
15663	3	2021-06-12 03:25:59+00	\N	\N	1
15664	6	2021-06-12 02:16:35+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15665	5	2021-06-12 10:58:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15666	1	2021-06-12 11:26:52+00	\N	\N	1
15667	1	2021-06-12 12:50:30+00	\N	\N	1
15668	1	2021-06-12 13:30:39+00	\N	\N	1
15669	1	2021-06-12 14:27:38+00	\N	\N	1
15670	1	2021-06-12 15:33:27+00	\N	\N	1
15671	1	2021-06-12 16:26:54+00	\N	\N	1
15672	1	2021-06-12 17:21:56+00	\N	\N	1
15673	1	2021-06-12 18:42:39+00	\N	\N	1
15674	1	2021-06-12 19:24:44+00	\N	\N	1
15675	1	2021-06-12 20:10:58+00	\N	\N	1
15676	1	2021-06-12 21:31:19+00	\N	\N	1
15677	1	2021-06-12 22:14:47+00	\N	\N	1
15678	1	2021-06-12 23:13:08+00	\N	\N	1
15679	1	2021-06-13 00:43:12+00	\N	\N	1
15680	1	2021-06-13 01:32:23+00	\N	\N	1
15681	1	2021-06-13 02:35:50+00	\N	\N	1
15683	2	2021-06-12 18:36:48+00	\N	\N	1
15684	2	2021-06-12 22:43:32+00	\N	\N	1
15685	3	2021-06-13 01:54:45+00	\N	\N	1
15686	6	2021-06-13 02:05:54+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15687	5	2021-06-13 10:59:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15688	1	2021-06-13 11:28:14+00	\N	\N	1
15689	1	2021-06-13 12:48:02+00	\N	\N	1
15690	1	2021-06-13 13:17:51+00	\N	\N	1
15691	1	2021-06-13 14:49:47+00	\N	\N	1
15692	1	2021-06-13 15:33:17+00	\N	\N	1
15693	1	2021-06-13 16:51:58+00	\N	\N	1
15694	1	2021-06-13 17:22:19+00	\N	\N	1
15695	1	2021-06-13 18:25:01+00	\N	\N	1
15696	1	2021-06-13 19:09:10+00	\N	\N	1
15697	1	2021-06-13 20:19:14+00	\N	\N	1
15698	1	2021-06-13 21:44:17+00	\N	\N	1
15699	1	2021-06-13 22:34:30+00	\N	\N	1
15700	1	2021-06-13 23:21:27+00	\N	\N	1
15701	1	2021-06-14 00:33:26+00	\N	\N	1
15702	1	2021-06-14 01:50:04+00	\N	\N	1
15703	1	2021-06-14 02:49:37+00	\N	\N	1
15704	2	2021-06-13 15:23:31+00	\N	\N	1
15705	2	2021-06-13 18:41:49+00	\N	\N	1
15706	2	2021-06-13 23:16:44+00	\N	\N	1
15707	3	2021-06-14 03:17:05+00	\N	\N	1
15708	6	2021-06-14 02:11:37+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15709	5	2021-06-14 11:19:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15710	1	2021-06-14 11:38:53+00	\N	\N	1
15711	1	2021-06-14 12:36:07+00	\N	\N	1
15712	1	2021-06-14 13:28:25+00	\N	\N	1
15713	1	2021-06-14 14:32:14+00	\N	\N	1
15714	1	2021-06-14 15:12:33+00	\N	\N	1
15715	1	2021-06-14 16:37:24+00	\N	\N	1
15716	1	2021-06-14 17:34:53+00	\N	\N	1
15717	1	2021-06-14 18:52:28+00	\N	\N	1
15718	1	2021-06-14 19:20:53+00	\N	\N	1
15719	1	2021-06-14 20:44:24+00	\N	\N	1
15720	1	2021-06-14 21:49:08+00	\N	\N	1
15721	1	2021-06-14 22:13:47+00	\N	\N	1
15722	1	2021-06-14 23:17:31+00	\N	\N	1
15723	1	2021-06-15 00:30:53+00	\N	\N	1
15724	1	2021-06-15 01:26:31+00	\N	\N	1
15725	1	2021-06-15 02:08:45+00	\N	\N	1
15726	2	2021-06-14 15:00:57+00	\N	\N	1
15727	2	2021-06-14 19:08:18+00	\N	\N	1
15728	2	2021-06-14 23:13:17+00	\N	\N	1
15729	3	2021-06-15 02:35:29+00	\N	\N	1
15730	6	2021-06-15 02:03:15+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15731	5	2021-06-15 11:37:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15732	1	2021-06-15 11:12:36+00	\N	\N	1
15733	1	2021-06-15 12:36:06+00	\N	\N	1
15734	1	2021-06-15 13:23:12+00	\N	\N	1
15735	1	2021-06-15 14:44:28+00	\N	\N	1
15736	1	2021-06-15 15:28:23+00	\N	\N	1
15737	1	2021-06-15 16:19:02+00	\N	\N	1
15738	1	2021-06-15 17:17:46+00	\N	\N	1
15739	1	2021-06-15 18:19:35+00	\N	\N	1
15740	1	2021-06-15 19:17:12+00	\N	\N	1
15741	1	2021-06-15 20:19:13+00	\N	\N	1
15742	1	2021-06-15 21:16:16+00	\N	\N	1
15743	1	2021-06-15 22:10:16+00	\N	\N	1
15744	1	2021-06-15 23:23:48+00	\N	\N	1
15745	1	2021-06-16 00:44:12+00	\N	\N	1
15746	1	2021-06-16 01:47:55+00	\N	\N	1
15747	1	2021-06-16 02:37:31+00	\N	\N	1
15748	2	2021-06-15 15:21:46+00	\N	\N	1
15749	2	2021-06-15 18:45:10+00	\N	\N	1
15750	2	2021-06-15 23:16:22+00	\N	\N	1
15751	3	2021-06-16 01:47:45+00	\N	\N	1
15752	6	2021-06-16 02:39:11+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15753	5	2021-06-16 11:06:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15754	1	2021-06-16 11:19:16+00	\N	\N	1
15755	1	2021-06-16 12:39:46+00	\N	\N	1
15756	1	2021-06-16 13:10:41+00	\N	\N	1
15757	1	2021-06-16 14:19:01+00	\N	\N	1
15758	1	2021-06-16 15:11:59+00	\N	\N	1
15759	1	2021-06-16 16:30:09+00	\N	\N	1
15760	1	2021-06-16 17:49:54+00	\N	\N	1
15761	1	2021-06-16 18:47:19+00	\N	\N	1
15762	1	2021-06-16 19:32:49+00	\N	\N	1
15763	1	2021-06-16 20:28:20+00	\N	\N	1
15764	1	2021-06-16 21:43:13+00	\N	\N	1
15765	1	2021-06-16 22:34:44+00	\N	\N	1
15766	1	2021-06-16 23:18:14+00	\N	\N	1
15767	1	2021-06-17 00:49:47+00	\N	\N	1
15768	1	2021-06-17 01:31:20+00	\N	\N	1
15769	1	2021-06-17 02:51:21+00	\N	\N	1
15770	2	2021-06-16 15:19:41+00	\N	\N	1
15771	2	2021-06-16 19:21:27+00	\N	\N	1
15772	2	2021-06-16 23:03:48+00	\N	\N	1
15773	3	2021-06-17 03:21:59+00	\N	\N	1
15774	6	2021-06-17 01:59:47+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15775	5	2021-06-17 10:33:46+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15776	1	2021-06-17 11:42:47+00	\N	\N	1
15777	1	2021-06-17 12:49:44+00	\N	\N	1
15778	1	2021-06-17 13:37:01+00	\N	\N	1
15779	1	2021-06-17 14:51:52+00	\N	\N	1
15780	1	2021-06-17 15:28:25+00	\N	\N	1
15781	1	2021-06-17 16:12:20+00	\N	\N	1
15782	1	2021-06-17 17:26:51+00	\N	\N	1
15783	1	2021-06-17 18:12:03+00	\N	\N	1
15784	1	2021-06-17 19:44:21+00	\N	\N	1
15785	1	2021-06-17 20:34:23+00	\N	\N	1
15786	1	2021-06-17 21:10:06+00	\N	\N	1
15787	1	2021-06-17 22:20:50+00	\N	\N	1
15788	1	2021-06-17 23:13:44+00	\N	\N	1
15789	1	2021-06-18 00:38:08+00	\N	\N	1
15790	1	2021-06-18 01:29:03+00	\N	\N	1
15791	1	2021-06-18 02:24:26+00	\N	\N	1
15792	2	2021-06-17 15:04:49+00	\N	\N	1
15793	2	2021-06-17 18:51:54+00	\N	\N	1
15794	2	2021-06-17 22:44:52+00	\N	\N	1
15795	3	2021-06-18 02:55:45+00	\N	\N	1
15796	6	2021-06-18 02:50:44+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15797	5	2021-06-18 11:15:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15798	1	2021-06-18 11:37:07+00	\N	\N	1
15799	1	2021-06-18 12:43:51+00	\N	\N	1
15800	1	2021-06-18 13:31:11+00	\N	\N	1
15801	1	2021-06-18 14:34:09+00	\N	\N	1
15802	1	2021-06-18 15:29:40+00	\N	\N	1
15803	1	2021-06-18 16:31:57+00	\N	\N	1
15804	1	2021-06-18 17:36:36+00	\N	\N	1
15805	1	2021-06-18 18:13:22+00	\N	\N	1
15806	1	2021-06-18 19:45:42+00	\N	\N	1
15807	1	2021-06-18 20:36:42+00	\N	\N	1
15808	1	2021-06-18 21:26:06+00	\N	\N	1
15809	1	2021-06-18 22:10:14+00	\N	\N	1
15810	1	2021-06-18 23:34:16+00	\N	\N	1
15811	1	2021-06-19 00:12:55+00	\N	\N	1
15812	1	2021-06-19 01:33:50+00	\N	\N	1
15813	1	2021-06-19 02:44:37+00	\N	\N	1
15814	2	2021-06-18 15:17:26+00	\N	\N	1
15815	2	2021-06-18 18:36:06+00	\N	\N	1
15816	2	2021-06-18 23:07:16+00	\N	\N	1
15817	3	2021-06-19 02:27:37+00	\N	\N	1
15818	6	2021-06-19 02:59:11+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15819	5	2021-06-19 11:03:10+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15820	1	2021-06-19 11:51:48+00	\N	\N	1
15821	1	2021-06-19 12:33:53+00	\N	\N	1
15822	1	2021-06-19 13:42:43+00	\N	\N	1
15823	1	2021-06-19 14:29:05+00	\N	\N	1
15824	1	2021-06-19 15:20:52+00	\N	\N	1
15825	1	2021-06-19 16:29:08+00	\N	\N	1
15826	1	2021-06-19 17:35:11+00	\N	\N	1
15827	1	2021-06-19 18:43:03+00	\N	\N	1
15828	1	2021-06-19 19:30:27+00	\N	\N	1
15829	1	2021-06-19 20:22:48+00	\N	\N	1
15830	1	2021-06-19 21:33:32+00	\N	\N	1
15831	1	2021-06-19 22:19:49+00	\N	\N	1
15832	1	2021-06-19 23:36:08+00	\N	\N	1
15833	1	2021-06-20 00:21:23+00	\N	\N	1
15834	1	2021-06-20 01:48:35+00	\N	\N	1
15835	1	2021-06-20 02:14:06+00	\N	\N	1
15836	2	2021-06-19 14:43:07+00	\N	\N	1
15837	2	2021-06-19 19:00:02+00	\N	\N	1
15838	2	2021-06-19 22:31:30+00	\N	\N	1
15839	3	2021-06-20 03:24:10+00	\N	\N	1
15840	6	2021-06-20 02:36:06+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15841	5	2021-06-20 11:14:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15842	1	2021-06-20 11:25:44+00	\N	\N	1
15843	1	2021-06-20 12:46:56+00	\N	\N	1
15844	1	2021-06-20 13:14:40+00	\N	\N	1
15845	1	2021-06-20 14:21:32+00	\N	\N	1
15846	1	2021-06-20 15:29:12+00	\N	\N	1
15847	1	2021-06-20 16:37:09+00	\N	\N	1
15848	1	2021-06-20 17:35:14+00	\N	\N	1
15849	1	2021-06-20 18:30:24+00	\N	\N	1
15850	1	2021-06-20 19:26:55+00	\N	\N	1
15851	1	2021-06-20 20:17:22+00	\N	\N	1
15852	1	2021-06-20 21:39:52+00	\N	\N	1
15853	1	2021-06-20 22:37:23+00	\N	\N	1
15854	1	2021-06-20 23:35:03+00	\N	\N	1
15855	1	2021-06-21 00:11:54+00	\N	\N	1
15856	1	2021-06-21 01:10:47+00	\N	\N	1
15857	1	2021-06-21 02:32:42+00	\N	\N	1
15858	2	2021-06-20 14:59:55+00	\N	\N	1
15859	2	2021-06-20 19:02:04+00	\N	\N	1
15860	2	2021-06-20 22:49:30+00	\N	\N	1
15861	3	2021-06-21 02:27:14+00	\N	\N	1
15862	6	2021-06-21 02:27:49+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15863	5	2021-06-21 11:11:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15864	1	2021-06-21 11:41:36+00	\N	\N	1
15865	1	2021-06-21 12:09:41+00	\N	\N	1
15866	1	2021-06-21 13:52:19+00	\N	\N	1
15867	1	2021-06-21 14:21:58+00	\N	\N	1
15868	1	2021-06-21 15:51:32+00	\N	\N	1
15869	1	2021-06-21 16:26:50+00	\N	\N	1
15870	1	2021-06-21 17:45:51+00	\N	\N	1
15871	1	2021-06-21 18:30:33+00	\N	\N	1
15872	1	2021-06-21 19:18:07+00	\N	\N	1
15873	1	2021-06-21 20:43:07+00	\N	\N	1
15874	1	2021-06-21 21:11:46+00	\N	\N	1
15875	1	2021-06-21 22:43:36+00	\N	\N	1
15876	1	2021-06-21 23:25:32+00	\N	\N	1
15877	1	2021-06-22 00:30:32+00	\N	\N	1
15878	1	2021-06-22 01:33:56+00	\N	\N	1
15879	1	2021-06-22 02:09:54+00	\N	\N	1
15880	2	2021-06-21 15:01:03+00	\N	\N	1
15881	2	2021-06-21 19:18:27+00	\N	\N	1
15882	2	2021-06-21 22:41:18+00	\N	\N	1
15883	3	2021-06-22 03:28:31+00	\N	\N	1
15984	1	2021-06-26 21:31:01+00	\N	\N	1
15985	1	2021-06-26 22:30:59+00	\N	\N	1
15986	1	2021-06-26 23:29:34+00	\N	\N	1
15987	1	2021-06-27 00:08:55+00	\N	\N	1
15988	1	2021-06-27 01:16:47+00	\N	\N	1
15989	1	2021-06-27 02:23:26+00	\N	\N	1
15884	6	2021-06-22 02:37:51+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15885	5	2021-06-22 11:41:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15886	1	2021-06-22 11:19:05+00	\N	\N	1
15887	1	2021-06-22 12:40:40+00	\N	\N	1
15888	1	2021-06-22 13:29:06+00	\N	\N	1
15889	1	2021-06-22 14:25:31+00	\N	\N	1
15890	1	2021-06-22 15:43:05+00	\N	\N	1
15891	1	2021-06-22 16:40:37+00	\N	\N	1
15892	1	2021-06-22 17:46:43+00	\N	\N	1
15893	1	2021-06-22 18:28:20+00	\N	\N	1
15894	1	2021-06-22 19:12:28+00	\N	\N	1
15895	1	2021-06-22 20:19:14+00	\N	\N	1
15896	1	2021-06-22 21:47:32+00	\N	\N	1
15897	1	2021-06-22 22:45:56+00	\N	\N	1
15898	1	2021-06-22 23:26:09+00	\N	\N	1
15899	1	2021-06-23 00:29:59+00	\N	\N	1
15900	1	2021-06-23 01:13:21+00	\N	\N	1
15901	1	2021-06-23 02:13:11+00	\N	\N	1
15902	2	2021-06-22 15:17:33+00	\N	\N	1
15903	2	2021-06-22 18:40:56+00	\N	\N	1
15904	2	2021-06-22 23:16:06+00	\N	\N	1
15905	3	2021-06-23 02:27:59+00	\N	\N	1
15906	6	2021-06-23 02:07:06+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15907	5	2021-06-23 11:07:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15908	1	2021-06-23 11:41:15+00	\N	\N	1
15909	1	2021-06-23 12:37:23+00	\N	\N	1
15910	1	2021-06-23 13:18:03+00	\N	\N	1
15911	1	2021-06-23 14:18:12+00	\N	\N	1
15912	1	2021-06-23 15:29:21+00	\N	\N	1
15913	1	2021-06-23 16:35:39+00	\N	\N	1
15914	1	2021-06-23 17:17:09+00	\N	\N	1
15915	1	2021-06-23 18:50:11+00	\N	\N	1
15916	1	2021-06-23 19:17:09+00	\N	\N	1
15917	1	2021-06-23 20:41:05+00	\N	\N	1
15918	1	2021-06-23 21:09:06+00	\N	\N	1
15919	1	2021-06-23 22:22:07+00	\N	\N	1
15920	1	2021-06-23 23:43:59+00	\N	\N	1
15921	1	2021-06-24 00:21:20+00	\N	\N	1
15922	1	2021-06-24 01:42:29+00	\N	\N	1
15923	1	2021-06-24 02:29:40+00	\N	\N	1
15924	2	2021-06-23 15:08:51+00	\N	\N	1
15925	2	2021-06-23 18:46:22+00	\N	\N	1
15926	2	2021-06-23 22:42:43+00	\N	\N	1
15927	3	2021-06-24 02:53:20+00	\N	\N	1
15928	6	2021-06-24 03:09:44+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15929	5	2021-06-24 11:25:26+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15930	1	2021-06-24 11:46:16+00	\N	\N	1
15931	1	2021-06-24 12:50:43+00	\N	\N	1
15932	1	2021-06-24 13:44:59+00	\N	\N	1
15933	1	2021-06-24 14:46:53+00	\N	\N	1
15934	1	2021-06-24 15:12:52+00	\N	\N	1
15935	1	2021-06-24 16:36:15+00	\N	\N	1
15936	1	2021-06-24 17:36:08+00	\N	\N	1
15937	1	2021-06-24 18:45:32+00	\N	\N	1
15938	1	2021-06-24 19:16:05+00	\N	\N	1
15939	1	2021-06-24 20:47:31+00	\N	\N	1
15940	1	2021-06-24 21:07:39+00	\N	\N	1
15941	1	2021-06-24 22:13:26+00	\N	\N	1
15942	1	2021-06-24 23:50:51+00	\N	\N	1
15943	1	2021-06-25 00:18:04+00	\N	\N	1
15944	1	2021-06-25 01:21:09+00	\N	\N	1
15945	1	2021-06-25 02:27:19+00	\N	\N	1
15946	2	2021-06-24 15:04:24+00	\N	\N	1
15947	2	2021-06-24 19:06:44+00	\N	\N	1
15948	2	2021-06-24 22:37:22+00	\N	\N	1
15949	3	2021-06-25 03:04:02+00	\N	\N	1
15950	6	2021-06-25 02:16:10+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15951	5	2021-06-25 12:15:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15952	1	2021-06-25 11:20:49+00	\N	\N	1
15953	1	2021-06-25 12:17:55+00	\N	\N	1
15954	1	2021-06-25 13:34:54+00	\N	\N	1
15955	1	2021-06-25 14:09:46+00	\N	\N	1
15956	1	2021-06-25 15:14:25+00	\N	\N	1
15957	1	2021-06-25 16:40:30+00	\N	\N	1
15958	1	2021-06-25 17:24:20+00	\N	\N	1
15959	1	2021-06-25 18:34:49+00	\N	\N	1
15960	1	2021-06-25 19:36:33+00	\N	\N	1
15961	1	2021-06-25 20:22:09+00	\N	\N	1
15962	1	2021-06-25 21:11:01+00	\N	\N	1
15963	1	2021-06-25 22:22:23+00	\N	\N	1
15964	1	2021-06-25 23:08:07+00	\N	\N	1
15965	1	2021-06-26 00:25:06+00	\N	\N	1
15966	1	2021-06-26 01:25:18+00	\N	\N	1
15967	1	2021-06-26 02:41:54+00	\N	\N	1
15968	2	2021-06-25 15:16:39+00	\N	\N	1
15969	2	2021-06-25 19:00:19+00	\N	\N	1
15970	2	2021-06-25 23:22:28+00	\N	\N	1
15971	3	2021-06-26 01:50:32+00	\N	\N	1
15972	6	2021-06-26 03:07:24+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15973	5	2021-06-26 11:52:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15974	1	2021-06-26 11:29:48+00	\N	\N	1
15975	1	2021-06-26 12:36:04+00	\N	\N	1
15976	1	2021-06-26 13:25:54+00	\N	\N	1
15977	1	2021-06-26 14:36:19+00	\N	\N	1
15978	1	2021-06-26 15:09:16+00	\N	\N	1
15979	1	2021-06-26 16:45:42+00	\N	\N	1
15980	1	2021-06-26 17:09:43+00	\N	\N	1
15981	1	2021-06-26 18:30:21+00	\N	\N	1
15982	1	2021-06-26 19:33:03+00	\N	\N	1
15983	1	2021-06-26 20:42:58+00	\N	\N	1
15990	2	2021-06-26 15:08:17+00	\N	\N	1
15991	2	2021-06-26 18:49:49+00	\N	\N	1
15992	2	2021-06-26 22:42:57+00	\N	\N	1
15993	3	2021-06-27 02:45:12+00	\N	\N	1
15994	6	2021-06-27 01:48:07+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
15995	5	2021-06-27 11:24:05+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
15996	1	2021-06-27 11:29:52+00	\N	\N	1
15997	1	2021-06-27 12:48:48+00	\N	\N	1
15998	1	2021-06-27 13:49:02+00	\N	\N	1
15999	1	2021-06-27 14:21:23+00	\N	\N	1
16000	1	2021-06-27 15:14:55+00	\N	\N	1
16001	1	2021-06-27 16:29:00+00	\N	\N	1
16002	1	2021-06-27 17:12:34+00	\N	\N	1
16003	1	2021-06-27 18:49:14+00	\N	\N	1
16004	1	2021-06-27 19:07:37+00	\N	\N	1
16005	1	2021-06-27 20:21:32+00	\N	\N	1
16006	1	2021-06-27 21:39:15+00	\N	\N	1
16007	1	2021-06-27 22:17:34+00	\N	\N	1
16008	1	2021-06-27 23:09:22+00	\N	\N	1
16009	1	2021-06-28 00:15:49+00	\N	\N	1
16010	1	2021-06-28 01:35:26+00	\N	\N	1
16011	1	2021-06-28 02:25:32+00	\N	\N	1
16012	2	2021-06-27 14:42:06+00	\N	\N	1
16013	2	2021-06-27 18:42:19+00	\N	\N	1
16014	2	2021-06-27 22:31:20+00	\N	\N	1
16015	3	2021-06-28 02:46:41+00	\N	\N	1
16016	6	2021-06-28 02:31:11+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16017	5	2021-06-28 12:11:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16018	1	2021-06-28 11:23:30+00	\N	\N	1
16019	1	2021-06-28 12:38:55+00	\N	\N	1
16020	1	2021-06-28 13:11:14+00	\N	\N	1
16021	1	2021-06-28 14:50:20+00	\N	\N	1
16022	1	2021-06-28 15:32:39+00	\N	\N	1
16023	1	2021-06-28 16:26:10+00	\N	\N	1
16024	1	2021-06-28 17:31:24+00	\N	\N	1
16025	1	2021-06-28 18:34:24+00	\N	\N	1
16026	1	2021-06-28 19:11:41+00	\N	\N	1
16027	1	2021-06-28 20:43:50+00	\N	\N	1
16028	1	2021-06-28 21:10:27+00	\N	\N	1
16029	1	2021-06-28 22:27:37+00	\N	\N	1
16030	1	2021-06-28 23:48:09+00	\N	\N	1
16031	1	2021-06-29 00:24:15+00	\N	\N	1
16032	1	2021-06-29 01:41:25+00	\N	\N	1
16033	1	2021-06-29 02:48:41+00	\N	\N	1
16034	2	2021-06-28 14:44:39+00	\N	\N	1
16035	2	2021-06-28 19:07:54+00	\N	\N	1
16036	2	2021-06-28 22:46:41+00	\N	\N	1
16037	3	2021-06-29 02:27:13+00	\N	\N	1
16038	6	2021-06-29 01:47:54+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16039	5	2021-06-29 11:32:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16040	1	2021-06-29 11:24:00+00	\N	\N	1
16041	1	2021-06-29 12:25:29+00	\N	\N	1
16042	1	2021-06-29 13:43:28+00	\N	\N	1
16043	1	2021-06-29 14:38:02+00	\N	\N	1
16044	1	2021-06-29 15:50:06+00	\N	\N	1
16045	1	2021-06-29 16:12:01+00	\N	\N	1
16046	1	2021-06-29 17:50:46+00	\N	\N	1
16047	1	2021-06-29 18:35:50+00	\N	\N	1
16048	1	2021-06-29 19:43:51+00	\N	\N	1
16049	1	2021-06-29 20:29:57+00	\N	\N	1
16050	1	2021-06-29 21:20:00+00	\N	\N	1
16051	1	2021-06-29 22:35:00+00	\N	\N	1
16052	1	2021-06-29 23:22:10+00	\N	\N	1
16053	1	2021-06-30 00:43:04+00	\N	\N	1
16054	1	2021-06-30 01:35:47+00	\N	\N	1
16055	1	2021-06-30 02:32:29+00	\N	\N	1
16056	2	2021-06-29 14:34:09+00	\N	\N	1
16057	2	2021-06-29 18:41:59+00	\N	\N	1
16058	2	2021-06-29 23:03:21+00	\N	\N	1
16059	3	2021-06-30 03:15:25+00	\N	\N	1
16060	6	2021-06-30 03:01:26+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16061	5	2021-06-30 11:20:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16062	1	2021-06-30 11:43:39+00	\N	\N	1
16063	1	2021-06-30 12:42:25+00	\N	\N	1
16064	1	2021-06-30 13:39:24+00	\N	\N	1
16065	1	2021-06-30 14:49:44+00	\N	\N	1
16066	1	2021-06-30 15:33:38+00	\N	\N	1
16067	1	2021-06-30 16:47:14+00	\N	\N	1
16068	1	2021-06-30 17:51:40+00	\N	\N	1
16069	1	2021-06-30 18:34:09+00	\N	\N	1
16070	1	2021-06-30 19:20:19+00	\N	\N	1
16071	1	2021-06-30 20:28:47+00	\N	\N	1
16072	1	2021-06-30 21:27:40+00	\N	\N	1
16073	1	2021-06-30 22:36:18+00	\N	\N	1
16074	1	2021-06-30 23:21:07+00	\N	\N	1
16075	1	2021-07-01 00:31:56+00	\N	\N	1
16076	1	2021-07-01 01:38:50+00	\N	\N	1
16077	1	2021-07-01 02:36:25+00	\N	\N	1
16078	2	2021-06-30 15:06:39+00	\N	\N	1
16079	2	2021-06-30 19:00:16+00	\N	\N	1
16080	2	2021-06-30 22:59:41+00	\N	\N	1
16081	3	2021-07-01 03:14:18+00	\N	\N	1
16082	6	2021-07-01 02:29:53+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16083	5	2021-07-01 10:38:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16084	1	2021-07-01 11:30:42+00	\N	\N	1
16085	1	2021-07-01 12:21:46+00	\N	\N	1
16086	1	2021-07-01 13:36:14+00	\N	\N	1
16087	1	2021-07-01 14:50:09+00	\N	\N	1
16088	1	2021-07-01 15:12:48+00	\N	\N	1
16089	1	2021-07-01 16:11:01+00	\N	\N	1
16090	1	2021-07-01 17:28:44+00	\N	\N	1
16091	1	2021-07-01 18:16:28+00	\N	\N	1
16092	1	2021-07-01 19:43:39+00	\N	\N	1
16093	1	2021-07-01 20:30:10+00	\N	\N	1
16094	1	2021-07-01 21:19:10+00	\N	\N	1
16095	1	2021-07-01 22:18:50+00	\N	\N	1
16096	1	2021-07-01 23:26:32+00	\N	\N	1
16097	1	2021-07-02 00:19:23+00	\N	\N	1
16098	1	2021-07-02 01:29:07+00	\N	\N	1
16099	1	2021-07-02 02:40:03+00	\N	\N	1
16100	2	2021-07-01 14:31:10+00	\N	\N	1
16101	2	2021-07-01 18:46:15+00	\N	\N	1
16102	2	2021-07-01 22:33:36+00	\N	\N	1
16103	3	2021-07-02 01:32:55+00	\N	\N	1
16104	6	2021-07-02 02:26:02+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16105	5	2021-07-02 10:44:20+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16106	1	2021-07-02 11:35:26+00	\N	\N	1
16107	1	2021-07-02 12:17:34+00	\N	\N	1
16108	1	2021-07-02 13:36:18+00	\N	\N	1
16109	1	2021-07-02 14:32:38+00	\N	\N	1
16110	1	2021-07-02 15:13:14+00	\N	\N	1
16111	1	2021-07-02 16:48:34+00	\N	\N	1
16112	1	2021-07-02 17:18:33+00	\N	\N	1
16113	1	2021-07-02 18:43:36+00	\N	\N	1
16114	1	2021-07-02 19:23:11+00	\N	\N	1
16115	1	2021-07-02 20:32:04+00	\N	\N	1
16116	1	2021-07-02 21:23:18+00	\N	\N	1
16117	1	2021-07-02 22:27:07+00	\N	\N	1
16118	1	2021-07-02 23:33:08+00	\N	\N	1
16119	1	2021-07-03 00:44:49+00	\N	\N	1
16120	1	2021-07-03 01:35:21+00	\N	\N	1
16121	1	2021-07-03 02:39:04+00	\N	\N	1
16122	2	2021-07-02 15:11:11+00	\N	\N	1
16123	2	2021-07-02 18:56:18+00	\N	\N	1
16124	2	2021-07-02 22:32:50+00	\N	\N	1
16125	3	2021-07-03 02:47:24+00	\N	\N	1
16126	6	2021-07-03 02:12:15+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16127	5	2021-07-03 12:16:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16128	1	2021-07-03 11:42:22+00	\N	\N	1
16129	1	2021-07-03 12:42:23+00	\N	\N	1
16130	1	2021-07-03 13:44:18+00	\N	\N	1
16131	1	2021-07-03 14:46:36+00	\N	\N	1
16132	1	2021-07-03 15:29:04+00	\N	\N	1
16133	1	2021-07-03 16:14:24+00	\N	\N	1
16134	1	2021-07-03 17:47:39+00	\N	\N	1
16135	1	2021-07-03 18:16:50+00	\N	\N	1
16136	1	2021-07-03 19:32:00+00	\N	\N	1
16137	1	2021-07-03 20:17:26+00	\N	\N	1
16138	1	2021-07-03 21:34:39+00	\N	\N	1
16139	1	2021-07-03 22:26:19+00	\N	\N	1
16140	1	2021-07-03 23:21:02+00	\N	\N	1
16141	1	2021-07-04 00:49:03+00	\N	\N	1
16142	1	2021-07-04 01:38:13+00	\N	\N	1
16143	1	2021-07-04 02:47:47+00	\N	\N	1
16144	2	2021-07-03 14:52:53+00	\N	\N	1
16145	2	2021-07-03 19:07:59+00	\N	\N	1
16146	2	2021-07-03 23:02:24+00	\N	\N	1
16147	3	2021-07-04 02:15:46+00	\N	\N	1
16148	6	2021-07-04 02:23:50+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16149	5	2021-07-04 11:10:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16150	1	2021-07-04 11:16:35+00	\N	\N	1
16151	1	2021-07-04 12:23:50+00	\N	\N	1
16152	1	2021-07-04 13:37:10+00	\N	\N	1
16153	1	2021-07-04 14:35:24+00	\N	\N	1
16154	1	2021-07-04 15:44:50+00	\N	\N	1
16155	1	2021-07-04 16:42:53+00	\N	\N	1
16156	1	2021-07-04 17:18:55+00	\N	\N	1
16157	1	2021-07-04 18:38:36+00	\N	\N	1
16158	1	2021-07-04 19:13:28+00	\N	\N	1
16159	1	2021-07-04 20:46:24+00	\N	\N	1
16160	1	2021-07-04 21:24:09+00	\N	\N	1
16161	1	2021-07-04 22:45:47+00	\N	\N	1
16162	1	2021-07-04 23:24:40+00	\N	\N	1
16163	1	2021-07-05 00:15:54+00	\N	\N	1
16164	1	2021-07-05 01:15:45+00	\N	\N	1
16165	1	2021-07-05 02:44:06+00	\N	\N	1
16166	2	2021-07-04 15:15:02+00	\N	\N	1
16167	2	2021-07-04 19:25:26+00	\N	\N	1
16168	2	2021-07-04 23:21:32+00	\N	\N	1
16169	3	2021-07-05 02:42:19+00	\N	\N	1
16170	6	2021-07-05 03:09:49+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16171	5	2021-07-05 12:16:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16172	1	2021-07-05 11:24:04+00	\N	\N	1
16173	1	2021-07-05 12:32:53+00	\N	\N	1
16174	1	2021-07-05 13:11:02+00	\N	\N	1
16175	1	2021-07-05 14:09:35+00	\N	\N	1
16176	1	2021-07-05 15:19:57+00	\N	\N	1
16177	1	2021-07-05 16:39:23+00	\N	\N	1
16178	1	2021-07-05 17:15:54+00	\N	\N	1
16179	1	2021-07-05 18:10:03+00	\N	\N	1
16180	1	2021-07-05 19:52:07+00	\N	\N	1
16181	1	2021-07-05 20:35:28+00	\N	\N	1
16182	1	2021-07-05 21:43:36+00	\N	\N	1
16183	1	2021-07-05 22:51:06+00	\N	\N	1
16184	1	2021-07-05 23:33:13+00	\N	\N	1
16185	1	2021-07-06 00:29:10+00	\N	\N	1
16186	1	2021-07-06 01:40:02+00	\N	\N	1
16187	1	2021-07-06 02:12:03+00	\N	\N	1
16188	2	2021-07-05 15:05:31+00	\N	\N	1
16189	2	2021-07-05 19:23:00+00	\N	\N	1
16190	2	2021-07-05 23:24:03+00	\N	\N	1
16191	3	2021-07-06 02:05:05+00	\N	\N	1
16292	1	2021-07-10 21:13:41+00	\N	\N	1
16293	1	2021-07-10 22:27:07+00	\N	\N	1
16294	1	2021-07-10 23:31:12+00	\N	\N	1
16295	1	2021-07-11 00:51:10+00	\N	\N	1
16296	1	2021-07-11 01:21:57+00	\N	\N	1
16192	6	2021-07-06 02:02:47+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16193	5	2021-07-06 11:29:49+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16194	1	2021-07-06 11:23:36+00	\N	\N	1
16195	1	2021-07-06 12:47:43+00	\N	\N	1
16196	1	2021-07-06 13:20:24+00	\N	\N	1
16197	1	2021-07-06 14:17:18+00	\N	\N	1
16198	1	2021-07-06 15:24:59+00	\N	\N	1
16199	1	2021-07-06 16:29:59+00	\N	\N	1
16200	1	2021-07-06 17:09:32+00	\N	\N	1
16201	1	2021-07-06 18:40:55+00	\N	\N	1
16202	1	2021-07-06 19:37:45+00	\N	\N	1
16203	1	2021-07-06 20:32:46+00	\N	\N	1
16204	1	2021-07-06 21:38:00+00	\N	\N	1
16205	1	2021-07-06 22:43:10+00	\N	\N	1
16206	1	2021-07-06 23:11:08+00	\N	\N	1
16207	1	2021-07-07 00:10:32+00	\N	\N	1
16208	1	2021-07-07 01:35:17+00	\N	\N	1
16209	1	2021-07-07 02:40:31+00	\N	\N	1
16210	2	2021-07-06 14:42:51+00	\N	\N	1
16211	2	2021-07-06 19:15:08+00	\N	\N	1
16212	2	2021-07-06 22:56:36+00	\N	\N	1
16213	3	2021-07-07 01:49:33+00	\N	\N	1
16214	6	2021-07-07 01:52:06+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16215	5	2021-07-07 11:35:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16216	1	2021-07-07 11:32:04+00	\N	\N	1
16217	1	2021-07-07 12:41:41+00	\N	\N	1
16218	1	2021-07-07 13:07:56+00	\N	\N	1
16219	1	2021-07-07 14:18:25+00	\N	\N	1
16220	1	2021-07-07 15:46:26+00	\N	\N	1
16221	1	2021-07-07 16:16:45+00	\N	\N	1
16222	1	2021-07-07 17:48:15+00	\N	\N	1
16223	1	2021-07-07 18:38:56+00	\N	\N	1
16224	1	2021-07-07 19:39:57+00	\N	\N	1
16225	1	2021-07-07 20:38:39+00	\N	\N	1
16226	1	2021-07-07 21:52:13+00	\N	\N	1
16227	1	2021-07-07 22:39:39+00	\N	\N	1
16228	1	2021-07-07 23:21:00+00	\N	\N	1
16229	1	2021-07-08 00:40:54+00	\N	\N	1
16230	1	2021-07-08 01:48:42+00	\N	\N	1
16231	1	2021-07-08 02:45:00+00	\N	\N	1
16232	2	2021-07-07 15:12:35+00	\N	\N	1
16233	2	2021-07-07 19:09:50+00	\N	\N	1
16234	2	2021-07-07 23:09:41+00	\N	\N	1
16235	3	2021-07-08 02:19:35+00	\N	\N	1
16236	6	2021-07-08 01:48:40+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16237	5	2021-07-08 12:06:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16238	1	2021-07-08 11:21:03+00	\N	\N	1
16239	1	2021-07-08 12:11:26+00	\N	\N	1
16240	1	2021-07-08 13:16:44+00	\N	\N	1
16241	1	2021-07-08 14:14:40+00	\N	\N	1
16242	1	2021-07-08 15:30:37+00	\N	\N	1
16243	1	2021-07-08 16:23:22+00	\N	\N	1
16244	1	2021-07-08 17:36:47+00	\N	\N	1
16245	1	2021-07-08 18:43:17+00	\N	\N	1
16246	1	2021-07-08 19:20:58+00	\N	\N	1
16247	1	2021-07-08 20:08:19+00	\N	\N	1
16248	1	2021-07-08 21:32:28+00	\N	\N	1
16249	1	2021-07-08 22:47:02+00	\N	\N	1
16250	1	2021-07-08 23:08:28+00	\N	\N	1
16251	1	2021-07-09 00:14:47+00	\N	\N	1
16252	1	2021-07-09 01:50:57+00	\N	\N	1
16253	1	2021-07-09 02:28:21+00	\N	\N	1
16254	2	2021-07-08 14:46:28+00	\N	\N	1
16255	2	2021-07-08 18:39:55+00	\N	\N	1
16256	2	2021-07-08 23:08:54+00	\N	\N	1
16257	3	2021-07-09 03:08:29+00	\N	\N	1
16258	6	2021-07-09 02:13:11+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16259	5	2021-07-09 10:45:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16260	1	2021-07-09 11:32:02+00	\N	\N	1
16261	1	2021-07-09 12:30:46+00	\N	\N	1
16262	1	2021-07-09 13:19:22+00	\N	\N	1
16263	1	2021-07-09 14:30:09+00	\N	\N	1
16264	1	2021-07-09 15:38:09+00	\N	\N	1
16265	1	2021-07-09 16:45:42+00	\N	\N	1
16266	1	2021-07-09 17:14:04+00	\N	\N	1
16267	1	2021-07-09 18:13:32+00	\N	\N	1
16268	1	2021-07-09 19:52:01+00	\N	\N	1
16269	1	2021-07-09 20:43:49+00	\N	\N	1
16270	1	2021-07-09 21:47:08+00	\N	\N	1
16271	1	2021-07-09 22:17:12+00	\N	\N	1
16272	1	2021-07-09 23:44:17+00	\N	\N	1
16273	1	2021-07-10 00:43:39+00	\N	\N	1
16274	1	2021-07-10 01:16:37+00	\N	\N	1
16275	1	2021-07-10 02:52:02+00	\N	\N	1
16276	2	2021-07-09 14:58:12+00	\N	\N	1
16277	2	2021-07-09 18:42:58+00	\N	\N	1
16278	2	2021-07-09 22:56:56+00	\N	\N	1
16279	3	2021-07-10 02:16:42+00	\N	\N	1
16280	6	2021-07-10 02:37:58+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16281	5	2021-07-10 11:33:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16282	1	2021-07-10 11:26:32+00	\N	\N	1
16283	1	2021-07-10 12:29:47+00	\N	\N	1
16284	1	2021-07-10 13:44:31+00	\N	\N	1
16285	1	2021-07-10 14:31:33+00	\N	\N	1
16286	1	2021-07-10 15:12:34+00	\N	\N	1
16287	1	2021-07-10 16:24:22+00	\N	\N	1
16288	1	2021-07-10 17:38:22+00	\N	\N	1
16289	1	2021-07-10 18:22:24+00	\N	\N	1
16290	1	2021-07-10 19:24:06+00	\N	\N	1
16291	1	2021-07-10 20:18:11+00	\N	\N	1
16297	1	2021-07-11 02:52:15+00	\N	\N	1
16298	2	2021-07-10 15:15:46+00	\N	\N	1
16299	2	2021-07-10 18:43:02+00	\N	\N	1
16300	2	2021-07-10 23:00:04+00	\N	\N	1
16301	3	2021-07-11 02:46:12+00	\N	\N	1
16302	6	2021-07-11 02:40:08+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16303	5	2021-07-11 10:39:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16304	1	2021-07-11 11:21:45+00	\N	\N	1
16305	1	2021-07-11 12:45:49+00	\N	\N	1
16306	1	2021-07-11 13:07:38+00	\N	\N	1
16307	1	2021-07-11 14:33:38+00	\N	\N	1
16308	1	2021-07-11 15:21:52+00	\N	\N	1
16309	1	2021-07-11 16:11:19+00	\N	\N	1
16310	1	2021-07-11 17:45:43+00	\N	\N	1
16311	1	2021-07-11 18:39:47+00	\N	\N	1
16312	1	2021-07-11 19:41:35+00	\N	\N	1
16313	1	2021-07-11 20:17:08+00	\N	\N	1
16314	1	2021-07-11 21:15:37+00	\N	\N	1
16315	1	2021-07-11 22:23:37+00	\N	\N	1
16316	1	2021-07-11 23:16:18+00	\N	\N	1
16317	1	2021-07-12 00:15:16+00	\N	\N	1
16318	1	2021-07-12 01:38:12+00	\N	\N	1
16319	1	2021-07-12 02:43:03+00	\N	\N	1
16320	2	2021-07-11 14:48:10+00	\N	\N	1
16321	2	2021-07-11 19:17:04+00	\N	\N	1
16322	2	2021-07-11 23:25:22+00	\N	\N	1
16323	3	2021-07-12 02:52:05+00	\N	\N	1
16324	6	2021-07-12 01:50:22+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16325	5	2021-07-12 11:11:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16326	1	2021-07-12 11:29:29+00	\N	\N	1
16327	1	2021-07-12 12:46:00+00	\N	\N	1
16328	1	2021-07-12 13:27:16+00	\N	\N	1
16329	1	2021-07-12 14:36:52+00	\N	\N	1
16330	1	2021-07-12 15:32:22+00	\N	\N	1
16331	1	2021-07-12 16:14:26+00	\N	\N	1
16332	1	2021-07-12 17:32:41+00	\N	\N	1
16333	1	2021-07-12 18:22:16+00	\N	\N	1
16334	1	2021-07-12 19:48:42+00	\N	\N	1
16335	1	2021-07-12 20:12:35+00	\N	\N	1
16336	1	2021-07-12 21:12:51+00	\N	\N	1
16337	1	2021-07-12 22:26:43+00	\N	\N	1
16338	1	2021-07-12 23:40:52+00	\N	\N	1
16339	1	2021-07-13 00:15:00+00	\N	\N	1
16340	1	2021-07-13 01:25:41+00	\N	\N	1
16341	1	2021-07-13 02:17:03+00	\N	\N	1
16342	2	2021-07-12 15:02:34+00	\N	\N	1
16343	2	2021-07-12 19:14:45+00	\N	\N	1
16344	2	2021-07-12 22:32:24+00	\N	\N	1
16345	3	2021-07-13 03:17:26+00	\N	\N	1
16346	6	2021-07-13 02:16:52+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16347	5	2021-07-13 10:53:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16348	1	2021-07-13 11:21:26+00	\N	\N	1
16349	1	2021-07-13 12:32:04+00	\N	\N	1
16350	1	2021-07-13 13:21:40+00	\N	\N	1
16351	1	2021-07-13 14:20:04+00	\N	\N	1
16352	1	2021-07-13 15:47:26+00	\N	\N	1
16353	1	2021-07-13 16:12:30+00	\N	\N	1
16354	1	2021-07-13 17:28:21+00	\N	\N	1
16355	1	2021-07-13 18:11:15+00	\N	\N	1
16356	1	2021-07-13 19:13:31+00	\N	\N	1
16357	1	2021-07-13 20:34:38+00	\N	\N	1
16358	1	2021-07-13 21:42:07+00	\N	\N	1
16359	1	2021-07-13 22:48:00+00	\N	\N	1
16360	1	2021-07-13 23:50:59+00	\N	\N	1
16361	1	2021-07-14 00:49:42+00	\N	\N	1
16362	1	2021-07-14 01:32:19+00	\N	\N	1
16363	1	2021-07-14 02:15:46+00	\N	\N	1
16364	2	2021-07-13 15:07:56+00	\N	\N	1
16365	2	2021-07-13 19:01:29+00	\N	\N	1
16366	2	2021-07-13 23:03:20+00	\N	\N	1
16367	3	2021-07-14 03:09:58+00	\N	\N	1
16368	6	2021-07-14 02:34:55+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16369	5	2021-07-14 10:56:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16370	1	2021-07-14 11:18:23+00	\N	\N	1
16371	1	2021-07-14 12:41:32+00	\N	\N	1
16372	1	2021-07-14 13:42:12+00	\N	\N	1
16373	1	2021-07-14 14:23:08+00	\N	\N	1
16374	1	2021-07-14 15:49:29+00	\N	\N	1
16375	1	2021-07-14 16:33:23+00	\N	\N	1
16376	1	2021-07-14 17:49:58+00	\N	\N	1
16377	1	2021-07-14 18:49:55+00	\N	\N	1
16378	1	2021-07-14 19:39:25+00	\N	\N	1
16379	1	2021-07-14 20:15:03+00	\N	\N	1
16380	1	2021-07-14 21:31:14+00	\N	\N	1
16381	1	2021-07-14 22:13:48+00	\N	\N	1
16382	1	2021-07-14 23:51:19+00	\N	\N	1
16383	1	2021-07-15 00:47:49+00	\N	\N	1
16384	1	2021-07-15 01:41:07+00	\N	\N	1
16385	1	2021-07-15 02:15:22+00	\N	\N	1
16386	2	2021-07-14 15:12:37+00	\N	\N	1
16387	2	2021-07-14 19:07:03+00	\N	\N	1
16388	2	2021-07-14 22:59:14+00	\N	\N	1
16389	3	2021-07-15 01:30:17+00	\N	\N	1
16390	6	2021-07-15 03:03:37+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16391	5	2021-07-15 11:25:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16392	1	2021-07-15 11:25:34+00	\N	\N	1
16393	1	2021-07-15 12:43:07+00	\N	\N	1
16394	1	2021-07-15 13:44:22+00	\N	\N	1
16395	1	2021-07-15 14:49:30+00	\N	\N	1
16396	1	2021-07-15 15:11:08+00	\N	\N	1
16397	1	2021-07-15 16:11:50+00	\N	\N	1
16398	1	2021-07-15 17:39:34+00	\N	\N	1
16399	1	2021-07-15 18:16:40+00	\N	\N	1
16400	1	2021-07-15 19:20:06+00	\N	\N	1
16401	1	2021-07-15 20:29:52+00	\N	\N	1
16402	1	2021-07-15 21:26:49+00	\N	\N	1
16403	1	2021-07-15 22:07:32+00	\N	\N	1
16404	1	2021-07-15 23:32:17+00	\N	\N	1
16405	1	2021-07-16 00:08:05+00	\N	\N	1
16406	1	2021-07-16 01:21:08+00	\N	\N	1
16407	1	2021-07-16 02:25:05+00	\N	\N	1
16408	2	2021-07-15 15:18:17+00	\N	\N	1
16409	2	2021-07-15 19:04:36+00	\N	\N	1
16410	2	2021-07-15 22:35:47+00	\N	\N	1
16411	3	2021-07-16 01:58:33+00	\N	\N	1
16412	6	2021-07-16 01:52:42+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16413	5	2021-07-16 11:49:32+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16414	1	2021-07-16 11:34:19+00	\N	\N	1
16415	1	2021-07-16 12:12:59+00	\N	\N	1
16416	1	2021-07-16 13:10:52+00	\N	\N	1
16417	1	2021-07-16 14:25:37+00	\N	\N	1
16418	1	2021-07-16 15:39:51+00	\N	\N	1
16419	1	2021-07-16 16:10:33+00	\N	\N	1
16420	1	2021-07-16 17:08:18+00	\N	\N	1
16421	1	2021-07-16 18:25:09+00	\N	\N	1
16422	1	2021-07-16 19:21:22+00	\N	\N	1
16423	1	2021-07-16 20:31:10+00	\N	\N	1
16424	1	2021-07-16 21:36:10+00	\N	\N	1
16425	1	2021-07-16 22:49:00+00	\N	\N	1
16426	1	2021-07-16 23:51:48+00	\N	\N	1
16427	1	2021-07-17 00:16:57+00	\N	\N	1
16428	1	2021-07-17 01:22:27+00	\N	\N	1
16429	1	2021-07-17 02:10:48+00	\N	\N	1
16430	2	2021-07-16 15:20:15+00	\N	\N	1
16431	2	2021-07-16 18:53:02+00	\N	\N	1
16432	2	2021-07-16 22:37:08+00	\N	\N	1
16433	3	2021-07-17 02:36:26+00	\N	\N	1
16434	6	2021-07-17 01:48:19+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16435	5	2021-07-17 10:57:43+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16436	1	2021-07-17 11:35:13+00	\N	\N	1
16437	1	2021-07-17 12:22:21+00	\N	\N	1
16438	1	2021-07-17 13:16:36+00	\N	\N	1
16439	1	2021-07-17 14:51:42+00	\N	\N	1
16440	1	2021-07-17 15:40:45+00	\N	\N	1
16441	1	2021-07-17 16:28:25+00	\N	\N	1
16442	1	2021-07-17 17:14:00+00	\N	\N	1
16443	1	2021-07-17 18:42:10+00	\N	\N	1
16444	1	2021-07-17 19:15:03+00	\N	\N	1
16445	1	2021-07-17 20:09:14+00	\N	\N	1
16446	1	2021-07-17 21:45:20+00	\N	\N	1
16447	1	2021-07-17 22:08:53+00	\N	\N	1
16448	1	2021-07-17 23:15:53+00	\N	\N	1
16449	1	2021-07-18 00:31:06+00	\N	\N	1
16450	1	2021-07-18 01:44:04+00	\N	\N	1
16451	1	2021-07-18 02:11:48+00	\N	\N	1
16452	2	2021-07-17 14:57:19+00	\N	\N	1
16453	2	2021-07-17 19:05:16+00	\N	\N	1
16454	2	2021-07-17 23:24:11+00	\N	\N	1
16455	3	2021-07-18 02:58:51+00	\N	\N	1
16456	6	2021-07-18 02:05:18+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16457	5	2021-07-18 11:13:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16458	1	2021-07-18 11:26:05+00	\N	\N	1
16459	1	2021-07-18 12:11:19+00	\N	\N	1
16460	1	2021-07-18 13:50:25+00	\N	\N	1
16461	1	2021-07-18 14:38:05+00	\N	\N	1
16462	1	2021-07-18 15:44:43+00	\N	\N	1
16463	1	2021-07-18 16:52:01+00	\N	\N	1
16464	1	2021-07-18 17:33:22+00	\N	\N	1
16465	1	2021-07-18 18:36:53+00	\N	\N	1
16466	1	2021-07-18 19:34:33+00	\N	\N	1
16467	1	2021-07-18 20:09:15+00	\N	\N	1
16468	1	2021-07-18 21:19:55+00	\N	\N	1
16469	1	2021-07-18 22:35:16+00	\N	\N	1
16470	1	2021-07-18 23:39:30+00	\N	\N	1
16471	1	2021-07-19 00:16:23+00	\N	\N	1
16472	1	2021-07-19 01:17:19+00	\N	\N	1
16473	1	2021-07-19 02:33:47+00	\N	\N	1
16474	2	2021-07-18 15:11:56+00	\N	\N	1
16475	2	2021-07-18 18:49:29+00	\N	\N	1
16476	2	2021-07-18 22:55:19+00	\N	\N	1
16477	3	2021-07-19 01:52:41+00	\N	\N	1
16478	6	2021-07-19 02:05:18+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16479	5	2021-07-19 12:15:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16480	1	2021-07-19 11:10:43+00	\N	\N	1
16481	1	2021-07-19 12:47:30+00	\N	\N	1
16482	1	2021-07-19 13:29:24+00	\N	\N	1
16483	1	2021-07-19 14:27:05+00	\N	\N	1
16484	1	2021-07-19 15:16:56+00	\N	\N	1
16485	1	2021-07-19 16:19:05+00	\N	\N	1
16486	1	2021-07-19 17:30:05+00	\N	\N	1
16487	1	2021-07-19 18:20:37+00	\N	\N	1
16488	1	2021-07-19 19:22:37+00	\N	\N	1
16489	1	2021-07-19 20:14:04+00	\N	\N	1
16490	1	2021-07-19 21:29:49+00	\N	\N	1
16491	1	2021-07-19 22:34:32+00	\N	\N	1
16492	1	2021-07-19 23:11:34+00	\N	\N	1
16493	1	2021-07-20 00:08:02+00	\N	\N	1
16494	1	2021-07-20 01:28:09+00	\N	\N	1
16495	1	2021-07-20 02:22:49+00	\N	\N	1
16496	2	2021-07-19 14:42:20+00	\N	\N	1
16497	2	2021-07-19 18:55:16+00	\N	\N	1
16498	2	2021-07-19 22:50:22+00	\N	\N	1
16499	3	2021-07-20 03:18:20+00	\N	\N	1
16600	1	2021-07-24 21:37:09+00	\N	\N	1
16601	1	2021-07-24 22:20:51+00	\N	\N	1
16602	1	2021-07-24 23:21:15+00	\N	\N	1
16603	1	2021-07-25 00:37:45+00	\N	\N	1
16500	6	2021-07-20 02:09:08+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16501	5	2021-07-20 12:27:12+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16502	1	2021-07-20 11:41:14+00	\N	\N	1
16503	1	2021-07-20 12:29:02+00	\N	\N	1
16504	1	2021-07-20 13:11:12+00	\N	\N	1
16505	1	2021-07-20 14:29:39+00	\N	\N	1
16506	1	2021-07-20 15:09:43+00	\N	\N	1
16507	1	2021-07-20 16:10:12+00	\N	\N	1
16508	1	2021-07-20 17:08:25+00	\N	\N	1
16509	1	2021-07-20 18:30:03+00	\N	\N	1
16510	1	2021-07-20 19:21:12+00	\N	\N	1
16511	1	2021-07-20 20:24:52+00	\N	\N	1
16512	1	2021-07-20 21:23:13+00	\N	\N	1
16513	1	2021-07-20 22:22:26+00	\N	\N	1
16514	1	2021-07-20 23:12:03+00	\N	\N	1
16515	1	2021-07-21 00:29:34+00	\N	\N	1
16516	1	2021-07-21 01:47:58+00	\N	\N	1
16517	1	2021-07-21 02:42:54+00	\N	\N	1
16518	2	2021-07-20 15:28:33+00	\N	\N	1
16519	2	2021-07-20 18:31:40+00	\N	\N	1
16520	2	2021-07-20 23:07:42+00	\N	\N	1
16521	3	2021-07-21 02:27:50+00	\N	\N	1
16522	6	2021-07-21 03:10:57+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16523	5	2021-07-21 11:06:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16524	1	2021-07-21 11:31:26+00	\N	\N	1
16525	1	2021-07-21 12:15:54+00	\N	\N	1
16526	1	2021-07-21 13:17:55+00	\N	\N	1
16527	1	2021-07-21 14:51:38+00	\N	\N	1
16528	1	2021-07-21 15:07:37+00	\N	\N	1
16529	1	2021-07-21 16:34:12+00	\N	\N	1
16530	1	2021-07-21 17:31:23+00	\N	\N	1
16531	1	2021-07-21 18:10:51+00	\N	\N	1
16532	1	2021-07-21 19:39:28+00	\N	\N	1
16533	1	2021-07-21 20:14:30+00	\N	\N	1
16534	1	2021-07-21 21:38:07+00	\N	\N	1
16535	1	2021-07-21 22:27:04+00	\N	\N	1
16536	1	2021-07-21 23:22:34+00	\N	\N	1
16537	1	2021-07-22 00:10:13+00	\N	\N	1
16538	1	2021-07-22 01:34:39+00	\N	\N	1
16539	1	2021-07-22 02:22:52+00	\N	\N	1
16540	2	2021-07-21 15:04:26+00	\N	\N	1
16541	2	2021-07-21 19:23:48+00	\N	\N	1
16542	2	2021-07-21 22:47:31+00	\N	\N	1
16543	3	2021-07-22 02:28:46+00	\N	\N	1
16544	6	2021-07-22 03:06:46+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16545	5	2021-07-22 11:24:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16546	1	2021-07-22 11:48:08+00	\N	\N	1
16547	1	2021-07-22 12:15:45+00	\N	\N	1
16548	1	2021-07-22 13:51:54+00	\N	\N	1
16549	1	2021-07-22 14:42:53+00	\N	\N	1
16550	1	2021-07-22 15:50:45+00	\N	\N	1
16551	1	2021-07-22 16:24:01+00	\N	\N	1
16552	1	2021-07-22 17:11:24+00	\N	\N	1
16553	1	2021-07-22 18:51:57+00	\N	\N	1
16554	1	2021-07-22 19:22:24+00	\N	\N	1
16555	1	2021-07-22 20:42:05+00	\N	\N	1
16556	1	2021-07-22 21:36:42+00	\N	\N	1
16557	1	2021-07-22 22:11:37+00	\N	\N	1
16558	1	2021-07-22 23:19:10+00	\N	\N	1
16559	1	2021-07-23 00:26:59+00	\N	\N	1
16560	1	2021-07-23 01:41:33+00	\N	\N	1
16561	1	2021-07-23 02:18:14+00	\N	\N	1
16562	2	2021-07-22 14:31:29+00	\N	\N	1
16563	2	2021-07-22 18:40:29+00	\N	\N	1
16564	2	2021-07-22 22:33:36+00	\N	\N	1
16565	3	2021-07-23 02:58:27+00	\N	\N	1
16566	6	2021-07-23 02:12:01+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16567	5	2021-07-23 11:54:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16568	1	2021-07-23 11:27:37+00	\N	\N	1
16569	1	2021-07-23 12:50:23+00	\N	\N	1
16570	1	2021-07-23 13:13:57+00	\N	\N	1
16571	1	2021-07-23 14:08:59+00	\N	\N	1
16572	1	2021-07-23 15:37:42+00	\N	\N	1
16573	1	2021-07-23 16:30:34+00	\N	\N	1
16574	1	2021-07-23 17:27:59+00	\N	\N	1
16575	1	2021-07-23 18:18:12+00	\N	\N	1
16576	1	2021-07-23 19:48:40+00	\N	\N	1
16577	1	2021-07-23 20:09:58+00	\N	\N	1
16578	1	2021-07-23 21:16:49+00	\N	\N	1
16579	1	2021-07-23 22:25:21+00	\N	\N	1
16580	1	2021-07-23 23:52:22+00	\N	\N	1
16581	1	2021-07-24 00:44:48+00	\N	\N	1
16582	1	2021-07-24 01:27:30+00	\N	\N	1
16583	1	2021-07-24 02:24:14+00	\N	\N	1
16584	2	2021-07-23 15:05:32+00	\N	\N	1
16585	2	2021-07-23 18:37:51+00	\N	\N	1
16586	2	2021-07-23 23:01:33+00	\N	\N	1
16587	3	2021-07-24 02:24:30+00	\N	\N	1
16588	6	2021-07-24 03:12:39+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16589	5	2021-07-24 11:15:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16590	1	2021-07-24 11:26:14+00	\N	\N	1
16591	1	2021-07-24 12:23:51+00	\N	\N	1
16592	1	2021-07-24 13:34:27+00	\N	\N	1
16593	1	2021-07-24 14:11:23+00	\N	\N	1
16594	1	2021-07-24 15:47:10+00	\N	\N	1
16595	1	2021-07-24 16:18:30+00	\N	\N	1
16596	1	2021-07-24 17:16:28+00	\N	\N	1
16597	1	2021-07-24 18:45:15+00	\N	\N	1
16598	1	2021-07-24 19:31:15+00	\N	\N	1
16599	1	2021-07-24 20:26:39+00	\N	\N	1
16604	1	2021-07-25 01:37:56+00	\N	\N	1
16605	1	2021-07-25 02:18:52+00	\N	\N	1
16606	2	2021-07-24 15:29:35+00	\N	\N	1
16607	2	2021-07-24 19:19:13+00	\N	\N	1
16608	2	2021-07-24 22:45:35+00	\N	\N	1
16609	3	2021-07-25 01:49:37+00	\N	\N	1
16610	6	2021-07-25 02:37:16+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16611	5	2021-07-25 11:22:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16612	1	2021-07-25 11:25:07+00	\N	\N	1
16613	1	2021-07-25 12:09:38+00	\N	\N	1
16614	1	2021-07-25 13:13:13+00	\N	\N	1
16615	1	2021-07-25 14:41:48+00	\N	\N	1
16616	1	2021-07-25 15:48:57+00	\N	\N	1
16617	1	2021-07-25 16:29:34+00	\N	\N	1
16618	1	2021-07-25 17:20:26+00	\N	\N	1
16619	1	2021-07-25 18:27:02+00	\N	\N	1
16620	1	2021-07-25 19:10:15+00	\N	\N	1
16621	1	2021-07-25 20:33:02+00	\N	\N	1
16622	1	2021-07-25 21:33:13+00	\N	\N	1
16623	1	2021-07-25 22:22:30+00	\N	\N	1
16624	1	2021-07-25 23:15:49+00	\N	\N	1
16625	1	2021-07-26 00:15:39+00	\N	\N	1
16626	1	2021-07-26 01:14:01+00	\N	\N	1
16627	1	2021-07-26 02:16:09+00	\N	\N	1
16628	2	2021-07-25 15:28:41+00	\N	\N	1
16629	2	2021-07-25 19:24:23+00	\N	\N	1
16630	2	2021-07-25 22:48:40+00	\N	\N	1
16631	3	2021-07-26 03:21:14+00	\N	\N	1
16632	6	2021-07-26 02:25:55+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16633	5	2021-07-26 11:53:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16634	1	2021-07-26 11:25:35+00	\N	\N	1
16635	1	2021-07-26 12:21:44+00	\N	\N	1
16636	1	2021-07-26 13:28:56+00	\N	\N	1
16637	1	2021-07-26 14:28:26+00	\N	\N	1
16638	1	2021-07-26 15:15:01+00	\N	\N	1
16639	1	2021-07-26 16:10:13+00	\N	\N	1
16640	1	2021-07-26 17:09:21+00	\N	\N	1
16641	1	2021-07-26 18:19:45+00	\N	\N	1
16642	1	2021-07-26 19:22:38+00	\N	\N	1
16643	1	2021-07-26 20:42:58+00	\N	\N	1
16644	1	2021-07-26 21:26:02+00	\N	\N	1
16645	1	2021-07-26 22:31:13+00	\N	\N	1
16646	1	2021-07-26 23:33:31+00	\N	\N	1
16647	1	2021-07-27 00:28:05+00	\N	\N	1
16648	1	2021-07-27 01:40:27+00	\N	\N	1
16649	1	2021-07-27 02:23:57+00	\N	\N	1
16650	2	2021-07-26 15:20:33+00	\N	\N	1
16651	2	2021-07-26 19:04:30+00	\N	\N	1
16652	2	2021-07-26 23:18:14+00	\N	\N	1
16653	3	2021-07-27 01:49:41+00	\N	\N	1
16654	6	2021-07-27 02:18:18+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16655	5	2021-07-27 11:40:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16656	1	2021-07-27 11:28:30+00	\N	\N	1
16657	1	2021-07-27 12:32:19+00	\N	\N	1
16658	1	2021-07-27 13:48:09+00	\N	\N	1
16659	1	2021-07-27 14:31:45+00	\N	\N	1
16660	1	2021-07-27 15:09:43+00	\N	\N	1
16661	1	2021-07-27 16:27:25+00	\N	\N	1
16662	1	2021-07-27 17:08:14+00	\N	\N	1
16663	1	2021-07-27 18:39:10+00	\N	\N	1
16664	1	2021-07-27 19:49:53+00	\N	\N	1
16665	1	2021-07-27 20:12:35+00	\N	\N	1
16666	1	2021-07-27 21:32:55+00	\N	\N	1
16667	1	2021-07-27 22:40:48+00	\N	\N	1
16668	1	2021-07-27 23:20:38+00	\N	\N	1
16669	1	2021-07-28 00:23:00+00	\N	\N	1
16670	1	2021-07-28 01:32:36+00	\N	\N	1
16671	1	2021-07-28 02:10:34+00	\N	\N	1
16672	2	2021-07-27 14:36:59+00	\N	\N	1
16673	2	2021-07-27 19:03:16+00	\N	\N	1
16674	2	2021-07-27 22:43:39+00	\N	\N	1
16675	3	2021-07-28 01:50:14+00	\N	\N	1
16676	6	2021-07-28 02:06:18+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16677	5	2021-07-28 12:07:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16678	1	2021-07-28 11:35:28+00	\N	\N	1
16679	1	2021-07-28 12:52:04+00	\N	\N	1
16680	1	2021-07-28 13:21:14+00	\N	\N	1
16681	1	2021-07-28 14:50:04+00	\N	\N	1
16682	1	2021-07-28 15:39:38+00	\N	\N	1
16683	1	2021-07-28 16:47:33+00	\N	\N	1
16684	1	2021-07-28 17:45:24+00	\N	\N	1
16685	1	2021-07-28 18:30:31+00	\N	\N	1
16686	1	2021-07-28 19:44:49+00	\N	\N	1
16687	1	2021-07-28 20:07:36+00	\N	\N	1
16688	1	2021-07-28 21:09:47+00	\N	\N	1
16689	1	2021-07-28 22:47:42+00	\N	\N	1
16690	1	2021-07-28 23:20:15+00	\N	\N	1
16691	1	2021-07-29 00:52:21+00	\N	\N	1
16692	1	2021-07-29 01:11:23+00	\N	\N	1
16693	1	2021-07-29 02:25:58+00	\N	\N	1
16694	2	2021-07-28 14:49:21+00	\N	\N	1
16695	2	2021-07-28 18:32:19+00	\N	\N	1
16696	2	2021-07-28 22:49:20+00	\N	\N	1
16697	3	2021-07-29 03:25:01+00	\N	\N	1
16698	6	2021-07-29 03:12:42+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16699	5	2021-07-29 11:30:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16700	1	2021-07-29 11:27:42+00	\N	\N	1
16701	1	2021-07-29 12:40:16+00	\N	\N	1
16702	1	2021-07-29 13:28:08+00	\N	\N	1
16703	1	2021-07-29 14:37:25+00	\N	\N	1
16704	1	2021-07-29 15:31:14+00	\N	\N	1
16705	1	2021-07-29 16:26:14+00	\N	\N	1
16706	1	2021-07-29 17:13:49+00	\N	\N	1
16707	1	2021-07-29 18:08:55+00	\N	\N	1
16708	1	2021-07-29 19:19:33+00	\N	\N	1
16709	1	2021-07-29 20:25:53+00	\N	\N	1
16710	1	2021-07-29 21:17:55+00	\N	\N	1
16711	1	2021-07-29 22:20:36+00	\N	\N	1
16712	1	2021-07-29 23:28:13+00	\N	\N	1
16713	1	2021-07-30 00:32:08+00	\N	\N	1
16714	1	2021-07-30 01:13:58+00	\N	\N	1
16715	1	2021-07-30 02:32:56+00	\N	\N	1
16716	2	2021-07-29 14:34:27+00	\N	\N	1
16717	2	2021-07-29 18:47:31+00	\N	\N	1
16718	2	2021-07-29 22:55:51+00	\N	\N	1
16719	3	2021-07-30 02:13:54+00	\N	\N	1
16720	6	2021-07-30 03:14:57+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16721	5	2021-07-30 11:49:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16722	1	2021-07-30 11:45:07+00	\N	\N	1
16723	1	2021-07-30 12:10:07+00	\N	\N	1
16724	1	2021-07-30 13:24:01+00	\N	\N	1
16725	1	2021-07-30 14:17:16+00	\N	\N	1
16726	1	2021-07-30 15:27:37+00	\N	\N	1
16727	1	2021-07-30 16:12:27+00	\N	\N	1
16728	1	2021-07-30 17:41:02+00	\N	\N	1
16729	1	2021-07-30 18:20:55+00	\N	\N	1
16730	1	2021-07-30 19:19:18+00	\N	\N	1
16731	1	2021-07-30 20:15:41+00	\N	\N	1
16732	1	2021-07-30 21:38:31+00	\N	\N	1
16733	1	2021-07-30 22:14:07+00	\N	\N	1
16734	1	2021-07-30 23:14:50+00	\N	\N	1
16735	1	2021-07-31 00:31:43+00	\N	\N	1
16736	1	2021-07-31 01:42:42+00	\N	\N	1
16737	1	2021-07-31 02:18:28+00	\N	\N	1
16738	2	2021-07-30 15:17:38+00	\N	\N	1
16739	2	2021-07-30 18:50:45+00	\N	\N	1
16740	2	2021-07-30 23:26:49+00	\N	\N	1
16741	3	2021-07-31 01:42:05+00	\N	\N	1
16742	6	2021-07-31 03:05:23+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16743	5	2021-07-31 11:48:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16744	1	2021-07-31 11:09:13+00	\N	\N	1
16745	1	2021-07-31 12:30:55+00	\N	\N	1
16746	1	2021-07-31 13:37:00+00	\N	\N	1
16747	1	2021-07-31 14:40:19+00	\N	\N	1
16748	1	2021-07-31 15:24:38+00	\N	\N	1
16749	1	2021-07-31 16:11:27+00	\N	\N	1
16750	1	2021-07-31 17:22:46+00	\N	\N	1
16751	1	2021-07-31 18:18:37+00	\N	\N	1
16752	1	2021-07-31 19:28:32+00	\N	\N	1
16753	1	2021-07-31 20:11:52+00	\N	\N	1
16754	1	2021-07-31 21:41:09+00	\N	\N	1
16755	1	2021-07-31 22:36:42+00	\N	\N	1
16756	1	2021-07-31 23:33:02+00	\N	\N	1
16757	1	2021-08-01 00:46:40+00	\N	\N	1
16758	1	2021-08-01 01:46:41+00	\N	\N	1
16759	1	2021-08-01 02:18:52+00	\N	\N	1
16760	2	2021-07-31 14:44:45+00	\N	\N	1
16761	2	2021-07-31 18:30:06+00	\N	\N	1
16762	2	2021-07-31 23:24:36+00	\N	\N	1
16763	3	2021-08-01 02:14:48+00	\N	\N	1
16764	6	2021-08-01 02:31:55+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16765	5	2021-08-01 10:35:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16766	1	2021-08-01 11:16:31+00	\N	\N	1
16767	1	2021-08-01 12:34:58+00	\N	\N	1
16768	1	2021-08-01 13:19:47+00	\N	\N	1
16769	1	2021-08-01 14:09:26+00	\N	\N	1
16770	1	2021-08-01 15:27:38+00	\N	\N	1
16771	1	2021-08-01 16:31:07+00	\N	\N	1
16772	1	2021-08-01 17:27:28+00	\N	\N	1
16773	1	2021-08-01 18:42:48+00	\N	\N	1
16774	1	2021-08-01 19:15:06+00	\N	\N	1
16775	1	2021-08-01 20:46:03+00	\N	\N	1
16776	1	2021-08-01 21:36:42+00	\N	\N	1
16777	1	2021-08-01 22:22:41+00	\N	\N	1
16778	1	2021-08-01 23:30:14+00	\N	\N	1
16779	1	2021-08-02 00:49:31+00	\N	\N	1
16780	1	2021-08-02 01:45:51+00	\N	\N	1
16781	1	2021-08-02 02:40:48+00	\N	\N	1
16782	2	2021-08-01 14:42:49+00	\N	\N	1
16783	2	2021-08-01 19:28:12+00	\N	\N	1
16784	2	2021-08-01 23:27:27+00	\N	\N	1
16785	3	2021-08-02 03:19:52+00	\N	\N	1
16786	6	2021-08-02 01:54:22+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16787	5	2021-08-02 11:58:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16788	1	2021-08-02 11:24:54+00	\N	\N	1
16789	1	2021-08-02 12:12:23+00	\N	\N	1
16790	1	2021-08-02 13:49:54+00	\N	\N	1
16791	1	2021-08-02 14:16:58+00	\N	\N	1
16792	1	2021-08-02 15:33:46+00	\N	\N	1
16793	1	2021-08-02 16:49:59+00	\N	\N	1
16794	1	2021-08-02 17:21:58+00	\N	\N	1
16795	1	2021-08-02 18:45:49+00	\N	\N	1
16796	1	2021-08-02 19:20:25+00	\N	\N	1
16797	1	2021-08-02 20:45:04+00	\N	\N	1
16798	1	2021-08-02 21:09:50+00	\N	\N	1
16799	1	2021-08-02 22:11:37+00	\N	\N	1
16800	1	2021-08-02 23:19:49+00	\N	\N	1
16801	1	2021-08-03 00:38:29+00	\N	\N	1
16802	1	2021-08-03 01:13:33+00	\N	\N	1
16803	1	2021-08-03 02:12:50+00	\N	\N	1
16804	2	2021-08-02 14:53:10+00	\N	\N	1
16805	2	2021-08-02 19:01:37+00	\N	\N	1
16806	2	2021-08-02 22:53:12+00	\N	\N	1
16807	3	2021-08-03 02:22:36+00	\N	\N	1
16908	1	2021-08-07 21:33:46+00	\N	\N	1
16909	1	2021-08-07 22:39:37+00	\N	\N	1
16910	1	2021-08-07 23:42:26+00	\N	\N	1
16808	6	2021-08-03 02:49:01+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16809	5	2021-08-03 10:38:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16810	1	2021-08-03 11:11:04+00	\N	\N	1
16811	1	2021-08-03 12:17:44+00	\N	\N	1
16812	1	2021-08-03 13:19:04+00	\N	\N	1
16813	1	2021-08-03 14:14:03+00	\N	\N	1
16814	1	2021-08-03 15:46:35+00	\N	\N	1
16815	1	2021-08-03 16:22:51+00	\N	\N	1
16816	1	2021-08-03 17:15:05+00	\N	\N	1
16817	1	2021-08-03 18:25:46+00	\N	\N	1
16818	1	2021-08-03 19:51:50+00	\N	\N	1
16819	1	2021-08-03 20:13:18+00	\N	\N	1
16820	1	2021-08-03 21:13:24+00	\N	\N	1
16821	1	2021-08-03 22:43:45+00	\N	\N	1
16822	1	2021-08-03 23:49:23+00	\N	\N	1
16823	1	2021-08-04 00:33:16+00	\N	\N	1
16824	1	2021-08-04 01:35:38+00	\N	\N	1
16825	1	2021-08-04 02:43:16+00	\N	\N	1
16826	2	2021-08-03 14:48:20+00	\N	\N	1
16827	2	2021-08-03 19:01:43+00	\N	\N	1
16828	2	2021-08-03 23:08:44+00	\N	\N	1
16829	3	2021-08-04 01:38:33+00	\N	\N	1
16830	6	2021-08-04 01:46:32+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16831	5	2021-08-04 10:51:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16832	1	2021-08-04 11:24:02+00	\N	\N	1
16833	1	2021-08-04 12:08:41+00	\N	\N	1
16834	1	2021-08-04 13:47:58+00	\N	\N	1
16835	1	2021-08-04 14:15:00+00	\N	\N	1
16836	1	2021-08-04 15:35:48+00	\N	\N	1
16837	1	2021-08-04 16:44:09+00	\N	\N	1
16838	1	2021-08-04 17:50:34+00	\N	\N	1
16839	1	2021-08-04 18:17:15+00	\N	\N	1
16840	1	2021-08-04 19:32:35+00	\N	\N	1
16841	1	2021-08-04 20:44:45+00	\N	\N	1
16842	1	2021-08-04 21:46:22+00	\N	\N	1
16843	1	2021-08-04 22:38:01+00	\N	\N	1
16844	1	2021-08-04 23:13:27+00	\N	\N	1
16845	1	2021-08-05 00:18:47+00	\N	\N	1
16846	1	2021-08-05 01:41:14+00	\N	\N	1
16847	1	2021-08-05 02:23:47+00	\N	\N	1
16848	2	2021-08-04 15:03:21+00	\N	\N	1
16849	2	2021-08-04 18:37:35+00	\N	\N	1
16850	2	2021-08-04 22:53:44+00	\N	\N	1
16851	3	2021-08-05 02:49:41+00	\N	\N	1
16852	6	2021-08-05 02:29:45+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16853	5	2021-08-05 11:09:07+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16854	1	2021-08-05 11:45:53+00	\N	\N	1
16855	1	2021-08-05 12:29:31+00	\N	\N	1
16856	1	2021-08-05 13:07:57+00	\N	\N	1
16857	1	2021-08-05 14:20:26+00	\N	\N	1
16858	1	2021-08-05 15:12:05+00	\N	\N	1
16859	1	2021-08-05 16:32:48+00	\N	\N	1
16860	1	2021-08-05 17:51:03+00	\N	\N	1
16861	1	2021-08-05 18:18:01+00	\N	\N	1
16862	1	2021-08-05 19:43:40+00	\N	\N	1
16863	1	2021-08-05 20:25:06+00	\N	\N	1
16864	1	2021-08-05 21:20:37+00	\N	\N	1
16865	1	2021-08-05 22:24:46+00	\N	\N	1
16866	1	2021-08-05 23:10:25+00	\N	\N	1
16867	1	2021-08-06 00:24:59+00	\N	\N	1
16868	1	2021-08-06 01:45:02+00	\N	\N	1
16869	1	2021-08-06 02:16:52+00	\N	\N	1
16870	2	2021-08-05 14:54:58+00	\N	\N	1
16871	2	2021-08-05 19:16:34+00	\N	\N	1
16872	2	2021-08-05 22:45:45+00	\N	\N	1
16873	3	2021-08-06 02:21:55+00	\N	\N	1
16874	6	2021-08-06 02:16:42+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16875	5	2021-08-06 11:33:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16876	1	2021-08-06 11:44:43+00	\N	\N	1
16877	1	2021-08-06 12:33:32+00	\N	\N	1
16878	1	2021-08-06 13:15:01+00	\N	\N	1
16879	1	2021-08-06 14:18:45+00	\N	\N	1
16880	1	2021-08-06 15:42:56+00	\N	\N	1
16881	1	2021-08-06 16:48:29+00	\N	\N	1
16882	1	2021-08-06 17:13:39+00	\N	\N	1
16883	1	2021-08-06 18:40:51+00	\N	\N	1
16884	1	2021-08-06 19:32:58+00	\N	\N	1
16885	1	2021-08-06 20:41:29+00	\N	\N	1
16886	1	2021-08-06 21:18:21+00	\N	\N	1
16887	1	2021-08-06 22:40:30+00	\N	\N	1
16888	1	2021-08-06 23:35:13+00	\N	\N	1
16889	1	2021-08-07 00:31:43+00	\N	\N	1
16890	1	2021-08-07 01:41:45+00	\N	\N	1
16891	1	2021-08-07 02:38:52+00	\N	\N	1
16892	2	2021-08-06 14:55:54+00	\N	\N	1
16893	2	2021-08-06 18:51:51+00	\N	\N	1
16894	2	2021-08-06 22:50:24+00	\N	\N	1
16895	3	2021-08-07 02:44:12+00	\N	\N	1
16896	6	2021-08-07 02:48:56+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16897	5	2021-08-07 10:59:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16898	1	2021-08-07 11:37:54+00	\N	\N	1
16899	1	2021-08-07 12:39:02+00	\N	\N	1
16900	1	2021-08-07 13:10:51+00	\N	\N	1
16901	1	2021-08-07 14:52:05+00	\N	\N	1
16902	1	2021-08-07 15:18:05+00	\N	\N	1
16903	1	2021-08-07 16:28:43+00	\N	\N	1
16904	1	2021-08-07 17:23:03+00	\N	\N	1
16905	1	2021-08-07 18:07:32+00	\N	\N	1
16906	1	2021-08-07 19:11:15+00	\N	\N	1
16907	1	2021-08-07 20:13:55+00	\N	\N	1
16911	1	2021-08-08 00:14:28+00	\N	\N	1
16912	1	2021-08-08 01:43:03+00	\N	\N	1
16913	1	2021-08-08 02:14:12+00	\N	\N	1
16914	2	2021-08-07 14:43:22+00	\N	\N	1
16915	2	2021-08-07 19:01:04+00	\N	\N	1
16916	2	2021-08-07 22:58:16+00	\N	\N	1
16917	3	2021-08-08 03:12:12+00	\N	\N	1
16918	6	2021-08-08 02:00:19+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16919	5	2021-08-08 11:48:35+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16920	1	2021-08-08 11:50:18+00	\N	\N	1
16921	1	2021-08-08 12:36:48+00	\N	\N	1
16922	1	2021-08-08 13:10:49+00	\N	\N	1
16923	1	2021-08-08 14:37:02+00	\N	\N	1
16924	1	2021-08-08 15:24:05+00	\N	\N	1
16925	1	2021-08-08 16:45:46+00	\N	\N	1
16926	1	2021-08-08 17:26:56+00	\N	\N	1
16927	1	2021-08-08 18:37:55+00	\N	\N	1
16928	1	2021-08-08 19:24:51+00	\N	\N	1
16929	1	2021-08-08 20:26:58+00	\N	\N	1
16930	1	2021-08-08 21:16:52+00	\N	\N	1
16931	1	2021-08-08 22:46:21+00	\N	\N	1
16932	1	2021-08-08 23:32:49+00	\N	\N	1
16933	1	2021-08-09 00:29:03+00	\N	\N	1
16934	1	2021-08-09 01:14:22+00	\N	\N	1
16935	1	2021-08-09 02:49:14+00	\N	\N	1
16936	2	2021-08-08 15:22:10+00	\N	\N	1
16937	2	2021-08-08 19:08:41+00	\N	\N	1
16938	2	2021-08-08 22:58:57+00	\N	\N	1
16939	3	2021-08-09 01:56:21+00	\N	\N	1
16940	6	2021-08-09 02:23:36+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16941	5	2021-08-09 11:32:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16942	1	2021-08-09 11:43:59+00	\N	\N	1
16943	1	2021-08-09 12:18:13+00	\N	\N	1
16944	1	2021-08-09 13:16:56+00	\N	\N	1
16945	1	2021-08-09 14:37:52+00	\N	\N	1
16946	1	2021-08-09 15:43:12+00	\N	\N	1
16947	1	2021-08-09 16:50:37+00	\N	\N	1
16948	1	2021-08-09 17:47:04+00	\N	\N	1
16949	1	2021-08-09 18:23:03+00	\N	\N	1
16950	1	2021-08-09 19:37:19+00	\N	\N	1
16951	1	2021-08-09 20:26:34+00	\N	\N	1
16952	1	2021-08-09 21:30:07+00	\N	\N	1
16953	1	2021-08-09 22:36:00+00	\N	\N	1
16954	1	2021-08-09 23:27:38+00	\N	\N	1
16955	1	2021-08-10 00:08:30+00	\N	\N	1
16956	1	2021-08-10 01:08:09+00	\N	\N	1
16957	1	2021-08-10 02:47:03+00	\N	\N	1
16958	2	2021-08-09 14:54:15+00	\N	\N	1
16959	2	2021-08-09 19:21:41+00	\N	\N	1
16960	2	2021-08-09 22:42:32+00	\N	\N	1
16961	3	2021-08-10 02:01:17+00	\N	\N	1
16962	6	2021-08-10 03:00:45+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16963	5	2021-08-10 12:19:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16964	1	2021-08-10 11:30:28+00	\N	\N	1
16965	1	2021-08-10 12:28:45+00	\N	\N	1
16966	1	2021-08-10 13:33:03+00	\N	\N	1
16967	1	2021-08-10 14:34:14+00	\N	\N	1
16968	1	2021-08-10 15:11:49+00	\N	\N	1
16969	1	2021-08-10 16:44:10+00	\N	\N	1
16970	1	2021-08-10 17:08:29+00	\N	\N	1
16971	1	2021-08-10 18:09:09+00	\N	\N	1
16972	1	2021-08-10 19:28:33+00	\N	\N	1
16973	1	2021-08-10 20:28:32+00	\N	\N	1
16974	1	2021-08-10 21:52:04+00	\N	\N	1
16975	1	2021-08-10 22:38:20+00	\N	\N	1
16976	1	2021-08-10 23:34:25+00	\N	\N	1
16977	1	2021-08-11 00:36:46+00	\N	\N	1
16978	1	2021-08-11 01:34:13+00	\N	\N	1
16979	1	2021-08-11 02:33:50+00	\N	\N	1
16980	2	2021-08-10 15:04:39+00	\N	\N	1
16981	2	2021-08-10 19:04:30+00	\N	\N	1
16982	2	2021-08-10 22:41:30+00	\N	\N	1
16983	3	2021-08-11 03:13:28+00	\N	\N	1
16984	6	2021-08-11 02:22:24+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
16985	5	2021-08-11 11:21:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
16986	1	2021-08-11 11:23:21+00	\N	\N	1
16987	1	2021-08-11 12:51:23+00	\N	\N	1
16988	1	2021-08-11 13:45:05+00	\N	\N	1
16989	1	2021-08-11 14:37:18+00	\N	\N	1
16990	1	2021-08-11 15:08:01+00	\N	\N	1
16991	1	2021-08-11 16:36:44+00	\N	\N	1
16992	1	2021-08-11 17:42:45+00	\N	\N	1
16993	1	2021-08-11 18:32:23+00	\N	\N	1
16994	1	2021-08-11 19:33:17+00	\N	\N	1
16995	1	2021-08-11 20:30:48+00	\N	\N	1
16996	1	2021-08-11 21:41:50+00	\N	\N	1
16997	1	2021-08-11 22:11:01+00	\N	\N	1
16998	1	2021-08-11 23:39:07+00	\N	\N	1
16999	1	2021-08-12 00:23:10+00	\N	\N	1
17000	1	2021-08-12 01:21:13+00	\N	\N	1
17001	1	2021-08-12 02:28:16+00	\N	\N	1
17002	2	2021-08-11 14:50:45+00	\N	\N	1
17003	2	2021-08-11 19:00:47+00	\N	\N	1
17004	2	2021-08-11 23:09:08+00	\N	\N	1
17005	3	2021-08-12 02:42:49+00	\N	\N	1
17006	6	2021-08-12 02:58:23+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17007	5	2021-08-12 12:19:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17008	1	2021-08-12 11:49:46+00	\N	\N	1
17009	1	2021-08-12 12:22:55+00	\N	\N	1
17010	1	2021-08-12 13:21:44+00	\N	\N	1
17011	1	2021-08-12 14:13:48+00	\N	\N	1
17012	1	2021-08-12 15:50:32+00	\N	\N	1
17013	1	2021-08-12 16:37:21+00	\N	\N	1
17014	1	2021-08-12 17:12:09+00	\N	\N	1
17015	1	2021-08-12 18:13:51+00	\N	\N	1
17016	1	2021-08-12 19:42:42+00	\N	\N	1
17017	1	2021-08-12 20:45:25+00	\N	\N	1
17018	1	2021-08-12 21:20:02+00	\N	\N	1
17019	1	2021-08-12 22:18:44+00	\N	\N	1
17020	1	2021-08-12 23:17:16+00	\N	\N	1
17021	1	2021-08-13 00:50:08+00	\N	\N	1
17022	1	2021-08-13 01:39:52+00	\N	\N	1
17023	1	2021-08-13 02:11:48+00	\N	\N	1
17024	2	2021-08-12 14:44:58+00	\N	\N	1
17025	2	2021-08-12 19:07:31+00	\N	\N	1
17026	2	2021-08-12 23:00:36+00	\N	\N	1
17027	3	2021-08-13 01:51:54+00	\N	\N	1
17028	6	2021-08-13 02:46:21+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17029	5	2021-08-13 11:04:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17030	1	2021-08-13 11:32:36+00	\N	\N	1
17031	1	2021-08-13 12:22:04+00	\N	\N	1
17032	1	2021-08-13 13:46:54+00	\N	\N	1
17033	1	2021-08-13 14:49:44+00	\N	\N	1
17034	1	2021-08-13 15:34:04+00	\N	\N	1
17035	1	2021-08-13 16:19:21+00	\N	\N	1
17036	1	2021-08-13 17:40:28+00	\N	\N	1
17037	1	2021-08-13 18:23:59+00	\N	\N	1
17038	1	2021-08-13 19:09:52+00	\N	\N	1
17039	1	2021-08-13 20:42:06+00	\N	\N	1
17040	1	2021-08-13 21:10:23+00	\N	\N	1
17041	1	2021-08-13 22:15:08+00	\N	\N	1
17042	1	2021-08-13 23:48:58+00	\N	\N	1
17043	1	2021-08-14 00:44:51+00	\N	\N	1
17044	1	2021-08-14 01:40:07+00	\N	\N	1
17045	1	2021-08-14 02:28:29+00	\N	\N	1
17046	2	2021-08-13 15:18:37+00	\N	\N	1
17047	2	2021-08-13 19:11:56+00	\N	\N	1
17048	2	2021-08-13 23:12:38+00	\N	\N	1
17049	3	2021-08-14 02:58:58+00	\N	\N	1
17050	6	2021-08-14 02:48:20+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17051	5	2021-08-14 10:56:16+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17052	1	2021-08-14 11:49:50+00	\N	\N	1
17053	1	2021-08-14 12:44:05+00	\N	\N	1
17054	1	2021-08-14 13:46:44+00	\N	\N	1
17055	1	2021-08-14 14:09:03+00	\N	\N	1
17056	1	2021-08-14 15:27:56+00	\N	\N	1
17057	1	2021-08-14 16:21:10+00	\N	\N	1
17058	1	2021-08-14 17:18:29+00	\N	\N	1
17059	1	2021-08-14 18:44:37+00	\N	\N	1
17060	1	2021-08-14 19:34:46+00	\N	\N	1
17061	1	2021-08-14 20:25:42+00	\N	\N	1
17062	1	2021-08-14 21:16:49+00	\N	\N	1
17063	1	2021-08-14 22:42:41+00	\N	\N	1
17064	1	2021-08-14 23:34:45+00	\N	\N	1
17065	1	2021-08-15 00:43:08+00	\N	\N	1
17066	1	2021-08-15 01:34:38+00	\N	\N	1
17067	1	2021-08-15 02:24:09+00	\N	\N	1
17068	2	2021-08-14 14:51:39+00	\N	\N	1
17069	2	2021-08-14 18:35:09+00	\N	\N	1
17070	2	2021-08-14 22:34:56+00	\N	\N	1
17071	3	2021-08-15 03:19:34+00	\N	\N	1
17072	6	2021-08-15 01:55:05+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17073	5	2021-08-15 11:07:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17074	1	2021-08-15 11:51:56+00	\N	\N	1
17075	1	2021-08-15 12:40:08+00	\N	\N	1
17076	1	2021-08-15 13:16:32+00	\N	\N	1
17077	1	2021-08-15 14:44:16+00	\N	\N	1
17078	1	2021-08-15 15:26:37+00	\N	\N	1
17079	1	2021-08-15 16:38:52+00	\N	\N	1
17080	1	2021-08-15 17:49:16+00	\N	\N	1
17081	1	2021-08-15 18:09:08+00	\N	\N	1
17082	1	2021-08-15 19:26:28+00	\N	\N	1
17083	1	2021-08-15 20:19:46+00	\N	\N	1
17084	1	2021-08-15 21:15:29+00	\N	\N	1
17085	1	2021-08-15 22:24:21+00	\N	\N	1
17086	1	2021-08-15 23:21:35+00	\N	\N	1
17087	1	2021-08-16 00:33:04+00	\N	\N	1
17088	1	2021-08-16 01:24:15+00	\N	\N	1
17089	1	2021-08-16 02:07:50+00	\N	\N	1
17090	2	2021-08-15 15:24:34+00	\N	\N	1
17091	2	2021-08-15 19:03:16+00	\N	\N	1
17092	2	2021-08-15 23:22:51+00	\N	\N	1
17093	3	2021-08-16 02:55:50+00	\N	\N	1
17094	6	2021-08-16 02:34:55+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17095	5	2021-08-16 11:33:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17096	1	2021-08-16 11:45:52+00	\N	\N	1
17097	1	2021-08-16 12:45:33+00	\N	\N	1
17098	1	2021-08-16 13:19:28+00	\N	\N	1
17099	1	2021-08-16 14:26:02+00	\N	\N	1
17100	1	2021-08-16 15:26:59+00	\N	\N	1
17101	1	2021-08-16 16:09:59+00	\N	\N	1
17102	1	2021-08-16 17:28:24+00	\N	\N	1
17103	1	2021-08-16 18:50:05+00	\N	\N	1
17104	1	2021-08-16 19:07:56+00	\N	\N	1
17105	1	2021-08-16 20:49:14+00	\N	\N	1
17106	1	2021-08-16 21:11:13+00	\N	\N	1
17107	1	2021-08-16 22:24:43+00	\N	\N	1
17108	1	2021-08-16 23:19:36+00	\N	\N	1
17109	1	2021-08-17 00:38:19+00	\N	\N	1
17110	1	2021-08-17 01:33:02+00	\N	\N	1
17111	1	2021-08-17 02:52:28+00	\N	\N	1
17112	2	2021-08-16 15:29:47+00	\N	\N	1
17113	2	2021-08-16 19:08:28+00	\N	\N	1
17114	2	2021-08-16 23:18:24+00	\N	\N	1
17115	3	2021-08-17 02:05:48+00	\N	\N	1
17216	1	2021-08-21 21:41:58+00	\N	\N	1
17217	1	2021-08-21 22:39:14+00	\N	\N	1
17116	6	2021-08-17 03:01:02+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17117	5	2021-08-17 12:04:43+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17118	1	2021-08-17 11:15:50+00	\N	\N	1
17119	1	2021-08-17 12:24:37+00	\N	\N	1
17120	1	2021-08-17 13:41:06+00	\N	\N	1
17121	1	2021-08-17 14:16:45+00	\N	\N	1
17122	1	2021-08-17 15:15:19+00	\N	\N	1
17123	1	2021-08-17 16:30:11+00	\N	\N	1
17124	1	2021-08-17 17:49:25+00	\N	\N	1
17125	1	2021-08-17 18:38:10+00	\N	\N	1
17126	1	2021-08-17 19:21:21+00	\N	\N	1
17127	1	2021-08-17 20:10:43+00	\N	\N	1
17128	1	2021-08-17 21:47:56+00	\N	\N	1
17129	1	2021-08-17 22:16:49+00	\N	\N	1
17130	1	2021-08-17 23:49:38+00	\N	\N	1
17131	1	2021-08-18 00:27:36+00	\N	\N	1
17132	1	2021-08-18 01:20:06+00	\N	\N	1
17133	1	2021-08-18 02:51:20+00	\N	\N	1
17134	2	2021-08-17 14:37:29+00	\N	\N	1
17135	2	2021-08-17 19:08:20+00	\N	\N	1
17136	2	2021-08-17 23:08:47+00	\N	\N	1
17137	3	2021-08-18 03:18:55+00	\N	\N	1
17138	6	2021-08-18 02:27:23+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17139	5	2021-08-18 12:17:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17140	1	2021-08-18 11:43:09+00	\N	\N	1
17141	1	2021-08-18 12:20:03+00	\N	\N	1
17142	1	2021-08-18 13:39:59+00	\N	\N	1
17143	1	2021-08-18 14:45:52+00	\N	\N	1
17144	1	2021-08-18 15:16:24+00	\N	\N	1
17145	1	2021-08-18 16:25:13+00	\N	\N	1
17146	1	2021-08-18 17:21:06+00	\N	\N	1
17147	1	2021-08-18 18:35:58+00	\N	\N	1
17148	1	2021-08-18 19:33:50+00	\N	\N	1
17149	1	2021-08-18 20:46:19+00	\N	\N	1
17150	1	2021-08-18 21:18:17+00	\N	\N	1
17151	1	2021-08-18 22:52:05+00	\N	\N	1
17152	1	2021-08-18 23:37:56+00	\N	\N	1
17153	1	2021-08-19 00:42:19+00	\N	\N	1
17154	1	2021-08-19 01:47:54+00	\N	\N	1
17155	1	2021-08-19 02:32:35+00	\N	\N	1
17156	2	2021-08-18 15:07:32+00	\N	\N	1
17157	2	2021-08-18 19:25:11+00	\N	\N	1
17158	2	2021-08-18 22:31:43+00	\N	\N	1
17159	3	2021-08-19 03:15:05+00	\N	\N	1
17160	6	2021-08-19 03:07:26+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17161	5	2021-08-19 10:33:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17162	1	2021-08-19 11:51:31+00	\N	\N	1
17163	1	2021-08-19 12:29:28+00	\N	\N	1
17164	1	2021-08-19 13:32:39+00	\N	\N	1
17165	1	2021-08-19 14:41:00+00	\N	\N	1
17166	1	2021-08-19 15:13:31+00	\N	\N	1
17167	1	2021-08-19 16:11:19+00	\N	\N	1
17168	1	2021-08-19 17:21:57+00	\N	\N	1
17169	1	2021-08-19 18:33:17+00	\N	\N	1
17170	1	2021-08-19 19:35:27+00	\N	\N	1
17171	1	2021-08-19 20:29:12+00	\N	\N	1
17172	1	2021-08-19 21:12:56+00	\N	\N	1
17173	1	2021-08-19 22:22:55+00	\N	\N	1
17174	1	2021-08-19 23:12:54+00	\N	\N	1
17175	1	2021-08-20 00:24:40+00	\N	\N	1
17176	1	2021-08-20 01:12:49+00	\N	\N	1
17177	1	2021-08-20 02:27:25+00	\N	\N	1
17178	2	2021-08-19 15:22:46+00	\N	\N	1
17179	2	2021-08-19 19:07:02+00	\N	\N	1
17180	2	2021-08-19 22:30:52+00	\N	\N	1
17181	3	2021-08-20 01:57:25+00	\N	\N	1
17182	6	2021-08-20 01:48:35+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17183	5	2021-08-20 11:10:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17184	1	2021-08-20 11:33:04+00	\N	\N	1
17185	1	2021-08-20 12:46:57+00	\N	\N	1
17186	1	2021-08-20 13:21:31+00	\N	\N	1
17187	1	2021-08-20 14:27:00+00	\N	\N	1
17188	1	2021-08-20 15:16:50+00	\N	\N	1
17189	1	2021-08-20 16:42:04+00	\N	\N	1
17190	1	2021-08-20 17:42:18+00	\N	\N	1
17191	1	2021-08-20 18:48:33+00	\N	\N	1
17192	1	2021-08-20 19:41:52+00	\N	\N	1
17193	1	2021-08-20 20:52:01+00	\N	\N	1
17194	1	2021-08-20 21:40:11+00	\N	\N	1
17195	1	2021-08-20 22:13:23+00	\N	\N	1
17196	1	2021-08-20 23:38:55+00	\N	\N	1
17197	1	2021-08-21 00:16:59+00	\N	\N	1
17198	1	2021-08-21 01:08:30+00	\N	\N	1
17199	1	2021-08-21 02:15:37+00	\N	\N	1
17200	2	2021-08-20 15:08:07+00	\N	\N	1
17201	2	2021-08-20 19:03:18+00	\N	\N	1
17202	2	2021-08-20 22:47:42+00	\N	\N	1
17203	3	2021-08-21 03:12:10+00	\N	\N	1
17204	6	2021-08-21 02:10:36+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17205	5	2021-08-21 10:38:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17206	1	2021-08-21 11:28:27+00	\N	\N	1
17207	1	2021-08-21 12:44:28+00	\N	\N	1
17208	1	2021-08-21 13:39:53+00	\N	\N	1
17209	1	2021-08-21 14:41:14+00	\N	\N	1
17210	1	2021-08-21 15:43:37+00	\N	\N	1
17211	1	2021-08-21 16:32:53+00	\N	\N	1
17212	1	2021-08-21 17:41:18+00	\N	\N	1
17213	1	2021-08-21 18:23:02+00	\N	\N	1
17214	1	2021-08-21 19:41:24+00	\N	\N	1
17215	1	2021-08-21 20:42:41+00	\N	\N	1
17218	1	2021-08-21 23:41:54+00	\N	\N	1
17219	1	2021-08-22 00:27:20+00	\N	\N	1
17220	1	2021-08-22 01:43:31+00	\N	\N	1
17221	1	2021-08-22 02:47:42+00	\N	\N	1
17222	2	2021-08-21 15:07:23+00	\N	\N	1
17223	2	2021-08-21 18:30:52+00	\N	\N	1
17224	2	2021-08-21 23:18:26+00	\N	\N	1
17225	3	2021-08-22 02:48:24+00	\N	\N	1
17226	6	2021-08-22 01:49:00+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17227	5	2021-08-22 11:47:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17228	1	2021-08-22 11:44:21+00	\N	\N	1
17229	1	2021-08-22 12:43:21+00	\N	\N	1
17230	1	2021-08-22 13:10:41+00	\N	\N	1
17231	1	2021-08-22 14:27:16+00	\N	\N	1
17232	1	2021-08-22 15:08:59+00	\N	\N	1
17233	1	2021-08-22 16:30:45+00	\N	\N	1
17234	1	2021-08-22 17:25:51+00	\N	\N	1
17235	1	2021-08-22 18:21:53+00	\N	\N	1
17236	1	2021-08-22 19:32:30+00	\N	\N	1
17237	1	2021-08-22 20:41:44+00	\N	\N	1
17238	1	2021-08-22 21:51:33+00	\N	\N	1
17239	1	2021-08-22 22:42:56+00	\N	\N	1
17240	1	2021-08-22 23:48:16+00	\N	\N	1
17241	1	2021-08-23 00:25:20+00	\N	\N	1
17242	1	2021-08-23 01:45:33+00	\N	\N	1
17243	1	2021-08-23 02:33:48+00	\N	\N	1
17244	2	2021-08-22 15:03:56+00	\N	\N	1
17245	2	2021-08-22 19:25:09+00	\N	\N	1
17246	2	2021-08-22 23:12:58+00	\N	\N	1
17247	3	2021-08-23 02:18:33+00	\N	\N	1
17248	6	2021-08-23 02:42:55+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17249	5	2021-08-23 11:50:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17250	1	2021-08-23 11:10:33+00	\N	\N	1
17251	1	2021-08-23 12:40:40+00	\N	\N	1
17252	1	2021-08-23 13:36:58+00	\N	\N	1
17253	1	2021-08-23 14:16:19+00	\N	\N	1
17254	1	2021-08-23 15:36:50+00	\N	\N	1
17255	1	2021-08-23 16:50:03+00	\N	\N	1
17256	1	2021-08-23 17:48:54+00	\N	\N	1
17257	1	2021-08-23 18:29:49+00	\N	\N	1
17258	1	2021-08-23 19:49:44+00	\N	\N	1
17259	1	2021-08-23 20:11:41+00	\N	\N	1
17260	1	2021-08-23 21:29:20+00	\N	\N	1
17261	1	2021-08-23 22:44:17+00	\N	\N	1
17262	1	2021-08-23 23:30:09+00	\N	\N	1
17263	1	2021-08-24 00:28:22+00	\N	\N	1
17264	1	2021-08-24 01:48:03+00	\N	\N	1
17265	1	2021-08-24 02:30:59+00	\N	\N	1
17266	2	2021-08-23 15:19:37+00	\N	\N	1
17267	2	2021-08-23 18:44:57+00	\N	\N	1
17268	2	2021-08-23 22:43:43+00	\N	\N	1
17269	3	2021-08-24 01:30:45+00	\N	\N	1
17270	6	2021-08-24 02:03:43+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17271	5	2021-08-24 11:08:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17272	1	2021-08-24 11:24:07+00	\N	\N	1
17273	1	2021-08-24 12:37:36+00	\N	\N	1
17274	1	2021-08-24 13:26:55+00	\N	\N	1
17275	1	2021-08-24 14:39:57+00	\N	\N	1
17276	1	2021-08-24 15:22:40+00	\N	\N	1
17277	1	2021-08-24 16:47:19+00	\N	\N	1
17278	1	2021-08-24 17:27:54+00	\N	\N	1
17279	1	2021-08-24 18:38:59+00	\N	\N	1
17280	1	2021-08-24 19:23:43+00	\N	\N	1
17281	1	2021-08-24 20:40:17+00	\N	\N	1
17282	1	2021-08-24 21:41:57+00	\N	\N	1
17283	1	2021-08-24 22:15:05+00	\N	\N	1
17284	1	2021-08-24 23:41:34+00	\N	\N	1
17285	1	2021-08-25 00:48:12+00	\N	\N	1
17286	1	2021-08-25 01:10:05+00	\N	\N	1
17287	1	2021-08-25 02:08:42+00	\N	\N	1
17288	2	2021-08-24 15:11:22+00	\N	\N	1
17289	2	2021-08-24 18:48:22+00	\N	\N	1
17290	2	2021-08-24 23:28:16+00	\N	\N	1
17291	3	2021-08-25 02:48:02+00	\N	\N	1
17292	6	2021-08-25 01:59:29+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17293	5	2021-08-25 12:13:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17294	1	2021-08-25 11:21:31+00	\N	\N	1
17295	1	2021-08-25 12:42:36+00	\N	\N	1
17296	1	2021-08-25 13:32:00+00	\N	\N	1
17297	1	2021-08-25 14:33:06+00	\N	\N	1
17298	1	2021-08-25 15:36:38+00	\N	\N	1
17299	1	2021-08-25 16:09:58+00	\N	\N	1
17300	1	2021-08-25 17:14:21+00	\N	\N	1
17301	1	2021-08-25 18:23:38+00	\N	\N	1
17302	1	2021-08-25 19:17:06+00	\N	\N	1
17303	1	2021-08-25 20:27:26+00	\N	\N	1
17304	1	2021-08-25 21:20:49+00	\N	\N	1
17305	1	2021-08-25 22:16:11+00	\N	\N	1
17306	1	2021-08-25 23:40:06+00	\N	\N	1
17307	1	2021-08-26 00:23:06+00	\N	\N	1
17308	1	2021-08-26 01:10:08+00	\N	\N	1
17309	1	2021-08-26 02:32:03+00	\N	\N	1
17310	2	2021-08-25 15:04:56+00	\N	\N	1
17311	2	2021-08-25 19:28:32+00	\N	\N	1
17312	2	2021-08-25 22:44:25+00	\N	\N	1
17313	3	2021-08-26 02:45:07+00	\N	\N	1
17314	6	2021-08-26 02:42:48+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17315	5	2021-08-26 11:18:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17316	1	2021-08-26 11:24:51+00	\N	\N	1
17317	1	2021-08-26 12:14:55+00	\N	\N	1
17318	1	2021-08-26 13:16:04+00	\N	\N	1
17319	1	2021-08-26 14:21:22+00	\N	\N	1
17320	1	2021-08-26 15:40:34+00	\N	\N	1
17321	1	2021-08-26 16:19:25+00	\N	\N	1
17322	1	2021-08-26 17:48:07+00	\N	\N	1
17323	1	2021-08-26 18:29:21+00	\N	\N	1
17324	1	2021-08-26 19:42:59+00	\N	\N	1
17325	1	2021-08-26 20:36:11+00	\N	\N	1
17326	1	2021-08-26 21:27:50+00	\N	\N	1
17327	1	2021-08-26 22:52:19+00	\N	\N	1
17328	1	2021-08-26 23:32:59+00	\N	\N	1
17329	1	2021-08-27 00:33:47+00	\N	\N	1
17330	1	2021-08-27 01:20:20+00	\N	\N	1
17331	1	2021-08-27 02:30:06+00	\N	\N	1
17332	2	2021-08-26 14:52:48+00	\N	\N	1
17333	2	2021-08-26 18:56:23+00	\N	\N	1
17334	2	2021-08-26 22:42:33+00	\N	\N	1
17335	3	2021-08-27 02:10:34+00	\N	\N	1
17336	6	2021-08-27 02:28:29+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17337	5	2021-08-27 11:53:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17338	1	2021-08-27 11:13:01+00	\N	\N	1
17339	1	2021-08-27 12:29:03+00	\N	\N	1
17340	1	2021-08-27 13:33:28+00	\N	\N	1
17341	1	2021-08-27 14:15:21+00	\N	\N	1
17342	1	2021-08-27 15:14:28+00	\N	\N	1
17343	1	2021-08-27 16:24:16+00	\N	\N	1
17344	1	2021-08-27 17:22:29+00	\N	\N	1
17345	1	2021-08-27 18:37:07+00	\N	\N	1
17346	1	2021-08-27 19:12:08+00	\N	\N	1
17347	1	2021-08-27 20:08:49+00	\N	\N	1
17348	1	2021-08-27 21:38:25+00	\N	\N	1
17349	1	2021-08-27 22:18:56+00	\N	\N	1
17350	1	2021-08-27 23:37:57+00	\N	\N	1
17351	1	2021-08-28 00:35:54+00	\N	\N	1
17352	1	2021-08-28 01:43:54+00	\N	\N	1
17353	1	2021-08-28 02:22:57+00	\N	\N	1
17354	2	2021-08-27 15:27:52+00	\N	\N	1
17355	2	2021-08-27 19:03:04+00	\N	\N	1
17356	2	2021-08-27 22:40:28+00	\N	\N	1
17357	3	2021-08-28 02:39:04+00	\N	\N	1
17358	6	2021-08-28 02:57:36+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17359	5	2021-08-28 11:55:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17360	1	2021-08-28 11:41:34+00	\N	\N	1
17361	1	2021-08-28 12:13:25+00	\N	\N	1
17362	1	2021-08-28 13:31:04+00	\N	\N	1
17363	1	2021-08-28 14:14:21+00	\N	\N	1
17364	1	2021-08-28 15:28:39+00	\N	\N	1
17365	1	2021-08-28 16:11:46+00	\N	\N	1
17366	1	2021-08-28 17:47:51+00	\N	\N	1
17367	1	2021-08-28 18:10:42+00	\N	\N	1
17368	1	2021-08-28 19:14:59+00	\N	\N	1
17369	1	2021-08-28 20:27:23+00	\N	\N	1
17370	1	2021-08-28 21:52:23+00	\N	\N	1
17371	1	2021-08-28 22:19:14+00	\N	\N	1
17372	1	2021-08-28 23:10:33+00	\N	\N	1
17373	1	2021-08-29 00:50:39+00	\N	\N	1
17374	1	2021-08-29 01:17:36+00	\N	\N	1
17375	1	2021-08-29 02:10:51+00	\N	\N	1
17376	2	2021-08-28 15:00:22+00	\N	\N	1
17377	2	2021-08-28 19:06:19+00	\N	\N	1
17378	2	2021-08-28 23:08:59+00	\N	\N	1
17379	3	2021-08-29 01:50:28+00	\N	\N	1
17380	6	2021-08-29 02:06:40+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17381	5	2021-08-29 11:10:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17382	1	2021-08-29 11:14:49+00	\N	\N	1
17383	1	2021-08-29 12:33:44+00	\N	\N	1
17384	1	2021-08-29 13:08:13+00	\N	\N	1
17385	1	2021-08-29 14:50:01+00	\N	\N	1
17386	1	2021-08-29 15:39:55+00	\N	\N	1
17387	1	2021-08-29 16:52:02+00	\N	\N	1
17388	1	2021-08-29 17:30:22+00	\N	\N	1
17389	1	2021-08-29 18:22:10+00	\N	\N	1
17390	1	2021-08-29 19:38:56+00	\N	\N	1
17391	1	2021-08-29 20:41:52+00	\N	\N	1
17392	1	2021-08-29 21:20:56+00	\N	\N	1
17393	1	2021-08-29 22:31:31+00	\N	\N	1
17394	1	2021-08-29 23:16:45+00	\N	\N	1
17395	1	2021-08-30 00:08:09+00	\N	\N	1
17396	1	2021-08-30 01:10:21+00	\N	\N	1
17397	1	2021-08-30 02:28:51+00	\N	\N	1
17398	2	2021-08-29 14:32:09+00	\N	\N	1
17399	2	2021-08-29 19:00:35+00	\N	\N	1
17400	2	2021-08-29 22:36:49+00	\N	\N	1
17401	3	2021-08-30 02:35:02+00	\N	\N	1
17402	6	2021-08-30 02:09:10+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17403	5	2021-08-30 11:25:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17404	1	2021-08-30 11:23:37+00	\N	\N	1
17405	1	2021-08-30 12:48:06+00	\N	\N	1
17406	1	2021-08-30 13:31:48+00	\N	\N	1
17407	1	2021-08-30 14:09:16+00	\N	\N	1
17408	1	2021-08-30 15:49:14+00	\N	\N	1
17409	1	2021-08-30 16:17:45+00	\N	\N	1
17410	1	2021-08-30 17:24:42+00	\N	\N	1
17411	1	2021-08-30 18:26:59+00	\N	\N	1
17412	1	2021-08-30 19:34:45+00	\N	\N	1
17413	1	2021-08-30 20:50:34+00	\N	\N	1
17414	1	2021-08-30 21:36:09+00	\N	\N	1
17415	1	2021-08-30 22:43:03+00	\N	\N	1
17416	1	2021-08-30 23:37:42+00	\N	\N	1
17417	1	2021-08-31 00:27:24+00	\N	\N	1
17418	1	2021-08-31 01:18:25+00	\N	\N	1
17419	1	2021-08-31 02:13:56+00	\N	\N	1
17420	2	2021-08-30 14:38:20+00	\N	\N	1
17421	2	2021-08-30 18:42:41+00	\N	\N	1
17422	2	2021-08-30 22:36:11+00	\N	\N	1
17423	3	2021-08-31 02:48:15+00	\N	\N	1
17524	1	2021-09-04 21:20:29+00	\N	\N	1
17424	6	2021-08-31 01:59:05+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17425	5	2021-08-31 12:24:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17426	1	2021-08-31 11:13:31+00	\N	\N	1
17427	1	2021-08-31 12:34:32+00	\N	\N	1
17428	1	2021-08-31 13:42:12+00	\N	\N	1
17429	1	2021-08-31 14:37:31+00	\N	\N	1
17430	1	2021-08-31 15:41:59+00	\N	\N	1
17431	1	2021-08-31 16:40:24+00	\N	\N	1
17432	1	2021-08-31 17:29:04+00	\N	\N	1
17433	1	2021-08-31 18:17:57+00	\N	\N	1
17434	1	2021-08-31 19:19:11+00	\N	\N	1
17435	1	2021-08-31 20:17:58+00	\N	\N	1
17436	1	2021-08-31 21:08:07+00	\N	\N	1
17437	1	2021-08-31 22:15:59+00	\N	\N	1
17438	1	2021-08-31 23:44:10+00	\N	\N	1
17439	1	2021-09-01 00:12:39+00	\N	\N	1
17440	1	2021-09-01 01:50:57+00	\N	\N	1
17441	1	2021-09-01 02:43:47+00	\N	\N	1
17442	2	2021-08-31 15:28:04+00	\N	\N	1
17443	2	2021-08-31 19:01:15+00	\N	\N	1
17444	2	2021-08-31 23:22:58+00	\N	\N	1
17445	3	2021-09-01 03:14:20+00	\N	\N	1
17446	6	2021-09-01 02:51:30+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17447	5	2021-09-01 10:30:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17448	1	2021-09-01 11:47:10+00	\N	\N	1
17449	1	2021-09-01 12:15:16+00	\N	\N	1
17450	1	2021-09-01 13:30:27+00	\N	\N	1
17451	1	2021-09-01 14:27:57+00	\N	\N	1
17452	1	2021-09-01 15:43:17+00	\N	\N	1
17453	1	2021-09-01 16:23:23+00	\N	\N	1
17454	1	2021-09-01 17:49:23+00	\N	\N	1
17455	1	2021-09-01 18:12:45+00	\N	\N	1
17456	1	2021-09-01 19:32:27+00	\N	\N	1
17457	1	2021-09-01 20:39:32+00	\N	\N	1
17458	1	2021-09-01 21:43:55+00	\N	\N	1
17459	1	2021-09-01 22:21:38+00	\N	\N	1
17460	1	2021-09-01 23:31:57+00	\N	\N	1
17461	1	2021-09-02 00:11:57+00	\N	\N	1
17462	1	2021-09-02 01:21:52+00	\N	\N	1
17463	1	2021-09-02 02:40:08+00	\N	\N	1
17464	2	2021-09-01 14:49:11+00	\N	\N	1
17465	2	2021-09-01 19:11:30+00	\N	\N	1
17466	2	2021-09-01 23:27:14+00	\N	\N	1
17467	3	2021-09-02 02:37:14+00	\N	\N	1
17468	6	2021-09-02 02:10:17+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17469	5	2021-09-02 10:52:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17470	1	2021-09-02 11:33:59+00	\N	\N	1
17471	1	2021-09-02 12:21:29+00	\N	\N	1
17472	1	2021-09-02 13:08:58+00	\N	\N	1
17473	1	2021-09-02 14:51:39+00	\N	\N	1
17474	1	2021-09-02 15:27:57+00	\N	\N	1
17475	1	2021-09-02 16:18:25+00	\N	\N	1
17476	1	2021-09-02 17:28:21+00	\N	\N	1
17477	1	2021-09-02 18:13:49+00	\N	\N	1
17478	1	2021-09-02 19:29:40+00	\N	\N	1
17479	1	2021-09-02 20:35:24+00	\N	\N	1
17480	1	2021-09-02 21:15:44+00	\N	\N	1
17481	1	2021-09-02 22:42:28+00	\N	\N	1
17482	1	2021-09-02 23:44:45+00	\N	\N	1
17483	1	2021-09-03 00:40:40+00	\N	\N	1
17484	1	2021-09-03 01:43:45+00	\N	\N	1
17485	1	2021-09-03 02:44:43+00	\N	\N	1
17486	2	2021-09-02 14:35:30+00	\N	\N	1
17487	2	2021-09-02 18:35:01+00	\N	\N	1
17488	2	2021-09-02 22:46:05+00	\N	\N	1
17489	3	2021-09-03 01:30:07+00	\N	\N	1
17490	6	2021-09-03 02:17:32+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17491	5	2021-09-03 11:48:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17492	1	2021-09-03 11:13:03+00	\N	\N	1
17493	1	2021-09-03 12:30:45+00	\N	\N	1
17494	1	2021-09-03 13:16:11+00	\N	\N	1
17495	1	2021-09-03 14:48:57+00	\N	\N	1
17496	1	2021-09-03 15:15:12+00	\N	\N	1
17497	1	2021-09-03 16:42:08+00	\N	\N	1
17498	1	2021-09-03 17:46:16+00	\N	\N	1
17499	1	2021-09-03 18:51:41+00	\N	\N	1
17500	1	2021-09-03 19:12:03+00	\N	\N	1
17501	1	2021-09-03 20:36:27+00	\N	\N	1
17502	1	2021-09-03 21:25:16+00	\N	\N	1
17503	1	2021-09-03 22:36:48+00	\N	\N	1
17504	1	2021-09-03 23:43:09+00	\N	\N	1
17505	1	2021-09-04 00:40:29+00	\N	\N	1
17506	1	2021-09-04 01:47:12+00	\N	\N	1
17507	1	2021-09-04 02:09:30+00	\N	\N	1
17508	2	2021-09-03 15:21:31+00	\N	\N	1
17509	2	2021-09-03 19:03:06+00	\N	\N	1
17510	2	2021-09-03 23:23:04+00	\N	\N	1
17511	3	2021-09-04 03:17:12+00	\N	\N	1
17512	6	2021-09-04 02:07:36+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17513	5	2021-09-04 12:06:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17514	1	2021-09-04 11:30:12+00	\N	\N	1
17515	1	2021-09-04 12:17:56+00	\N	\N	1
17516	1	2021-09-04 13:41:48+00	\N	\N	1
17517	1	2021-09-04 14:14:13+00	\N	\N	1
17518	1	2021-09-04 15:43:57+00	\N	\N	1
17519	1	2021-09-04 16:33:10+00	\N	\N	1
17520	1	2021-09-04 17:48:18+00	\N	\N	1
17521	1	2021-09-04 18:31:36+00	\N	\N	1
17522	1	2021-09-04 19:23:15+00	\N	\N	1
17523	1	2021-09-04 20:26:32+00	\N	\N	1
17525	1	2021-09-04 22:49:46+00	\N	\N	1
17526	1	2021-09-04 23:30:41+00	\N	\N	1
17527	1	2021-09-05 00:07:57+00	\N	\N	1
17528	1	2021-09-05 01:48:06+00	\N	\N	1
17529	1	2021-09-05 02:38:51+00	\N	\N	1
17530	2	2021-09-04 14:56:21+00	\N	\N	1
17531	2	2021-09-04 19:07:29+00	\N	\N	1
17532	2	2021-09-04 22:54:47+00	\N	\N	1
17533	3	2021-09-05 01:35:15+00	\N	\N	1
17534	6	2021-09-05 02:41:20+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17535	5	2021-09-05 11:30:35+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17536	1	2021-09-05 11:28:12+00	\N	\N	1
17537	1	2021-09-05 12:24:04+00	\N	\N	1
17538	1	2021-09-05 13:42:58+00	\N	\N	1
17539	1	2021-09-05 14:23:54+00	\N	\N	1
17540	1	2021-09-05 15:18:19+00	\N	\N	1
17541	1	2021-09-05 16:50:55+00	\N	\N	1
17542	1	2021-09-05 17:23:31+00	\N	\N	1
17543	1	2021-09-05 18:51:03+00	\N	\N	1
17544	1	2021-09-05 19:47:01+00	\N	\N	1
17545	1	2021-09-05 20:29:46+00	\N	\N	1
17546	1	2021-09-05 21:42:44+00	\N	\N	1
17547	1	2021-09-05 22:41:10+00	\N	\N	1
17548	1	2021-09-05 23:09:48+00	\N	\N	1
17549	1	2021-09-06 00:42:42+00	\N	\N	1
17550	1	2021-09-06 01:49:54+00	\N	\N	1
17551	1	2021-09-06 02:33:53+00	\N	\N	1
17552	2	2021-09-05 14:43:25+00	\N	\N	1
17553	2	2021-09-05 18:42:09+00	\N	\N	1
17554	2	2021-09-05 22:50:10+00	\N	\N	1
17555	3	2021-09-06 02:49:52+00	\N	\N	1
17556	6	2021-09-06 02:28:28+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17557	5	2021-09-06 11:34:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17558	1	2021-09-06 11:31:43+00	\N	\N	1
17559	1	2021-09-06 12:51:11+00	\N	\N	1
17560	1	2021-09-06 13:48:35+00	\N	\N	1
17561	1	2021-09-06 14:20:57+00	\N	\N	1
17562	1	2021-09-06 15:50:19+00	\N	\N	1
17563	1	2021-09-06 16:41:53+00	\N	\N	1
17564	1	2021-09-06 17:33:53+00	\N	\N	1
17565	1	2021-09-06 18:30:42+00	\N	\N	1
17566	1	2021-09-06 19:26:19+00	\N	\N	1
17567	1	2021-09-06 20:47:37+00	\N	\N	1
17568	1	2021-09-06 21:49:28+00	\N	\N	1
17569	1	2021-09-06 22:51:44+00	\N	\N	1
17570	1	2021-09-06 23:45:35+00	\N	\N	1
17571	1	2021-09-07 00:16:19+00	\N	\N	1
17572	1	2021-09-07 01:12:29+00	\N	\N	1
17573	1	2021-09-07 02:32:16+00	\N	\N	1
17574	2	2021-09-06 14:56:53+00	\N	\N	1
17575	2	2021-09-06 18:50:54+00	\N	\N	1
17576	2	2021-09-06 23:26:40+00	\N	\N	1
17577	3	2021-09-07 02:35:51+00	\N	\N	1
17578	6	2021-09-07 02:50:47+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17579	5	2021-09-07 12:17:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17580	1	2021-09-07 11:08:27+00	\N	\N	1
17581	1	2021-09-07 12:17:56+00	\N	\N	1
17582	1	2021-09-07 13:20:52+00	\N	\N	1
17583	1	2021-09-07 14:45:39+00	\N	\N	1
17584	1	2021-09-07 15:37:23+00	\N	\N	1
17585	1	2021-09-07 16:18:39+00	\N	\N	1
17586	1	2021-09-07 17:42:01+00	\N	\N	1
17587	1	2021-09-07 18:31:04+00	\N	\N	1
17588	1	2021-09-07 19:20:02+00	\N	\N	1
17589	1	2021-09-07 20:38:53+00	\N	\N	1
17590	1	2021-09-07 21:37:57+00	\N	\N	1
17591	1	2021-09-07 22:38:38+00	\N	\N	1
17592	1	2021-09-07 23:51:12+00	\N	\N	1
17593	1	2021-09-08 00:19:23+00	\N	\N	1
17594	1	2021-09-08 01:24:31+00	\N	\N	1
17595	1	2021-09-08 02:17:14+00	\N	\N	1
17596	2	2021-09-07 15:19:00+00	\N	\N	1
17597	2	2021-09-07 19:04:32+00	\N	\N	1
17598	2	2021-09-07 23:21:05+00	\N	\N	1
17599	3	2021-09-08 02:47:52+00	\N	\N	1
17600	6	2021-09-08 02:01:57+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17601	5	2021-09-08 12:16:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17602	1	2021-09-08 11:07:43+00	\N	\N	1
17603	1	2021-09-08 12:31:36+00	\N	\N	1
17604	1	2021-09-08 13:23:15+00	\N	\N	1
17605	1	2021-09-08 14:30:38+00	\N	\N	1
17606	1	2021-09-08 15:22:20+00	\N	\N	1
17607	1	2021-09-08 16:10:07+00	\N	\N	1
17608	1	2021-09-08 17:36:31+00	\N	\N	1
17609	1	2021-09-08 18:13:32+00	\N	\N	1
17610	1	2021-09-08 19:23:47+00	\N	\N	1
17611	1	2021-09-08 20:09:31+00	\N	\N	1
17612	1	2021-09-08 21:13:16+00	\N	\N	1
17613	1	2021-09-08 22:52:02+00	\N	\N	1
17614	1	2021-09-08 23:19:03+00	\N	\N	1
17615	1	2021-09-09 00:39:28+00	\N	\N	1
17616	1	2021-09-09 01:26:11+00	\N	\N	1
17617	1	2021-09-09 02:10:23+00	\N	\N	1
17618	2	2021-09-08 14:40:33+00	\N	\N	1
17619	2	2021-09-08 18:43:35+00	\N	\N	1
17620	2	2021-09-08 22:47:25+00	\N	\N	1
17621	3	2021-09-09 01:53:20+00	\N	\N	1
17622	6	2021-09-09 03:12:56+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17623	5	2021-09-09 10:46:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17624	1	2021-09-09 11:10:36+00	\N	\N	1
17625	1	2021-09-09 12:14:27+00	\N	\N	1
17626	1	2021-09-09 13:11:19+00	\N	\N	1
17627	1	2021-09-09 14:11:20+00	\N	\N	1
17628	1	2021-09-09 15:34:44+00	\N	\N	1
17629	1	2021-09-09 16:13:11+00	\N	\N	1
17630	1	2021-09-09 17:22:24+00	\N	\N	1
17631	1	2021-09-09 18:22:08+00	\N	\N	1
17632	1	2021-09-09 19:13:36+00	\N	\N	1
17633	1	2021-09-09 20:29:47+00	\N	\N	1
17634	1	2021-09-09 21:18:44+00	\N	\N	1
17635	1	2021-09-09 22:33:36+00	\N	\N	1
17636	1	2021-09-09 23:28:07+00	\N	\N	1
17637	1	2021-09-10 00:40:38+00	\N	\N	1
17638	1	2021-09-10 01:38:01+00	\N	\N	1
17639	1	2021-09-10 02:41:47+00	\N	\N	1
17640	2	2021-09-09 15:03:34+00	\N	\N	1
17641	2	2021-09-09 18:36:06+00	\N	\N	1
17642	2	2021-09-09 22:51:23+00	\N	\N	1
17643	3	2021-09-10 02:27:48+00	\N	\N	1
17644	6	2021-09-10 01:50:52+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17645	5	2021-09-10 11:38:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17646	1	2021-09-10 11:36:49+00	\N	\N	1
17647	1	2021-09-10 12:48:38+00	\N	\N	1
17648	1	2021-09-10 13:39:41+00	\N	\N	1
17649	1	2021-09-10 14:49:59+00	\N	\N	1
17650	1	2021-09-10 15:25:35+00	\N	\N	1
17651	1	2021-09-10 16:32:55+00	\N	\N	1
17652	1	2021-09-10 17:37:57+00	\N	\N	1
17653	1	2021-09-10 18:38:18+00	\N	\N	1
17654	1	2021-09-10 19:11:32+00	\N	\N	1
17655	1	2021-09-10 20:15:30+00	\N	\N	1
17656	1	2021-09-10 21:10:44+00	\N	\N	1
17657	1	2021-09-10 22:26:33+00	\N	\N	1
17658	1	2021-09-10 23:10:30+00	\N	\N	1
17659	1	2021-09-11 00:37:03+00	\N	\N	1
17660	1	2021-09-11 01:50:13+00	\N	\N	1
17661	1	2021-09-11 02:40:41+00	\N	\N	1
17662	2	2021-09-10 15:01:26+00	\N	\N	1
17663	2	2021-09-10 18:53:51+00	\N	\N	1
17664	2	2021-09-10 23:06:48+00	\N	\N	1
17665	3	2021-09-11 01:47:18+00	\N	\N	1
17666	6	2021-09-11 02:59:36+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17667	5	2021-09-11 12:02:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17668	1	2021-09-11 11:45:04+00	\N	\N	1
17669	1	2021-09-11 12:15:10+00	\N	\N	1
17670	1	2021-09-11 13:09:03+00	\N	\N	1
17671	1	2021-09-11 14:21:46+00	\N	\N	1
17672	1	2021-09-11 15:33:33+00	\N	\N	1
17673	1	2021-09-11 16:34:03+00	\N	\N	1
17674	1	2021-09-11 17:32:48+00	\N	\N	1
17675	1	2021-09-11 18:52:06+00	\N	\N	1
17676	1	2021-09-11 19:25:45+00	\N	\N	1
17677	1	2021-09-11 20:47:28+00	\N	\N	1
17678	1	2021-09-11 21:16:15+00	\N	\N	1
17679	1	2021-09-11 22:50:25+00	\N	\N	1
17680	1	2021-09-11 23:14:39+00	\N	\N	1
17681	1	2021-09-12 00:48:19+00	\N	\N	1
17682	1	2021-09-12 01:50:20+00	\N	\N	1
17683	1	2021-09-12 02:10:23+00	\N	\N	1
17684	2	2021-09-11 14:42:52+00	\N	\N	1
17685	2	2021-09-11 18:31:17+00	\N	\N	1
17686	2	2021-09-11 22:45:42+00	\N	\N	1
17687	3	2021-09-12 02:21:05+00	\N	\N	1
17688	6	2021-09-12 02:17:49+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17689	5	2021-09-12 11:55:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17690	1	2021-09-12 11:27:12+00	\N	\N	1
17691	1	2021-09-12 12:33:06+00	\N	\N	1
17692	1	2021-09-12 13:12:20+00	\N	\N	1
17693	1	2021-09-12 14:10:55+00	\N	\N	1
17694	1	2021-09-12 15:47:29+00	\N	\N	1
17695	1	2021-09-12 16:18:43+00	\N	\N	1
17696	1	2021-09-12 17:43:07+00	\N	\N	1
17697	1	2021-09-12 18:16:03+00	\N	\N	1
17698	1	2021-09-12 19:33:57+00	\N	\N	1
17699	1	2021-09-12 20:33:59+00	\N	\N	1
17700	1	2021-09-12 21:14:14+00	\N	\N	1
17701	1	2021-09-12 22:37:55+00	\N	\N	1
17702	1	2021-09-12 23:09:04+00	\N	\N	1
17703	1	2021-09-13 00:39:11+00	\N	\N	1
17704	1	2021-09-13 01:17:42+00	\N	\N	1
17705	1	2021-09-13 02:12:12+00	\N	\N	1
17706	2	2021-09-12 15:21:25+00	\N	\N	1
17707	2	2021-09-12 18:39:38+00	\N	\N	1
17708	2	2021-09-12 22:51:59+00	\N	\N	1
17709	3	2021-09-13 03:07:50+00	\N	\N	1
17710	6	2021-09-13 02:07:45+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17711	5	2021-09-13 12:20:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17712	1	2021-09-13 11:43:22+00	\N	\N	1
17713	1	2021-09-13 12:43:16+00	\N	\N	1
17714	1	2021-09-13 13:52:03+00	\N	\N	1
17715	1	2021-09-13 14:49:43+00	\N	\N	1
17716	1	2021-09-13 15:47:52+00	\N	\N	1
17717	1	2021-09-13 16:24:54+00	\N	\N	1
17718	1	2021-09-13 17:34:35+00	\N	\N	1
17719	1	2021-09-13 18:17:47+00	\N	\N	1
17720	1	2021-09-13 19:28:09+00	\N	\N	1
17721	1	2021-09-13 20:25:35+00	\N	\N	1
17722	1	2021-09-13 21:51:47+00	\N	\N	1
17723	1	2021-09-13 22:20:57+00	\N	\N	1
17724	1	2021-09-13 23:40:05+00	\N	\N	1
17725	1	2021-09-14 00:28:17+00	\N	\N	1
17726	1	2021-09-14 01:31:00+00	\N	\N	1
17727	1	2021-09-14 02:28:34+00	\N	\N	1
17728	2	2021-09-13 14:30:05+00	\N	\N	1
17729	2	2021-09-13 19:01:38+00	\N	\N	1
17730	2	2021-09-13 22:33:05+00	\N	\N	1
17731	3	2021-09-14 03:22:36+00	\N	\N	1
17732	6	2021-09-14 02:26:55+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17733	5	2021-09-14 11:41:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17734	1	2021-09-14 11:40:08+00	\N	\N	1
17735	1	2021-09-14 12:19:53+00	\N	\N	1
17736	1	2021-09-14 13:38:49+00	\N	\N	1
17737	1	2021-09-14 14:20:38+00	\N	\N	1
17738	1	2021-09-14 15:30:59+00	\N	\N	1
17739	1	2021-09-14 16:32:06+00	\N	\N	1
17740	1	2021-09-14 17:51:12+00	\N	\N	1
17741	1	2021-09-14 18:17:21+00	\N	\N	1
17742	1	2021-09-14 19:33:10+00	\N	\N	1
17743	1	2021-09-14 20:14:54+00	\N	\N	1
17744	1	2021-09-14 21:43:12+00	\N	\N	1
17745	1	2021-09-14 22:28:07+00	\N	\N	1
17746	1	2021-09-14 23:24:15+00	\N	\N	1
17747	1	2021-09-15 00:40:55+00	\N	\N	1
17748	1	2021-09-15 01:27:32+00	\N	\N	1
17749	1	2021-09-15 02:24:35+00	\N	\N	1
17750	2	2021-09-14 14:40:23+00	\N	\N	1
17751	2	2021-09-14 19:10:03+00	\N	\N	1
17752	2	2021-09-14 22:52:48+00	\N	\N	1
17753	3	2021-09-15 02:32:38+00	\N	\N	1
17754	6	2021-09-15 03:14:34+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17755	5	2021-09-15 11:29:46+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17756	1	2021-09-15 11:51:35+00	\N	\N	1
17757	1	2021-09-15 12:09:35+00	\N	\N	1
17758	1	2021-09-15 13:28:00+00	\N	\N	1
17759	1	2021-09-15 14:46:38+00	\N	\N	1
17760	1	2021-09-15 15:14:28+00	\N	\N	1
17761	1	2021-09-15 16:25:21+00	\N	\N	1
17762	1	2021-09-15 17:35:34+00	\N	\N	1
17763	1	2021-09-15 18:45:28+00	\N	\N	1
17764	1	2021-09-15 19:24:23+00	\N	\N	1
17765	1	2021-09-15 20:19:51+00	\N	\N	1
17766	1	2021-09-15 21:32:45+00	\N	\N	1
17767	1	2021-09-15 22:28:18+00	\N	\N	1
17768	1	2021-09-15 23:49:52+00	\N	\N	1
17769	1	2021-09-16 00:24:52+00	\N	\N	1
17770	1	2021-09-16 01:28:47+00	\N	\N	1
17771	1	2021-09-16 02:28:39+00	\N	\N	1
17772	2	2021-09-15 14:49:13+00	\N	\N	1
17773	2	2021-09-15 19:07:08+00	\N	\N	1
17774	2	2021-09-15 23:16:52+00	\N	\N	1
17775	3	2021-09-16 02:29:48+00	\N	\N	1
17776	6	2021-09-16 02:01:17+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17777	5	2021-09-16 11:12:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17778	1	2021-09-16 11:16:05+00	\N	\N	1
17779	1	2021-09-16 12:09:28+00	\N	\N	1
17780	1	2021-09-16 13:22:26+00	\N	\N	1
17781	1	2021-09-16 14:11:59+00	\N	\N	1
17782	1	2021-09-16 15:46:33+00	\N	\N	1
17783	1	2021-09-16 16:16:51+00	\N	\N	1
17784	1	2021-09-16 17:46:26+00	\N	\N	1
17785	1	2021-09-16 18:18:02+00	\N	\N	1
17786	1	2021-09-16 19:25:36+00	\N	\N	1
17787	1	2021-09-16 20:12:50+00	\N	\N	1
17788	1	2021-09-16 21:46:32+00	\N	\N	1
17789	1	2021-09-16 22:50:01+00	\N	\N	1
17790	1	2021-09-16 23:16:30+00	\N	\N	1
17791	1	2021-09-17 00:19:26+00	\N	\N	1
17792	1	2021-09-17 01:10:27+00	\N	\N	1
17793	1	2021-09-17 02:52:01+00	\N	\N	1
17794	2	2021-09-16 15:18:52+00	\N	\N	1
17795	2	2021-09-16 18:46:58+00	\N	\N	1
17796	2	2021-09-16 23:25:13+00	\N	\N	1
17797	3	2021-09-17 02:13:29+00	\N	\N	1
17798	6	2021-09-17 02:59:56+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17799	5	2021-09-17 10:30:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17800	1	2021-09-17 11:33:27+00	\N	\N	1
17801	1	2021-09-17 12:14:52+00	\N	\N	1
17802	1	2021-09-17 13:25:15+00	\N	\N	1
17803	1	2021-09-17 14:25:25+00	\N	\N	1
17804	1	2021-09-17 15:19:17+00	\N	\N	1
17805	1	2021-09-17 16:51:13+00	\N	\N	1
17806	1	2021-09-17 17:32:43+00	\N	\N	1
17807	1	2021-09-17 18:28:21+00	\N	\N	1
17808	1	2021-09-17 19:19:05+00	\N	\N	1
17809	1	2021-09-17 20:42:06+00	\N	\N	1
17810	1	2021-09-17 21:18:53+00	\N	\N	1
17811	1	2021-09-17 22:52:04+00	\N	\N	1
17812	1	2021-09-17 23:40:48+00	\N	\N	1
17813	1	2021-09-18 00:09:01+00	\N	\N	1
17814	1	2021-09-18 01:47:09+00	\N	\N	1
17815	1	2021-09-18 02:39:56+00	\N	\N	1
17816	2	2021-09-17 14:32:37+00	\N	\N	1
17817	2	2021-09-17 18:50:09+00	\N	\N	1
17818	2	2021-09-17 22:37:07+00	\N	\N	1
17819	3	2021-09-18 03:26:51+00	\N	\N	1
17820	6	2021-09-18 01:53:26+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17821	5	2021-09-18 10:47:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17822	1	2021-09-18 11:12:45+00	\N	\N	1
17823	1	2021-09-18 12:48:13+00	\N	\N	1
17824	1	2021-09-18 13:33:46+00	\N	\N	1
17825	1	2021-09-18 14:23:54+00	\N	\N	1
17826	1	2021-09-18 15:42:18+00	\N	\N	1
17827	1	2021-09-18 16:32:56+00	\N	\N	1
17828	1	2021-09-18 17:34:43+00	\N	\N	1
17829	1	2021-09-18 18:16:19+00	\N	\N	1
17830	1	2021-09-18 19:25:08+00	\N	\N	1
17831	1	2021-09-18 20:50:17+00	\N	\N	1
17832	1	2021-09-18 21:13:07+00	\N	\N	1
17833	1	2021-09-18 22:46:10+00	\N	\N	1
17834	1	2021-09-18 23:34:03+00	\N	\N	1
17835	1	2021-09-19 00:09:00+00	\N	\N	1
17836	1	2021-09-19 01:24:20+00	\N	\N	1
17837	1	2021-09-19 02:14:53+00	\N	\N	1
17838	2	2021-09-18 14:56:59+00	\N	\N	1
17839	2	2021-09-18 19:15:45+00	\N	\N	1
17840	2	2021-09-18 23:00:46+00	\N	\N	1
17841	3	2021-09-19 02:12:05+00	\N	\N	1
17842	6	2021-09-19 01:52:53+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17843	5	2021-09-19 11:21:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17844	1	2021-09-19 11:18:40+00	\N	\N	1
17845	1	2021-09-19 12:36:54+00	\N	\N	1
17846	1	2021-09-19 13:19:35+00	\N	\N	1
17847	1	2021-09-19 14:31:27+00	\N	\N	1
17848	1	2021-09-19 15:22:31+00	\N	\N	1
17849	1	2021-09-19 16:40:40+00	\N	\N	1
17850	1	2021-09-19 17:39:31+00	\N	\N	1
17851	1	2021-09-19 18:15:32+00	\N	\N	1
17852	1	2021-09-19 19:41:45+00	\N	\N	1
17853	1	2021-09-19 20:39:03+00	\N	\N	1
17854	1	2021-09-19 21:12:05+00	\N	\N	1
17855	1	2021-09-19 22:35:13+00	\N	\N	1
17856	1	2021-09-19 23:35:53+00	\N	\N	1
17857	1	2021-09-20 00:49:08+00	\N	\N	1
17858	1	2021-09-20 01:15:54+00	\N	\N	1
17859	1	2021-09-20 02:22:33+00	\N	\N	1
17860	2	2021-09-19 15:16:25+00	\N	\N	1
17861	2	2021-09-19 18:58:04+00	\N	\N	1
17862	2	2021-09-19 22:38:28+00	\N	\N	1
17863	3	2021-09-20 02:58:38+00	\N	\N	1
17864	6	2021-09-20 02:01:58+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17865	5	2021-09-20 11:23:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17866	1	2021-09-20 11:21:00+00	\N	\N	1
17867	1	2021-09-20 12:14:00+00	\N	\N	1
17868	1	2021-09-20 13:49:22+00	\N	\N	1
17869	1	2021-09-20 14:09:41+00	\N	\N	1
17870	1	2021-09-20 15:18:47+00	\N	\N	1
17871	1	2021-09-20 16:25:15+00	\N	\N	1
17872	1	2021-09-20 17:26:27+00	\N	\N	1
17873	1	2021-09-20 18:20:46+00	\N	\N	1
17874	1	2021-09-20 19:14:43+00	\N	\N	1
17875	1	2021-09-20 20:14:29+00	\N	\N	1
17876	1	2021-09-20 21:27:28+00	\N	\N	1
17877	1	2021-09-20 22:50:27+00	\N	\N	1
17878	1	2021-09-20 23:48:38+00	\N	\N	1
17879	1	2021-09-21 00:32:52+00	\N	\N	1
17880	1	2021-09-21 01:10:42+00	\N	\N	1
17881	1	2021-09-21 02:16:00+00	\N	\N	1
17882	2	2021-09-20 14:54:06+00	\N	\N	1
17883	2	2021-09-20 18:57:00+00	\N	\N	1
17884	2	2021-09-20 22:41:18+00	\N	\N	1
17885	3	2021-09-21 01:41:18+00	\N	\N	1
17886	6	2021-09-21 02:57:58+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17887	5	2021-09-21 11:38:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17888	1	2021-09-21 11:33:39+00	\N	\N	1
17889	1	2021-09-21 12:39:24+00	\N	\N	1
17890	1	2021-09-21 13:29:27+00	\N	\N	1
17891	1	2021-09-21 14:32:47+00	\N	\N	1
17892	1	2021-09-21 15:12:42+00	\N	\N	1
17893	1	2021-09-21 16:48:17+00	\N	\N	1
17894	1	2021-09-21 17:19:30+00	\N	\N	1
17895	1	2021-09-21 18:14:49+00	\N	\N	1
17896	1	2021-09-21 19:32:46+00	\N	\N	1
17897	1	2021-09-21 20:28:59+00	\N	\N	1
17898	1	2021-09-21 21:19:11+00	\N	\N	1
17899	1	2021-09-21 22:37:04+00	\N	\N	1
17900	1	2021-09-21 23:52:09+00	\N	\N	1
17901	1	2021-09-22 00:43:04+00	\N	\N	1
17902	1	2021-09-22 01:23:14+00	\N	\N	1
17903	1	2021-09-22 02:21:35+00	\N	\N	1
17904	2	2021-09-21 15:17:31+00	\N	\N	1
17905	2	2021-09-21 18:36:35+00	\N	\N	1
17906	2	2021-09-21 23:05:06+00	\N	\N	1
17907	3	2021-09-22 02:58:38+00	\N	\N	1
17908	6	2021-09-22 03:10:15+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17909	5	2021-09-22 11:43:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17910	1	2021-09-22 11:40:03+00	\N	\N	1
17911	1	2021-09-22 12:44:59+00	\N	\N	1
17912	1	2021-09-22 13:42:55+00	\N	\N	1
17913	1	2021-09-22 14:48:37+00	\N	\N	1
17914	1	2021-09-22 15:43:41+00	\N	\N	1
17915	1	2021-09-22 16:33:14+00	\N	\N	1
17916	1	2021-09-22 17:30:25+00	\N	\N	1
17917	1	2021-09-22 18:19:37+00	\N	\N	1
17918	1	2021-09-22 19:45:10+00	\N	\N	1
17919	1	2021-09-22 20:39:45+00	\N	\N	1
17920	1	2021-09-22 21:14:43+00	\N	\N	1
17921	1	2021-09-22 22:15:59+00	\N	\N	1
17922	1	2021-09-22 23:48:01+00	\N	\N	1
17923	1	2021-09-23 00:23:56+00	\N	\N	1
17924	1	2021-09-23 01:21:10+00	\N	\N	1
17925	1	2021-09-23 02:19:59+00	\N	\N	1
17926	2	2021-09-22 14:46:52+00	\N	\N	1
17927	2	2021-09-22 18:40:54+00	\N	\N	1
17928	2	2021-09-22 22:49:57+00	\N	\N	1
17929	3	2021-09-23 03:28:42+00	\N	\N	1
17930	6	2021-09-23 03:02:19+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17931	5	2021-09-23 10:39:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17932	1	2021-09-23 11:49:45+00	\N	\N	1
17933	1	2021-09-23 12:17:47+00	\N	\N	1
17934	1	2021-09-23 13:22:40+00	\N	\N	1
17935	1	2021-09-23 14:32:58+00	\N	\N	1
17936	1	2021-09-23 15:46:56+00	\N	\N	1
17937	1	2021-09-23 16:29:55+00	\N	\N	1
17938	1	2021-09-23 17:18:28+00	\N	\N	1
17939	1	2021-09-23 18:15:54+00	\N	\N	1
17940	1	2021-09-23 19:36:45+00	\N	\N	1
17941	1	2021-09-23 20:14:20+00	\N	\N	1
17942	1	2021-09-23 21:36:31+00	\N	\N	1
17943	1	2021-09-23 22:25:24+00	\N	\N	1
17944	1	2021-09-23 23:33:33+00	\N	\N	1
17945	1	2021-09-24 00:14:37+00	\N	\N	1
17946	1	2021-09-24 01:21:02+00	\N	\N	1
17947	1	2021-09-24 02:26:55+00	\N	\N	1
17948	2	2021-09-23 14:57:27+00	\N	\N	1
17949	2	2021-09-23 19:19:11+00	\N	\N	1
17950	2	2021-09-23 22:30:49+00	\N	\N	1
17951	3	2021-09-24 01:56:06+00	\N	\N	1
17952	6	2021-09-24 02:23:47+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17953	5	2021-09-24 11:45:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17954	1	2021-09-24 11:15:55+00	\N	\N	1
17955	1	2021-09-24 12:35:49+00	\N	\N	1
17956	1	2021-09-24 13:37:25+00	\N	\N	1
17957	1	2021-09-24 14:29:55+00	\N	\N	1
17958	1	2021-09-24 15:48:39+00	\N	\N	1
17959	1	2021-09-24 16:18:40+00	\N	\N	1
17960	1	2021-09-24 17:14:36+00	\N	\N	1
17961	1	2021-09-24 18:12:21+00	\N	\N	1
17962	1	2021-09-24 19:31:23+00	\N	\N	1
17963	1	2021-09-24 20:36:59+00	\N	\N	1
17964	1	2021-09-24 21:45:55+00	\N	\N	1
17965	1	2021-09-24 22:32:19+00	\N	\N	1
17966	1	2021-09-24 23:48:06+00	\N	\N	1
17967	1	2021-09-25 00:37:27+00	\N	\N	1
17968	1	2021-09-25 01:17:04+00	\N	\N	1
17969	1	2021-09-25 02:17:34+00	\N	\N	1
17970	2	2021-09-24 14:38:20+00	\N	\N	1
17971	2	2021-09-24 19:18:20+00	\N	\N	1
17972	2	2021-09-24 22:58:57+00	\N	\N	1
17973	3	2021-09-25 01:34:41+00	\N	\N	1
17974	6	2021-09-25 02:46:01+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17975	5	2021-09-25 10:50:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17976	1	2021-09-25 11:08:40+00	\N	\N	1
17977	1	2021-09-25 12:09:04+00	\N	\N	1
17978	1	2021-09-25 13:35:02+00	\N	\N	1
17979	1	2021-09-25 14:22:16+00	\N	\N	1
17980	1	2021-09-25 15:18:57+00	\N	\N	1
17981	1	2021-09-25 16:11:45+00	\N	\N	1
17982	1	2021-09-25 17:51:00+00	\N	\N	1
17983	1	2021-09-25 18:46:00+00	\N	\N	1
17984	1	2021-09-25 19:41:48+00	\N	\N	1
17985	1	2021-09-25 20:18:42+00	\N	\N	1
17986	1	2021-09-25 21:26:13+00	\N	\N	1
17987	1	2021-09-25 22:29:53+00	\N	\N	1
17988	1	2021-09-25 23:52:03+00	\N	\N	1
17989	1	2021-09-26 00:38:20+00	\N	\N	1
17990	1	2021-09-26 01:16:32+00	\N	\N	1
17991	1	2021-09-26 02:13:12+00	\N	\N	1
17992	2	2021-09-25 15:03:03+00	\N	\N	1
17993	2	2021-09-25 18:33:17+00	\N	\N	1
17994	2	2021-09-25 22:56:04+00	\N	\N	1
17995	3	2021-09-26 01:45:46+00	\N	\N	1
17996	6	2021-09-26 02:12:11+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
17997	5	2021-09-26 10:36:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
17998	1	2021-09-26 11:25:00+00	\N	\N	1
17999	1	2021-09-26 12:19:02+00	\N	\N	1
18000	1	2021-09-26 13:40:49+00	\N	\N	1
18001	1	2021-09-26 14:35:25+00	\N	\N	1
18002	1	2021-09-26 15:09:39+00	\N	\N	1
18003	1	2021-09-26 16:07:40+00	\N	\N	1
18004	1	2021-09-26 17:12:22+00	\N	\N	1
18005	1	2021-09-26 18:24:52+00	\N	\N	1
18006	1	2021-09-26 19:47:44+00	\N	\N	1
18007	1	2021-09-26 20:47:04+00	\N	\N	1
18008	1	2021-09-26 21:43:34+00	\N	\N	1
18009	1	2021-09-26 22:51:44+00	\N	\N	1
18010	1	2021-09-26 23:45:02+00	\N	\N	1
18011	1	2021-09-27 00:10:04+00	\N	\N	1
18012	1	2021-09-27 01:08:21+00	\N	\N	1
18013	1	2021-09-27 02:39:17+00	\N	\N	1
18014	2	2021-09-26 14:41:53+00	\N	\N	1
18015	2	2021-09-26 18:42:05+00	\N	\N	1
18016	2	2021-09-26 22:31:47+00	\N	\N	1
18017	3	2021-09-27 03:19:18+00	\N	\N	1
18018	6	2021-09-27 02:24:30+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18019	5	2021-09-27 11:50:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18020	1	2021-09-27 11:37:35+00	\N	\N	1
18021	1	2021-09-27 12:52:12+00	\N	\N	1
18022	1	2021-09-27 13:13:32+00	\N	\N	1
18023	1	2021-09-27 14:17:33+00	\N	\N	1
18024	1	2021-09-27 15:29:19+00	\N	\N	1
18025	1	2021-09-27 16:41:17+00	\N	\N	1
18026	1	2021-09-27 17:14:04+00	\N	\N	1
18027	1	2021-09-27 18:51:06+00	\N	\N	1
18028	1	2021-09-27 19:29:20+00	\N	\N	1
18029	1	2021-09-27 20:43:46+00	\N	\N	1
18030	1	2021-09-27 21:16:07+00	\N	\N	1
18031	1	2021-09-27 22:14:16+00	\N	\N	1
18032	1	2021-09-27 23:40:16+00	\N	\N	1
18033	1	2021-09-28 00:07:53+00	\N	\N	1
18034	1	2021-09-28 01:16:39+00	\N	\N	1
18035	1	2021-09-28 02:29:05+00	\N	\N	1
18036	2	2021-09-27 14:32:22+00	\N	\N	1
18037	2	2021-09-27 19:13:06+00	\N	\N	1
18038	2	2021-09-27 23:17:17+00	\N	\N	1
18039	3	2021-09-28 03:24:03+00	\N	\N	1
18040	6	2021-09-28 02:05:35+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18041	5	2021-09-28 11:19:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18042	1	2021-09-28 11:43:26+00	\N	\N	1
18043	1	2021-09-28 12:37:03+00	\N	\N	1
18044	1	2021-09-28 13:24:18+00	\N	\N	1
18045	1	2021-09-28 14:34:30+00	\N	\N	1
18046	1	2021-09-28 15:24:20+00	\N	\N	1
18047	1	2021-09-28 16:34:21+00	\N	\N	1
18048	1	2021-09-28 17:17:38+00	\N	\N	1
18049	1	2021-09-28 18:26:32+00	\N	\N	1
18050	1	2021-09-28 19:29:41+00	\N	\N	1
18051	1	2021-09-28 20:36:12+00	\N	\N	1
18052	1	2021-09-28 21:52:06+00	\N	\N	1
18053	1	2021-09-28 22:10:38+00	\N	\N	1
18054	1	2021-09-28 23:14:01+00	\N	\N	1
18055	1	2021-09-29 00:42:41+00	\N	\N	1
18056	1	2021-09-29 01:34:24+00	\N	\N	1
18057	1	2021-09-29 02:11:42+00	\N	\N	1
18058	2	2021-09-28 15:06:04+00	\N	\N	1
18059	2	2021-09-28 19:22:21+00	\N	\N	1
18060	2	2021-09-28 22:32:24+00	\N	\N	1
18061	3	2021-09-29 01:56:54+00	\N	\N	1
18062	6	2021-09-29 02:06:29+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18063	5	2021-09-29 11:36:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18064	1	2021-09-29 11:30:53+00	\N	\N	1
18065	1	2021-09-29 12:20:06+00	\N	\N	1
18066	1	2021-09-29 13:10:07+00	\N	\N	1
18067	1	2021-09-29 14:29:30+00	\N	\N	1
18068	1	2021-09-29 15:25:09+00	\N	\N	1
18069	1	2021-09-29 16:10:50+00	\N	\N	1
18070	1	2021-09-29 17:26:29+00	\N	\N	1
18071	1	2021-09-29 18:16:20+00	\N	\N	1
18072	1	2021-09-29 19:43:29+00	\N	\N	1
18073	1	2021-09-29 20:13:05+00	\N	\N	1
18074	1	2021-09-29 21:22:16+00	\N	\N	1
18075	1	2021-09-29 22:20:33+00	\N	\N	1
18076	1	2021-09-29 23:10:21+00	\N	\N	1
18077	1	2021-09-30 00:27:24+00	\N	\N	1
18078	1	2021-09-30 01:18:00+00	\N	\N	1
18079	1	2021-09-30 02:12:03+00	\N	\N	1
18080	2	2021-09-29 14:48:21+00	\N	\N	1
18081	2	2021-09-29 19:12:51+00	\N	\N	1
18082	2	2021-09-29 22:51:56+00	\N	\N	1
18083	3	2021-09-30 03:11:58+00	\N	\N	1
18084	6	2021-09-30 01:52:37+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18085	5	2021-09-30 11:56:23+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18086	1	2021-09-30 11:37:12+00	\N	\N	1
18087	1	2021-09-30 12:15:43+00	\N	\N	1
18088	1	2021-09-30 13:14:16+00	\N	\N	1
18089	1	2021-09-30 14:26:11+00	\N	\N	1
18090	1	2021-09-30 15:41:41+00	\N	\N	1
18091	1	2021-09-30 16:36:20+00	\N	\N	1
18092	1	2021-09-30 17:21:18+00	\N	\N	1
18093	1	2021-09-30 18:09:23+00	\N	\N	1
18094	1	2021-09-30 19:16:45+00	\N	\N	1
18095	1	2021-09-30 20:31:47+00	\N	\N	1
18096	1	2021-09-30 21:38:34+00	\N	\N	1
18097	1	2021-09-30 22:50:07+00	\N	\N	1
18098	1	2021-09-30 23:07:40+00	\N	\N	1
18099	1	2021-10-01 00:50:50+00	\N	\N	1
18100	1	2021-10-01 01:16:40+00	\N	\N	1
18101	1	2021-10-01 02:28:46+00	\N	\N	1
18102	2	2021-09-30 15:15:59+00	\N	\N	1
18103	2	2021-09-30 18:50:44+00	\N	\N	1
18104	2	2021-09-30 22:36:52+00	\N	\N	1
18105	3	2021-10-01 01:44:08+00	\N	\N	1
18106	6	2021-10-01 02:00:02+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18107	5	2021-10-01 12:02:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18108	1	2021-10-01 11:28:01+00	\N	\N	1
18109	1	2021-10-01 12:33:46+00	\N	\N	1
18110	1	2021-10-01 13:22:48+00	\N	\N	1
18111	1	2021-10-01 14:12:45+00	\N	\N	1
18112	1	2021-10-01 15:33:40+00	\N	\N	1
18113	1	2021-10-01 16:49:31+00	\N	\N	1
18114	1	2021-10-01 17:31:16+00	\N	\N	1
18115	1	2021-10-01 18:18:49+00	\N	\N	1
18116	1	2021-10-01 19:26:32+00	\N	\N	1
18117	1	2021-10-01 20:47:30+00	\N	\N	1
18118	1	2021-10-01 21:24:23+00	\N	\N	1
18119	1	2021-10-01 22:45:37+00	\N	\N	1
18120	1	2021-10-01 23:37:14+00	\N	\N	1
18121	1	2021-10-02 00:20:34+00	\N	\N	1
18122	1	2021-10-02 01:50:02+00	\N	\N	1
18123	1	2021-10-02 02:12:36+00	\N	\N	1
18124	2	2021-10-01 14:47:40+00	\N	\N	1
18125	2	2021-10-01 19:08:53+00	\N	\N	1
18126	2	2021-10-01 22:58:42+00	\N	\N	1
18127	3	2021-10-02 02:53:53+00	\N	\N	1
18128	6	2021-10-02 02:16:45+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18129	5	2021-10-02 12:08:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18130	1	2021-10-02 11:43:24+00	\N	\N	1
18131	1	2021-10-02 12:28:02+00	\N	\N	1
18132	1	2021-10-02 13:12:33+00	\N	\N	1
18133	1	2021-10-02 14:33:26+00	\N	\N	1
18134	1	2021-10-02 15:34:14+00	\N	\N	1
18135	1	2021-10-02 16:14:45+00	\N	\N	1
18136	1	2021-10-02 17:15:04+00	\N	\N	1
18137	1	2021-10-02 18:40:24+00	\N	\N	1
18138	1	2021-10-02 19:47:08+00	\N	\N	1
18139	1	2021-10-02 20:26:00+00	\N	\N	1
18140	1	2021-10-02 21:10:05+00	\N	\N	1
18141	1	2021-10-02 22:19:43+00	\N	\N	1
18142	1	2021-10-02 23:20:33+00	\N	\N	1
18143	1	2021-10-03 00:20:28+00	\N	\N	1
18144	1	2021-10-03 01:31:07+00	\N	\N	1
18145	1	2021-10-03 02:18:03+00	\N	\N	1
18146	2	2021-10-02 15:02:36+00	\N	\N	1
18147	2	2021-10-02 18:43:14+00	\N	\N	1
18148	2	2021-10-02 23:01:16+00	\N	\N	1
18149	3	2021-10-03 02:01:58+00	\N	\N	1
18150	6	2021-10-03 02:48:10+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18151	5	2021-10-03 12:23:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18152	1	2021-10-03 11:46:16+00	\N	\N	1
18153	1	2021-10-03 12:38:55+00	\N	\N	1
18154	1	2021-10-03 13:22:21+00	\N	\N	1
18155	1	2021-10-03 14:39:40+00	\N	\N	1
18156	1	2021-10-03 15:09:41+00	\N	\N	1
18157	1	2021-10-03 16:44:36+00	\N	\N	1
18158	1	2021-10-03 17:45:47+00	\N	\N	1
18159	1	2021-10-03 18:07:58+00	\N	\N	1
18160	1	2021-10-03 19:42:26+00	\N	\N	1
18161	1	2021-10-03 20:14:35+00	\N	\N	1
18162	1	2021-10-03 21:23:30+00	\N	\N	1
18163	1	2021-10-03 22:31:15+00	\N	\N	1
18164	1	2021-10-03 23:17:20+00	\N	\N	1
18165	1	2021-10-04 00:35:11+00	\N	\N	1
18166	1	2021-10-04 01:14:44+00	\N	\N	1
18167	1	2021-10-04 02:10:11+00	\N	\N	1
18168	2	2021-10-03 14:54:33+00	\N	\N	1
18169	2	2021-10-03 19:26:52+00	\N	\N	1
18170	2	2021-10-03 23:25:49+00	\N	\N	1
18171	3	2021-10-04 02:54:32+00	\N	\N	1
18172	6	2021-10-04 02:22:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18173	5	2021-10-04 11:49:14+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18174	1	2021-10-04 11:41:11+00	\N	\N	1
18175	1	2021-10-04 12:36:13+00	\N	\N	1
18176	1	2021-10-04 13:19:02+00	\N	\N	1
18177	1	2021-10-04 14:42:30+00	\N	\N	1
18178	1	2021-10-04 15:23:23+00	\N	\N	1
18179	1	2021-10-04 16:12:29+00	\N	\N	1
18180	1	2021-10-04 17:11:15+00	\N	\N	1
18181	1	2021-10-04 18:11:08+00	\N	\N	1
18182	1	2021-10-04 19:36:22+00	\N	\N	1
18183	1	2021-10-04 20:39:45+00	\N	\N	1
18184	1	2021-10-04 21:30:19+00	\N	\N	1
18185	1	2021-10-04 22:41:19+00	\N	\N	1
18186	1	2021-10-04 23:48:09+00	\N	\N	1
18187	1	2021-10-05 00:42:05+00	\N	\N	1
18188	1	2021-10-05 01:50:34+00	\N	\N	1
18189	1	2021-10-05 02:11:05+00	\N	\N	1
18190	2	2021-10-04 15:25:07+00	\N	\N	1
18191	2	2021-10-04 18:32:09+00	\N	\N	1
18192	2	2021-10-04 23:16:00+00	\N	\N	1
18193	3	2021-10-05 02:55:04+00	\N	\N	1
18194	6	2021-10-05 01:46:48+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18195	5	2021-10-05 11:55:45+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18196	1	2021-10-05 11:38:21+00	\N	\N	1
18197	1	2021-10-05 12:24:55+00	\N	\N	1
18198	1	2021-10-05 13:51:58+00	\N	\N	1
18199	1	2021-10-05 14:07:49+00	\N	\N	1
18200	1	2021-10-05 15:40:26+00	\N	\N	1
18201	1	2021-10-05 16:19:20+00	\N	\N	1
18202	1	2021-10-05 17:45:54+00	\N	\N	1
18203	1	2021-10-05 18:31:52+00	\N	\N	1
18204	1	2021-10-05 19:31:42+00	\N	\N	1
18205	1	2021-10-05 20:36:30+00	\N	\N	1
18206	1	2021-10-05 21:36:31+00	\N	\N	1
18207	1	2021-10-05 22:41:30+00	\N	\N	1
18208	1	2021-10-05 23:25:02+00	\N	\N	1
18209	1	2021-10-06 00:28:57+00	\N	\N	1
18210	1	2021-10-06 01:37:29+00	\N	\N	1
18211	1	2021-10-06 02:20:07+00	\N	\N	1
18212	2	2021-10-05 15:12:06+00	\N	\N	1
18213	2	2021-10-05 18:44:55+00	\N	\N	1
18214	2	2021-10-05 23:12:07+00	\N	\N	1
18215	3	2021-10-06 02:08:09+00	\N	\N	1
18216	6	2021-10-06 02:25:16+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18217	5	2021-10-06 10:55:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18218	1	2021-10-06 11:43:50+00	\N	\N	1
18219	1	2021-10-06 12:40:01+00	\N	\N	1
18220	1	2021-10-06 13:15:16+00	\N	\N	1
18221	1	2021-10-06 14:14:41+00	\N	\N	1
18222	1	2021-10-06 15:10:15+00	\N	\N	1
18223	1	2021-10-06 16:37:47+00	\N	\N	1
18224	1	2021-10-06 17:39:30+00	\N	\N	1
18225	1	2021-10-06 18:49:58+00	\N	\N	1
18226	1	2021-10-06 19:25:50+00	\N	\N	1
18227	1	2021-10-06 20:27:22+00	\N	\N	1
18228	1	2021-10-06 21:37:32+00	\N	\N	1
18229	1	2021-10-06 22:30:20+00	\N	\N	1
18230	1	2021-10-06 23:17:25+00	\N	\N	1
18231	1	2021-10-07 00:14:58+00	\N	\N	1
18232	1	2021-10-07 01:12:55+00	\N	\N	1
18233	1	2021-10-07 02:47:06+00	\N	\N	1
18234	2	2021-10-06 14:53:40+00	\N	\N	1
18235	2	2021-10-06 18:31:19+00	\N	\N	1
18236	2	2021-10-06 23:23:02+00	\N	\N	1
18237	3	2021-10-07 03:00:31+00	\N	\N	1
18238	6	2021-10-07 02:12:27+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18344	2	2021-10-11 14:40:01+00	\N	\N	1
18239	5	2021-10-07 12:26:19+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18240	1	2021-10-07 11:23:23+00	\N	\N	1
18241	1	2021-10-07 12:32:30+00	\N	\N	1
18242	1	2021-10-07 13:33:59+00	\N	\N	1
18243	1	2021-10-07 14:18:59+00	\N	\N	1
18244	1	2021-10-07 15:30:36+00	\N	\N	1
18245	1	2021-10-07 16:28:30+00	\N	\N	1
18246	1	2021-10-07 17:20:31+00	\N	\N	1
18247	1	2021-10-07 18:17:42+00	\N	\N	1
18248	1	2021-10-07 19:39:11+00	\N	\N	1
18249	1	2021-10-07 20:28:52+00	\N	\N	1
18250	1	2021-10-07 21:45:14+00	\N	\N	1
18251	1	2021-10-07 22:38:40+00	\N	\N	1
18252	1	2021-10-07 23:29:29+00	\N	\N	1
18253	1	2021-10-08 00:12:48+00	\N	\N	1
18254	1	2021-10-08 01:52:10+00	\N	\N	1
18255	1	2021-10-08 02:27:28+00	\N	\N	1
18256	2	2021-10-07 15:09:57+00	\N	\N	1
18257	2	2021-10-07 18:55:29+00	\N	\N	1
18258	2	2021-10-07 22:30:59+00	\N	\N	1
18259	3	2021-10-08 01:42:50+00	\N	\N	1
18260	6	2021-10-08 01:56:41+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18261	5	2021-10-08 12:28:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18262	1	2021-10-08 11:18:11+00	\N	\N	1
18263	1	2021-10-08 12:10:28+00	\N	\N	1
18264	1	2021-10-08 13:22:02+00	\N	\N	1
18265	1	2021-10-08 14:37:24+00	\N	\N	1
18266	1	2021-10-08 15:35:45+00	\N	\N	1
18267	1	2021-10-08 16:49:43+00	\N	\N	1
18268	1	2021-10-08 17:37:16+00	\N	\N	1
18269	1	2021-10-08 18:51:50+00	\N	\N	1
18270	1	2021-10-08 19:09:21+00	\N	\N	1
18271	1	2021-10-08 20:17:49+00	\N	\N	1
18272	1	2021-10-08 21:15:52+00	\N	\N	1
18273	1	2021-10-08 22:36:36+00	\N	\N	1
18274	1	2021-10-08 23:15:04+00	\N	\N	1
18275	1	2021-10-09 00:46:44+00	\N	\N	1
18276	1	2021-10-09 01:46:55+00	\N	\N	1
18277	1	2021-10-09 02:12:36+00	\N	\N	1
18278	2	2021-10-08 15:07:12+00	\N	\N	1
18279	2	2021-10-08 19:26:43+00	\N	\N	1
18280	2	2021-10-08 23:07:20+00	\N	\N	1
18281	3	2021-10-09 01:34:25+00	\N	\N	1
18282	6	2021-10-09 02:43:59+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18283	5	2021-10-09 12:03:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18284	1	2021-10-09 11:24:41+00	\N	\N	1
18285	1	2021-10-09 12:11:50+00	\N	\N	1
18286	1	2021-10-09 13:14:26+00	\N	\N	1
18287	1	2021-10-09 14:15:42+00	\N	\N	1
18288	1	2021-10-09 15:34:27+00	\N	\N	1
18289	1	2021-10-09 16:22:30+00	\N	\N	1
18290	1	2021-10-09 17:42:57+00	\N	\N	1
18291	1	2021-10-09 18:22:19+00	\N	\N	1
18292	1	2021-10-09 19:37:52+00	\N	\N	1
18293	1	2021-10-09 20:25:39+00	\N	\N	1
18294	1	2021-10-09 21:33:00+00	\N	\N	1
18295	1	2021-10-09 22:42:33+00	\N	\N	1
18296	1	2021-10-09 23:41:34+00	\N	\N	1
18297	1	2021-10-10 00:09:00+00	\N	\N	1
18298	1	2021-10-10 01:42:15+00	\N	\N	1
18299	1	2021-10-10 02:22:56+00	\N	\N	1
18300	2	2021-10-09 15:05:11+00	\N	\N	1
18301	2	2021-10-09 18:38:30+00	\N	\N	1
18302	2	2021-10-09 22:47:04+00	\N	\N	1
18303	3	2021-10-10 03:28:53+00	\N	\N	1
18304	6	2021-10-10 01:57:20+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18305	5	2021-10-10 11:20:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18306	1	2021-10-10 11:24:44+00	\N	\N	1
18307	1	2021-10-10 12:29:23+00	\N	\N	1
18308	1	2021-10-10 13:42:59+00	\N	\N	1
18309	1	2021-10-10 14:11:47+00	\N	\N	1
18310	1	2021-10-10 15:42:11+00	\N	\N	1
18311	1	2021-10-10 16:07:41+00	\N	\N	1
18312	1	2021-10-10 17:41:39+00	\N	\N	1
18313	1	2021-10-10 18:16:16+00	\N	\N	1
18314	1	2021-10-10 19:38:08+00	\N	\N	1
18315	1	2021-10-10 20:44:08+00	\N	\N	1
18316	1	2021-10-10 21:12:05+00	\N	\N	1
18317	1	2021-10-10 22:32:17+00	\N	\N	1
18318	1	2021-10-10 23:52:12+00	\N	\N	1
18319	1	2021-10-11 00:15:01+00	\N	\N	1
18320	1	2021-10-11 01:36:48+00	\N	\N	1
18321	1	2021-10-11 02:28:08+00	\N	\N	1
18322	2	2021-10-10 14:46:03+00	\N	\N	1
18323	2	2021-10-10 19:15:48+00	\N	\N	1
18324	2	2021-10-10 22:49:35+00	\N	\N	1
18325	3	2021-10-11 01:42:20+00	\N	\N	1
18326	6	2021-10-11 02:11:04+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18327	5	2021-10-11 12:18:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18328	1	2021-10-11 11:21:57+00	\N	\N	1
18329	1	2021-10-11 12:10:48+00	\N	\N	1
18330	1	2021-10-11 13:15:48+00	\N	\N	1
18331	1	2021-10-11 14:30:53+00	\N	\N	1
18332	1	2021-10-11 15:32:05+00	\N	\N	1
18333	1	2021-10-11 16:45:44+00	\N	\N	1
18334	1	2021-10-11 17:20:27+00	\N	\N	1
18335	1	2021-10-11 18:39:30+00	\N	\N	1
18336	1	2021-10-11 19:30:00+00	\N	\N	1
18337	1	2021-10-11 20:46:35+00	\N	\N	1
18338	1	2021-10-11 21:41:36+00	\N	\N	1
18339	1	2021-10-11 22:48:20+00	\N	\N	1
18340	1	2021-10-11 23:42:45+00	\N	\N	1
18341	1	2021-10-12 00:16:39+00	\N	\N	1
18342	1	2021-10-12 01:46:58+00	\N	\N	1
18343	1	2021-10-12 02:47:10+00	\N	\N	1
18345	2	2021-10-11 19:15:00+00	\N	\N	1
18346	2	2021-10-11 22:43:30+00	\N	\N	1
18347	3	2021-10-12 02:51:29+00	\N	\N	1
18348	6	2021-10-12 02:23:47+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18349	5	2021-10-12 11:48:05+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18350	1	2021-10-12 11:21:36+00	\N	\N	1
18351	1	2021-10-12 12:33:05+00	\N	\N	1
18352	1	2021-10-12 13:22:15+00	\N	\N	1
18353	1	2021-10-12 14:40:50+00	\N	\N	1
18354	1	2021-10-12 15:09:48+00	\N	\N	1
18355	1	2021-10-12 16:13:27+00	\N	\N	1
18356	1	2021-10-12 17:34:52+00	\N	\N	1
18357	1	2021-10-12 18:33:12+00	\N	\N	1
18358	1	2021-10-12 19:51:25+00	\N	\N	1
18359	1	2021-10-12 20:20:03+00	\N	\N	1
18360	1	2021-10-12 21:48:06+00	\N	\N	1
18361	1	2021-10-12 22:17:32+00	\N	\N	1
18362	1	2021-10-12 23:40:57+00	\N	\N	1
18363	1	2021-10-13 00:30:21+00	\N	\N	1
18364	1	2021-10-13 01:39:25+00	\N	\N	1
18365	1	2021-10-13 02:13:25+00	\N	\N	1
18366	2	2021-10-12 15:26:40+00	\N	\N	1
18367	2	2021-10-12 18:48:37+00	\N	\N	1
18368	2	2021-10-12 23:11:12+00	\N	\N	1
18369	3	2021-10-13 03:17:44+00	\N	\N	1
18370	6	2021-10-13 02:05:38+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18371	5	2021-10-13 12:27:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18372	1	2021-10-13 11:50:44+00	\N	\N	1
18373	1	2021-10-13 12:36:02+00	\N	\N	1
18374	1	2021-10-13 13:49:39+00	\N	\N	1
18375	1	2021-10-13 14:33:21+00	\N	\N	1
18376	1	2021-10-13 15:12:59+00	\N	\N	1
18377	1	2021-10-13 16:19:21+00	\N	\N	1
18378	1	2021-10-13 17:10:38+00	\N	\N	1
18379	1	2021-10-13 18:50:02+00	\N	\N	1
18380	1	2021-10-13 19:33:03+00	\N	\N	1
18381	1	2021-10-13 20:21:44+00	\N	\N	1
18382	1	2021-10-13 21:08:38+00	\N	\N	1
18383	1	2021-10-13 22:09:17+00	\N	\N	1
18384	1	2021-10-13 23:50:34+00	\N	\N	1
18385	1	2021-10-14 00:17:08+00	\N	\N	1
18386	1	2021-10-14 01:39:49+00	\N	\N	1
18387	1	2021-10-14 02:17:41+00	\N	\N	1
18388	2	2021-10-13 15:02:19+00	\N	\N	1
18389	2	2021-10-13 18:52:17+00	\N	\N	1
18390	2	2021-10-13 23:21:40+00	\N	\N	1
18391	3	2021-10-14 02:30:15+00	\N	\N	1
18392	6	2021-10-14 03:05:43+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18393	5	2021-10-14 11:13:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18394	1	2021-10-14 11:33:20+00	\N	\N	1
18395	1	2021-10-14 12:10:28+00	\N	\N	1
18396	1	2021-10-14 13:30:07+00	\N	\N	1
18397	1	2021-10-14 14:49:45+00	\N	\N	1
18398	1	2021-10-14 15:47:47+00	\N	\N	1
18399	1	2021-10-14 16:35:14+00	\N	\N	1
18400	1	2021-10-14 17:38:38+00	\N	\N	1
18401	1	2021-10-14 18:22:37+00	\N	\N	1
18402	1	2021-10-14 19:33:48+00	\N	\N	1
18403	1	2021-10-14 20:20:58+00	\N	\N	1
18404	1	2021-10-14 21:21:28+00	\N	\N	1
18405	1	2021-10-14 22:51:06+00	\N	\N	1
18406	1	2021-10-14 23:18:09+00	\N	\N	1
18407	1	2021-10-15 00:34:50+00	\N	\N	1
18408	1	2021-10-15 01:36:52+00	\N	\N	1
18409	1	2021-10-15 02:42:42+00	\N	\N	1
18410	2	2021-10-14 14:55:41+00	\N	\N	1
18411	2	2021-10-14 19:07:55+00	\N	\N	1
18412	2	2021-10-14 22:42:37+00	\N	\N	1
18413	3	2021-10-15 02:15:47+00	\N	\N	1
18414	6	2021-10-15 02:48:47+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18415	5	2021-10-15 11:45:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18416	1	2021-10-15 11:33:46+00	\N	\N	1
18417	1	2021-10-15 12:41:13+00	\N	\N	1
18418	1	2021-10-15 13:39:22+00	\N	\N	1
18419	1	2021-10-15 14:37:31+00	\N	\N	1
18420	1	2021-10-15 15:50:22+00	\N	\N	1
18421	1	2021-10-15 16:13:42+00	\N	\N	1
18422	1	2021-10-15 17:32:57+00	\N	\N	1
18423	1	2021-10-15 18:25:57+00	\N	\N	1
18424	1	2021-10-15 19:33:48+00	\N	\N	1
18425	1	2021-10-15 20:52:08+00	\N	\N	1
18426	1	2021-10-15 21:35:57+00	\N	\N	1
18427	1	2021-10-15 22:12:39+00	\N	\N	1
18428	1	2021-10-15 23:42:34+00	\N	\N	1
18429	1	2021-10-16 00:42:57+00	\N	\N	1
18430	1	2021-10-16 01:19:51+00	\N	\N	1
18431	1	2021-10-16 02:12:17+00	\N	\N	1
18432	2	2021-10-15 14:38:22+00	\N	\N	1
18433	2	2021-10-15 19:08:19+00	\N	\N	1
18434	2	2021-10-15 23:05:19+00	\N	\N	1
18435	3	2021-10-16 02:57:25+00	\N	\N	1
18436	6	2021-10-16 02:50:10+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18437	5	2021-10-16 11:07:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18438	1	2021-10-16 11:23:24+00	\N	\N	1
18439	1	2021-10-16 12:44:39+00	\N	\N	1
18440	1	2021-10-16 13:18:13+00	\N	\N	1
18441	1	2021-10-16 14:44:58+00	\N	\N	1
18442	1	2021-10-16 15:26:58+00	\N	\N	1
18443	1	2021-10-16 16:35:33+00	\N	\N	1
18444	1	2021-10-16 17:09:05+00	\N	\N	1
18445	1	2021-10-16 18:33:22+00	\N	\N	1
18446	1	2021-10-16 19:38:24+00	\N	\N	1
18447	1	2021-10-16 20:46:17+00	\N	\N	1
18448	1	2021-10-16 21:36:03+00	\N	\N	1
18449	1	2021-10-16 22:44:14+00	\N	\N	1
18450	1	2021-10-16 23:13:17+00	\N	\N	1
18451	1	2021-10-17 00:07:53+00	\N	\N	1
18452	1	2021-10-17 01:44:16+00	\N	\N	1
18453	1	2021-10-17 02:22:15+00	\N	\N	1
18454	2	2021-10-16 15:09:16+00	\N	\N	1
18455	2	2021-10-16 18:45:42+00	\N	\N	1
18456	2	2021-10-16 23:01:16+00	\N	\N	1
18457	3	2021-10-17 01:32:51+00	\N	\N	1
18458	6	2021-10-17 01:59:35+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18459	5	2021-10-17 10:57:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18460	1	2021-10-17 11:10:47+00	\N	\N	1
18461	1	2021-10-17 12:26:39+00	\N	\N	1
18462	1	2021-10-17 13:51:38+00	\N	\N	1
18463	1	2021-10-17 14:20:37+00	\N	\N	1
18464	1	2021-10-17 15:49:52+00	\N	\N	1
18465	1	2021-10-17 16:28:32+00	\N	\N	1
18466	1	2021-10-17 17:35:27+00	\N	\N	1
18467	1	2021-10-17 18:42:22+00	\N	\N	1
18468	1	2021-10-17 19:40:03+00	\N	\N	1
18469	1	2021-10-17 20:36:13+00	\N	\N	1
18470	1	2021-10-17 21:24:08+00	\N	\N	1
18471	1	2021-10-17 22:15:14+00	\N	\N	1
18472	1	2021-10-17 23:29:29+00	\N	\N	1
18473	1	2021-10-18 00:37:07+00	\N	\N	1
18474	1	2021-10-18 01:11:39+00	\N	\N	1
18475	1	2021-10-18 02:42:49+00	\N	\N	1
18476	2	2021-10-17 15:14:26+00	\N	\N	1
18477	2	2021-10-17 18:38:22+00	\N	\N	1
18478	2	2021-10-17 22:32:05+00	\N	\N	1
18479	3	2021-10-18 03:05:21+00	\N	\N	1
18480	6	2021-10-18 01:56:02+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18481	5	2021-10-18 10:55:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18482	1	2021-10-18 11:12:33+00	\N	\N	1
18483	1	2021-10-18 12:19:03+00	\N	\N	1
18484	1	2021-10-18 13:11:18+00	\N	\N	1
18485	1	2021-10-18 14:44:41+00	\N	\N	1
18486	1	2021-10-18 15:38:39+00	\N	\N	1
18487	1	2021-10-18 16:43:54+00	\N	\N	1
18488	1	2021-10-18 17:29:05+00	\N	\N	1
18489	1	2021-10-18 18:22:01+00	\N	\N	1
18490	1	2021-10-18 19:19:38+00	\N	\N	1
18491	1	2021-10-18 20:08:59+00	\N	\N	1
18492	1	2021-10-18 21:34:22+00	\N	\N	1
18493	1	2021-10-18 22:09:01+00	\N	\N	1
18494	1	2021-10-18 23:37:52+00	\N	\N	1
18495	1	2021-10-19 00:52:25+00	\N	\N	1
18496	1	2021-10-19 01:07:31+00	\N	\N	1
18497	1	2021-10-19 02:30:25+00	\N	\N	1
18498	2	2021-10-18 15:07:50+00	\N	\N	1
18499	2	2021-10-18 18:57:54+00	\N	\N	1
18500	2	2021-10-18 23:18:35+00	\N	\N	1
18501	3	2021-10-19 01:33:58+00	\N	\N	1
18502	6	2021-10-19 02:47:07+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18503	5	2021-10-19 11:50:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18504	1	2021-10-19 11:08:55+00	\N	\N	1
18505	1	2021-10-19 12:07:56+00	\N	\N	1
18506	1	2021-10-19 13:41:29+00	\N	\N	1
18507	1	2021-10-19 14:36:30+00	\N	\N	1
18508	1	2021-10-19 15:32:52+00	\N	\N	1
18509	1	2021-10-19 16:32:48+00	\N	\N	1
18510	1	2021-10-19 17:24:33+00	\N	\N	1
18511	1	2021-10-19 18:26:34+00	\N	\N	1
18512	1	2021-10-19 19:24:17+00	\N	\N	1
18513	1	2021-10-19 20:14:40+00	\N	\N	1
18514	1	2021-10-19 21:43:11+00	\N	\N	1
18515	1	2021-10-19 22:14:01+00	\N	\N	1
18516	1	2021-10-19 23:31:56+00	\N	\N	1
18517	1	2021-10-20 00:50:21+00	\N	\N	1
18518	1	2021-10-20 01:24:48+00	\N	\N	1
18519	1	2021-10-20 02:49:02+00	\N	\N	1
18520	2	2021-10-19 14:51:47+00	\N	\N	1
18521	2	2021-10-19 19:07:00+00	\N	\N	1
18522	2	2021-10-19 22:45:24+00	\N	\N	1
18523	3	2021-10-20 02:29:46+00	\N	\N	1
18524	6	2021-10-20 02:57:49+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18525	5	2021-10-20 12:16:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18526	1	2021-10-20 11:17:24+00	\N	\N	1
18527	1	2021-10-20 12:13:50+00	\N	\N	1
18528	1	2021-10-20 13:48:20+00	\N	\N	1
18529	1	2021-10-20 14:49:24+00	\N	\N	1
18530	1	2021-10-20 15:15:04+00	\N	\N	1
18531	1	2021-10-20 16:29:22+00	\N	\N	1
18532	1	2021-10-20 17:20:51+00	\N	\N	1
18533	1	2021-10-20 18:17:16+00	\N	\N	1
18534	1	2021-10-20 19:19:06+00	\N	\N	1
18535	1	2021-10-20 20:19:28+00	\N	\N	1
18536	1	2021-10-20 21:21:52+00	\N	\N	1
18537	1	2021-10-20 22:19:47+00	\N	\N	1
18538	1	2021-10-20 23:38:50+00	\N	\N	1
18539	1	2021-10-21 00:39:37+00	\N	\N	1
18540	1	2021-10-21 01:30:54+00	\N	\N	1
18541	1	2021-10-21 02:48:08+00	\N	\N	1
18542	2	2021-10-20 14:47:48+00	\N	\N	1
18543	2	2021-10-20 18:36:33+00	\N	\N	1
18544	2	2021-10-20 22:50:01+00	\N	\N	1
18545	3	2021-10-21 03:06:02+00	\N	\N	1
18646	1	2021-10-25 21:24:37+00	\N	\N	1
18647	1	2021-10-25 22:22:54+00	\N	\N	1
18648	1	2021-10-25 23:12:26+00	\N	\N	1
18649	1	2021-10-26 00:12:58+00	\N	\N	1
18650	1	2021-10-26 01:33:40+00	\N	\N	1
18651	1	2021-10-26 02:18:50+00	\N	\N	1
18546	6	2021-10-21 02:57:54+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18547	5	2021-10-21 10:42:14+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18548	1	2021-10-21 11:36:31+00	\N	\N	1
18549	1	2021-10-21 12:16:44+00	\N	\N	1
18550	1	2021-10-21 13:42:05+00	\N	\N	1
18551	1	2021-10-21 14:22:23+00	\N	\N	1
18552	1	2021-10-21 15:51:25+00	\N	\N	1
18553	1	2021-10-21 16:27:41+00	\N	\N	1
18554	1	2021-10-21 17:41:37+00	\N	\N	1
18555	1	2021-10-21 18:39:24+00	\N	\N	1
18556	1	2021-10-21 19:30:43+00	\N	\N	1
18557	1	2021-10-21 20:46:11+00	\N	\N	1
18558	1	2021-10-21 21:14:09+00	\N	\N	1
18559	1	2021-10-21 22:24:17+00	\N	\N	1
18560	1	2021-10-21 23:46:48+00	\N	\N	1
18561	1	2021-10-22 00:16:04+00	\N	\N	1
18562	1	2021-10-22 01:35:24+00	\N	\N	1
18563	1	2021-10-22 02:36:59+00	\N	\N	1
18564	2	2021-10-21 15:10:17+00	\N	\N	1
18565	2	2021-10-21 19:06:32+00	\N	\N	1
18566	2	2021-10-21 23:00:25+00	\N	\N	1
18567	3	2021-10-22 02:54:24+00	\N	\N	1
18568	6	2021-10-22 01:49:52+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18569	5	2021-10-22 10:37:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18570	1	2021-10-22 11:38:33+00	\N	\N	1
18571	1	2021-10-22 12:18:26+00	\N	\N	1
18572	1	2021-10-22 13:47:05+00	\N	\N	1
18573	1	2021-10-22 14:41:04+00	\N	\N	1
18574	1	2021-10-22 15:12:00+00	\N	\N	1
18575	1	2021-10-22 16:42:36+00	\N	\N	1
18576	1	2021-10-22 17:43:41+00	\N	\N	1
18577	1	2021-10-22 18:26:39+00	\N	\N	1
18578	1	2021-10-22 19:39:47+00	\N	\N	1
18579	1	2021-10-22 20:24:36+00	\N	\N	1
18580	1	2021-10-22 21:30:18+00	\N	\N	1
18581	1	2021-10-22 22:49:04+00	\N	\N	1
18582	1	2021-10-22 23:24:39+00	\N	\N	1
18583	1	2021-10-23 00:47:21+00	\N	\N	1
18584	1	2021-10-23 01:44:03+00	\N	\N	1
18585	1	2021-10-23 02:44:31+00	\N	\N	1
18586	2	2021-10-22 14:52:50+00	\N	\N	1
18587	2	2021-10-22 19:15:29+00	\N	\N	1
18588	2	2021-10-22 22:48:30+00	\N	\N	1
18589	3	2021-10-23 01:32:55+00	\N	\N	1
18590	6	2021-10-23 01:59:11+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18591	5	2021-10-23 11:19:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18592	1	2021-10-23 11:42:44+00	\N	\N	1
18593	1	2021-10-23 12:50:00+00	\N	\N	1
18594	1	2021-10-23 13:19:08+00	\N	\N	1
18595	1	2021-10-23 14:41:39+00	\N	\N	1
18596	1	2021-10-23 15:42:57+00	\N	\N	1
18597	1	2021-10-23 16:25:42+00	\N	\N	1
18598	1	2021-10-23 17:13:06+00	\N	\N	1
18599	1	2021-10-23 18:24:24+00	\N	\N	1
18600	1	2021-10-23 19:17:32+00	\N	\N	1
18601	1	2021-10-23 20:34:09+00	\N	\N	1
18602	1	2021-10-23 21:50:00+00	\N	\N	1
18603	1	2021-10-23 22:23:06+00	\N	\N	1
18604	1	2021-10-23 23:29:46+00	\N	\N	1
18605	1	2021-10-24 00:31:48+00	\N	\N	1
18606	1	2021-10-24 01:41:06+00	\N	\N	1
18607	1	2021-10-24 02:42:22+00	\N	\N	1
18608	2	2021-10-23 14:47:33+00	\N	\N	1
18609	2	2021-10-23 18:33:51+00	\N	\N	1
18610	2	2021-10-23 23:23:29+00	\N	\N	1
18611	3	2021-10-24 02:11:54+00	\N	\N	1
18612	6	2021-10-24 03:11:07+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18613	5	2021-10-24 11:01:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18614	1	2021-10-24 11:15:23+00	\N	\N	1
18615	1	2021-10-24 12:26:27+00	\N	\N	1
18616	1	2021-10-24 13:32:41+00	\N	\N	1
18617	1	2021-10-24 14:48:55+00	\N	\N	1
18618	1	2021-10-24 15:21:55+00	\N	\N	1
18619	1	2021-10-24 16:34:57+00	\N	\N	1
18620	1	2021-10-24 17:32:29+00	\N	\N	1
18621	1	2021-10-24 18:41:58+00	\N	\N	1
18622	1	2021-10-24 19:31:20+00	\N	\N	1
18623	1	2021-10-24 20:33:40+00	\N	\N	1
18624	1	2021-10-24 21:50:18+00	\N	\N	1
18625	1	2021-10-24 22:42:54+00	\N	\N	1
18626	1	2021-10-24 23:31:19+00	\N	\N	1
18627	1	2021-10-25 00:31:18+00	\N	\N	1
18628	1	2021-10-25 01:22:58+00	\N	\N	1
18629	1	2021-10-25 02:51:27+00	\N	\N	1
18630	2	2021-10-24 14:30:54+00	\N	\N	1
18631	2	2021-10-24 18:42:26+00	\N	\N	1
18632	2	2021-10-24 23:09:38+00	\N	\N	1
18633	3	2021-10-25 03:19:31+00	\N	\N	1
18634	6	2021-10-25 03:11:12+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18635	5	2021-10-25 10:36:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18636	1	2021-10-25 11:19:21+00	\N	\N	1
18637	1	2021-10-25 12:49:08+00	\N	\N	1
18638	1	2021-10-25 13:27:24+00	\N	\N	1
18639	1	2021-10-25 14:52:15+00	\N	\N	1
18640	1	2021-10-25 15:22:26+00	\N	\N	1
18641	1	2021-10-25 16:18:28+00	\N	\N	1
18642	1	2021-10-25 17:43:50+00	\N	\N	1
18643	1	2021-10-25 18:39:10+00	\N	\N	1
18644	1	2021-10-25 19:23:45+00	\N	\N	1
18645	1	2021-10-25 20:34:54+00	\N	\N	1
18652	2	2021-10-25 15:22:57+00	\N	\N	1
18653	2	2021-10-25 18:40:29+00	\N	\N	1
18654	2	2021-10-25 23:14:56+00	\N	\N	1
18655	3	2021-10-26 02:18:18+00	\N	\N	1
18656	6	2021-10-26 01:57:25+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18657	5	2021-10-26 11:57:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18658	1	2021-10-26 11:34:12+00	\N	\N	1
18659	1	2021-10-26 12:21:05+00	\N	\N	1
18660	1	2021-10-26 13:24:15+00	\N	\N	1
18661	1	2021-10-26 14:09:36+00	\N	\N	1
18662	1	2021-10-26 15:31:13+00	\N	\N	1
18663	1	2021-10-26 16:46:45+00	\N	\N	1
18664	1	2021-10-26 17:21:01+00	\N	\N	1
18665	1	2021-10-26 18:25:33+00	\N	\N	1
18666	1	2021-10-26 19:40:40+00	\N	\N	1
18667	1	2021-10-26 20:13:35+00	\N	\N	1
18668	1	2021-10-26 21:34:44+00	\N	\N	1
18669	1	2021-10-26 22:29:58+00	\N	\N	1
18670	1	2021-10-26 23:22:44+00	\N	\N	1
18671	1	2021-10-27 00:19:42+00	\N	\N	1
18672	1	2021-10-27 01:34:50+00	\N	\N	1
18673	1	2021-10-27 02:37:42+00	\N	\N	1
18674	2	2021-10-26 14:57:50+00	\N	\N	1
18675	2	2021-10-26 19:07:10+00	\N	\N	1
18676	2	2021-10-26 23:00:47+00	\N	\N	1
18677	3	2021-10-27 02:06:43+00	\N	\N	1
18678	6	2021-10-27 01:46:33+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18679	5	2021-10-27 11:18:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18680	1	2021-10-27 11:27:28+00	\N	\N	1
18681	1	2021-10-27 12:29:04+00	\N	\N	1
18682	1	2021-10-27 13:22:01+00	\N	\N	1
18683	1	2021-10-27 14:49:58+00	\N	\N	1
18684	1	2021-10-27 15:33:38+00	\N	\N	1
18685	1	2021-10-27 16:09:06+00	\N	\N	1
18686	1	2021-10-27 17:13:25+00	\N	\N	1
18687	1	2021-10-27 18:29:34+00	\N	\N	1
18688	1	2021-10-27 19:43:06+00	\N	\N	1
18689	1	2021-10-27 20:25:39+00	\N	\N	1
18690	1	2021-10-27 21:41:41+00	\N	\N	1
18691	1	2021-10-27 22:26:06+00	\N	\N	1
18692	1	2021-10-27 23:10:05+00	\N	\N	1
18693	1	2021-10-28 00:37:25+00	\N	\N	1
18694	1	2021-10-28 01:26:41+00	\N	\N	1
18695	1	2021-10-28 02:37:45+00	\N	\N	1
18696	2	2021-10-27 14:59:49+00	\N	\N	1
18697	2	2021-10-27 19:26:17+00	\N	\N	1
18698	2	2021-10-27 22:46:03+00	\N	\N	1
18699	3	2021-10-28 02:12:37+00	\N	\N	1
18700	6	2021-10-28 01:54:54+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18701	5	2021-10-28 12:27:25+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18702	1	2021-10-28 11:27:35+00	\N	\N	1
18703	1	2021-10-28 12:22:00+00	\N	\N	1
18704	1	2021-10-28 13:16:58+00	\N	\N	1
18705	1	2021-10-28 14:12:38+00	\N	\N	1
18706	1	2021-10-28 15:31:55+00	\N	\N	1
18707	1	2021-10-28 16:47:45+00	\N	\N	1
18708	1	2021-10-28 17:22:23+00	\N	\N	1
18709	1	2021-10-28 18:07:51+00	\N	\N	1
18710	1	2021-10-28 19:40:15+00	\N	\N	1
18711	1	2021-10-28 20:31:10+00	\N	\N	1
18712	1	2021-10-28 21:34:12+00	\N	\N	1
18713	1	2021-10-28 22:09:40+00	\N	\N	1
18714	1	2021-10-28 23:11:55+00	\N	\N	1
18715	1	2021-10-29 00:27:07+00	\N	\N	1
18716	1	2021-10-29 01:48:14+00	\N	\N	1
18717	1	2021-10-29 02:23:34+00	\N	\N	1
18718	2	2021-10-28 14:34:54+00	\N	\N	1
18719	2	2021-10-28 18:58:04+00	\N	\N	1
18720	2	2021-10-28 22:46:39+00	\N	\N	1
18721	3	2021-10-29 02:03:35+00	\N	\N	1
18722	6	2021-10-29 02:19:32+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18723	5	2021-10-29 12:17:46+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18724	1	2021-10-29 11:17:05+00	\N	\N	1
18725	1	2021-10-29 12:12:25+00	\N	\N	1
18726	1	2021-10-29 13:38:59+00	\N	\N	1
18727	1	2021-10-29 14:29:16+00	\N	\N	1
18728	1	2021-10-29 15:15:34+00	\N	\N	1
18729	1	2021-10-29 16:48:29+00	\N	\N	1
18730	1	2021-10-29 17:15:00+00	\N	\N	1
18731	1	2021-10-29 18:17:11+00	\N	\N	1
18732	1	2021-10-29 19:49:29+00	\N	\N	1
18733	1	2021-10-29 20:21:35+00	\N	\N	1
18734	1	2021-10-29 21:44:20+00	\N	\N	1
18735	1	2021-10-29 22:29:34+00	\N	\N	1
18736	1	2021-10-29 23:44:48+00	\N	\N	1
18737	1	2021-10-30 00:12:45+00	\N	\N	1
18738	1	2021-10-30 01:38:32+00	\N	\N	1
18739	1	2021-10-30 02:46:21+00	\N	\N	1
18740	2	2021-10-29 15:25:16+00	\N	\N	1
18741	2	2021-10-29 19:17:49+00	\N	\N	1
18742	2	2021-10-29 22:59:06+00	\N	\N	1
18743	3	2021-10-30 02:39:39+00	\N	\N	1
18744	6	2021-10-30 03:08:01+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18745	5	2021-10-30 12:06:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18746	1	2021-10-30 11:26:58+00	\N	\N	1
18747	1	2021-10-30 12:29:15+00	\N	\N	1
18748	1	2021-10-30 13:35:50+00	\N	\N	1
18749	1	2021-10-30 14:27:33+00	\N	\N	1
18750	1	2021-10-30 15:34:33+00	\N	\N	1
18751	1	2021-10-30 16:25:39+00	\N	\N	1
18752	1	2021-10-30 17:09:32+00	\N	\N	1
18753	1	2021-10-30 18:43:31+00	\N	\N	1
18754	1	2021-10-30 19:19:47+00	\N	\N	1
18755	1	2021-10-30 20:37:01+00	\N	\N	1
18756	1	2021-10-30 21:32:38+00	\N	\N	1
18757	1	2021-10-30 22:11:39+00	\N	\N	1
18758	1	2021-10-30 23:11:24+00	\N	\N	1
18759	1	2021-10-31 00:38:06+00	\N	\N	1
18760	1	2021-10-31 01:37:21+00	\N	\N	1
18761	1	2021-10-31 02:45:29+00	\N	\N	1
18762	2	2021-10-30 15:07:13+00	\N	\N	1
18763	2	2021-10-30 18:33:17+00	\N	\N	1
18764	2	2021-10-30 22:31:47+00	\N	\N	1
18765	3	2021-10-31 01:39:53+00	\N	\N	1
18766	6	2021-10-31 02:55:27+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18767	5	2021-10-31 10:30:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18768	1	2021-10-31 11:42:25+00	\N	\N	1
18769	1	2021-10-31 12:08:30+00	\N	\N	1
18770	1	2021-10-31 13:48:10+00	\N	\N	1
18771	1	2021-10-31 14:14:21+00	\N	\N	1
18772	1	2021-10-31 15:43:52+00	\N	\N	1
18773	1	2021-10-31 16:51:53+00	\N	\N	1
18774	1	2021-10-31 17:36:51+00	\N	\N	1
18775	1	2021-10-31 18:15:14+00	\N	\N	1
18776	1	2021-10-31 19:27:13+00	\N	\N	1
18777	1	2021-10-31 20:38:24+00	\N	\N	1
18778	1	2021-10-31 21:31:38+00	\N	\N	1
18779	1	2021-10-31 22:21:50+00	\N	\N	1
18780	1	2021-10-31 23:09:53+00	\N	\N	1
18781	1	2021-11-01 00:21:50+00	\N	\N	1
18782	1	2021-11-01 01:14:28+00	\N	\N	1
18783	1	2021-11-01 02:18:36+00	\N	\N	1
18784	2	2021-10-31 15:17:29+00	\N	\N	1
18785	2	2021-10-31 19:17:36+00	\N	\N	1
18786	2	2021-10-31 23:19:09+00	\N	\N	1
18787	3	2021-11-01 02:53:27+00	\N	\N	1
18788	6	2021-11-01 03:14:52+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18789	5	2021-11-01 10:54:44+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18790	1	2021-11-01 11:10:58+00	\N	\N	1
18791	1	2021-11-01 12:50:31+00	\N	\N	1
18792	1	2021-11-01 13:24:32+00	\N	\N	1
18793	1	2021-11-01 14:14:32+00	\N	\N	1
18794	1	2021-11-01 15:38:13+00	\N	\N	1
18795	1	2021-11-01 16:46:15+00	\N	\N	1
18796	1	2021-11-01 17:36:17+00	\N	\N	1
18797	1	2021-11-01 18:26:54+00	\N	\N	1
18798	1	2021-11-01 19:30:28+00	\N	\N	1
18799	1	2021-11-01 20:48:45+00	\N	\N	1
18800	1	2021-11-01 21:13:57+00	\N	\N	1
18801	1	2021-11-01 22:50:13+00	\N	\N	1
18802	1	2021-11-01 23:40:58+00	\N	\N	1
18803	1	2021-11-02 00:44:29+00	\N	\N	1
18804	1	2021-11-02 01:42:21+00	\N	\N	1
18805	1	2021-11-02 02:36:28+00	\N	\N	1
18806	2	2021-11-01 14:45:38+00	\N	\N	1
18807	2	2021-11-01 18:33:32+00	\N	\N	1
18808	2	2021-11-01 22:54:38+00	\N	\N	1
18809	3	2021-11-02 02:48:18+00	\N	\N	1
18810	6	2021-11-02 02:50:19+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18811	5	2021-11-02 10:49:20+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18812	1	2021-11-02 11:50:24+00	\N	\N	1
18813	1	2021-11-02 12:22:00+00	\N	\N	1
18814	1	2021-11-02 13:46:36+00	\N	\N	1
18815	1	2021-11-02 14:30:49+00	\N	\N	1
18816	1	2021-11-02 15:45:52+00	\N	\N	1
18817	1	2021-11-02 16:47:23+00	\N	\N	1
18818	1	2021-11-02 17:49:23+00	\N	\N	1
18819	1	2021-11-02 18:25:53+00	\N	\N	1
18820	1	2021-11-02 19:21:42+00	\N	\N	1
18821	1	2021-11-02 20:32:49+00	\N	\N	1
18822	1	2021-11-02 21:13:05+00	\N	\N	1
18823	1	2021-11-02 22:12:46+00	\N	\N	1
18824	1	2021-11-02 23:12:59+00	\N	\N	1
18825	1	2021-11-03 00:24:50+00	\N	\N	1
18826	1	2021-11-03 01:33:00+00	\N	\N	1
18827	1	2021-11-03 02:35:45+00	\N	\N	1
18828	2	2021-11-02 14:38:01+00	\N	\N	1
18829	2	2021-11-02 19:12:24+00	\N	\N	1
18830	2	2021-11-02 23:07:55+00	\N	\N	1
18831	3	2021-11-03 01:55:12+00	\N	\N	1
18832	6	2021-11-03 02:51:57+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18833	5	2021-11-03 11:54:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18834	1	2021-11-03 11:34:51+00	\N	\N	1
18835	1	2021-11-03 12:19:24+00	\N	\N	1
18836	1	2021-11-03 13:27:41+00	\N	\N	1
18837	1	2021-11-03 14:12:48+00	\N	\N	1
18838	1	2021-11-03 15:20:08+00	\N	\N	1
18839	1	2021-11-03 16:43:42+00	\N	\N	1
18840	1	2021-11-03 17:25:51+00	\N	\N	1
18841	1	2021-11-03 18:44:43+00	\N	\N	1
18842	1	2021-11-03 19:49:14+00	\N	\N	1
18843	1	2021-11-03 20:10:00+00	\N	\N	1
18844	1	2021-11-03 21:44:42+00	\N	\N	1
18845	1	2021-11-03 22:15:16+00	\N	\N	1
18846	1	2021-11-03 23:31:06+00	\N	\N	1
18847	1	2021-11-04 00:31:51+00	\N	\N	1
18848	1	2021-11-04 01:43:13+00	\N	\N	1
18849	1	2021-11-04 02:43:10+00	\N	\N	1
18850	2	2021-11-03 14:35:29+00	\N	\N	1
18851	2	2021-11-03 19:20:46+00	\N	\N	1
18852	2	2021-11-03 22:48:37+00	\N	\N	1
18853	3	2021-11-04 02:02:11+00	\N	\N	1
18954	1	2021-11-08 21:49:01+00	\N	\N	1
18955	1	2021-11-08 22:42:13+00	\N	\N	1
18956	1	2021-11-08 23:23:14+00	\N	\N	1
18957	1	2021-11-09 00:39:34+00	\N	\N	1
18958	1	2021-11-09 01:19:38+00	\N	\N	1
18854	6	2021-11-04 01:47:03+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18855	5	2021-11-04 11:07:26+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18856	1	2021-11-04 11:29:48+00	\N	\N	1
18857	1	2021-11-04 12:33:14+00	\N	\N	1
18858	1	2021-11-04 13:39:03+00	\N	\N	1
18859	1	2021-11-04 14:20:31+00	\N	\N	1
18860	1	2021-11-04 15:39:50+00	\N	\N	1
18861	1	2021-11-04 16:38:16+00	\N	\N	1
18862	1	2021-11-04 17:50:10+00	\N	\N	1
18863	1	2021-11-04 18:17:01+00	\N	\N	1
18864	1	2021-11-04 19:07:42+00	\N	\N	1
18865	1	2021-11-04 20:10:05+00	\N	\N	1
18866	1	2021-11-04 21:08:16+00	\N	\N	1
18867	1	2021-11-04 22:41:58+00	\N	\N	1
18868	1	2021-11-04 23:13:27+00	\N	\N	1
18869	1	2021-11-05 00:48:21+00	\N	\N	1
18870	1	2021-11-05 01:52:24+00	\N	\N	1
18871	1	2021-11-05 02:07:47+00	\N	\N	1
18872	2	2021-11-04 14:32:22+00	\N	\N	1
18873	2	2021-11-04 18:48:49+00	\N	\N	1
18874	2	2021-11-04 22:32:05+00	\N	\N	1
18875	3	2021-11-05 01:41:42+00	\N	\N	1
18876	6	2021-11-05 02:14:24+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18877	5	2021-11-05 11:23:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18878	1	2021-11-05 11:13:15+00	\N	\N	1
18879	1	2021-11-05 12:45:03+00	\N	\N	1
18880	1	2021-11-05 13:43:30+00	\N	\N	1
18881	1	2021-11-05 14:17:49+00	\N	\N	1
18882	1	2021-11-05 15:33:26+00	\N	\N	1
18883	1	2021-11-05 16:48:21+00	\N	\N	1
18884	1	2021-11-05 17:36:45+00	\N	\N	1
18885	1	2021-11-05 18:36:34+00	\N	\N	1
18886	1	2021-11-05 19:30:02+00	\N	\N	1
18887	1	2021-11-05 20:49:04+00	\N	\N	1
18888	1	2021-11-05 21:34:17+00	\N	\N	1
18889	1	2021-11-05 22:07:47+00	\N	\N	1
18890	1	2021-11-05 23:29:29+00	\N	\N	1
18891	1	2021-11-06 00:39:31+00	\N	\N	1
18892	1	2021-11-06 01:50:11+00	\N	\N	1
18893	1	2021-11-06 02:22:17+00	\N	\N	1
18894	2	2021-11-05 15:15:19+00	\N	\N	1
18895	2	2021-11-05 18:39:21+00	\N	\N	1
18896	2	2021-11-05 22:44:04+00	\N	\N	1
18897	3	2021-11-06 01:44:58+00	\N	\N	1
18898	6	2021-11-06 01:47:51+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18899	5	2021-11-06 10:38:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18900	1	2021-11-06 11:27:25+00	\N	\N	1
18901	1	2021-11-06 12:24:15+00	\N	\N	1
18902	1	2021-11-06 13:20:38+00	\N	\N	1
18903	1	2021-11-06 14:43:13+00	\N	\N	1
18904	1	2021-11-06 15:43:22+00	\N	\N	1
18905	1	2021-11-06 16:14:26+00	\N	\N	1
18906	1	2021-11-06 17:32:34+00	\N	\N	1
18907	1	2021-11-06 18:33:47+00	\N	\N	1
18908	1	2021-11-06 19:14:16+00	\N	\N	1
18909	1	2021-11-06 20:09:24+00	\N	\N	1
18910	1	2021-11-06 21:46:20+00	\N	\N	1
18911	1	2021-11-06 22:48:28+00	\N	\N	1
18912	1	2021-11-06 23:28:38+00	\N	\N	1
18913	1	2021-11-07 00:49:23+00	\N	\N	1
18914	1	2021-11-07 01:42:48+00	\N	\N	1
18915	1	2021-11-07 02:17:09+00	\N	\N	1
18916	2	2021-11-06 14:31:37+00	\N	\N	1
18917	2	2021-11-06 19:25:30+00	\N	\N	1
18918	2	2021-11-06 23:05:06+00	\N	\N	1
18919	3	2021-11-07 02:26:00+00	\N	\N	1
18920	6	2021-11-07 03:03:09+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18921	5	2021-11-07 12:04:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18922	1	2021-11-07 11:46:30+00	\N	\N	1
18923	1	2021-11-07 12:18:01+00	\N	\N	1
18924	1	2021-11-07 13:20:25+00	\N	\N	1
18925	1	2021-11-07 14:30:21+00	\N	\N	1
18926	1	2021-11-07 15:23:22+00	\N	\N	1
18927	1	2021-11-07 16:08:34+00	\N	\N	1
18928	1	2021-11-07 17:30:38+00	\N	\N	1
18929	1	2021-11-07 18:24:59+00	\N	\N	1
18930	1	2021-11-07 19:39:26+00	\N	\N	1
18931	1	2021-11-07 20:16:17+00	\N	\N	1
18932	1	2021-11-07 21:16:56+00	\N	\N	1
18933	1	2021-11-07 22:19:16+00	\N	\N	1
18934	1	2021-11-07 23:09:53+00	\N	\N	1
18935	1	2021-11-08 00:35:54+00	\N	\N	1
18936	1	2021-11-08 01:26:40+00	\N	\N	1
18937	1	2021-11-08 02:30:10+00	\N	\N	1
18938	2	2021-11-07 15:07:00+00	\N	\N	1
18939	2	2021-11-07 18:35:37+00	\N	\N	1
18940	2	2021-11-07 23:10:22+00	\N	\N	1
18941	3	2021-11-08 01:54:37+00	\N	\N	1
18942	6	2021-11-08 02:57:31+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18943	5	2021-11-08 12:25:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18944	1	2021-11-08 11:20:53+00	\N	\N	1
18945	1	2021-11-08 12:46:53+00	\N	\N	1
18946	1	2021-11-08 13:22:14+00	\N	\N	1
18947	1	2021-11-08 14:22:35+00	\N	\N	1
18948	1	2021-11-08 15:08:39+00	\N	\N	1
18949	1	2021-11-08 16:40:56+00	\N	\N	1
18950	1	2021-11-08 17:43:50+00	\N	\N	1
18951	1	2021-11-08 18:26:03+00	\N	\N	1
18952	1	2021-11-08 19:34:33+00	\N	\N	1
18953	1	2021-11-08 20:50:16+00	\N	\N	1
18959	1	2021-11-09 02:21:07+00	\N	\N	1
18960	2	2021-11-08 15:25:19+00	\N	\N	1
18961	2	2021-11-08 18:36:27+00	\N	\N	1
18962	2	2021-11-08 23:16:29+00	\N	\N	1
18963	3	2021-11-09 02:59:02+00	\N	\N	1
18964	6	2021-11-09 02:05:25+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18965	5	2021-11-09 12:04:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18966	1	2021-11-09 11:44:05+00	\N	\N	1
18967	1	2021-11-09 12:17:32+00	\N	\N	1
18968	1	2021-11-09 13:45:57+00	\N	\N	1
18969	1	2021-11-09 14:30:33+00	\N	\N	1
18970	1	2021-11-09 15:22:02+00	\N	\N	1
18971	1	2021-11-09 16:49:08+00	\N	\N	1
18972	1	2021-11-09 17:30:44+00	\N	\N	1
18973	1	2021-11-09 18:46:59+00	\N	\N	1
18974	1	2021-11-09 19:48:49+00	\N	\N	1
18975	1	2021-11-09 20:19:02+00	\N	\N	1
18976	1	2021-11-09 21:30:21+00	\N	\N	1
18977	1	2021-11-09 22:39:52+00	\N	\N	1
18978	1	2021-11-09 23:24:09+00	\N	\N	1
18979	1	2021-11-10 00:22:44+00	\N	\N	1
18980	1	2021-11-10 01:17:12+00	\N	\N	1
18981	1	2021-11-10 02:33:51+00	\N	\N	1
18982	2	2021-11-09 15:11:02+00	\N	\N	1
18983	2	2021-11-09 19:05:18+00	\N	\N	1
18984	2	2021-11-09 23:08:47+00	\N	\N	1
18985	3	2021-11-10 01:58:15+00	\N	\N	1
18986	6	2021-11-10 02:59:52+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
18987	5	2021-11-10 11:43:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
18988	1	2021-11-10 11:23:13+00	\N	\N	1
18989	1	2021-11-10 12:47:06+00	\N	\N	1
18990	1	2021-11-10 13:35:36+00	\N	\N	1
18991	1	2021-11-10 14:46:54+00	\N	\N	1
18992	1	2021-11-10 15:18:50+00	\N	\N	1
18993	1	2021-11-10 16:47:39+00	\N	\N	1
18994	1	2021-11-10 17:38:01+00	\N	\N	1
18995	1	2021-11-10 18:13:50+00	\N	\N	1
18996	1	2021-11-10 19:12:54+00	\N	\N	1
18997	1	2021-11-10 20:33:35+00	\N	\N	1
18998	1	2021-11-10 21:47:06+00	\N	\N	1
18999	1	2021-11-10 22:11:55+00	\N	\N	1
19000	1	2021-11-10 23:51:19+00	\N	\N	1
19001	1	2021-11-11 00:43:10+00	\N	\N	1
19002	1	2021-11-11 01:43:23+00	\N	\N	1
19003	1	2021-11-11 02:31:19+00	\N	\N	1
19004	2	2021-11-10 15:26:34+00	\N	\N	1
19005	2	2021-11-10 19:21:40+00	\N	\N	1
19006	2	2021-11-10 22:57:11+00	\N	\N	1
19007	3	2021-11-11 02:25:23+00	\N	\N	1
19008	6	2021-11-11 02:46:07+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19009	5	2021-11-11 12:03:09+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19010	1	2021-11-11 11:14:33+00	\N	\N	1
19011	1	2021-11-11 12:08:53+00	\N	\N	1
19012	1	2021-11-11 13:10:57+00	\N	\N	1
19013	1	2021-11-11 14:15:19+00	\N	\N	1
19014	1	2021-11-11 15:17:55+00	\N	\N	1
19015	1	2021-11-11 16:12:43+00	\N	\N	1
19016	1	2021-11-11 17:33:54+00	\N	\N	1
19017	1	2021-11-11 18:32:46+00	\N	\N	1
19018	1	2021-11-11 19:38:18+00	\N	\N	1
19019	1	2021-11-11 20:48:21+00	\N	\N	1
19020	1	2021-11-11 21:25:47+00	\N	\N	1
19021	1	2021-11-11 22:14:55+00	\N	\N	1
19022	1	2021-11-11 23:13:16+00	\N	\N	1
19023	1	2021-11-12 00:21:24+00	\N	\N	1
19024	1	2021-11-12 01:29:32+00	\N	\N	1
19025	1	2021-11-12 02:10:06+00	\N	\N	1
19026	2	2021-11-11 15:29:11+00	\N	\N	1
19027	2	2021-11-11 18:42:06+00	\N	\N	1
19028	2	2021-11-11 23:04:42+00	\N	\N	1
19029	3	2021-11-12 02:46:09+00	\N	\N	1
19030	6	2021-11-12 01:50:48+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19031	5	2021-11-12 11:12:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19032	1	2021-11-12 11:31:21+00	\N	\N	1
19033	1	2021-11-12 12:19:55+00	\N	\N	1
19034	1	2021-11-12 13:18:09+00	\N	\N	1
19035	1	2021-11-12 14:39:08+00	\N	\N	1
19036	1	2021-11-12 15:32:02+00	\N	\N	1
19037	1	2021-11-12 16:43:54+00	\N	\N	1
19038	1	2021-11-12 17:17:27+00	\N	\N	1
19039	1	2021-11-12 18:46:31+00	\N	\N	1
19040	1	2021-11-12 19:40:55+00	\N	\N	1
19041	1	2021-11-12 20:46:26+00	\N	\N	1
19042	1	2021-11-12 21:36:42+00	\N	\N	1
19043	1	2021-11-12 22:13:50+00	\N	\N	1
19044	1	2021-11-12 23:27:42+00	\N	\N	1
19045	1	2021-11-13 00:44:33+00	\N	\N	1
19046	1	2021-11-13 01:29:08+00	\N	\N	1
19047	1	2021-11-13 02:24:49+00	\N	\N	1
19048	2	2021-11-12 15:01:22+00	\N	\N	1
19049	2	2021-11-12 18:39:42+00	\N	\N	1
19050	2	2021-11-12 23:22:55+00	\N	\N	1
19051	3	2021-11-13 01:55:06+00	\N	\N	1
19052	6	2021-11-13 02:00:23+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19053	5	2021-11-13 12:02:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19054	1	2021-11-13 11:52:01+00	\N	\N	1
19055	1	2021-11-13 12:13:18+00	\N	\N	1
19056	1	2021-11-13 13:23:47+00	\N	\N	1
19057	1	2021-11-13 14:32:24+00	\N	\N	1
19058	1	2021-11-13 15:21:22+00	\N	\N	1
19059	1	2021-11-13 16:17:17+00	\N	\N	1
19060	1	2021-11-13 17:25:02+00	\N	\N	1
19061	1	2021-11-13 18:22:45+00	\N	\N	1
19062	1	2021-11-13 19:46:11+00	\N	\N	1
19063	1	2021-11-13 20:41:02+00	\N	\N	1
19064	1	2021-11-13 21:43:18+00	\N	\N	1
19065	1	2021-11-13 22:24:24+00	\N	\N	1
19066	1	2021-11-13 23:41:29+00	\N	\N	1
19067	1	2021-11-14 00:41:41+00	\N	\N	1
19068	1	2021-11-14 01:33:38+00	\N	\N	1
19069	1	2021-11-14 02:46:03+00	\N	\N	1
19070	2	2021-11-13 15:19:27+00	\N	\N	1
19071	2	2021-11-13 19:09:54+00	\N	\N	1
19072	2	2021-11-13 22:30:58+00	\N	\N	1
19073	3	2021-11-14 02:32:05+00	\N	\N	1
19074	6	2021-11-14 02:02:33+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19075	5	2021-11-14 10:30:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19076	1	2021-11-14 11:49:32+00	\N	\N	1
19077	1	2021-11-14 12:49:29+00	\N	\N	1
19078	1	2021-11-14 13:18:18+00	\N	\N	1
19079	1	2021-11-14 14:32:45+00	\N	\N	1
19080	1	2021-11-14 15:09:34+00	\N	\N	1
19081	1	2021-11-14 16:51:34+00	\N	\N	1
19082	1	2021-11-14 17:31:15+00	\N	\N	1
19083	1	2021-11-14 18:47:34+00	\N	\N	1
19084	1	2021-11-14 19:13:19+00	\N	\N	1
19085	1	2021-11-14 20:17:12+00	\N	\N	1
19086	1	2021-11-14 21:28:50+00	\N	\N	1
19087	1	2021-11-14 22:41:35+00	\N	\N	1
19088	1	2021-11-14 23:23:18+00	\N	\N	1
19089	1	2021-11-15 00:21:09+00	\N	\N	1
19090	1	2021-11-15 01:38:58+00	\N	\N	1
19091	1	2021-11-15 02:29:56+00	\N	\N	1
19092	2	2021-11-14 14:42:34+00	\N	\N	1
19093	2	2021-11-14 19:01:23+00	\N	\N	1
19094	2	2021-11-14 22:42:44+00	\N	\N	1
19095	3	2021-11-15 01:38:59+00	\N	\N	1
19096	6	2021-11-15 02:09:27+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19097	5	2021-11-15 12:19:26+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19098	1	2021-11-15 11:29:33+00	\N	\N	1
19099	1	2021-11-15 12:42:17+00	\N	\N	1
19100	1	2021-11-15 13:30:12+00	\N	\N	1
19101	1	2021-11-15 14:18:23+00	\N	\N	1
19102	1	2021-11-15 15:21:21+00	\N	\N	1
19103	1	2021-11-15 16:51:02+00	\N	\N	1
19104	1	2021-11-15 17:44:16+00	\N	\N	1
19105	1	2021-11-15 18:46:17+00	\N	\N	1
19106	1	2021-11-15 19:32:46+00	\N	\N	1
19107	1	2021-11-15 20:44:59+00	\N	\N	1
19108	1	2021-11-15 21:21:46+00	\N	\N	1
19109	1	2021-11-15 22:19:27+00	\N	\N	1
19110	1	2021-11-15 23:21:06+00	\N	\N	1
19111	1	2021-11-16 00:28:27+00	\N	\N	1
19112	1	2021-11-16 01:15:24+00	\N	\N	1
19113	1	2021-11-16 02:18:30+00	\N	\N	1
19114	2	2021-11-15 14:42:59+00	\N	\N	1
19115	2	2021-11-15 18:59:07+00	\N	\N	1
19116	2	2021-11-15 23:07:27+00	\N	\N	1
19117	3	2021-11-16 02:44:33+00	\N	\N	1
19118	6	2021-11-16 01:47:34+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19119	5	2021-11-16 11:12:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19120	1	2021-11-16 11:50:07+00	\N	\N	1
19121	1	2021-11-16 12:45:03+00	\N	\N	1
19122	1	2021-11-16 13:21:28+00	\N	\N	1
19123	1	2021-11-16 14:43:55+00	\N	\N	1
19124	1	2021-11-16 15:45:02+00	\N	\N	1
19125	1	2021-11-16 16:32:45+00	\N	\N	1
19126	1	2021-11-16 17:40:17+00	\N	\N	1
19127	1	2021-11-16 18:11:56+00	\N	\N	1
19128	1	2021-11-16 19:18:19+00	\N	\N	1
19129	1	2021-11-16 20:36:35+00	\N	\N	1
19130	1	2021-11-16 21:40:40+00	\N	\N	1
19131	1	2021-11-16 22:11:39+00	\N	\N	1
19132	1	2021-11-16 23:33:18+00	\N	\N	1
19133	1	2021-11-17 00:48:34+00	\N	\N	1
19134	1	2021-11-17 01:32:13+00	\N	\N	1
19135	1	2021-11-17 02:26:26+00	\N	\N	1
19136	2	2021-11-16 15:12:10+00	\N	\N	1
19137	2	2021-11-16 19:19:46+00	\N	\N	1
19138	2	2021-11-16 22:41:53+00	\N	\N	1
19139	3	2021-11-17 02:20:23+00	\N	\N	1
19140	6	2021-11-17 02:15:57+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19141	5	2021-11-17 11:13:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19142	1	2021-11-17 11:13:31+00	\N	\N	1
19143	1	2021-11-17 12:24:42+00	\N	\N	1
19144	1	2021-11-17 13:39:24+00	\N	\N	1
19145	1	2021-11-17 14:31:42+00	\N	\N	1
19146	1	2021-11-17 15:33:40+00	\N	\N	1
19147	1	2021-11-17 16:20:57+00	\N	\N	1
19148	1	2021-11-17 17:38:24+00	\N	\N	1
19149	1	2021-11-17 18:24:36+00	\N	\N	1
19150	1	2021-11-17 19:10:07+00	\N	\N	1
19151	1	2021-11-17 20:19:59+00	\N	\N	1
19152	1	2021-11-17 21:50:27+00	\N	\N	1
19153	1	2021-11-17 22:43:30+00	\N	\N	1
19154	1	2021-11-17 23:52:13+00	\N	\N	1
19155	1	2021-11-18 00:47:32+00	\N	\N	1
19156	1	2021-11-18 01:23:27+00	\N	\N	1
19157	1	2021-11-18 02:39:03+00	\N	\N	1
19158	2	2021-11-17 14:39:55+00	\N	\N	1
19159	2	2021-11-17 19:03:31+00	\N	\N	1
19160	2	2021-11-17 23:15:13+00	\N	\N	1
19161	3	2021-11-18 01:56:25+00	\N	\N	1
19262	1	2021-11-22 21:51:46+00	\N	\N	1
19263	1	2021-11-22 22:39:05+00	\N	\N	1
19264	1	2021-11-22 23:36:36+00	\N	\N	1
19265	1	2021-11-23 00:36:29+00	\N	\N	1
19162	6	2021-11-18 03:13:47+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19163	5	2021-11-18 10:57:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19164	1	2021-11-18 11:42:45+00	\N	\N	1
19165	1	2021-11-18 12:25:58+00	\N	\N	1
19166	1	2021-11-18 13:10:29+00	\N	\N	1
19167	1	2021-11-18 14:14:46+00	\N	\N	1
19168	1	2021-11-18 15:51:19+00	\N	\N	1
19169	1	2021-11-18 16:17:58+00	\N	\N	1
19170	1	2021-11-18 17:28:27+00	\N	\N	1
19171	1	2021-11-18 18:14:36+00	\N	\N	1
19172	1	2021-11-18 19:48:00+00	\N	\N	1
19173	1	2021-11-18 20:24:54+00	\N	\N	1
19174	1	2021-11-18 21:32:22+00	\N	\N	1
19175	1	2021-11-18 22:17:24+00	\N	\N	1
19176	1	2021-11-18 23:52:00+00	\N	\N	1
19177	1	2021-11-19 00:15:04+00	\N	\N	1
19178	1	2021-11-19 01:21:59+00	\N	\N	1
19179	1	2021-11-19 02:40:34+00	\N	\N	1
19180	2	2021-11-18 14:46:39+00	\N	\N	1
19181	2	2021-11-18 18:42:39+00	\N	\N	1
19182	2	2021-11-18 23:17:55+00	\N	\N	1
19183	3	2021-11-19 03:28:24+00	\N	\N	1
19184	6	2021-11-19 03:08:27+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19185	5	2021-11-19 10:33:15+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19186	1	2021-11-19 11:33:20+00	\N	\N	1
19187	1	2021-11-19 12:39:30+00	\N	\N	1
19188	1	2021-11-19 13:18:58+00	\N	\N	1
19189	1	2021-11-19 14:17:32+00	\N	\N	1
19190	1	2021-11-19 15:21:08+00	\N	\N	1
19191	1	2021-11-19 16:18:37+00	\N	\N	1
19192	1	2021-11-19 17:43:32+00	\N	\N	1
19193	1	2021-11-19 18:44:54+00	\N	\N	1
19194	1	2021-11-19 19:26:13+00	\N	\N	1
19195	1	2021-11-19 20:16:19+00	\N	\N	1
19196	1	2021-11-19 21:26:29+00	\N	\N	1
19197	1	2021-11-19 22:45:25+00	\N	\N	1
19198	1	2021-11-19 23:07:36+00	\N	\N	1
19199	1	2021-11-20 00:13:33+00	\N	\N	1
19200	1	2021-11-20 01:32:45+00	\N	\N	1
19201	1	2021-11-20 02:49:17+00	\N	\N	1
19202	2	2021-11-19 14:36:22+00	\N	\N	1
19203	2	2021-11-19 18:50:46+00	\N	\N	1
19204	2	2021-11-19 23:11:13+00	\N	\N	1
19205	3	2021-11-20 02:27:56+00	\N	\N	1
19206	6	2021-11-20 02:08:17+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19207	5	2021-11-20 12:29:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19208	1	2021-11-20 11:34:41+00	\N	\N	1
19209	1	2021-11-20 12:32:38+00	\N	\N	1
19210	1	2021-11-20 13:14:20+00	\N	\N	1
19211	1	2021-11-20 14:30:45+00	\N	\N	1
19212	1	2021-11-20 15:49:53+00	\N	\N	1
19213	1	2021-11-20 16:50:18+00	\N	\N	1
19214	1	2021-11-20 17:41:10+00	\N	\N	1
19215	1	2021-11-20 18:08:53+00	\N	\N	1
19216	1	2021-11-20 19:30:37+00	\N	\N	1
19217	1	2021-11-20 20:25:29+00	\N	\N	1
19218	1	2021-11-20 21:49:13+00	\N	\N	1
19219	1	2021-11-20 22:35:04+00	\N	\N	1
19220	1	2021-11-20 23:26:17+00	\N	\N	1
19221	1	2021-11-21 00:18:35+00	\N	\N	1
19222	1	2021-11-21 01:28:30+00	\N	\N	1
19223	1	2021-11-21 02:35:50+00	\N	\N	1
19224	2	2021-11-20 14:55:31+00	\N	\N	1
19225	2	2021-11-20 18:46:49+00	\N	\N	1
19226	2	2021-11-20 22:38:27+00	\N	\N	1
19227	3	2021-11-21 01:46:54+00	\N	\N	1
19228	6	2021-11-21 03:02:57+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19229	5	2021-11-21 10:46:48+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19230	1	2021-11-21 11:35:37+00	\N	\N	1
19231	1	2021-11-21 12:47:59+00	\N	\N	1
19232	1	2021-11-21 13:42:18+00	\N	\N	1
19233	1	2021-11-21 14:16:08+00	\N	\N	1
19234	1	2021-11-21 15:18:19+00	\N	\N	1
19235	1	2021-11-21 16:13:57+00	\N	\N	1
19236	1	2021-11-21 17:45:42+00	\N	\N	1
19237	1	2021-11-21 18:43:00+00	\N	\N	1
19238	1	2021-11-21 19:32:14+00	\N	\N	1
19239	1	2021-11-21 20:43:33+00	\N	\N	1
19240	1	2021-11-21 21:23:50+00	\N	\N	1
19241	1	2021-11-21 22:11:22+00	\N	\N	1
19242	1	2021-11-21 23:13:53+00	\N	\N	1
19243	1	2021-11-22 00:38:29+00	\N	\N	1
19244	1	2021-11-22 01:27:29+00	\N	\N	1
19245	1	2021-11-22 02:27:28+00	\N	\N	1
19246	2	2021-11-21 14:58:13+00	\N	\N	1
19247	2	2021-11-21 18:44:17+00	\N	\N	1
19248	2	2021-11-21 22:47:20+00	\N	\N	1
19249	3	2021-11-22 02:18:19+00	\N	\N	1
19250	6	2021-11-22 02:44:35+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19251	5	2021-11-22 11:49:54+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19252	1	2021-11-22 11:50:00+00	\N	\N	1
19253	1	2021-11-22 12:11:24+00	\N	\N	1
19254	1	2021-11-22 13:30:54+00	\N	\N	1
19255	1	2021-11-22 14:47:41+00	\N	\N	1
19256	1	2021-11-22 15:48:17+00	\N	\N	1
19257	1	2021-11-22 16:16:48+00	\N	\N	1
19258	1	2021-11-22 17:37:47+00	\N	\N	1
19259	1	2021-11-22 18:16:47+00	\N	\N	1
19260	1	2021-11-22 19:18:09+00	\N	\N	1
19261	1	2021-11-22 20:09:55+00	\N	\N	1
19266	1	2021-11-23 01:50:07+00	\N	\N	1
19267	1	2021-11-23 02:35:46+00	\N	\N	1
19268	2	2021-11-22 14:30:56+00	\N	\N	1
19269	2	2021-11-22 19:02:49+00	\N	\N	1
19270	2	2021-11-22 22:34:54+00	\N	\N	1
19271	3	2021-11-23 02:49:56+00	\N	\N	1
19272	6	2021-11-23 02:22:11+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19273	5	2021-11-23 12:28:10+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19274	1	2021-11-23 11:15:53+00	\N	\N	1
19275	1	2021-11-23 12:40:24+00	\N	\N	1
19276	1	2021-11-23 13:34:24+00	\N	\N	1
19277	1	2021-11-23 14:51:01+00	\N	\N	1
19278	1	2021-11-23 15:46:45+00	\N	\N	1
19279	1	2021-11-23 16:51:18+00	\N	\N	1
19280	1	2021-11-23 17:40:32+00	\N	\N	1
19281	1	2021-11-23 18:16:03+00	\N	\N	1
19282	1	2021-11-23 19:49:05+00	\N	\N	1
19283	1	2021-11-23 20:15:35+00	\N	\N	1
19284	1	2021-11-23 21:34:59+00	\N	\N	1
19285	1	2021-11-23 22:48:35+00	\N	\N	1
19286	1	2021-11-23 23:32:43+00	\N	\N	1
19287	1	2021-11-24 00:34:47+00	\N	\N	1
19288	1	2021-11-24 01:38:56+00	\N	\N	1
19289	1	2021-11-24 02:39:05+00	\N	\N	1
19290	2	2021-11-23 14:41:54+00	\N	\N	1
19291	2	2021-11-23 18:36:33+00	\N	\N	1
19292	2	2021-11-23 23:16:37+00	\N	\N	1
19293	3	2021-11-24 02:05:07+00	\N	\N	1
19294	6	2021-11-24 02:26:46+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19295	5	2021-11-24 10:33:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19296	1	2021-11-24 11:30:26+00	\N	\N	1
19297	1	2021-11-24 12:38:13+00	\N	\N	1
19298	1	2021-11-24 13:32:25+00	\N	\N	1
19299	1	2021-11-24 14:44:10+00	\N	\N	1
19300	1	2021-11-24 15:31:12+00	\N	\N	1
19301	1	2021-11-24 16:22:40+00	\N	\N	1
19302	1	2021-11-24 17:15:59+00	\N	\N	1
19303	1	2021-11-24 18:27:11+00	\N	\N	1
19304	1	2021-11-24 19:45:46+00	\N	\N	1
19305	1	2021-11-24 20:49:27+00	\N	\N	1
19306	1	2021-11-24 21:46:59+00	\N	\N	1
19307	1	2021-11-24 22:33:10+00	\N	\N	1
19308	1	2021-11-24 23:23:34+00	\N	\N	1
19309	1	2021-11-25 00:08:31+00	\N	\N	1
19310	1	2021-11-25 01:21:48+00	\N	\N	1
19311	1	2021-11-25 02:18:53+00	\N	\N	1
19312	2	2021-11-24 14:45:47+00	\N	\N	1
19313	2	2021-11-24 19:18:34+00	\N	\N	1
19314	2	2021-11-24 23:20:38+00	\N	\N	1
19315	3	2021-11-25 02:34:55+00	\N	\N	1
19316	6	2021-11-25 01:47:52+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19317	5	2021-11-25 11:12:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19318	1	2021-11-25 11:38:57+00	\N	\N	1
19319	1	2021-11-25 12:26:59+00	\N	\N	1
19320	1	2021-11-25 13:25:42+00	\N	\N	1
19321	1	2021-11-25 14:24:23+00	\N	\N	1
19322	1	2021-11-25 15:21:18+00	\N	\N	1
19323	1	2021-11-25 16:30:56+00	\N	\N	1
19324	1	2021-11-25 17:41:28+00	\N	\N	1
19325	1	2021-11-25 18:40:10+00	\N	\N	1
19326	1	2021-11-25 19:49:18+00	\N	\N	1
19327	1	2021-11-25 20:29:10+00	\N	\N	1
19328	1	2021-11-25 21:35:25+00	\N	\N	1
19329	1	2021-11-25 22:09:49+00	\N	\N	1
19330	1	2021-11-25 23:16:02+00	\N	\N	1
19331	1	2021-11-26 00:37:12+00	\N	\N	1
19332	1	2021-11-26 01:38:35+00	\N	\N	1
19333	1	2021-11-26 02:16:22+00	\N	\N	1
19334	2	2021-11-25 14:50:08+00	\N	\N	1
19335	2	2021-11-25 19:10:38+00	\N	\N	1
19336	2	2021-11-25 22:44:45+00	\N	\N	1
19337	3	2021-11-26 03:06:50+00	\N	\N	1
19338	6	2021-11-26 02:02:52+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19339	5	2021-11-26 11:41:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19340	1	2021-11-26 11:37:49+00	\N	\N	1
19341	1	2021-11-26 12:47:10+00	\N	\N	1
19342	1	2021-11-26 13:36:16+00	\N	\N	1
19343	1	2021-11-26 14:14:56+00	\N	\N	1
19344	1	2021-11-26 15:40:55+00	\N	\N	1
19345	1	2021-11-26 16:28:21+00	\N	\N	1
19346	1	2021-11-26 17:17:10+00	\N	\N	1
19347	1	2021-11-26 18:19:34+00	\N	\N	1
19348	1	2021-11-26 19:18:14+00	\N	\N	1
19349	1	2021-11-26 20:27:35+00	\N	\N	1
19350	1	2021-11-26 21:51:15+00	\N	\N	1
19351	1	2021-11-26 22:23:10+00	\N	\N	1
19352	1	2021-11-26 23:27:02+00	\N	\N	1
19353	1	2021-11-27 00:48:46+00	\N	\N	1
19354	1	2021-11-27 01:31:09+00	\N	\N	1
19355	1	2021-11-27 02:26:09+00	\N	\N	1
19356	2	2021-11-26 15:09:51+00	\N	\N	1
19357	2	2021-11-26 18:48:35+00	\N	\N	1
19358	2	2021-11-26 23:26:28+00	\N	\N	1
19359	3	2021-11-27 02:16:16+00	\N	\N	1
19360	6	2021-11-27 02:42:07+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19361	5	2021-11-27 11:42:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19362	1	2021-11-27 11:13:17+00	\N	\N	1
19363	1	2021-11-27 12:52:14+00	\N	\N	1
19364	1	2021-11-27 13:49:24+00	\N	\N	1
19365	1	2021-11-27 14:17:25+00	\N	\N	1
19366	1	2021-11-27 15:36:08+00	\N	\N	1
19367	1	2021-11-27 16:43:50+00	\N	\N	1
19368	1	2021-11-27 17:08:01+00	\N	\N	1
19369	1	2021-11-27 18:31:05+00	\N	\N	1
19370	1	2021-11-27 19:24:09+00	\N	\N	1
19371	1	2021-11-27 20:39:53+00	\N	\N	1
19372	1	2021-11-27 21:12:59+00	\N	\N	1
19373	1	2021-11-27 22:51:37+00	\N	\N	1
19374	1	2021-11-27 23:30:21+00	\N	\N	1
19375	1	2021-11-28 00:29:57+00	\N	\N	1
19376	1	2021-11-28 01:22:12+00	\N	\N	1
19377	1	2021-11-28 02:46:44+00	\N	\N	1
19378	2	2021-11-27 15:22:17+00	\N	\N	1
19379	2	2021-11-27 19:02:37+00	\N	\N	1
19380	2	2021-11-27 23:03:45+00	\N	\N	1
19381	3	2021-11-28 02:38:51+00	\N	\N	1
19382	6	2021-11-28 03:13:45+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19383	5	2021-11-28 10:56:11+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19384	1	2021-11-28 11:48:21+00	\N	\N	1
19385	1	2021-11-28 12:46:48+00	\N	\N	1
19386	1	2021-11-28 13:39:57+00	\N	\N	1
19387	1	2021-11-28 14:23:58+00	\N	\N	1
19388	1	2021-11-28 15:46:11+00	\N	\N	1
19389	1	2021-11-28 16:21:15+00	\N	\N	1
19390	1	2021-11-28 17:36:24+00	\N	\N	1
19391	1	2021-11-28 18:15:31+00	\N	\N	1
19392	1	2021-11-28 19:24:15+00	\N	\N	1
19393	1	2021-11-28 20:44:57+00	\N	\N	1
19394	1	2021-11-28 21:29:16+00	\N	\N	1
19395	1	2021-11-28 22:09:54+00	\N	\N	1
19396	1	2021-11-28 23:42:34+00	\N	\N	1
19397	1	2021-11-29 00:32:42+00	\N	\N	1
19398	1	2021-11-29 01:22:38+00	\N	\N	1
19399	1	2021-11-29 02:50:55+00	\N	\N	1
19400	2	2021-11-28 15:12:20+00	\N	\N	1
19401	2	2021-11-28 19:06:29+00	\N	\N	1
19402	2	2021-11-28 22:36:39+00	\N	\N	1
19403	3	2021-11-29 03:14:47+00	\N	\N	1
19404	6	2021-11-29 01:56:30+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19405	5	2021-11-29 11:25:18+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19406	1	2021-11-29 11:44:38+00	\N	\N	1
19407	1	2021-11-29 12:08:33+00	\N	\N	1
19408	1	2021-11-29 13:37:28+00	\N	\N	1
19409	1	2021-11-29 14:43:50+00	\N	\N	1
19410	1	2021-11-29 15:46:34+00	\N	\N	1
19411	1	2021-11-29 16:34:44+00	\N	\N	1
19412	1	2021-11-29 17:10:56+00	\N	\N	1
19413	1	2021-11-29 18:49:19+00	\N	\N	1
19414	1	2021-11-29 19:35:28+00	\N	\N	1
19415	1	2021-11-29 20:12:02+00	\N	\N	1
19416	1	2021-11-29 21:31:09+00	\N	\N	1
19417	1	2021-11-29 22:36:46+00	\N	\N	1
19418	1	2021-11-29 23:29:09+00	\N	\N	1
19419	1	2021-11-30 00:13:13+00	\N	\N	1
19420	1	2021-11-30 01:47:15+00	\N	\N	1
19421	1	2021-11-30 02:44:53+00	\N	\N	1
19422	2	2021-11-29 15:22:06+00	\N	\N	1
19423	2	2021-11-29 19:16:32+00	\N	\N	1
19424	2	2021-11-29 22:30:36+00	\N	\N	1
19425	3	2021-11-30 02:33:37+00	\N	\N	1
19426	6	2021-11-30 02:53:29+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19427	5	2021-11-30 12:04:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19428	1	2021-11-30 11:26:26+00	\N	\N	1
19429	1	2021-11-30 12:20:38+00	\N	\N	1
19430	1	2021-11-30 13:36:56+00	\N	\N	1
19431	1	2021-11-30 14:46:20+00	\N	\N	1
19432	1	2021-11-30 15:15:41+00	\N	\N	1
19433	1	2021-11-30 16:27:34+00	\N	\N	1
19434	1	2021-11-30 17:34:29+00	\N	\N	1
19435	1	2021-11-30 18:17:30+00	\N	\N	1
19436	1	2021-11-30 19:22:20+00	\N	\N	1
19437	1	2021-11-30 20:32:27+00	\N	\N	1
19438	1	2021-11-30 21:39:46+00	\N	\N	1
19439	1	2021-11-30 22:49:59+00	\N	\N	1
19440	1	2021-11-30 23:13:14+00	\N	\N	1
19441	1	2021-12-01 00:19:58+00	\N	\N	1
19442	1	2021-12-01 01:27:58+00	\N	\N	1
19443	1	2021-12-01 02:14:48+00	\N	\N	1
19444	2	2021-11-30 15:02:14+00	\N	\N	1
19445	2	2021-11-30 18:42:17+00	\N	\N	1
19446	2	2021-11-30 22:57:30+00	\N	\N	1
19447	3	2021-12-01 02:33:08+00	\N	\N	1
19448	6	2021-12-01 02:36:40+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19449	5	2021-12-01 11:47:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19450	1	2021-12-01 11:44:28+00	\N	\N	1
19451	1	2021-12-01 12:32:21+00	\N	\N	1
19452	1	2021-12-01 13:41:19+00	\N	\N	1
19453	1	2021-12-01 14:28:54+00	\N	\N	1
19454	1	2021-12-01 15:16:00+00	\N	\N	1
19455	1	2021-12-01 16:12:16+00	\N	\N	1
19456	1	2021-12-01 17:39:38+00	\N	\N	1
19457	1	2021-12-01 18:20:51+00	\N	\N	1
19458	1	2021-12-01 19:35:05+00	\N	\N	1
19459	1	2021-12-01 20:14:36+00	\N	\N	1
19460	1	2021-12-01 21:07:32+00	\N	\N	1
19461	1	2021-12-01 22:08:06+00	\N	\N	1
19462	1	2021-12-01 23:26:03+00	\N	\N	1
19463	1	2021-12-02 00:21:10+00	\N	\N	1
19464	1	2021-12-02 01:31:38+00	\N	\N	1
19465	1	2021-12-02 02:25:54+00	\N	\N	1
19466	2	2021-12-01 14:54:09+00	\N	\N	1
19467	2	2021-12-01 18:30:51+00	\N	\N	1
19468	2	2021-12-01 22:56:05+00	\N	\N	1
19469	3	2021-12-02 03:08:58+00	\N	\N	1
19570	1	2021-12-06 21:13:59+00	\N	\N	1
19571	1	2021-12-06 22:49:58+00	\N	\N	1
19572	1	2021-12-06 23:44:31+00	\N	\N	1
19470	6	2021-12-02 02:08:56+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19471	5	2021-12-02 11:02:34+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19472	1	2021-12-02 11:47:02+00	\N	\N	1
19473	1	2021-12-02 12:37:35+00	\N	\N	1
19474	1	2021-12-02 13:25:44+00	\N	\N	1
19475	1	2021-12-02 14:28:30+00	\N	\N	1
19476	1	2021-12-02 15:45:51+00	\N	\N	1
19477	1	2021-12-02 16:30:40+00	\N	\N	1
19478	1	2021-12-02 17:23:39+00	\N	\N	1
19479	1	2021-12-02 18:37:40+00	\N	\N	1
19480	1	2021-12-02 19:07:53+00	\N	\N	1
19481	1	2021-12-02 20:43:01+00	\N	\N	1
19482	1	2021-12-02 21:25:48+00	\N	\N	1
19483	1	2021-12-02 22:46:35+00	\N	\N	1
19484	1	2021-12-02 23:36:57+00	\N	\N	1
19485	1	2021-12-03 00:10:18+00	\N	\N	1
19486	1	2021-12-03 01:28:50+00	\N	\N	1
19487	1	2021-12-03 02:24:40+00	\N	\N	1
19488	2	2021-12-02 15:23:41+00	\N	\N	1
19489	2	2021-12-02 18:58:48+00	\N	\N	1
19490	2	2021-12-02 23:18:42+00	\N	\N	1
19491	3	2021-12-03 02:32:09+00	\N	\N	1
19492	6	2021-12-03 02:03:58+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19493	5	2021-12-03 11:18:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19494	1	2021-12-03 11:36:51+00	\N	\N	1
19495	1	2021-12-03 12:38:42+00	\N	\N	1
19496	1	2021-12-03 13:22:54+00	\N	\N	1
19497	1	2021-12-03 14:16:36+00	\N	\N	1
19498	1	2021-12-03 15:48:09+00	\N	\N	1
19499	1	2021-12-03 16:39:50+00	\N	\N	1
19500	1	2021-12-03 17:30:49+00	\N	\N	1
19501	1	2021-12-03 18:08:52+00	\N	\N	1
19502	1	2021-12-03 19:28:20+00	\N	\N	1
19503	1	2021-12-03 20:20:35+00	\N	\N	1
19504	1	2021-12-03 21:34:59+00	\N	\N	1
19505	1	2021-12-03 22:38:00+00	\N	\N	1
19506	1	2021-12-03 23:29:05+00	\N	\N	1
19507	1	2021-12-04 00:19:32+00	\N	\N	1
19508	1	2021-12-04 01:42:00+00	\N	\N	1
19509	1	2021-12-04 02:25:46+00	\N	\N	1
19510	2	2021-12-03 14:37:55+00	\N	\N	1
19511	2	2021-12-03 18:41:26+00	\N	\N	1
19512	2	2021-12-03 22:55:33+00	\N	\N	1
19513	3	2021-12-04 03:13:39+00	\N	\N	1
19514	6	2021-12-04 01:51:07+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19515	5	2021-12-04 11:16:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19516	1	2021-12-04 11:48:17+00	\N	\N	1
19517	1	2021-12-04 12:33:28+00	\N	\N	1
19518	1	2021-12-04 13:29:36+00	\N	\N	1
19519	1	2021-12-04 14:25:29+00	\N	\N	1
19520	1	2021-12-04 15:07:53+00	\N	\N	1
19521	1	2021-12-04 16:51:11+00	\N	\N	1
19522	1	2021-12-04 17:41:03+00	\N	\N	1
19523	1	2021-12-04 18:32:13+00	\N	\N	1
19524	1	2021-12-04 19:14:10+00	\N	\N	1
19525	1	2021-12-04 20:30:07+00	\N	\N	1
19526	1	2021-12-04 21:37:29+00	\N	\N	1
19527	1	2021-12-04 22:43:29+00	\N	\N	1
19528	1	2021-12-04 23:14:47+00	\N	\N	1
19529	1	2021-12-05 00:24:32+00	\N	\N	1
19530	1	2021-12-05 01:22:09+00	\N	\N	1
19531	1	2021-12-05 02:19:50+00	\N	\N	1
19532	2	2021-12-04 14:57:44+00	\N	\N	1
19533	2	2021-12-04 19:14:02+00	\N	\N	1
19534	2	2021-12-04 22:59:34+00	\N	\N	1
19535	3	2021-12-05 02:20:14+00	\N	\N	1
19536	6	2021-12-05 02:43:48+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19537	5	2021-12-05 12:18:55+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19538	1	2021-12-05 11:19:26+00	\N	\N	1
19539	1	2021-12-05 12:23:01+00	\N	\N	1
19540	1	2021-12-05 13:44:36+00	\N	\N	1
19541	1	2021-12-05 14:47:07+00	\N	\N	1
19542	1	2021-12-05 15:11:10+00	\N	\N	1
19543	1	2021-12-05 16:23:41+00	\N	\N	1
19544	1	2021-12-05 17:09:29+00	\N	\N	1
19545	1	2021-12-05 18:17:40+00	\N	\N	1
19546	1	2021-12-05 19:26:42+00	\N	\N	1
19547	1	2021-12-05 20:27:08+00	\N	\N	1
19548	1	2021-12-05 21:44:49+00	\N	\N	1
19549	1	2021-12-05 22:31:40+00	\N	\N	1
19550	1	2021-12-05 23:42:55+00	\N	\N	1
19551	1	2021-12-06 00:31:19+00	\N	\N	1
19552	1	2021-12-06 01:35:30+00	\N	\N	1
19553	1	2021-12-06 02:17:54+00	\N	\N	1
19554	2	2021-12-05 15:19:00+00	\N	\N	1
19555	2	2021-12-05 18:46:31+00	\N	\N	1
19556	2	2021-12-05 23:20:16+00	\N	\N	1
19557	3	2021-12-06 02:15:29+00	\N	\N	1
19558	6	2021-12-06 02:45:39+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19559	5	2021-12-06 11:29:01+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19560	1	2021-12-06 11:10:13+00	\N	\N	1
19561	1	2021-12-06 12:50:24+00	\N	\N	1
19562	1	2021-12-06 13:20:02+00	\N	\N	1
19563	1	2021-12-06 14:28:06+00	\N	\N	1
19564	1	2021-12-06 15:23:07+00	\N	\N	1
19565	1	2021-12-06 16:24:14+00	\N	\N	1
19566	1	2021-12-06 17:10:11+00	\N	\N	1
19567	1	2021-12-06 18:33:38+00	\N	\N	1
19568	1	2021-12-06 19:20:56+00	\N	\N	1
19569	1	2021-12-06 20:16:45+00	\N	\N	1
19573	1	2021-12-07 00:43:27+00	\N	\N	1
19574	1	2021-12-07 01:24:00+00	\N	\N	1
19575	1	2021-12-07 02:25:01+00	\N	\N	1
19576	2	2021-12-06 14:57:22+00	\N	\N	1
19577	2	2021-12-06 18:57:30+00	\N	\N	1
19578	2	2021-12-06 22:38:47+00	\N	\N	1
19579	3	2021-12-07 01:39:54+00	\N	\N	1
19580	6	2021-12-07 01:57:32+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19581	5	2021-12-07 10:53:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19582	1	2021-12-07 11:49:53+00	\N	\N	1
19583	1	2021-12-07 12:38:30+00	\N	\N	1
19584	1	2021-12-07 13:23:54+00	\N	\N	1
19585	1	2021-12-07 14:34:38+00	\N	\N	1
19586	1	2021-12-07 15:18:50+00	\N	\N	1
19587	1	2021-12-07 16:43:41+00	\N	\N	1
19588	1	2021-12-07 17:31:49+00	\N	\N	1
19589	1	2021-12-07 18:38:51+00	\N	\N	1
19590	1	2021-12-07 19:33:59+00	\N	\N	1
19591	1	2021-12-07 20:13:42+00	\N	\N	1
19592	1	2021-12-07 21:20:13+00	\N	\N	1
19593	1	2021-12-07 22:13:05+00	\N	\N	1
19594	1	2021-12-07 23:21:18+00	\N	\N	1
19595	1	2021-12-08 00:47:34+00	\N	\N	1
19596	1	2021-12-08 01:14:15+00	\N	\N	1
19597	1	2021-12-08 02:38:14+00	\N	\N	1
19598	2	2021-12-07 15:03:47+00	\N	\N	1
19599	2	2021-12-07 19:24:03+00	\N	\N	1
19600	2	2021-12-07 22:55:17+00	\N	\N	1
19601	3	2021-12-08 01:45:12+00	\N	\N	1
19602	6	2021-12-08 01:51:13+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19603	5	2021-12-08 10:33:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19604	1	2021-12-08 11:49:32+00	\N	\N	1
19605	1	2021-12-08 12:15:06+00	\N	\N	1
19606	1	2021-12-08 13:33:58+00	\N	\N	1
19607	1	2021-12-08 14:44:03+00	\N	\N	1
19608	1	2021-12-08 15:29:38+00	\N	\N	1
19609	1	2021-12-08 16:17:55+00	\N	\N	1
19610	1	2021-12-08 17:33:40+00	\N	\N	1
19611	1	2021-12-08 18:10:14+00	\N	\N	1
19612	1	2021-12-08 19:24:23+00	\N	\N	1
19613	1	2021-12-08 20:44:47+00	\N	\N	1
19614	1	2021-12-08 21:34:30+00	\N	\N	1
19615	1	2021-12-08 22:29:00+00	\N	\N	1
19616	1	2021-12-08 23:15:48+00	\N	\N	1
19617	1	2021-12-09 00:27:12+00	\N	\N	1
19618	1	2021-12-09 01:40:27+00	\N	\N	1
19619	1	2021-12-09 02:15:31+00	\N	\N	1
19620	2	2021-12-08 15:29:30+00	\N	\N	1
19621	2	2021-12-08 18:30:05+00	\N	\N	1
19622	2	2021-12-08 23:15:48+00	\N	\N	1
19623	3	2021-12-09 02:37:07+00	\N	\N	1
19624	6	2021-12-09 01:53:47+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19625	5	2021-12-09 11:16:32+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19626	1	2021-12-09 11:52:16+00	\N	\N	1
19627	1	2021-12-09 12:45:22+00	\N	\N	1
19628	1	2021-12-09 13:14:12+00	\N	\N	1
19629	1	2021-12-09 14:39:57+00	\N	\N	1
19630	1	2021-12-09 15:18:06+00	\N	\N	1
19631	1	2021-12-09 16:25:25+00	\N	\N	1
19632	1	2021-12-09 17:33:52+00	\N	\N	1
19633	1	2021-12-09 18:23:47+00	\N	\N	1
19634	1	2021-12-09 19:34:13+00	\N	\N	1
19635	1	2021-12-09 20:16:36+00	\N	\N	1
19636	1	2021-12-09 21:30:41+00	\N	\N	1
19637	1	2021-12-09 22:31:10+00	\N	\N	1
19638	1	2021-12-09 23:51:28+00	\N	\N	1
19639	1	2021-12-10 00:14:42+00	\N	\N	1
19640	1	2021-12-10 01:51:55+00	\N	\N	1
19641	1	2021-12-10 02:09:16+00	\N	\N	1
19642	2	2021-12-09 14:42:38+00	\N	\N	1
19643	2	2021-12-09 19:02:01+00	\N	\N	1
19644	2	2021-12-09 22:58:24+00	\N	\N	1
19645	3	2021-12-10 01:54:58+00	\N	\N	1
19646	6	2021-12-10 01:49:25+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19647	5	2021-12-10 11:18:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19648	1	2021-12-10 11:51:54+00	\N	\N	1
19649	1	2021-12-10 12:33:41+00	\N	\N	1
19650	1	2021-12-10 13:36:43+00	\N	\N	1
19651	1	2021-12-10 14:34:00+00	\N	\N	1
19652	1	2021-12-10 15:39:14+00	\N	\N	1
19653	1	2021-12-10 16:17:01+00	\N	\N	1
19654	1	2021-12-10 17:10:23+00	\N	\N	1
19655	1	2021-12-10 18:28:23+00	\N	\N	1
19656	1	2021-12-10 19:44:49+00	\N	\N	1
19657	1	2021-12-10 20:51:52+00	\N	\N	1
19658	1	2021-12-10 21:16:47+00	\N	\N	1
19659	1	2021-12-10 22:23:24+00	\N	\N	1
19660	1	2021-12-10 23:26:59+00	\N	\N	1
19661	1	2021-12-11 00:18:20+00	\N	\N	1
19662	1	2021-12-11 01:15:53+00	\N	\N	1
19663	1	2021-12-11 02:21:43+00	\N	\N	1
19664	2	2021-12-10 15:25:04+00	\N	\N	1
19665	2	2021-12-10 18:52:18+00	\N	\N	1
19666	2	2021-12-10 22:53:25+00	\N	\N	1
19667	3	2021-12-11 02:58:53+00	\N	\N	1
19668	6	2021-12-11 03:09:54+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19669	5	2021-12-11 12:25:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19670	1	2021-12-11 11:33:16+00	\N	\N	1
19671	1	2021-12-11 12:51:43+00	\N	\N	1
19672	1	2021-12-11 13:31:24+00	\N	\N	1
19673	1	2021-12-11 14:27:48+00	\N	\N	1
19674	1	2021-12-11 15:24:04+00	\N	\N	1
19675	1	2021-12-11 16:33:23+00	\N	\N	1
19676	1	2021-12-11 17:41:36+00	\N	\N	1
19677	1	2021-12-11 18:33:55+00	\N	\N	1
19678	1	2021-12-11 19:14:02+00	\N	\N	1
19679	1	2021-12-11 20:27:55+00	\N	\N	1
19680	1	2021-12-11 21:50:50+00	\N	\N	1
19681	1	2021-12-11 22:33:41+00	\N	\N	1
19682	1	2021-12-11 23:09:40+00	\N	\N	1
19683	1	2021-12-12 00:40:51+00	\N	\N	1
19684	1	2021-12-12 01:14:52+00	\N	\N	1
19685	1	2021-12-12 02:19:03+00	\N	\N	1
19686	2	2021-12-11 14:30:01+00	\N	\N	1
19687	2	2021-12-11 18:52:08+00	\N	\N	1
19688	2	2021-12-11 23:25:54+00	\N	\N	1
19689	3	2021-12-12 02:26:38+00	\N	\N	1
19690	6	2021-12-12 03:11:06+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19691	5	2021-12-12 11:30:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19692	1	2021-12-12 11:33:52+00	\N	\N	1
19693	1	2021-12-12 12:46:00+00	\N	\N	1
19694	1	2021-12-12 13:44:49+00	\N	\N	1
19695	1	2021-12-12 14:18:17+00	\N	\N	1
19696	1	2021-12-12 15:41:26+00	\N	\N	1
19697	1	2021-12-12 16:28:37+00	\N	\N	1
19698	1	2021-12-12 17:23:39+00	\N	\N	1
19699	1	2021-12-12 18:26:55+00	\N	\N	1
19700	1	2021-12-12 19:19:26+00	\N	\N	1
19701	1	2021-12-12 20:41:27+00	\N	\N	1
19702	1	2021-12-12 21:42:16+00	\N	\N	1
19703	1	2021-12-12 22:25:38+00	\N	\N	1
19704	1	2021-12-12 23:29:21+00	\N	\N	1
19705	1	2021-12-13 00:50:40+00	\N	\N	1
19706	1	2021-12-13 01:47:50+00	\N	\N	1
19707	1	2021-12-13 02:49:07+00	\N	\N	1
19708	2	2021-12-12 14:52:55+00	\N	\N	1
19709	2	2021-12-12 18:46:04+00	\N	\N	1
19710	2	2021-12-12 22:55:46+00	\N	\N	1
19711	3	2021-12-13 01:58:54+00	\N	\N	1
19712	6	2021-12-13 02:51:39+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19713	5	2021-12-13 11:28:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19714	1	2021-12-13 11:30:01+00	\N	\N	1
19715	1	2021-12-13 12:37:03+00	\N	\N	1
19716	1	2021-12-13 13:43:36+00	\N	\N	1
19717	1	2021-12-13 14:16:35+00	\N	\N	1
19718	1	2021-12-13 15:24:07+00	\N	\N	1
19719	1	2021-12-13 16:24:16+00	\N	\N	1
19720	1	2021-12-13 17:26:21+00	\N	\N	1
19721	1	2021-12-13 18:42:50+00	\N	\N	1
19722	1	2021-12-13 19:38:38+00	\N	\N	1
19723	1	2021-12-13 20:17:25+00	\N	\N	1
19724	1	2021-12-13 21:12:50+00	\N	\N	1
19725	1	2021-12-13 22:46:37+00	\N	\N	1
19726	1	2021-12-13 23:40:47+00	\N	\N	1
19727	1	2021-12-14 00:08:24+00	\N	\N	1
19728	1	2021-12-14 01:20:36+00	\N	\N	1
19729	1	2021-12-14 02:45:26+00	\N	\N	1
19730	2	2021-12-13 14:35:32+00	\N	\N	1
19731	2	2021-12-13 18:57:02+00	\N	\N	1
19732	2	2021-12-13 23:12:14+00	\N	\N	1
19733	3	2021-12-14 03:23:58+00	\N	\N	1
19734	6	2021-12-14 01:57:19+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19735	5	2021-12-14 11:23:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19736	1	2021-12-14 11:32:43+00	\N	\N	1
19737	1	2021-12-14 12:31:55+00	\N	\N	1
19738	1	2021-12-14 13:44:20+00	\N	\N	1
19739	1	2021-12-14 14:11:03+00	\N	\N	1
19740	1	2021-12-14 15:42:45+00	\N	\N	1
19741	1	2021-12-14 16:30:52+00	\N	\N	1
19742	1	2021-12-14 17:28:39+00	\N	\N	1
19743	1	2021-12-14 18:43:42+00	\N	\N	1
19744	1	2021-12-14 19:12:15+00	\N	\N	1
19745	1	2021-12-14 20:49:22+00	\N	\N	1
19746	1	2021-12-14 21:37:25+00	\N	\N	1
19747	1	2021-12-14 22:29:03+00	\N	\N	1
19748	1	2021-12-14 23:24:56+00	\N	\N	1
19749	1	2021-12-15 00:15:45+00	\N	\N	1
19750	1	2021-12-15 01:32:09+00	\N	\N	1
19751	1	2021-12-15 02:15:52+00	\N	\N	1
19752	2	2021-12-14 14:42:56+00	\N	\N	1
19753	2	2021-12-14 19:08:05+00	\N	\N	1
19754	2	2021-12-14 22:48:30+00	\N	\N	1
19755	3	2021-12-15 02:40:41+00	\N	\N	1
19756	6	2021-12-15 02:23:32+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19757	5	2021-12-15 12:04:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19758	1	2021-12-15 11:26:56+00	\N	\N	1
19759	1	2021-12-15 12:45:44+00	\N	\N	1
19760	1	2021-12-15 13:46:11+00	\N	\N	1
19761	1	2021-12-15 14:48:48+00	\N	\N	1
19762	1	2021-12-15 15:16:04+00	\N	\N	1
19763	1	2021-12-15 16:39:29+00	\N	\N	1
19764	1	2021-12-15 17:22:30+00	\N	\N	1
19765	1	2021-12-15 18:35:21+00	\N	\N	1
19766	1	2021-12-15 19:17:18+00	\N	\N	1
19767	1	2021-12-15 20:28:50+00	\N	\N	1
19768	1	2021-12-15 21:51:39+00	\N	\N	1
19769	1	2021-12-15 22:13:51+00	\N	\N	1
19770	1	2021-12-15 23:35:45+00	\N	\N	1
19771	1	2021-12-16 00:27:13+00	\N	\N	1
19772	1	2021-12-16 01:10:00+00	\N	\N	1
19773	1	2021-12-16 02:11:28+00	\N	\N	1
19774	2	2021-12-15 14:45:02+00	\N	\N	1
19775	2	2021-12-15 18:53:17+00	\N	\N	1
19776	2	2021-12-15 23:03:12+00	\N	\N	1
19777	3	2021-12-16 02:36:40+00	\N	\N	1
19878	1	2021-12-20 21:23:39+00	\N	\N	1
19879	1	2021-12-20 22:09:03+00	\N	\N	1
19778	6	2021-12-16 03:14:08+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19779	5	2021-12-16 11:10:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19780	1	2021-12-16 11:41:26+00	\N	\N	1
19781	1	2021-12-16 12:47:39+00	\N	\N	1
19782	1	2021-12-16 13:47:06+00	\N	\N	1
19783	1	2021-12-16 14:43:33+00	\N	\N	1
19784	1	2021-12-16 15:36:23+00	\N	\N	1
19785	1	2021-12-16 16:42:32+00	\N	\N	1
19786	1	2021-12-16 17:22:46+00	\N	\N	1
19787	1	2021-12-16 18:22:44+00	\N	\N	1
19788	1	2021-12-16 19:26:05+00	\N	\N	1
19789	1	2021-12-16 20:50:03+00	\N	\N	1
19790	1	2021-12-16 21:38:08+00	\N	\N	1
19791	1	2021-12-16 22:20:08+00	\N	\N	1
19792	1	2021-12-16 23:12:48+00	\N	\N	1
19793	1	2021-12-17 00:34:52+00	\N	\N	1
19794	1	2021-12-17 01:11:09+00	\N	\N	1
19795	1	2021-12-17 02:34:49+00	\N	\N	1
19796	2	2021-12-16 14:44:17+00	\N	\N	1
19797	2	2021-12-16 18:57:06+00	\N	\N	1
19798	2	2021-12-16 22:37:51+00	\N	\N	1
19799	3	2021-12-17 03:14:36+00	\N	\N	1
19800	6	2021-12-17 01:58:58+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19801	5	2021-12-17 11:49:51+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19802	1	2021-12-17 11:17:04+00	\N	\N	1
19803	1	2021-12-17 12:15:57+00	\N	\N	1
19804	1	2021-12-17 13:46:45+00	\N	\N	1
19805	1	2021-12-17 14:40:03+00	\N	\N	1
19806	1	2021-12-17 15:26:39+00	\N	\N	1
19807	1	2021-12-17 16:17:09+00	\N	\N	1
19808	1	2021-12-17 17:31:14+00	\N	\N	1
19809	1	2021-12-17 18:46:58+00	\N	\N	1
19810	1	2021-12-17 19:16:21+00	\N	\N	1
19811	1	2021-12-17 20:49:09+00	\N	\N	1
19812	1	2021-12-17 21:50:34+00	\N	\N	1
19813	1	2021-12-17 22:15:51+00	\N	\N	1
19814	1	2021-12-17 23:16:52+00	\N	\N	1
19815	1	2021-12-18 00:51:27+00	\N	\N	1
19816	1	2021-12-18 01:25:10+00	\N	\N	1
19817	1	2021-12-18 02:42:12+00	\N	\N	1
19818	2	2021-12-17 14:44:06+00	\N	\N	1
19819	2	2021-12-17 19:20:54+00	\N	\N	1
19820	2	2021-12-17 23:25:31+00	\N	\N	1
19821	3	2021-12-18 01:39:07+00	\N	\N	1
19822	6	2021-12-18 02:50:16+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19823	5	2021-12-18 11:09:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19824	1	2021-12-18 11:19:51+00	\N	\N	1
19825	1	2021-12-18 12:15:17+00	\N	\N	1
19826	1	2021-12-18 13:19:14+00	\N	\N	1
19827	1	2021-12-18 14:22:28+00	\N	\N	1
19828	1	2021-12-18 15:49:47+00	\N	\N	1
19829	1	2021-12-18 16:37:16+00	\N	\N	1
19830	1	2021-12-18 17:30:21+00	\N	\N	1
19831	1	2021-12-18 18:43:16+00	\N	\N	1
19832	1	2021-12-18 19:38:57+00	\N	\N	1
19833	1	2021-12-18 20:48:08+00	\N	\N	1
19834	1	2021-12-18 21:14:41+00	\N	\N	1
19835	1	2021-12-18 22:14:00+00	\N	\N	1
19836	1	2021-12-18 23:27:12+00	\N	\N	1
19837	1	2021-12-19 00:26:47+00	\N	\N	1
19838	1	2021-12-19 01:37:25+00	\N	\N	1
19839	1	2021-12-19 02:51:14+00	\N	\N	1
19840	2	2021-12-18 14:40:38+00	\N	\N	1
19841	2	2021-12-18 18:31:25+00	\N	\N	1
19842	2	2021-12-18 23:04:54+00	\N	\N	1
19843	3	2021-12-19 01:39:09+00	\N	\N	1
19844	6	2021-12-19 02:29:26+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19845	5	2021-12-19 11:09:32+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19846	1	2021-12-19 11:39:08+00	\N	\N	1
19847	1	2021-12-19 12:38:19+00	\N	\N	1
19848	1	2021-12-19 13:46:41+00	\N	\N	1
19849	1	2021-12-19 14:51:21+00	\N	\N	1
19850	1	2021-12-19 15:17:57+00	\N	\N	1
19851	1	2021-12-19 16:27:04+00	\N	\N	1
19852	1	2021-12-19 17:45:14+00	\N	\N	1
19853	1	2021-12-19 18:17:28+00	\N	\N	1
19854	1	2021-12-19 19:48:33+00	\N	\N	1
19855	1	2021-12-19 20:41:09+00	\N	\N	1
19856	1	2021-12-19 21:43:18+00	\N	\N	1
19857	1	2021-12-19 22:33:50+00	\N	\N	1
19858	1	2021-12-19 23:27:07+00	\N	\N	1
19859	1	2021-12-20 00:21:17+00	\N	\N	1
19860	1	2021-12-20 01:23:15+00	\N	\N	1
19861	1	2021-12-20 02:13:22+00	\N	\N	1
19862	2	2021-12-19 15:29:56+00	\N	\N	1
19863	2	2021-12-19 18:39:47+00	\N	\N	1
19864	2	2021-12-19 22:31:14+00	\N	\N	1
19865	3	2021-12-20 02:22:40+00	\N	\N	1
19866	6	2021-12-20 02:21:16+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19867	5	2021-12-20 12:22:17+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19868	1	2021-12-20 11:46:55+00	\N	\N	1
19869	1	2021-12-20 12:27:20+00	\N	\N	1
19870	1	2021-12-20 13:09:53+00	\N	\N	1
19871	1	2021-12-20 14:07:50+00	\N	\N	1
19872	1	2021-12-20 15:11:12+00	\N	\N	1
19873	1	2021-12-20 16:12:18+00	\N	\N	1
19874	1	2021-12-20 17:42:00+00	\N	\N	1
19875	1	2021-12-20 18:51:29+00	\N	\N	1
19876	1	2021-12-20 19:38:28+00	\N	\N	1
19877	1	2021-12-20 20:35:39+00	\N	\N	1
19880	1	2021-12-20 23:47:39+00	\N	\N	1
19881	1	2021-12-21 00:18:40+00	\N	\N	1
19882	1	2021-12-21 01:14:55+00	\N	\N	1
19883	1	2021-12-21 02:09:46+00	\N	\N	1
19884	2	2021-12-20 14:34:46+00	\N	\N	1
19885	2	2021-12-20 19:05:15+00	\N	\N	1
19886	2	2021-12-20 22:56:36+00	\N	\N	1
19887	3	2021-12-21 02:42:21+00	\N	\N	1
19888	6	2021-12-21 02:23:19+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19889	5	2021-12-21 12:26:06+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19890	1	2021-12-21 11:47:53+00	\N	\N	1
19891	1	2021-12-21 12:22:44+00	\N	\N	1
19892	1	2021-12-21 13:47:50+00	\N	\N	1
19893	1	2021-12-21 14:44:21+00	\N	\N	1
19894	1	2021-12-21 15:23:42+00	\N	\N	1
19895	1	2021-12-21 16:51:24+00	\N	\N	1
19896	1	2021-12-21 17:31:46+00	\N	\N	1
19897	1	2021-12-21 18:40:03+00	\N	\N	1
19898	1	2021-12-21 19:42:42+00	\N	\N	1
19899	1	2021-12-21 20:23:37+00	\N	\N	1
19900	1	2021-12-21 21:26:03+00	\N	\N	1
19901	1	2021-12-21 22:13:36+00	\N	\N	1
19902	1	2021-12-21 23:28:27+00	\N	\N	1
19903	1	2021-12-22 00:17:53+00	\N	\N	1
19904	1	2021-12-22 01:45:39+00	\N	\N	1
19905	1	2021-12-22 02:39:46+00	\N	\N	1
19906	2	2021-12-21 14:44:31+00	\N	\N	1
19907	2	2021-12-21 19:07:48+00	\N	\N	1
19908	2	2021-12-21 22:30:34+00	\N	\N	1
19909	3	2021-12-22 02:27:44+00	\N	\N	1
19910	6	2021-12-22 02:49:18+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19911	5	2021-12-22 10:47:04+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19912	1	2021-12-22 11:37:16+00	\N	\N	1
19913	1	2021-12-22 12:35:51+00	\N	\N	1
19914	1	2021-12-22 13:47:43+00	\N	\N	1
19915	1	2021-12-22 14:36:39+00	\N	\N	1
19916	1	2021-12-22 15:40:13+00	\N	\N	1
19917	1	2021-12-22 16:19:19+00	\N	\N	1
19918	1	2021-12-22 17:20:04+00	\N	\N	1
19919	1	2021-12-22 18:44:11+00	\N	\N	1
19920	1	2021-12-22 19:11:01+00	\N	\N	1
19921	1	2021-12-22 20:43:56+00	\N	\N	1
19922	1	2021-12-22 21:11:50+00	\N	\N	1
19923	1	2021-12-22 22:24:25+00	\N	\N	1
19924	1	2021-12-22 23:13:07+00	\N	\N	1
19925	1	2021-12-23 00:31:04+00	\N	\N	1
19926	1	2021-12-23 01:26:38+00	\N	\N	1
19927	1	2021-12-23 02:28:42+00	\N	\N	1
19928	2	2021-12-22 14:32:23+00	\N	\N	1
19929	2	2021-12-22 18:32:04+00	\N	\N	1
19930	2	2021-12-22 22:32:34+00	\N	\N	1
19931	3	2021-12-23 03:21:48+00	\N	\N	1
19932	6	2021-12-23 02:39:58+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19933	5	2021-12-23 11:57:00+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19934	1	2021-12-23 11:17:13+00	\N	\N	1
19935	1	2021-12-23 12:50:41+00	\N	\N	1
19936	1	2021-12-23 13:23:05+00	\N	\N	1
19937	1	2021-12-23 14:23:19+00	\N	\N	1
19938	1	2021-12-23 15:35:48+00	\N	\N	1
19939	1	2021-12-23 16:21:14+00	\N	\N	1
19940	1	2021-12-23 17:49:42+00	\N	\N	1
19941	1	2021-12-23 18:15:58+00	\N	\N	1
19942	1	2021-12-23 19:14:45+00	\N	\N	1
19943	1	2021-12-23 20:26:06+00	\N	\N	1
19944	1	2021-12-23 21:43:14+00	\N	\N	1
19945	1	2021-12-23 22:12:31+00	\N	\N	1
19946	1	2021-12-23 23:12:45+00	\N	\N	1
19947	1	2021-12-24 00:30:36+00	\N	\N	1
19948	1	2021-12-24 01:08:28+00	\N	\N	1
19949	1	2021-12-24 02:51:54+00	\N	\N	1
19950	2	2021-12-23 15:05:21+00	\N	\N	1
19951	2	2021-12-23 19:03:26+00	\N	\N	1
19952	2	2021-12-23 22:53:53+00	\N	\N	1
19953	3	2021-12-24 03:22:15+00	\N	\N	1
19954	6	2021-12-24 02:22:54+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19955	5	2021-12-24 11:08:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19956	1	2021-12-24 11:32:55+00	\N	\N	1
19957	1	2021-12-24 12:46:55+00	\N	\N	1
19958	1	2021-12-24 13:33:02+00	\N	\N	1
19959	1	2021-12-24 14:10:13+00	\N	\N	1
19960	1	2021-12-24 15:50:09+00	\N	\N	1
19961	1	2021-12-24 16:25:35+00	\N	\N	1
19962	1	2021-12-24 17:35:55+00	\N	\N	1
19963	1	2021-12-24 18:33:59+00	\N	\N	1
19964	1	2021-12-24 19:50:29+00	\N	\N	1
19965	1	2021-12-24 20:21:34+00	\N	\N	1
19966	1	2021-12-24 21:37:37+00	\N	\N	1
19967	1	2021-12-24 22:32:45+00	\N	\N	1
19968	1	2021-12-24 23:34:53+00	\N	\N	1
19969	1	2021-12-25 00:24:47+00	\N	\N	1
19970	1	2021-12-25 01:24:26+00	\N	\N	1
19971	1	2021-12-25 02:23:14+00	\N	\N	1
19972	2	2021-12-24 14:38:45+00	\N	\N	1
19973	2	2021-12-24 18:56:17+00	\N	\N	1
19974	2	2021-12-24 23:14:22+00	\N	\N	1
19975	3	2021-12-25 02:13:57+00	\N	\N	1
19976	6	2021-12-25 02:00:46+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19977	5	2021-12-25 10:40:21+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
19978	1	2021-12-25 11:12:24+00	\N	\N	1
19979	1	2021-12-25 12:25:08+00	\N	\N	1
19980	1	2021-12-25 13:22:59+00	\N	\N	1
19981	1	2021-12-25 14:15:38+00	\N	\N	1
19982	1	2021-12-25 15:17:21+00	\N	\N	1
19983	1	2021-12-25 16:09:14+00	\N	\N	1
19984	1	2021-12-25 17:45:44+00	\N	\N	1
19985	1	2021-12-25 18:11:54+00	\N	\N	1
19986	1	2021-12-25 19:13:59+00	\N	\N	1
19987	1	2021-12-25 20:26:48+00	\N	\N	1
19988	1	2021-12-25 21:38:52+00	\N	\N	1
19989	1	2021-12-25 22:40:57+00	\N	\N	1
19990	1	2021-12-25 23:25:32+00	\N	\N	1
19991	1	2021-12-26 00:13:12+00	\N	\N	1
19992	1	2021-12-26 01:27:57+00	\N	\N	1
19993	1	2021-12-26 02:37:37+00	\N	\N	1
19994	2	2021-12-25 15:14:21+00	\N	\N	1
19995	2	2021-12-25 19:09:03+00	\N	\N	1
19996	2	2021-12-25 23:23:22+00	\N	\N	1
19997	3	2021-12-26 01:59:00+00	\N	\N	1
19998	6	2021-12-26 01:53:13+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
19999	5	2021-12-26 10:55:07+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20000	1	2021-12-26 11:21:49+00	\N	\N	1
20001	1	2021-12-26 12:08:43+00	\N	\N	1
20002	1	2021-12-26 13:27:54+00	\N	\N	1
20003	1	2021-12-26 14:44:23+00	\N	\N	1
20004	1	2021-12-26 15:36:56+00	\N	\N	1
20005	1	2021-12-26 16:29:15+00	\N	\N	1
20006	1	2021-12-26 17:43:34+00	\N	\N	1
20007	1	2021-12-26 18:28:57+00	\N	\N	1
20008	1	2021-12-26 19:12:18+00	\N	\N	1
20009	1	2021-12-26 20:07:38+00	\N	\N	1
20010	1	2021-12-26 21:12:00+00	\N	\N	1
20011	1	2021-12-26 22:20:41+00	\N	\N	1
20012	1	2021-12-26 23:49:33+00	\N	\N	1
20013	1	2021-12-27 00:15:45+00	\N	\N	1
20014	1	2021-12-27 01:51:43+00	\N	\N	1
20015	1	2021-12-27 02:08:07+00	\N	\N	1
20016	2	2021-12-26 15:09:29+00	\N	\N	1
20017	2	2021-12-26 19:21:18+00	\N	\N	1
20018	2	2021-12-26 23:10:08+00	\N	\N	1
20019	3	2021-12-27 03:20:27+00	\N	\N	1
20020	6	2021-12-27 03:11:36+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20021	5	2021-12-27 11:18:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20022	1	2021-12-27 11:25:40+00	\N	\N	1
20023	1	2021-12-27 12:21:16+00	\N	\N	1
20024	1	2021-12-27 13:29:42+00	\N	\N	1
20025	1	2021-12-27 14:46:48+00	\N	\N	1
20026	1	2021-12-27 15:39:16+00	\N	\N	1
20027	1	2021-12-27 16:28:06+00	\N	\N	1
20028	1	2021-12-27 17:50:48+00	\N	\N	1
20029	1	2021-12-27 18:32:16+00	\N	\N	1
20030	1	2021-12-27 19:15:54+00	\N	\N	1
20031	1	2021-12-27 20:16:12+00	\N	\N	1
20032	1	2021-12-27 21:09:05+00	\N	\N	1
20033	1	2021-12-27 22:43:00+00	\N	\N	1
20034	1	2021-12-27 23:17:10+00	\N	\N	1
20035	1	2021-12-28 00:23:44+00	\N	\N	1
20036	1	2021-12-28 01:46:09+00	\N	\N	1
20037	1	2021-12-28 02:20:53+00	\N	\N	1
20038	2	2021-12-27 15:24:13+00	\N	\N	1
20039	2	2021-12-27 18:49:00+00	\N	\N	1
20040	2	2021-12-27 22:33:31+00	\N	\N	1
20041	3	2021-12-28 03:09:47+00	\N	\N	1
20042	6	2021-12-28 02:14:34+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20043	5	2021-12-28 12:11:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20044	1	2021-12-28 11:36:15+00	\N	\N	1
20045	1	2021-12-28 12:50:29+00	\N	\N	1
20046	1	2021-12-28 13:29:43+00	\N	\N	1
20047	1	2021-12-28 14:36:01+00	\N	\N	1
20048	1	2021-12-28 15:36:13+00	\N	\N	1
20049	1	2021-12-28 16:12:47+00	\N	\N	1
20050	1	2021-12-28 17:33:13+00	\N	\N	1
20051	1	2021-12-28 18:47:24+00	\N	\N	1
20052	1	2021-12-28 19:25:35+00	\N	\N	1
20053	1	2021-12-28 20:42:41+00	\N	\N	1
20054	1	2021-12-28 21:51:10+00	\N	\N	1
20055	1	2021-12-28 22:29:40+00	\N	\N	1
20056	1	2021-12-28 23:46:07+00	\N	\N	1
20057	1	2021-12-29 00:20:13+00	\N	\N	1
20058	1	2021-12-29 01:36:55+00	\N	\N	1
20059	1	2021-12-29 02:22:36+00	\N	\N	1
20060	2	2021-12-28 15:14:12+00	\N	\N	1
20061	2	2021-12-28 18:52:10+00	\N	\N	1
20062	2	2021-12-28 23:25:27+00	\N	\N	1
20063	3	2021-12-29 01:56:20+00	\N	\N	1
20064	6	2021-12-29 02:07:19+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20065	5	2021-12-29 12:14:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20066	1	2021-12-29 11:11:35+00	\N	\N	1
20067	1	2021-12-29 12:25:57+00	\N	\N	1
20068	1	2021-12-29 13:30:16+00	\N	\N	1
20069	1	2021-12-29 14:26:51+00	\N	\N	1
20070	1	2021-12-29 15:07:40+00	\N	\N	1
20071	1	2021-12-29 16:46:55+00	\N	\N	1
20072	1	2021-12-29 17:25:55+00	\N	\N	1
20073	1	2021-12-29 18:38:58+00	\N	\N	1
20074	1	2021-12-29 19:24:12+00	\N	\N	1
20075	1	2021-12-29 20:40:41+00	\N	\N	1
20076	1	2021-12-29 21:30:49+00	\N	\N	1
20077	1	2021-12-29 22:32:28+00	\N	\N	1
20078	1	2021-12-29 23:22:30+00	\N	\N	1
20079	1	2021-12-30 00:38:46+00	\N	\N	1
20080	1	2021-12-30 01:19:13+00	\N	\N	1
20081	1	2021-12-30 02:18:37+00	\N	\N	1
20082	2	2021-12-29 14:31:48+00	\N	\N	1
20083	2	2021-12-29 18:49:53+00	\N	\N	1
20084	2	2021-12-29 22:57:21+00	\N	\N	1
20085	3	2021-12-30 01:43:33+00	\N	\N	1
20186	1	2022-01-03 21:51:07+00	\N	\N	1
20086	6	2021-12-30 03:12:44+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20087	5	2021-12-30 11:35:46+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20088	1	2021-12-30 11:25:08+00	\N	\N	1
20089	1	2021-12-30 12:41:08+00	\N	\N	1
20090	1	2021-12-30 13:39:29+00	\N	\N	1
20091	1	2021-12-30 14:43:53+00	\N	\N	1
20092	1	2021-12-30 15:20:13+00	\N	\N	1
20093	1	2021-12-30 16:40:36+00	\N	\N	1
20094	1	2021-12-30 17:27:45+00	\N	\N	1
20095	1	2021-12-30 18:39:23+00	\N	\N	1
20096	1	2021-12-30 19:19:53+00	\N	\N	1
20097	1	2021-12-30 20:31:08+00	\N	\N	1
20098	1	2021-12-30 21:17:07+00	\N	\N	1
20099	1	2021-12-30 22:47:18+00	\N	\N	1
20100	1	2021-12-30 23:39:48+00	\N	\N	1
20101	1	2021-12-31 00:43:07+00	\N	\N	1
20102	1	2021-12-31 01:13:53+00	\N	\N	1
20103	1	2021-12-31 02:11:40+00	\N	\N	1
20104	2	2021-12-30 14:56:05+00	\N	\N	1
20105	2	2021-12-30 19:10:07+00	\N	\N	1
20106	2	2021-12-30 23:05:20+00	\N	\N	1
20107	3	2021-12-31 03:20:14+00	\N	\N	1
20108	6	2021-12-31 01:45:25+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20109	5	2021-12-31 10:57:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20110	1	2021-12-31 11:21:19+00	\N	\N	1
20111	1	2021-12-31 12:18:36+00	\N	\N	1
20112	1	2021-12-31 13:44:57+00	\N	\N	1
20113	1	2021-12-31 14:11:57+00	\N	\N	1
20114	1	2021-12-31 15:44:48+00	\N	\N	1
20115	1	2021-12-31 16:22:03+00	\N	\N	1
20116	1	2021-12-31 17:41:15+00	\N	\N	1
20117	1	2021-12-31 18:48:20+00	\N	\N	1
20118	1	2021-12-31 19:47:08+00	\N	\N	1
20119	1	2021-12-31 20:13:44+00	\N	\N	1
20120	1	2021-12-31 21:42:18+00	\N	\N	1
20121	1	2021-12-31 22:51:06+00	\N	\N	1
20122	1	2021-12-31 23:20:33+00	\N	\N	1
20123	1	2022-01-01 00:50:08+00	\N	\N	1
20124	1	2022-01-01 01:44:24+00	\N	\N	1
20125	1	2022-01-01 02:35:08+00	\N	\N	1
20126	2	2021-12-31 14:50:01+00	\N	\N	1
20127	2	2021-12-31 18:35:09+00	\N	\N	1
20128	2	2021-12-31 22:40:01+00	\N	\N	1
20129	3	2022-01-01 02:33:34+00	\N	\N	1
20130	6	2022-01-01 02:26:35+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20131	5	2022-01-01 11:08:41+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20132	1	2022-01-01 11:21:11+00	\N	\N	1
20133	1	2022-01-01 12:39:31+00	\N	\N	1
20134	1	2022-01-01 13:17:42+00	\N	\N	1
20135	1	2022-01-01 14:17:07+00	\N	\N	1
20136	1	2022-01-01 15:28:31+00	\N	\N	1
20137	1	2022-01-01 16:19:42+00	\N	\N	1
20138	1	2022-01-01 17:29:50+00	\N	\N	1
20139	1	2022-01-01 18:42:35+00	\N	\N	1
20140	1	2022-01-01 19:48:54+00	\N	\N	1
20141	1	2022-01-01 20:09:52+00	\N	\N	1
20142	1	2022-01-01 21:09:22+00	\N	\N	1
20143	1	2022-01-01 22:43:17+00	\N	\N	1
20144	1	2022-01-01 23:15:19+00	\N	\N	1
20145	1	2022-01-02 00:35:23+00	\N	\N	1
20146	1	2022-01-02 01:47:34+00	\N	\N	1
20147	1	2022-01-02 02:20:34+00	\N	\N	1
20148	2	2022-01-01 15:15:02+00	\N	\N	1
20149	2	2022-01-01 18:32:47+00	\N	\N	1
20150	2	2022-01-01 22:56:36+00	\N	\N	1
20151	3	2022-01-02 02:44:28+00	\N	\N	1
20152	6	2022-01-02 02:13:29+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20153	5	2022-01-02 10:44:56+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20154	1	2022-01-02 11:20:51+00	\N	\N	1
20155	1	2022-01-02 12:12:20+00	\N	\N	1
20156	1	2022-01-02 13:23:32+00	\N	\N	1
20157	1	2022-01-02 14:20:17+00	\N	\N	1
20158	1	2022-01-02 15:13:58+00	\N	\N	1
20159	1	2022-01-02 16:24:44+00	\N	\N	1
20160	1	2022-01-02 17:29:44+00	\N	\N	1
20161	1	2022-01-02 18:08:51+00	\N	\N	1
20162	1	2022-01-02 19:31:10+00	\N	\N	1
20163	1	2022-01-02 20:32:15+00	\N	\N	1
20164	1	2022-01-02 21:38:45+00	\N	\N	1
20165	1	2022-01-02 22:18:38+00	\N	\N	1
20166	1	2022-01-02 23:09:05+00	\N	\N	1
20167	1	2022-01-03 00:14:23+00	\N	\N	1
20168	1	2022-01-03 01:33:19+00	\N	\N	1
20169	1	2022-01-03 02:19:29+00	\N	\N	1
20170	2	2022-01-02 15:04:19+00	\N	\N	1
20171	2	2022-01-02 19:11:49+00	\N	\N	1
20172	2	2022-01-02 23:15:13+00	\N	\N	1
20173	3	2022-01-03 03:09:32+00	\N	\N	1
20174	6	2022-01-03 02:42:18+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20175	5	2022-01-03 11:57:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20176	1	2022-01-03 11:21:02+00	\N	\N	1
20177	1	2022-01-03 12:26:52+00	\N	\N	1
20178	1	2022-01-03 13:31:20+00	\N	\N	1
20179	1	2022-01-03 14:31:14+00	\N	\N	1
20180	1	2022-01-03 15:13:08+00	\N	\N	1
20181	1	2022-01-03 16:13:55+00	\N	\N	1
20182	1	2022-01-03 17:15:30+00	\N	\N	1
20183	1	2022-01-03 18:32:42+00	\N	\N	1
20184	1	2022-01-03 19:18:10+00	\N	\N	1
20185	1	2022-01-03 20:22:03+00	\N	\N	1
20187	1	2022-01-03 22:25:03+00	\N	\N	1
20188	1	2022-01-03 23:27:18+00	\N	\N	1
20189	1	2022-01-04 00:17:21+00	\N	\N	1
20190	1	2022-01-04 01:52:11+00	\N	\N	1
20191	1	2022-01-04 02:25:56+00	\N	\N	1
20192	2	2022-01-03 14:49:08+00	\N	\N	1
20193	2	2022-01-03 18:48:25+00	\N	\N	1
20194	2	2022-01-03 22:55:25+00	\N	\N	1
20195	3	2022-01-04 02:33:59+00	\N	\N	1
20196	6	2022-01-04 02:13:13+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20197	5	2022-01-04 10:46:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20198	1	2022-01-04 11:36:38+00	\N	\N	1
20199	1	2022-01-04 12:31:56+00	\N	\N	1
20200	1	2022-01-04 13:29:38+00	\N	\N	1
20201	1	2022-01-04 14:50:05+00	\N	\N	1
20202	1	2022-01-04 15:08:23+00	\N	\N	1
20203	1	2022-01-04 16:26:34+00	\N	\N	1
20204	1	2022-01-04 17:42:03+00	\N	\N	1
20205	1	2022-01-04 18:38:58+00	\N	\N	1
20206	1	2022-01-04 19:38:10+00	\N	\N	1
20207	1	2022-01-04 20:15:43+00	\N	\N	1
20208	1	2022-01-04 21:15:43+00	\N	\N	1
20209	1	2022-01-04 22:36:11+00	\N	\N	1
20210	1	2022-01-04 23:41:15+00	\N	\N	1
20211	1	2022-01-05 00:50:40+00	\N	\N	1
20212	1	2022-01-05 01:42:48+00	\N	\N	1
20213	1	2022-01-05 02:44:17+00	\N	\N	1
20214	2	2022-01-04 14:36:49+00	\N	\N	1
20215	2	2022-01-04 18:40:52+00	\N	\N	1
20216	2	2022-01-04 23:22:29+00	\N	\N	1
20217	3	2022-01-05 03:18:29+00	\N	\N	1
20218	6	2022-01-05 01:54:30+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20219	5	2022-01-05 12:12:52+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20220	1	2022-01-05 11:43:32+00	\N	\N	1
20221	1	2022-01-05 12:51:55+00	\N	\N	1
20222	1	2022-01-05 13:21:52+00	\N	\N	1
20223	1	2022-01-05 14:45:55+00	\N	\N	1
20224	1	2022-01-05 15:19:24+00	\N	\N	1
20225	1	2022-01-05 16:47:36+00	\N	\N	1
20226	1	2022-01-05 17:08:01+00	\N	\N	1
20227	1	2022-01-05 18:33:26+00	\N	\N	1
20228	1	2022-01-05 19:51:46+00	\N	\N	1
20229	1	2022-01-05 20:31:31+00	\N	\N	1
20230	1	2022-01-05 21:42:20+00	\N	\N	1
20231	1	2022-01-05 22:11:12+00	\N	\N	1
20232	1	2022-01-05 23:26:39+00	\N	\N	1
20233	1	2022-01-06 00:28:56+00	\N	\N	1
20234	1	2022-01-06 01:08:35+00	\N	\N	1
20235	1	2022-01-06 02:33:14+00	\N	\N	1
20236	2	2022-01-05 15:17:21+00	\N	\N	1
20237	2	2022-01-05 18:39:30+00	\N	\N	1
20238	2	2022-01-05 22:41:12+00	\N	\N	1
20239	3	2022-01-06 01:49:59+00	\N	\N	1
20240	6	2022-01-06 02:28:57+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20241	5	2022-01-06 11:14:19+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20242	1	2022-01-06 11:50:12+00	\N	\N	1
20243	1	2022-01-06 12:51:11+00	\N	\N	1
20244	1	2022-01-06 13:37:11+00	\N	\N	1
20245	1	2022-01-06 14:36:32+00	\N	\N	1
20246	1	2022-01-06 15:28:27+00	\N	\N	1
20247	1	2022-01-06 16:18:41+00	\N	\N	1
20248	1	2022-01-06 17:17:08+00	\N	\N	1
20249	1	2022-01-06 18:34:25+00	\N	\N	1
20250	1	2022-01-06 19:22:47+00	\N	\N	1
20251	1	2022-01-06 20:08:49+00	\N	\N	1
20252	1	2022-01-06 21:46:08+00	\N	\N	1
20253	1	2022-01-06 22:09:45+00	\N	\N	1
20254	1	2022-01-06 23:44:03+00	\N	\N	1
20255	1	2022-01-07 00:41:09+00	\N	\N	1
20256	1	2022-01-07 01:23:40+00	\N	\N	1
20257	1	2022-01-07 02:11:08+00	\N	\N	1
20258	2	2022-01-06 15:00:39+00	\N	\N	1
20259	2	2022-01-06 18:51:07+00	\N	\N	1
20260	2	2022-01-06 23:21:07+00	\N	\N	1
20261	3	2022-01-07 01:50:05+00	\N	\N	1
20262	6	2022-01-07 03:06:30+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20263	5	2022-01-07 11:53:36+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20264	1	2022-01-07 11:23:51+00	\N	\N	1
20265	1	2022-01-07 12:51:36+00	\N	\N	1
20266	1	2022-01-07 13:39:34+00	\N	\N	1
20267	1	2022-01-07 14:12:06+00	\N	\N	1
20268	1	2022-01-07 15:21:31+00	\N	\N	1
20269	1	2022-01-07 16:14:11+00	\N	\N	1
20270	1	2022-01-07 17:20:46+00	\N	\N	1
20271	1	2022-01-07 18:27:49+00	\N	\N	1
20272	1	2022-01-07 19:35:33+00	\N	\N	1
20273	1	2022-01-07 20:20:36+00	\N	\N	1
20274	1	2022-01-07 21:24:52+00	\N	\N	1
20275	1	2022-01-07 22:27:16+00	\N	\N	1
20276	1	2022-01-07 23:07:30+00	\N	\N	1
20277	1	2022-01-08 00:34:58+00	\N	\N	1
20278	1	2022-01-08 01:26:05+00	\N	\N	1
20279	1	2022-01-08 02:51:18+00	\N	\N	1
20280	2	2022-01-07 15:15:10+00	\N	\N	1
20281	2	2022-01-07 18:55:47+00	\N	\N	1
20282	2	2022-01-07 22:46:55+00	\N	\N	1
20283	3	2022-01-08 03:12:00+00	\N	\N	1
20284	6	2022-01-08 01:55:00+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20285	5	2022-01-08 10:32:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20286	1	2022-01-08 11:23:30+00	\N	\N	1
20287	1	2022-01-08 12:32:13+00	\N	\N	1
20288	1	2022-01-08 13:23:57+00	\N	\N	1
20289	1	2022-01-08 14:15:43+00	\N	\N	1
20290	1	2022-01-08 15:34:52+00	\N	\N	1
20291	1	2022-01-08 16:09:43+00	\N	\N	1
20292	1	2022-01-08 17:21:40+00	\N	\N	1
20293	1	2022-01-08 18:31:17+00	\N	\N	1
20294	1	2022-01-08 19:48:02+00	\N	\N	1
20295	1	2022-01-08 20:40:36+00	\N	\N	1
20296	1	2022-01-08 21:45:52+00	\N	\N	1
20297	1	2022-01-08 22:24:46+00	\N	\N	1
20298	1	2022-01-08 23:48:33+00	\N	\N	1
20299	1	2022-01-09 00:15:10+00	\N	\N	1
20300	1	2022-01-09 01:16:29+00	\N	\N	1
20301	1	2022-01-09 02:38:31+00	\N	\N	1
20302	2	2022-01-08 14:33:00+00	\N	\N	1
20303	2	2022-01-08 18:32:09+00	\N	\N	1
20304	2	2022-01-08 22:56:21+00	\N	\N	1
20305	3	2022-01-09 03:02:54+00	\N	\N	1
20306	6	2022-01-09 02:47:09+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20307	5	2022-01-09 11:32:58+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20308	1	2022-01-09 11:20:42+00	\N	\N	1
20309	1	2022-01-09 12:39:24+00	\N	\N	1
20310	1	2022-01-09 13:23:12+00	\N	\N	1
20311	1	2022-01-09 14:11:33+00	\N	\N	1
20312	1	2022-01-09 15:37:45+00	\N	\N	1
20313	1	2022-01-09 16:36:47+00	\N	\N	1
20314	1	2022-01-09 17:12:25+00	\N	\N	1
20315	1	2022-01-09 18:48:25+00	\N	\N	1
20316	1	2022-01-09 19:49:39+00	\N	\N	1
20317	1	2022-01-09 20:37:32+00	\N	\N	1
20318	1	2022-01-09 21:12:59+00	\N	\N	1
20319	1	2022-01-09 22:50:57+00	\N	\N	1
20320	1	2022-01-09 23:31:47+00	\N	\N	1
20321	1	2022-01-10 00:50:57+00	\N	\N	1
20322	1	2022-01-10 01:31:52+00	\N	\N	1
20323	1	2022-01-10 02:39:17+00	\N	\N	1
20324	2	2022-01-09 15:24:24+00	\N	\N	1
20325	2	2022-01-09 19:25:45+00	\N	\N	1
20326	2	2022-01-09 22:54:03+00	\N	\N	1
20327	3	2022-01-10 02:48:59+00	\N	\N	1
20328	6	2022-01-10 01:47:18+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20329	5	2022-01-10 11:53:42+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20330	1	2022-01-10 11:50:43+00	\N	\N	1
20331	1	2022-01-10 12:38:44+00	\N	\N	1
20332	1	2022-01-10 13:22:51+00	\N	\N	1
20333	1	2022-01-10 14:37:34+00	\N	\N	1
20334	1	2022-01-10 15:36:14+00	\N	\N	1
20335	1	2022-01-10 16:37:40+00	\N	\N	1
20336	1	2022-01-10 17:22:28+00	\N	\N	1
20337	1	2022-01-10 18:33:00+00	\N	\N	1
20338	1	2022-01-10 19:32:37+00	\N	\N	1
20339	1	2022-01-10 20:14:31+00	\N	\N	1
20340	1	2022-01-10 21:46:05+00	\N	\N	1
20341	1	2022-01-10 22:30:18+00	\N	\N	1
20342	1	2022-01-10 23:41:16+00	\N	\N	1
20343	1	2022-01-11 00:52:11+00	\N	\N	1
20344	1	2022-01-11 01:21:41+00	\N	\N	1
20345	1	2022-01-11 02:42:17+00	\N	\N	1
20346	2	2022-01-10 14:45:42+00	\N	\N	1
20347	2	2022-01-10 19:23:04+00	\N	\N	1
20348	2	2022-01-10 22:38:30+00	\N	\N	1
20349	3	2022-01-11 02:08:58+00	\N	\N	1
20350	6	2022-01-11 02:14:50+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20351	5	2022-01-11 11:26:37+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20352	1	2022-01-11 11:09:48+00	\N	\N	1
20353	1	2022-01-11 12:41:55+00	\N	\N	1
20354	1	2022-01-11 13:48:54+00	\N	\N	1
20355	1	2022-01-11 14:51:34+00	\N	\N	1
20356	1	2022-01-11 15:46:45+00	\N	\N	1
20357	1	2022-01-11 16:50:23+00	\N	\N	1
20358	1	2022-01-11 17:31:54+00	\N	\N	1
20359	1	2022-01-11 18:40:19+00	\N	\N	1
20360	1	2022-01-11 19:43:19+00	\N	\N	1
20361	1	2022-01-11 20:31:08+00	\N	\N	1
20362	1	2022-01-11 21:31:51+00	\N	\N	1
20363	1	2022-01-11 22:14:33+00	\N	\N	1
20364	1	2022-01-11 23:09:18+00	\N	\N	1
20365	1	2022-01-12 00:44:38+00	\N	\N	1
20366	1	2022-01-12 01:39:18+00	\N	\N	1
20367	1	2022-01-12 02:23:37+00	\N	\N	1
20368	2	2022-01-11 15:20:58+00	\N	\N	1
20369	2	2022-01-11 19:22:27+00	\N	\N	1
20370	2	2022-01-11 22:59:46+00	\N	\N	1
20371	3	2022-01-12 01:33:38+00	\N	\N	1
20372	6	2022-01-12 02:27:57+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20373	5	2022-01-12 11:20:03+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20374	1	2022-01-12 11:11:56+00	\N	\N	1
20375	1	2022-01-12 12:19:08+00	\N	\N	1
20376	1	2022-01-12 13:45:22+00	\N	\N	1
20377	1	2022-01-12 14:39:53+00	\N	\N	1
20378	1	2022-01-12 15:08:15+00	\N	\N	1
20379	1	2022-01-12 16:48:04+00	\N	\N	1
20380	1	2022-01-12 17:47:57+00	\N	\N	1
20381	1	2022-01-12 18:25:14+00	\N	\N	1
20382	1	2022-01-12 19:18:14+00	\N	\N	1
20383	1	2022-01-12 20:11:03+00	\N	\N	1
20384	1	2022-01-12 21:16:18+00	\N	\N	1
20385	1	2022-01-12 22:18:53+00	\N	\N	1
20386	1	2022-01-12 23:35:22+00	\N	\N	1
20387	1	2022-01-13 00:33:30+00	\N	\N	1
20388	1	2022-01-13 01:14:56+00	\N	\N	1
20389	1	2022-01-13 02:37:58+00	\N	\N	1
20390	2	2022-01-12 15:11:09+00	\N	\N	1
20391	2	2022-01-12 18:55:47+00	\N	\N	1
20392	2	2022-01-12 22:56:08+00	\N	\N	1
20393	3	2022-01-13 03:10:06+00	\N	\N	1
20394	6	2022-01-13 02:21:55+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20395	5	2022-01-13 11:44:31+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20396	1	2022-01-13 11:43:10+00	\N	\N	1
20397	1	2022-01-13 12:27:01+00	\N	\N	1
20398	1	2022-01-13 13:48:17+00	\N	\N	1
20399	1	2022-01-13 14:46:14+00	\N	\N	1
20400	1	2022-01-13 15:24:05+00	\N	\N	1
20401	1	2022-01-13 16:34:13+00	\N	\N	1
20402	1	2022-01-13 17:38:09+00	\N	\N	1
20403	1	2022-01-13 18:33:59+00	\N	\N	1
20404	1	2022-01-13 19:18:03+00	\N	\N	1
20405	1	2022-01-13 20:13:00+00	\N	\N	1
20406	1	2022-01-13 21:14:15+00	\N	\N	1
20407	1	2022-01-13 22:24:40+00	\N	\N	1
20408	1	2022-01-13 23:20:38+00	\N	\N	1
20409	1	2022-01-14 00:25:30+00	\N	\N	1
20410	1	2022-01-14 01:50:58+00	\N	\N	1
20411	1	2022-01-14 02:48:48+00	\N	\N	1
20412	2	2022-01-13 14:58:32+00	\N	\N	1
20413	2	2022-01-13 19:05:06+00	\N	\N	1
20414	2	2022-01-13 23:20:40+00	\N	\N	1
20415	3	2022-01-14 02:23:16+00	\N	\N	1
20416	6	2022-01-14 02:43:22+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20417	5	2022-01-14 11:18:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20418	1	2022-01-14 11:15:18+00	\N	\N	1
20419	1	2022-01-14 12:27:54+00	\N	\N	1
20420	1	2022-01-14 13:23:59+00	\N	\N	1
20421	1	2022-01-14 14:36:57+00	\N	\N	1
20422	1	2022-01-14 15:20:29+00	\N	\N	1
20423	1	2022-01-14 16:32:56+00	\N	\N	1
20424	1	2022-01-14 17:33:41+00	\N	\N	1
20425	1	2022-01-14 18:35:55+00	\N	\N	1
20426	1	2022-01-14 19:41:35+00	\N	\N	1
20427	1	2022-01-14 20:39:21+00	\N	\N	1
20428	1	2022-01-14 21:16:38+00	\N	\N	1
20429	1	2022-01-14 22:37:10+00	\N	\N	1
20430	1	2022-01-14 23:42:46+00	\N	\N	1
20431	1	2022-01-15 00:38:33+00	\N	\N	1
20432	1	2022-01-15 01:19:44+00	\N	\N	1
20433	1	2022-01-15 02:47:09+00	\N	\N	1
20434	2	2022-01-14 14:34:55+00	\N	\N	1
20435	2	2022-01-14 18:37:37+00	\N	\N	1
20436	2	2022-01-14 22:52:21+00	\N	\N	1
20437	3	2022-01-15 02:47:37+00	\N	\N	1
20438	6	2022-01-15 02:06:07+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20439	5	2022-01-15 11:16:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20440	1	2022-01-15 11:25:45+00	\N	\N	1
20441	1	2022-01-15 12:31:08+00	\N	\N	1
20442	1	2022-01-15 13:32:45+00	\N	\N	1
20443	1	2022-01-15 14:35:59+00	\N	\N	1
20444	1	2022-01-15 15:17:38+00	\N	\N	1
20445	1	2022-01-15 16:48:12+00	\N	\N	1
20446	1	2022-01-15 17:47:17+00	\N	\N	1
20447	1	2022-01-15 18:40:06+00	\N	\N	1
20448	1	2022-01-15 19:35:21+00	\N	\N	1
20449	1	2022-01-15 20:16:11+00	\N	\N	1
20450	1	2022-01-15 21:25:39+00	\N	\N	1
20451	1	2022-01-15 22:16:17+00	\N	\N	1
20452	1	2022-01-15 23:11:33+00	\N	\N	1
20453	1	2022-01-16 00:28:08+00	\N	\N	1
20454	1	2022-01-16 01:28:51+00	\N	\N	1
20455	1	2022-01-16 02:12:10+00	\N	\N	1
20456	2	2022-01-15 15:05:46+00	\N	\N	1
20457	2	2022-01-15 18:55:33+00	\N	\N	1
20458	2	2022-01-15 23:06:10+00	\N	\N	1
20459	3	2022-01-16 03:06:20+00	\N	\N	1
20460	6	2022-01-16 03:09:14+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20461	5	2022-01-16 10:32:02+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20462	1	2022-01-16 11:19:31+00	\N	\N	1
20463	1	2022-01-16 12:51:31+00	\N	\N	1
20464	1	2022-01-16 13:34:24+00	\N	\N	1
20465	1	2022-01-16 14:28:46+00	\N	\N	1
20466	1	2022-01-16 15:31:24+00	\N	\N	1
20467	1	2022-01-16 16:27:37+00	\N	\N	1
20468	1	2022-01-16 17:34:04+00	\N	\N	1
20469	1	2022-01-16 18:23:27+00	\N	\N	1
20470	1	2022-01-16 19:23:01+00	\N	\N	1
20471	1	2022-01-16 20:09:22+00	\N	\N	1
20472	1	2022-01-16 21:52:16+00	\N	\N	1
20473	1	2022-01-16 22:11:51+00	\N	\N	1
20474	1	2022-01-16 23:23:47+00	\N	\N	1
20475	1	2022-01-17 00:30:39+00	\N	\N	1
20476	1	2022-01-17 01:12:50+00	\N	\N	1
20477	1	2022-01-17 02:28:46+00	\N	\N	1
20478	2	2022-01-16 14:31:38+00	\N	\N	1
20479	2	2022-01-16 19:10:09+00	\N	\N	1
20480	2	2022-01-16 22:57:30+00	\N	\N	1
20481	3	2022-01-17 01:39:43+00	\N	\N	1
20482	6	2022-01-17 03:08:19+00	2	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20483	5	2022-01-17 11:21:40+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20484	1	2022-01-17 11:19:04+00	\N	\N	1
20485	1	2022-01-17 12:13:30+00	\N	\N	1
20486	1	2022-01-17 13:17:57+00	\N	\N	1
20487	1	2022-01-17 14:09:42+00	\N	\N	1
20488	1	2022-01-17 15:48:33+00	\N	\N	1
20489	1	2022-01-17 16:11:08+00	\N	\N	1
20490	1	2022-01-17 17:21:52+00	\N	\N	1
20491	1	2022-01-17 18:28:42+00	\N	\N	1
20492	1	2022-01-17 19:20:37+00	\N	\N	1
20493	1	2022-01-17 20:25:30+00	\N	\N	1
20494	1	2022-01-17 21:49:50+00	\N	\N	1
20495	1	2022-01-17 22:16:17+00	\N	\N	1
20496	1	2022-01-17 23:16:07+00	\N	\N	1
20497	1	2022-01-18 00:13:43+00	\N	\N	1
20498	1	2022-01-18 01:44:20+00	\N	\N	1
20499	1	2022-01-18 02:32:23+00	\N	\N	1
20500	2	2022-01-17 15:07:05+00	\N	\N	1
20501	2	2022-01-17 19:17:15+00	\N	\N	1
20502	2	2022-01-17 22:32:27+00	\N	\N	1
20503	3	2022-01-18 02:49:19+00	\N	\N	1
20504	6	2022-01-18 02:37:02+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20505	5	2022-01-18 11:29:27+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20506	1	2022-01-18 11:28:08+00	\N	\N	1
20507	1	2022-01-18 12:33:49+00	\N	\N	1
20508	1	2022-01-18 13:30:05+00	\N	\N	1
20509	1	2022-01-18 14:23:48+00	\N	\N	1
20510	1	2022-01-18 15:16:46+00	\N	\N	1
20511	1	2022-01-18 16:23:36+00	\N	\N	1
20512	1	2022-01-18 17:25:46+00	\N	\N	1
20513	1	2022-01-18 18:44:27+00	\N	\N	1
20514	1	2022-01-18 19:18:44+00	\N	\N	1
20515	1	2022-01-18 20:13:01+00	\N	\N	1
20516	1	2022-01-18 21:17:38+00	\N	\N	1
20517	1	2022-01-18 22:11:47+00	\N	\N	1
20518	1	2022-01-18 23:51:48+00	\N	\N	1
20519	1	2022-01-19 00:15:27+00	\N	\N	1
20520	1	2022-01-19 01:08:38+00	\N	\N	1
20521	1	2022-01-19 02:33:05+00	\N	\N	1
20522	2	2022-01-18 14:51:35+00	\N	\N	1
20523	2	2022-01-18 18:33:54+00	\N	\N	1
20524	2	2022-01-18 23:16:15+00	\N	\N	1
20525	3	2022-01-19 02:13:16+00	\N	\N	1
20526	6	2022-01-19 02:36:32+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20527	5	2022-01-19 11:40:20+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20528	1	2022-01-19 11:23:51+00	\N	\N	1
20529	1	2022-01-19 12:33:49+00	\N	\N	1
20530	1	2022-01-19 13:25:37+00	\N	\N	1
20531	1	2022-01-19 14:28:34+00	\N	\N	1
20532	1	2022-01-19 15:11:16+00	\N	\N	1
20533	1	2022-01-19 16:08:25+00	\N	\N	1
20534	1	2022-01-19 17:08:14+00	\N	\N	1
20535	1	2022-01-19 18:34:00+00	\N	\N	1
20536	1	2022-01-19 19:22:21+00	\N	\N	1
20537	1	2022-01-19 20:43:33+00	\N	\N	1
20538	1	2022-01-19 21:38:40+00	\N	\N	1
20539	1	2022-01-19 22:13:39+00	\N	\N	1
20540	1	2022-01-19 23:49:07+00	\N	\N	1
20541	1	2022-01-20 00:28:21+00	\N	\N	1
20542	1	2022-01-20 01:07:55+00	\N	\N	1
20543	1	2022-01-20 02:26:43+00	\N	\N	1
20544	2	2022-01-19 15:06:54+00	\N	\N	1
20545	2	2022-01-19 19:04:54+00	\N	\N	1
20546	2	2022-01-19 22:41:44+00	\N	\N	1
20547	3	2022-01-20 02:17:40+00	\N	\N	1
20548	6	2022-01-20 02:32:13+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20549	5	2022-01-20 11:03:08+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20550	1	2022-01-20 11:47:51+00	\N	\N	1
20551	1	2022-01-20 12:12:16+00	\N	\N	1
20552	1	2022-01-20 13:25:42+00	\N	\N	1
20553	1	2022-01-20 14:38:36+00	\N	\N	1
20554	1	2022-01-20 15:27:11+00	\N	\N	1
20555	1	2022-01-20 16:13:40+00	\N	\N	1
20556	1	2022-01-20 17:16:07+00	\N	\N	1
20557	1	2022-01-20 18:49:31+00	\N	\N	1
20558	1	2022-01-20 19:27:33+00	\N	\N	1
20559	1	2022-01-20 20:51:19+00	\N	\N	1
20560	1	2022-01-20 21:43:55+00	\N	\N	1
20561	1	2022-01-20 22:23:00+00	\N	\N	1
20562	1	2022-01-20 23:10:14+00	\N	\N	1
20563	1	2022-01-21 00:42:47+00	\N	\N	1
20564	1	2022-01-21 01:30:23+00	\N	\N	1
20565	1	2022-01-21 02:10:18+00	\N	\N	1
20566	2	2022-01-20 14:43:02+00	\N	\N	1
20567	2	2022-01-20 19:15:59+00	\N	\N	1
20568	2	2022-01-20 23:11:25+00	\N	\N	1
20569	3	2022-01-21 02:22:43+00	\N	\N	1
20570	6	2022-01-21 01:45:42+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20571	5	2022-01-21 10:45:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20572	1	2022-01-21 11:11:05+00	\N	\N	1
20573	1	2022-01-21 12:14:26+00	\N	\N	1
20574	1	2022-01-21 13:36:47+00	\N	\N	1
20575	1	2022-01-21 14:47:26+00	\N	\N	1
20576	1	2022-01-21 15:19:36+00	\N	\N	1
20577	1	2022-01-21 16:11:28+00	\N	\N	1
20578	1	2022-01-21 17:24:39+00	\N	\N	1
20579	1	2022-01-21 18:33:06+00	\N	\N	1
20580	1	2022-01-21 19:33:10+00	\N	\N	1
20581	1	2022-01-21 20:33:08+00	\N	\N	1
20582	1	2022-01-21 21:10:26+00	\N	\N	1
20583	1	2022-01-21 22:24:35+00	\N	\N	1
20584	1	2022-01-21 23:52:06+00	\N	\N	1
20585	1	2022-01-22 00:35:13+00	\N	\N	1
20586	1	2022-01-22 01:43:12+00	\N	\N	1
20587	1	2022-01-22 02:50:19+00	\N	\N	1
20588	2	2022-01-21 15:04:37+00	\N	\N	1
20589	2	2022-01-21 19:07:33+00	\N	\N	1
20590	2	2022-01-21 22:58:38+00	\N	\N	1
20591	3	2022-01-22 02:51:50+00	\N	\N	1
20592	6	2022-01-22 02:55:41+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20593	5	2022-01-22 12:13:38+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20594	1	2022-01-22 11:27:50+00	\N	\N	1
20595	1	2022-01-22 12:20:35+00	\N	\N	1
20596	1	2022-01-22 13:11:44+00	\N	\N	1
20597	1	2022-01-22 14:14:43+00	\N	\N	1
20598	1	2022-01-22 15:29:24+00	\N	\N	1
20599	1	2022-01-22 16:17:45+00	\N	\N	1
20600	1	2022-01-22 17:15:20+00	\N	\N	1
20601	1	2022-01-22 18:14:37+00	\N	\N	1
20602	1	2022-01-22 19:46:49+00	\N	\N	1
20603	1	2022-01-22 20:31:41+00	\N	\N	1
20604	1	2022-01-22 21:36:07+00	\N	\N	1
20605	1	2022-01-22 22:48:36+00	\N	\N	1
20606	1	2022-01-22 23:16:57+00	\N	\N	1
20607	1	2022-01-23 00:25:39+00	\N	\N	1
20608	1	2022-01-23 01:30:41+00	\N	\N	1
20609	1	2022-01-23 02:42:51+00	\N	\N	1
20610	2	2022-01-22 15:21:48+00	\N	\N	1
20611	2	2022-01-22 18:57:13+00	\N	\N	1
20612	2	2022-01-22 23:04:59+00	\N	\N	1
20613	3	2022-01-23 02:19:41+00	\N	\N	1
20614	6	2022-01-23 03:01:45+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20615	5	2022-01-23 12:17:50+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20616	1	2022-01-23 11:48:50+00	\N	\N	1
20617	1	2022-01-23 12:48:34+00	\N	\N	1
20618	1	2022-01-23 13:19:28+00	\N	\N	1
20619	1	2022-01-23 14:46:24+00	\N	\N	1
20620	1	2022-01-23 15:28:55+00	\N	\N	1
20621	1	2022-01-23 16:30:56+00	\N	\N	1
20622	1	2022-01-23 17:29:12+00	\N	\N	1
20623	1	2022-01-23 18:07:55+00	\N	\N	1
20624	1	2022-01-23 19:33:39+00	\N	\N	1
20625	1	2022-01-23 20:38:46+00	\N	\N	1
20626	1	2022-01-23 21:14:11+00	\N	\N	1
20627	1	2022-01-23 22:20:41+00	\N	\N	1
20628	1	2022-01-23 23:44:14+00	\N	\N	1
20629	1	2022-01-24 00:07:46+00	\N	\N	1
20630	1	2022-01-24 01:09:05+00	\N	\N	1
20631	1	2022-01-24 02:45:29+00	\N	\N	1
20632	2	2022-01-23 14:42:15+00	\N	\N	1
20633	2	2022-01-23 18:48:10+00	\N	\N	1
20634	2	2022-01-23 23:12:51+00	\N	\N	1
20635	3	2022-01-24 03:18:16+00	\N	\N	1
20636	6	2022-01-24 01:50:25+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20637	5	2022-01-24 12:14:39+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20638	1	2022-01-24 11:48:55+00	\N	\N	1
20639	1	2022-01-24 12:23:41+00	\N	\N	1
20640	1	2022-01-24 13:36:21+00	\N	\N	1
20641	1	2022-01-24 14:44:16+00	\N	\N	1
20642	1	2022-01-24 15:25:10+00	\N	\N	1
20643	1	2022-01-24 16:36:07+00	\N	\N	1
20644	1	2022-01-24 17:30:13+00	\N	\N	1
20645	1	2022-01-24 18:32:26+00	\N	\N	1
20646	1	2022-01-24 19:52:07+00	\N	\N	1
20647	1	2022-01-24 20:18:15+00	\N	\N	1
20648	1	2022-01-24 21:33:17+00	\N	\N	1
20649	1	2022-01-24 22:52:19+00	\N	\N	1
20650	1	2022-01-24 23:09:42+00	\N	\N	1
20651	1	2022-01-25 00:46:58+00	\N	\N	1
20652	1	2022-01-25 01:25:35+00	\N	\N	1
20653	1	2022-01-25 02:48:46+00	\N	\N	1
20654	2	2022-01-24 15:09:33+00	\N	\N	1
20655	2	2022-01-24 19:24:52+00	\N	\N	1
20656	2	2022-01-24 22:54:22+00	\N	\N	1
20657	3	2022-01-25 01:36:48+00	\N	\N	1
20658	6	2022-01-25 02:45:01+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20659	5	2022-01-25 10:47:26+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20660	1	2022-01-25 11:50:07+00	\N	\N	1
20661	1	2022-01-25 12:21:27+00	\N	\N	1
20662	1	2022-01-25 13:13:46+00	\N	\N	1
20663	1	2022-01-25 14:51:09+00	\N	\N	1
20664	1	2022-01-25 15:08:38+00	\N	\N	1
20665	1	2022-01-25 16:13:40+00	\N	\N	1
20666	1	2022-01-25 17:51:41+00	\N	\N	1
20667	1	2022-01-25 18:08:08+00	\N	\N	1
20668	1	2022-01-25 19:50:36+00	\N	\N	1
20669	1	2022-01-25 20:17:10+00	\N	\N	1
20670	1	2022-01-25 21:28:54+00	\N	\N	1
20671	1	2022-01-25 22:45:04+00	\N	\N	1
20672	1	2022-01-25 23:49:00+00	\N	\N	1
20673	1	2022-01-26 00:22:34+00	\N	\N	1
20674	1	2022-01-26 01:29:15+00	\N	\N	1
20675	1	2022-01-26 02:38:30+00	\N	\N	1
20676	2	2022-01-25 14:55:12+00	\N	\N	1
20677	2	2022-01-25 18:58:25+00	\N	\N	1
20678	2	2022-01-25 23:19:14+00	\N	\N	1
20679	3	2022-01-26 01:53:22+00	\N	\N	1
20680	6	2022-01-26 02:38:53+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20681	5	2022-01-26 11:43:24+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20682	1	2022-01-26 11:48:49+00	\N	\N	1
20683	1	2022-01-26 12:39:02+00	\N	\N	1
20684	1	2022-01-26 13:39:53+00	\N	\N	1
20685	1	2022-01-26 14:52:21+00	\N	\N	1
20686	1	2022-01-26 15:32:29+00	\N	\N	1
20687	1	2022-01-26 16:15:32+00	\N	\N	1
20688	1	2022-01-26 17:12:03+00	\N	\N	1
20689	1	2022-01-26 18:12:38+00	\N	\N	1
20690	1	2022-01-26 19:52:24+00	\N	\N	1
20691	1	2022-01-26 20:48:46+00	\N	\N	1
20692	1	2022-01-26 21:14:27+00	\N	\N	1
20693	1	2022-01-26 22:48:54+00	\N	\N	1
20694	1	2022-01-26 23:36:53+00	\N	\N	1
20695	1	2022-01-27 00:29:13+00	\N	\N	1
20696	1	2022-01-27 01:27:14+00	\N	\N	1
20697	1	2022-01-27 02:43:52+00	\N	\N	1
20698	2	2022-01-26 14:40:22+00	\N	\N	1
20699	2	2022-01-26 18:35:35+00	\N	\N	1
20700	2	2022-01-26 23:01:02+00	\N	\N	1
20702	6	2022-01-27 03:10:46+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20703	5	2022-01-27 12:05:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20704	1	2022-01-27 11:20:45+00	\N	\N	1
20705	1	2022-01-27 12:40:10+00	\N	\N	1
20706	1	2022-01-27 13:43:55+00	\N	\N	1
20707	1	2022-01-27 14:10:46+00	\N	\N	1
20708	1	2022-01-27 15:47:54+00	\N	\N	1
20709	1	2022-01-27 16:38:06+00	\N	\N	1
20710	1	2022-01-27 17:22:23+00	\N	\N	1
20711	1	2022-01-27 18:22:06+00	\N	\N	1
20712	1	2022-01-27 19:09:41+00	\N	\N	1
20713	1	2022-01-27 20:21:03+00	\N	\N	1
20714	1	2022-01-27 21:33:28+00	\N	\N	1
20715	1	2022-01-27 22:32:06+00	\N	\N	1
20716	1	2022-01-27 23:21:20+00	\N	\N	1
20717	1	2022-01-28 00:33:12+00	\N	\N	1
20718	1	2022-01-28 01:23:01+00	\N	\N	1
20719	1	2022-01-28 02:17:37+00	\N	\N	1
20720	2	2022-01-27 15:04:59+00	\N	\N	1
20721	2	2022-01-27 19:27:27+00	\N	\N	1
20722	2	2022-01-27 22:44:48+00	\N	\N	1
20723	3	2022-01-28 01:56:51+00	\N	\N	1
20724	6	2022-01-28 02:50:31+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20725	5	2022-01-28 11:28:20+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20726	1	2022-01-28 11:37:10+00	\N	\N	1
20727	1	2022-01-28 12:45:53+00	\N	\N	1
20728	1	2022-01-28 13:33:11+00	\N	\N	1
20729	1	2022-01-28 14:45:48+00	\N	\N	1
20730	1	2022-01-28 15:11:21+00	\N	\N	1
20731	1	2022-01-28 16:10:55+00	\N	\N	1
20732	1	2022-01-28 17:19:16+00	\N	\N	1
20733	1	2022-01-28 18:23:39+00	\N	\N	1
20734	1	2022-01-28 19:11:27+00	\N	\N	1
20735	1	2022-01-28 20:24:27+00	\N	\N	1
20736	1	2022-01-28 21:27:20+00	\N	\N	1
20737	1	2022-01-28 22:26:45+00	\N	\N	1
20738	1	2022-01-28 23:50:51+00	\N	\N	1
20739	1	2022-01-29 00:44:59+00	\N	\N	1
20740	1	2022-01-29 01:30:02+00	\N	\N	1
20741	1	2022-01-29 02:52:22+00	\N	\N	1
20742	2	2022-01-28 14:59:56+00	\N	\N	1
20743	2	2022-01-28 19:05:52+00	\N	\N	1
20744	2	2022-01-28 22:54:16+00	\N	\N	1
20745	3	2022-01-29 02:32:57+00	\N	\N	1
20746	6	2022-01-29 01:59:03+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20747	5	2022-01-29 11:50:29+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20748	1	2022-01-29 11:36:17+00	\N	\N	1
20749	1	2022-01-29 12:11:01+00	\N	\N	1
20750	1	2022-01-29 13:46:12+00	\N	\N	1
20751	1	2022-01-29 14:21:24+00	\N	\N	1
20752	1	2022-01-29 15:20:34+00	\N	\N	1
20753	1	2022-01-29 16:46:46+00	\N	\N	1
20754	1	2022-01-29 17:15:42+00	\N	\N	1
20755	1	2022-01-29 18:14:28+00	\N	\N	1
20756	1	2022-01-29 19:25:37+00	\N	\N	1
20757	1	2022-01-29 20:44:44+00	\N	\N	1
20758	1	2022-01-29 21:07:32+00	\N	\N	1
20759	1	2022-01-29 22:27:37+00	\N	\N	1
20760	1	2022-01-29 23:20:14+00	\N	\N	1
20761	1	2022-01-30 00:14:01+00	\N	\N	1
20762	1	2022-01-30 01:22:12+00	\N	\N	1
20763	1	2022-01-30 02:47:38+00	\N	\N	1
20764	2	2022-01-29 15:09:44+00	\N	\N	1
20765	2	2022-01-29 19:01:57+00	\N	\N	1
20766	2	2022-01-29 23:27:33+00	\N	\N	1
20767	3	2022-01-30 02:22:06+00	\N	\N	1
20768	6	2022-01-30 02:18:55+00	3	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20769	5	2022-01-30 11:54:28+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20770	1	2022-01-30 11:15:23+00	\N	\N	1
20771	1	2022-01-30 12:12:30+00	\N	\N	1
20772	1	2022-01-30 13:19:01+00	\N	\N	1
20773	1	2022-01-30 14:07:45+00	\N	\N	1
20774	1	2022-01-30 15:09:58+00	\N	\N	1
20775	1	2022-01-30 16:27:58+00	\N	\N	1
20776	1	2022-01-30 17:27:06+00	\N	\N	1
20777	1	2022-01-30 18:37:53+00	\N	\N	1
20778	1	2022-01-30 19:24:02+00	\N	\N	1
20779	1	2022-01-30 20:14:03+00	\N	\N	1
20780	1	2022-01-30 21:18:06+00	\N	\N	1
20781	1	2022-01-30 22:14:10+00	\N	\N	1
20782	1	2022-01-30 23:43:51+00	\N	\N	1
20783	1	2022-01-31 00:47:07+00	\N	\N	1
20784	1	2022-01-31 01:51:28+00	\N	\N	1
20785	1	2022-01-31 02:26:45+00	\N	\N	1
20786	2	2022-01-30 14:58:46+00	\N	\N	1
20787	2	2022-01-30 18:55:58+00	\N	\N	1
20788	2	2022-01-30 23:09:09+00	\N	\N	1
20789	3	2022-01-31 01:34:18+00	\N	\N	1
20790	6	2022-01-31 02:05:37+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20791	5	2022-01-31 10:42:59+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20792	1	2022-01-31 11:15:18+00	\N	\N	1
20793	1	2022-01-31 12:24:12+00	\N	\N	1
20794	1	2022-01-31 13:19:30+00	\N	\N	1
20795	1	2022-01-31 14:18:49+00	\N	\N	1
20796	1	2022-01-31 15:16:49+00	\N	\N	1
20797	1	2022-01-31 16:34:14+00	\N	\N	1
20798	1	2022-01-31 17:13:06+00	\N	\N	1
20799	1	2022-01-31 18:28:22+00	\N	\N	1
20800	1	2022-01-31 19:08:21+00	\N	\N	1
20801	1	2022-01-31 20:43:27+00	\N	\N	1
20802	1	2022-01-31 21:33:58+00	\N	\N	1
20803	1	2022-01-31 22:16:29+00	\N	\N	1
20804	1	2022-01-31 23:45:22+00	\N	\N	1
20805	1	2022-02-01 00:19:16+00	\N	\N	1
20806	1	2022-02-01 01:07:54+00	\N	\N	1
20807	1	2022-02-01 02:07:33+00	\N	\N	1
20808	2	2022-01-31 15:11:07+00	\N	\N	1
20809	2	2022-01-31 19:09:13+00	\N	\N	1
20810	2	2022-01-31 22:51:07+00	\N	\N	1
20811	3	2022-02-01 03:16:37+00	\N	\N	1
20812	6	2022-02-01 02:09:51+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20813	5	2022-02-01 12:27:13+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20814	1	2022-02-01 11:17:19+00	\N	\N	1
20815	1	2022-02-01 12:34:42+00	\N	\N	1
20816	1	2022-02-01 13:30:41+00	\N	\N	1
20817	1	2022-02-01 14:19:03+00	\N	\N	1
20818	1	2022-02-01 15:34:57+00	\N	\N	1
20819	1	2022-02-01 16:26:02+00	\N	\N	1
20820	1	2022-02-01 17:35:03+00	\N	\N	1
20821	1	2022-02-01 18:17:12+00	\N	\N	1
20822	1	2022-02-01 19:38:41+00	\N	\N	1
20823	1	2022-02-01 20:33:21+00	\N	\N	1
20824	1	2022-02-01 21:11:12+00	\N	\N	1
20825	1	2022-02-01 22:40:33+00	\N	\N	1
20826	1	2022-02-01 23:14:52+00	\N	\N	1
20827	1	2022-02-02 00:43:48+00	\N	\N	1
20828	1	2022-02-02 01:23:05+00	\N	\N	1
20829	1	2022-02-02 02:50:34+00	\N	\N	1
20830	2	2022-02-01 15:05:51+00	\N	\N	1
20831	2	2022-02-01 18:33:56+00	\N	\N	1
20832	2	2022-02-01 22:37:30+00	\N	\N	1
20833	3	2022-02-02 02:27:10+00	\N	\N	1
20834	6	2022-02-02 02:29:24+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20835	5	2022-02-02 12:04:57+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20836	1	2022-02-02 11:50:17+00	\N	\N	1
20837	1	2022-02-02 12:16:26+00	\N	\N	1
20838	1	2022-02-02 13:29:24+00	\N	\N	1
20839	1	2022-02-02 14:23:39+00	\N	\N	1
20840	1	2022-02-02 15:39:52+00	\N	\N	1
20841	1	2022-02-02 16:24:44+00	\N	\N	1
20842	1	2022-02-02 17:18:57+00	\N	\N	1
20843	1	2022-02-02 18:08:25+00	\N	\N	1
20844	1	2022-02-02 19:09:13+00	\N	\N	1
20845	1	2022-02-02 20:13:35+00	\N	\N	1
20846	1	2022-02-02 21:16:14+00	\N	\N	1
20847	1	2022-02-02 22:09:23+00	\N	\N	1
20848	1	2022-02-02 23:51:14+00	\N	\N	1
20849	1	2022-02-03 00:12:30+00	\N	\N	1
20850	1	2022-02-03 01:50:51+00	\N	\N	1
20851	1	2022-02-03 02:19:02+00	\N	\N	1
20852	2	2022-02-02 14:36:39+00	\N	\N	1
20853	2	2022-02-02 18:55:58+00	\N	\N	1
20854	2	2022-02-02 23:17:59+00	\N	\N	1
20855	3	2022-02-03 01:47:35+00	\N	\N	1
20856	6	2022-02-03 03:01:26+00	4	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20857	5	2022-02-03 11:43:47+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20858	1	2022-02-03 11:13:54+00	\N	\N	1
20859	1	2022-02-03 12:25:21+00	\N	\N	1
20860	1	2022-02-03 13:43:31+00	\N	\N	1
20861	1	2022-02-03 14:24:41+00	\N	\N	1
20862	1	2022-02-03 15:38:42+00	\N	\N	1
20863	1	2022-02-03 16:17:21+00	\N	\N	1
20864	1	2022-02-03 17:07:49+00	\N	\N	1
20865	1	2022-02-03 18:27:44+00	\N	\N	1
20866	1	2022-02-03 19:34:51+00	\N	\N	1
20867	1	2022-02-03 20:37:13+00	\N	\N	1
20868	1	2022-02-03 21:41:07+00	\N	\N	1
20869	1	2022-02-03 22:31:12+00	\N	\N	1
20870	1	2022-02-03 23:15:49+00	\N	\N	1
20871	1	2022-02-04 00:48:22+00	\N	\N	1
20872	1	2022-02-04 01:39:43+00	\N	\N	1
20873	1	2022-02-04 02:14:01+00	\N	\N	1
20874	2	2022-02-03 15:09:13+00	\N	\N	1
20875	2	2022-02-03 19:07:00+00	\N	\N	1
20876	2	2022-02-03 22:56:44+00	\N	\N	1
20877	3	2022-02-04 02:59:38+00	\N	\N	1
20878	6	2022-02-04 01:55:33+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20879	5	2022-02-04 11:00:20+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20880	1	2022-02-04 11:10:04+00	\N	\N	1
20881	1	2022-02-04 12:34:03+00	\N	\N	1
20882	1	2022-02-04 13:33:25+00	\N	\N	1
20883	1	2022-02-04 14:11:06+00	\N	\N	1
20884	1	2022-02-04 15:39:18+00	\N	\N	1
20885	1	2022-02-04 16:18:00+00	\N	\N	1
20886	1	2022-02-04 17:23:44+00	\N	\N	1
20887	1	2022-02-04 18:37:28+00	\N	\N	1
20888	1	2022-02-04 19:46:50+00	\N	\N	1
20889	1	2022-02-04 20:38:15+00	\N	\N	1
20890	1	2022-02-04 21:11:52+00	\N	\N	1
20891	1	2022-02-04 22:35:06+00	\N	\N	1
20892	1	2022-02-04 23:46:15+00	\N	\N	1
20893	1	2022-02-05 00:30:41+00	\N	\N	1
20894	1	2022-02-05 01:50:33+00	\N	\N	1
20895	1	2022-02-05 02:20:49+00	\N	\N	1
20896	2	2022-02-04 15:02:04+00	\N	\N	1
20897	2	2022-02-04 19:10:22+00	\N	\N	1
20898	2	2022-02-04 22:43:18+00	\N	\N	1
20899	3	2022-02-05 02:33:49+00	\N	\N	1
20900	6	2022-02-05 02:36:25+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20901	5	2022-02-05 10:49:33+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20902	1	2022-02-05 11:29:27+00	\N	\N	1
20903	1	2022-02-05 12:41:05+00	\N	\N	1
20904	1	2022-02-05 13:23:15+00	\N	\N	1
20905	1	2022-02-05 14:37:51+00	\N	\N	1
20906	1	2022-02-05 15:13:46+00	\N	\N	1
20907	1	2022-02-05 16:29:25+00	\N	\N	1
20908	1	2022-02-05 17:28:48+00	\N	\N	1
20909	1	2022-02-05 18:14:14+00	\N	\N	1
20910	1	2022-02-05 19:36:45+00	\N	\N	1
20911	1	2022-02-05 20:38:26+00	\N	\N	1
20912	1	2022-02-05 21:18:01+00	\N	\N	1
20913	1	2022-02-05 22:20:03+00	\N	\N	1
20914	1	2022-02-05 23:25:51+00	\N	\N	1
20915	1	2022-02-06 00:08:15+00	\N	\N	1
20916	1	2022-02-06 01:43:22+00	\N	\N	1
20917	1	2022-02-06 02:13:44+00	\N	\N	1
20918	2	2022-02-05 15:27:24+00	\N	\N	1
20919	2	2022-02-05 18:59:46+00	\N	\N	1
20920	2	2022-02-05 22:53:21+00	\N	\N	1
20921	3	2022-02-06 02:54:48+00	\N	\N	1
20922	6	2022-02-06 02:04:15+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20923	5	2022-02-06 12:06:22+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20924	1	2022-02-06 11:23:46+00	\N	\N	1
20925	1	2022-02-06 12:48:32+00	\N	\N	1
20926	1	2022-02-06 13:51:51+00	\N	\N	1
20927	1	2022-02-06 14:34:55+00	\N	\N	1
20928	1	2022-02-06 15:34:59+00	\N	\N	1
20929	1	2022-02-06 16:09:07+00	\N	\N	1
20930	1	2022-02-06 17:15:17+00	\N	\N	1
20931	1	2022-02-06 18:20:56+00	\N	\N	1
20932	1	2022-02-06 19:23:46+00	\N	\N	1
20933	1	2022-02-06 20:43:58+00	\N	\N	1
20934	1	2022-02-06 21:34:31+00	\N	\N	1
20935	1	2022-02-06 22:30:17+00	\N	\N	1
20936	1	2022-02-06 23:13:06+00	\N	\N	1
20937	1	2022-02-07 00:45:14+00	\N	\N	1
20938	1	2022-02-07 01:20:52+00	\N	\N	1
20939	1	2022-02-07 02:17:00+00	\N	\N	1
20940	2	2022-02-06 14:47:26+00	\N	\N	1
20941	2	2022-02-06 19:21:00+00	\N	\N	1
20942	2	2022-02-06 22:30:43+00	\N	\N	1
20943	3	2022-02-07 02:33:54+00	\N	\N	1
20944	6	2022-02-07 02:47:16+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20945	5	2022-02-07 10:41:53+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20946	1	2022-02-07 11:18:09+00	\N	\N	1
20947	1	2022-02-07 12:18:09+00	\N	\N	1
20948	1	2022-02-07 13:20:21+00	\N	\N	1
20949	1	2022-02-07 14:48:29+00	\N	\N	1
20950	1	2022-02-07 15:34:20+00	\N	\N	1
20951	1	2022-02-07 16:16:53+00	\N	\N	1
20952	1	2022-02-07 17:45:43+00	\N	\N	1
20953	1	2022-02-07 18:38:08+00	\N	\N	1
20954	1	2022-02-07 19:19:00+00	\N	\N	1
20955	1	2022-02-07 20:30:17+00	\N	\N	1
20956	1	2022-02-07 21:32:03+00	\N	\N	1
20957	1	2022-02-07 22:29:22+00	\N	\N	1
20958	1	2022-02-07 23:40:24+00	\N	\N	1
20959	1	2022-02-08 00:29:06+00	\N	\N	1
20960	1	2022-02-08 01:48:58+00	\N	\N	1
20961	1	2022-02-08 02:47:41+00	\N	\N	1
20962	2	2022-02-07 14:37:02+00	\N	\N	1
20963	2	2022-02-07 18:43:14+00	\N	\N	1
20964	2	2022-02-07 23:10:33+00	\N	\N	1
20965	3	2022-02-08 03:06:59+00	\N	\N	1
20966	6	2022-02-08 02:04:58+00	1	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20967	5	2022-02-08 12:21:30+00	\N	Eye's feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.	1
20968	1	2022-02-08 11:33:36+00	\N	\N	1
20969	1	2022-02-08 12:20:50+00	\N	\N	1
20970	1	2022-02-08 13:32:01+00	\N	\N	1
20971	1	2022-02-08 14:44:50+00	\N	\N	1
20972	1	2022-02-08 15:44:42+00	\N	\N	1
20973	1	2022-02-08 16:39:06+00	\N	\N	1
20974	1	2022-02-08 17:46:13+00	\N	\N	1
20975	1	2022-02-08 18:46:07+00	\N	\N	1
20976	1	2022-02-08 19:41:26+00	\N	\N	1
20977	1	2022-02-08 20:29:17+00	\N	\N	1
20978	1	2022-02-08 21:24:07+00	\N	\N	1
20979	1	2022-02-08 22:42:03+00	\N	\N	1
20980	1	2022-02-08 23:51:37+00	\N	\N	1
20981	1	2022-02-09 00:07:34+00	\N	\N	1
20982	1	2022-02-09 01:17:54+00	\N	\N	1
20983	1	2022-02-09 02:20:38+00	\N	\N	1
20984	2	2022-02-08 14:49:03+00	\N	\N	1
20985	2	2022-02-08 18:53:32+00	\N	\N	1
20986	2	2022-02-08 22:46:20+00	\N	\N	1
20987	3	2022-02-09 02:30:17+00	\N	\N	1
20988	6	2022-02-09 02:28:12+00	5	Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn't do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3's.	1
20989	5	2022-02-09 14:17:38+00	\N	Eyes still feel kinda bad in the morning, like pretty dry but I think I could have done more systane yesterday	1
20990	5	2022-02-09 14:18:17+00	\N	Also, slept with the humidifier on and just did my restasis	1
20992	1	2022-02-09 19:09:26+00	\N		1
20993	2	2022-02-09 18:00:37+00	\N		1
20994	4	2021-03-08 12:30:32+00	\N	This was my first erosion, about 5 months after PRK eye surgery. It was extremely painful honestly might have been some of the worst pain I've experienced. I'm adding this log retroactively and I've written in my notes that it was my left eye but not 100% sure if that's the case. Either way it lasted maybe 2-4 hours and then I drove to mclean TLC eye center and Dr. Holzmann put on a bandage contact lens to prevent future erosions.\n\n I wore that lens for about 4-5 days.	1
20995	4	2021-04-05 12:30:12+00	\N	Second erosion. Got it in my left eye as per my notes. No other info included	1
20996	4	2021-05-19 00:30:55+00	\N	This erosion lasted for about an hour. I don't list if it was left or right eye but most likely left.	1
20997	4	2021-09-14 07:00:42+00	\N	This erosion I documented as being in my left eye. Took place at 2:00am and lasted for about an hour	1
20998	4	2021-11-23 00:46:40+00	\N	Super small erosion, again in my left eye though. Only lasted for about 5 minutes, however I think this erosion may have been an indication that all was not right with my eyes and could have led to the bigger erosion I got about a week in the future from now.	1
20999	4	2021-11-27 08:00:47+00	\N	So this erosion was not fun. Happened at 3:00am and was in my left eye. I remember this day my eyes didn't feel great and it was a really windy day. I had to drive for about an hour with Pratyush, Saloni, and Pranjal and my eyes felt bad during the drive. \n\nAlthough I had slacked on my eye drops during the day I still did all the ones I should and took a bunch of systane drops before I went to bed, however I still got one (an erosion that is).\n\nMy humidifier was also broken at this time so that definitely didn't help.	1
21000	4	2021-12-29 01:30:54+00	\N	At this point I'm not really sure what's causing my erosions anymore. Before there were at least some indications the day prior as to why I was getting an erosion however for this specific erosion I had been very aggressive with my eye drops the day before and done everything according to the schedule.\n\nGranted this wasn't a big erosion, lasted about 30 minutes, but still something. The only thing that I can think may have contributed to the erosion occurring is that I took a hot shower the night before.	1
21054	2	2022-02-13 17:29:53+00	\N		1
21001	4	2022-01-26 12:56:36+00	\N	This erosion was super small. I honestly wasn't even sure if it was an erosion but I still called Dr. Holzman to get it sorted out. He said that he'd put a bandage contact lens in and that's exactly what I've been doing now (writing this on 2/9/2022).	1
21002	1	2022-02-09 16:30:13+00	\N		1
21003	4	2022-01-02 07:34:48+00	\N	This is dummy data for display purposes, no actual erosion here	1
21004	1	2022-02-10 02:35:55+00	\N		1
21005	2	2022-02-09 21:36:13+00	\N		1
21006	1	2022-02-10 00:36:27+00	\N		1
21007	1	2022-02-10 04:03:15+00	\N		1
21008	6	2022-02-10 04:07:07+00	2	Not terrible day but eyes just didnt feel great. I maybe slacked off on the lubricant compared to what I usually do. Also Dr. Weigel replaced my contact bandage lens with the monthly one so my left eye has been a bit irritated 	1
21009	5	2022-02-10 04:25:45+00	\N	Restasis	1
21010	5	2022-02-10 14:31:23+00	\N	Eyes still super dry in the morning. If I didnt have the bandage contact lens I’d probably be getting erosions	1
21011	2	2022-02-10 02:01:29+00	\N		1
21012	5	2022-02-10 14:48:19+00	\N	Just took my restasis drops and omegas as well	1
21013	2	2022-02-10 17:57:05+00	\N		1
21014	1	2022-02-10 15:58:56+00	\N		1
21015	1	2022-02-10 20:23:54+00	\N		1
21016	2	2022-02-11 01:00:52+00	\N		1
21017	1	2022-02-11 05:39:34+00	\N		1
21018	6	2022-02-11 04:56:42+00	3	Decent day, nothing too out of the ordinary 	1
21019	5	2022-02-11 05:40:40+00	\N	Restasis	1
21021	1	2022-02-11 06:18:41+00	\N		1
21022	3	2022-02-11 06:30:06+00	\N		1
21023	5	2022-02-11 13:34:30+00	\N	Eyes dont feel super dry this morning. Still dry but not super dry	1
21024	5	2022-02-11 14:53:22+00	\N	Demodex & restasis	1
21025	1	2022-02-11 15:46:28+00	\N		1
21026	2	2022-02-11 18:02:12+00	\N		1
21027	5	2022-02-11 20:30:10+00	\N	Went for a walk outside with Saloni, was super windy out. Walk was about an hour	1
21028	1	2022-02-11 20:30:32+00	\N		1
21029	1	2022-02-11 21:47:46+00	\N		1
21030	2	2022-02-11 22:30:32+00	\N		1
21031	1	2022-02-12 00:37:29+00	\N		1
21032	5	2022-02-12 01:57:05+00	\N	Demodex	1
21033	1	2022-02-12 03:14:04+00	\N		1
21034	6	2022-02-12 03:14:10+00	2	Eyes have felt not great today. Lubricated a decent amount but still just feel rough	1
21035	3	2022-02-12 05:06:07+00	\N		1
21036	5	2022-02-12 04:46:22+00	\N	Restasis	1
21037	5	2022-02-12 14:31:49+00	\N	I think I’m being really careless when it comes to my eyes and my left eye felt a bit off this morning still. Not an erosion but still not great, we should be lubricating more and being more consistent with the muro drops	1
21038	1	2022-02-12 15:09:14+00	\N		1
21039	1	2022-02-12 19:06:15+00	\N		1
21040	1	2022-02-12 21:32:35+00	\N		1
21041	2	2022-02-12 21:11:43+00	\N		1
21042	5	2022-02-12 14:45:05+00	\N	Took my omega 3’s	1
21043	5	2022-02-13 00:00:59+00	\N	Eyes feel dry in walmart	1
21044	1	2022-02-13 01:44:42+00	\N		1
21045	1	2022-02-13 05:51:57+00	\N		1
21047	2	2022-02-13 02:29:58+00	\N		1
21048	1	2022-02-13 03:53:13+00	\N		1
21049	6	2022-02-13 04:55:00+00	3	There were definitely dry periods but for the most part eyes felt decent	1
21050	5	2022-02-13 06:26:00+00	\N	Restasis	1
21051	5	2022-02-13 15:01:41+00	\N	Eyes dont feel bad after waking up, but they do feel a little dry. Left eye didnt have an erosion but again I do feel something different maybe the contact slips or something in the morning	1
21052	1	2022-02-13 15:06:35+00	\N		1
21053	5	2022-02-13 15:36:47+00	\N	Restasis and omegas	1
21055	1	2022-02-13 20:30:01+00	\N		1
21056	1	2022-02-13 21:30:11+00	\N		1
21057	1	2022-02-14 00:00:18+00	\N		1
21058	5	2022-02-13 22:00:23+00	\N	Left contact slipped maybe? While watching movie	1
21059	2	2022-02-14 02:04:40+00	\N		1
21060	1	2022-02-14 03:04:49+00	\N		1
21061	3	2022-02-14 04:48:46+00	\N		1
21062	1	2022-02-14 04:10:52+00	\N		1
21063	1	2022-02-14 03:01:09+00	\N		1
21064	6	2022-02-14 04:49:21+00	3	Decent day today. Eyes felt dry at times. Lubricated well and with the more viscous lubricating eye drop. Forgot restasis at night tho because I dont have it. Also left eye feels like a really tiny contact slip every now and then	1
21065	5	2022-02-14 15:00:22+00	\N	Eyes felt decent in the am, not super dry	1
21066	5	2022-02-14 16:28:01+00	\N	Restasis and omegas	1
21067	2	2022-02-14 17:13:58+00	\N		1
21068	1	2022-02-14 20:12:59+00	\N		1
21069	2	2022-02-14 21:39:40+00	\N		1
21070	5	2022-02-14 21:51:31+00	\N	Test note	1
21071	1	2022-02-15 02:28:15+00	\N		1
21072	1	2022-02-15 03:29:53+00	\N		1
21074	2	2022-02-15 03:31:05+00	\N		1
21075	1	2022-02-15 04:55:31+00	\N		1
21076	5	2022-02-15 04:55:36+00	\N	Restasis	1
21077	5	2022-02-15 05:06:32+00	\N	Restasis	1
21078	6	2022-02-15 04:56:52+00	3	Eyes were feeling funky while driving home to winchester but besides that pretty normal day eye wise	1
21079	5	2022-02-15 15:23:32+00	\N	Eyes did feel kinda bad in the morning and I stayed up later than I should have on my phone after driving family back from fairfax so that might have impacted it	1
21080	1	2022-02-15 17:15:06+00	\N		1
21081	2	2022-02-15 18:37:54+00	\N		1
21082	1	2022-02-15 20:37:10+00	\N		1
21083	1	2022-02-15 23:49:44+00	\N		1
21084	1	2022-02-16 04:01:23+00	\N		1
21085	1	2022-02-16 00:01:34+00	\N		1
21086	2	2022-02-16 03:00:43+00	\N		1
21087	6	2022-02-16 04:02:02+00	2	Probably more of a 2.5 to be honest, not sure why but some driving and maybe coulda done more lubrication.	1
21088	5	2022-02-16 05:04:33+00	\N	Restasis	1
21089	3	2022-02-16 05:04:42+00	\N		1
21090	5	2022-02-16 14:52:25+00	\N	Eyes felt good waking up and slept in a little bit and humidifier was accidentally off	1
21091	5	2022-02-16 15:04:43+00	\N	Restasis, omegas, and demodex	1
21092	1	2022-02-16 17:13:27+00	\N		1
21093	2	2022-02-16 19:48:55+00	\N		1
21094	1	2022-02-16 21:06:51+00	\N		1
21095	1	2022-02-16 23:55:01+00	\N		1
21096	1	2022-02-17 01:42:49+00	\N		1
21097	2	2022-02-16 22:20:00+00	\N		1
21098	2	2022-02-17 02:15:29+00	\N		1
21099	6	2022-02-17 03:46:59+00	3	Decent day, a few periods when eye felt a bit dry but not too bad	1
21100	1	2022-02-17 04:09:21+00	\N		1
21101	5	2022-02-17 09:30:34+00	\N	Eyes felt decent in am	1
21102	5	2022-02-17 12:00:50+00	\N	Restasis and omegas	1
21103	5	2022-02-17 14:16:48+00	\N	Demodex	1
21104	1	2022-02-17 13:01:03+00	\N		1
21105	5	2022-02-17 15:37:45+00	\N	Helping dad clean house and lots of dust and things	1
21106	1	2022-02-17 15:38:03+00	\N		1
21107	2	2022-02-17 19:03:25+00	\N		1
21108	3	2022-02-17 04:35:39+00	\N		1
21109	1	2022-02-17 19:48:59+00	\N		1
21110	2	2022-02-17 22:39:02+00	\N		1
21111	1	2022-02-18 00:02:34+00	\N		1
21112	1	2022-02-18 01:22:53+00	\N		1
21113	2	2022-02-18 02:01:20+00	\N		1
21114	5	2022-02-17 21:51:44+00	\N	Demodex	1
21115	1	2022-02-18 02:56:25+00	\N		1
21116	5	2022-02-18 03:52:07+00	\N	Restasis	1
21117	6	2022-02-18 03:52:23+00	3	Wasnt on laptop much today. Few periods where eye felt contracted but took good breaks and lubricated well	1
21118	5	2022-02-18 11:11:02+00	\N	Restasis	1
21119	1	2022-02-18 11:36:51+00	\N		1
21120	5	2022-02-18 12:42:31+00	\N	Eyelids Felt a little bit irritated	1
21121	5	2022-02-18 14:02:09+00	\N	Left eye just feels soar almost. Like the muscles feel bad and kinda uncomfortable	1
21122	1	2022-02-18 14:02:51+00	\N		1
21123	2	2022-02-18 17:04:42+00	\N		1
21124	1	2022-02-18 19:28:04+00	\N		1
21125	1	2022-02-18 21:30:57+00	\N		1
21126	2	2022-02-18 23:19:55+00	\N		1
21127	1	2022-02-19 01:04:49+00	\N		1
21128	1	2022-02-19 07:18:22+00	\N		1
21129	1	2022-02-19 05:05:30+00	\N		1
21148	5	2022-02-20 04:55:06+00	\N	Demodex	1
21130	6	2022-02-19 04:57:40+00	2	Left eye felt weird throughout the day. Like the contact slipped or something and eyes just felt strained and soar	1
21131	3	2022-02-19 09:05:49+00	\N		1
21132	5	2022-02-19 12:53:02+00	\N	Eyes felt super dry this morning. Especially left eye	1
21133	5	2022-02-19 13:36:56+00	\N	Restasis and omegas (not the de3 ones)	1
21134	5	2022-02-19 14:13:12+00	\N	Windy while walkin mochi	1
21135	2	2022-02-19 20:40:44+00	\N		1
21136	1	2022-02-19 21:54:59+00	\N		1
21137	1	2022-02-19 18:06:08+00	\N		1
21138	1	2022-02-19 22:07:26+00	\N		1
21139	5	2022-02-19 22:24:11+00	\N	Super windy all day	1
21140	1	2022-02-19 23:46:02+00	\N		1
21141	1	2022-02-20 00:09:04+00	\N		1
21142	1	2022-02-20 02:08:10+00	\N		1
21143	5	2022-02-20 02:52:03+00	\N	Left eye had a pulled vessel or something while watching uncharted movie in theaters, bright movie	1
21144	1	2022-02-20 03:26:14+00	\N		1
21145	2	2022-02-20 04:04:03+00	\N		1
21146	5	2022-02-20 04:32:57+00	\N	Restasis	1
21147	6	2022-02-20 04:33:19+00	1	Got very few hours of sleep and eyes felt super dry in the am. Its been windy and cold all day and I could have hydrated my eyes better. My eyes have felt strained during the day and had a spasm during the uncharted movie.	1
21149	5	2022-02-20 14:10:07+00	\N	Eyes felt dry again in am	1
21150	1	2022-02-20 14:10:24+00	\N		1
21151	1	2022-02-20 20:33:03+00	\N		1
21153	2	2022-02-20 16:14:33+00	\N		1
21152	5	2022-02-20 16:07:19+00	\N	Reatasis	1
21154	2	2022-02-20 21:10:00+00	\N		1
21155	1	2022-02-20 22:31:15+00	\N		1
21156	1	2022-02-21 00:01:25+00	\N		1
21157	2	2022-02-21 00:50:25+00	\N		1
21158	1	2022-02-21 01:59:08+00	\N		1
21159	1	2022-02-21 02:44:21+00	\N		1
21160	1	2022-02-21 02:49:41+00	\N		1
21161	6	2022-02-21 02:49:49+00	3	Nothing too key to note	1
21162	5	2022-02-21 03:01:27+00	\N	Restasis	1
21249	1	2022-02-27 11:18:42+00	\N		1
21250	3	2022-02-27 04:05:49+00	\N		1
21258	2	2022-02-27 16:29:10+00	\N		1
21163	5	2022-02-21 11:07:07+00	\N	Right eye felt soar yesterday and now on wakeup it feels very uncomfortable like there’s something stuck at the top of my eye or theres a bump on my eyelid. Really kinda feels bad tbh. I was up late last night on my phone because I couldnt sleep so maybe that hurt it	1
21164	1	2022-02-21 11:22:45+00	\N		1
21165	1	2022-02-21 11:45:58+00	\N		1
21166	5	2022-02-21 12:12:41+00	\N	Restasis, and right eye still kinda soar but no longer feels like there’s an eyelid bump	1
21167	5	2022-02-21 14:37:21+00	\N	Demodex and omegas (not de3)	1
21168	1	2022-02-21 14:59:44+00	\N		1
21169	1	2022-02-21 20:35:11+00	\N		1
21170	2	2022-02-21 23:02:55+00	\N		1
21171	2	2022-02-21 18:03:24+00	\N		1
21172	5	2022-02-21 23:03:58+00	\N	A little breezy at gravely point	1
21173	1	2022-02-22 01:40:09+00	\N		1
21174	2	2022-02-22 01:56:18+00	\N		1
21175	5	2022-02-22 03:33:48+00	\N	Restasis	1
21176	6	2022-02-22 04:06:02+00	2	Windy day and at gravly point for a while.\nI think the perservative free systane drops do less for my eyes than the nightime gel ones as well. Eyes felt a bit strained throughout the day even with eye drops. Could have been more strict with the scheduling on the drops and done more of the gel lubricant. Also eyes just feel strained from looking at screens and not blinking enough	1
21177	1	2022-02-22 04:15:12+00	\N		1
21178	3	2022-02-22 04:20:18+00	\N		1
21179	5	2022-02-22 11:27:50+00	\N	Left eye dry in am	1
21180	5	2022-02-22 11:32:05+00	\N	Restasis and omegas	1
21181	1	2022-02-22 14:07:20+00	\N		1
21182	1	2022-02-22 18:59:46+00	\N		1
21183	2	2022-02-22 22:31:38+00	\N		1
21184	2	2022-02-23 02:46:17+00	\N		1
21185	5	2022-02-23 03:13:27+00	\N	Restasis	1
21186	1	2022-02-23 00:13:41+00	\N		1
21187	1	2022-02-23 01:15:51+00	\N		1
21188	6	2022-02-23 03:40:18+00	3	Decent day. Definitely could have lubricated better, very windy outside, a few points of discomfort but thats it	1
21189	5	2022-02-23 11:38:07+00	\N	Eyes feel great in am	1
21190	1	2022-02-23 12:43:31+00	\N		1
21191	2	2022-02-23 18:14:58+00	\N		1
21192	1	2022-02-23 18:45:08+00	\N		1
21193	2	2022-02-23 21:56:10+00	\N		1
21194	1	2022-02-23 20:24:21+00	\N		1
21195	5	2022-02-23 13:01:43+00	\N	Restasis and omegas	1
21196	5	2022-02-23 22:11:12+00	\N	Demodex	1
21197	1	2022-02-23 22:54:16+00	\N		1
21198	1	2022-02-24 00:03:56+00	\N		1
21199	2	2022-02-24 01:56:39+00	\N		1
21200	1	2022-02-24 01:41:52+00	\N		1
21201	5	2022-02-24 02:42:02+00	\N	restasis	1
21202	1	2022-02-24 03:15:15+00	\N		1
21204	6	2022-02-24 02:41:49+00	3	Decent day	1
21203	5	2022-02-24 11:41:27+00	\N	Eyes a bit dry in am. Took omegas not de3	1
21205	5	2022-02-24 13:51:58+00	\N	Demodex	1
21206	3	2022-02-24 03:56:19+00	\N		1
21207	1	2022-02-24 14:39:25+00	\N		1
21209	1	2022-02-24 18:11:22+00	\N		1
21210	5	2022-02-24 17:02:29+00	\N	Restasis	1
21211	4	2022-02-24 19:18:14+00	\N	Im not sure if these are really erosions but I think I need to start tracking them. They only started happening after I got my contact bandage lens on and its during the day. I’ve noticed they’ll happen when I’m looking at a bright screen particularly but they usually arent even bright. Feels painful for abt five minutes or so.	1
21212	2	2022-02-24 21:43:55+00	\N		1
21213	2	2022-02-24 16:44:15+00	\N		1
21214	1	2022-02-24 20:51:28+00	\N		1
21215	1	2022-02-25 02:26:59+00	\N		1
21216	1	2022-02-25 00:27:06+00	\N		1
21217	2	2022-02-25 02:27:15+00	\N		1
21218	5	2022-02-25 03:10:10+00	\N	Demodex	1
21219	6	2022-02-25 04:56:07+00	3	Decent day although it seems like bright screens give me those “mini erosions”	1
21220	3	2022-02-25 04:00:57+00	\N		1
21221	5	2022-02-25 13:43:30+00	\N	Omegas and restasis	1
21222	1	2022-02-25 14:38:38+00	\N		1
21223	1	2022-02-25 15:32:23+00	\N		1
21224	2	2022-02-25 19:03:39+00	\N		1
21225	1	2022-02-25 20:30:37+00	\N		1
21226	1	2022-02-25 18:59:26+00	\N		1
21227	5	2022-02-25 22:46:53+00	\N	Demodex	1
21228	2	2022-02-25 22:47:05+00	\N		1
21229	1	2022-02-25 23:56:40+00	\N		1
21230	1	2022-02-26 00:56:54+00	\N		1
21232	1	2022-02-26 01:45:16+00	\N		1
21233	2	2022-02-26 02:42:44+00	\N		1
21234	1	2022-02-26 02:51:36+00	\N		1
21231	6	2022-02-26 01:31:15+00	3	Good day, was offline for most of it. Was super windy outside but barely was outside	1
21235	1	2022-02-26 14:06:10+00	\N		1
21236	5	2022-02-26 14:06:46+00	\N	Restasis	1
21237	1	2022-02-26 19:03:39+00	\N		1
21238	1	2022-02-26 21:05:47+00	\N		1
21239	5	2022-02-26 21:02:27+00	\N	Demodex	1
21240	2	2022-02-26 22:37:05+00	\N		1
21241	2	2022-02-27 01:55:11+00	\N		1
21242	1	2022-02-26 23:40:24+00	\N		1
21243	1	2022-02-27 00:39:32+00	\N		1
21244	1	2022-02-26 22:55:46+00	\N		1
21245	1	2022-02-27 01:55:54+00	\N		1
21246	1	2022-02-27 02:18:18+00	\N		1
21247	6	2022-02-27 02:44:39+00	3	Twas a bit wimdy today and did go outside a little bit. Was very aggressive with the lubricant tho. Also when looking at screens I tend to get that ‘mini erosion’ thingy. Todays wasnt enough to even get called that but its always when looking at a bright screen	1
21248	5	2022-02-27 02:02:17+00	\N	Restasis	1
21251	5	2022-02-27 13:13:31+00	\N	Demodex  and omegas	1
21252	5	2022-02-27 15:02:39+00	\N	Restasis	1
21253	1	2022-02-27 18:29:10+00	\N		1
21254	2	2022-02-27 21:05:06+00	\N		1
21255	1	2022-02-27 21:42:15+00	\N		1
21256	1	2022-02-27 23:16:26+00	\N		1
21257	1	2022-02-28 01:02:02+00	\N		1
21260	6	2022-02-28 04:05:04+00	3	Forgot 2nd restasis, 2nd demodex, and 3td muro.\nLubricated well though	1
21259	5	2022-02-28 11:04:39+00	\N	Eyes felt pretty dry in am especially left eye	1
21261	5	2022-02-28 11:06:18+00	\N	Omegas (not de3) and restasis	1
21262	1	2022-02-28 11:09:09+00	\N		1
21263	1	2022-02-28 12:45:44+00	\N		1
21264	1	2022-02-28 13:44:01+00	\N		1
21265	1	2022-02-28 14:10:17+00	\N		1
21266	2	2022-02-28 16:17:33+00	\N		1
21267	5	2022-03-01 11:07:48+00	\N	Woke up suddenly from alarm and left eye just feels a little sore	1
21268	2	2022-02-28 21:08:23+00	\N		1
21269	2	2022-03-01 01:30:37+00	\N		1
21270	3	2022-03-01 04:08:53+00	\N		1
21271	6	2022-02-28 11:10:14+00	3	Really aggressive with the systane and I think that helped. But looking at screens is just tough for my left eye now and I have to look away every now and again	1
21272	5	2022-03-01 11:22:50+00	\N	Restasis	1
21273	1	2022-03-01 12:03:19+00	\N		1
21274	5	2022-03-01 14:11:35+00	\N	Demodex and omegas	1
21275	2	2022-03-01 18:07:22+00	\N		1
21276	5	2022-03-02 02:15:36+00	\N	Restasis	1
21277	5	2022-03-02 12:03:47+00	\N	Restasis and omegas	1
21278	5	2022-03-02 19:03:50+00	\N	Left eye has been feeling super soar today. Not sure why didnt do any electronics out of the ordinary I dont think. Texted for a while and watched some tv but not much.	1
21279	5	2022-03-02 19:04:35+00	\N	Demodex	1
21280	1	2022-03-02 18:04:48+00	\N		1
21281	2	2022-03-02 17:31:54+00	\N		1
21282	1	2022-03-03 00:39:24+00	\N		1
21283	1	2022-03-03 02:04:18+00	\N		1
21284	2	2022-03-02 23:08:12+00	\N		1
21285	6	2022-03-03 02:31:33+00	2	Left eye has felt incredibly soar throughout the day, not entirely sure why. Maybe has to do with screens??	1
21286	5	2022-03-03 02:45:33+00	\N	Tbh its probably allergies because I have felt a dry throat and been sneezing recently	1
21287	5	2022-03-03 10:59:31+00	\N	Left eye still very much so hurts. I’m worried that this might not be allergies because why doesnt my right eye hurt much at all	1
21290	1	2022-03-02 21:16:22+00	\N		1
21288	5	2022-03-03 02:46:39+00	\N	Demodex and restasis	1
21289	2	2022-03-03 02:02:06+00	\N		1
21291	3	2022-03-03 03:00:03+00	\N		1
21292	5	2022-03-03 12:27:46+00	\N	Left eye really hurting while at gym	1
21293	1	2022-03-03 14:35:38+00	\N		1
21294	5	2022-03-03 21:19:16+00	\N	Eyes have been super painful abd constant tearing in left eye all day	1
21295	2	2022-03-04 00:46:51+00	\N		1
21296	1	2022-03-04 02:14:29+00	\N		1
21297	5	2022-03-04 03:24:44+00	\N	Restasis	1
21298	1	2022-03-04 03:45:58+00	\N		1
21299	3	2022-03-04 03:46:03+00	\N		1
21300	6	2022-03-04 03:46:14+00	1	Terrible day. Difficulty driving at certain points. Eye felt extremely sore (left eye) not just with electronics. I think it may be allergies because I also felt congested a little bit, however my right eye seems unaffected. Maybe the allergies are making my eye more irritable so the one with the contact, left eye, is really getting hurt. Very bloodshot the whole day and pin would come and go in waves. Also soar when it flares. Went away inside dominos which makes me think its allergies and just ammumas house doesnt have a great barrier to the outside so it still affected me while inside	1
21301	5	2022-03-04 09:25:22+00	\N	Woke up from pain in left eye. Had lots of congestion (supports allergy theory). Left eye was like a puddle of tears and really hurt bad	1
21302	5	2022-03-04 13:41:52+00	\N	Eye feels much better and congestion has also gone down, making me think its probably allergies	1
21303	1	2022-03-04 11:30:18+00	\N		1
21304	1	2022-03-04 11:00:25+00	\N		1
21305	5	2022-03-04 14:03:24+00	\N	Omega and restasis	1
21306	1	2022-03-03 18:09:12+00	\N		1
21307	1	2022-03-04 19:01:13+00	\N		1
21308	5	2022-03-04 20:33:34+00	\N	Gatafloxin	1
21309	2	2022-03-04 21:31:13+00	\N		1
21310	1	2022-03-04 22:05:33+00	\N		1
21311	5	2022-03-04 22:54:43+00	\N	Invyts	1
21312	1	2022-03-04 23:26:23+00	\N		1
21313	1	2022-03-05 01:27:42+00	\N		1
21314	2	2022-03-05 01:47:53+00	\N		1
21315	1	2022-03-05 02:05:20+00	\N		1
21316	5	2022-03-05 02:24:29+00	\N	Restasis	1
21317	1	2022-03-05 02:29:56+00	\N		1
21318	6	2022-03-05 02:30:08+00	2	Eye very irritated. Probably would be a one but the rest of the day after getting my contact out was alright. Still very tough for me to view screens for a considerable amount of time so maybe that wasnt contact related. Although the ‘abrasion’ or not quite erosion but circular ‘whole’ in my epithelium is still healing so maybe that impacts it, I’m not sure.\n\nAnyways am starting to feel anxious going to bed again now	1
21319	3	2022-03-05 02:42:31+00	\N		1
21320	5	2022-03-05 12:27:44+00	\N	Restasis and de3	1
21321	5	2022-03-05 12:46:33+00	\N	Gatifloxin	1
21322	1	2022-03-05 13:17:44+00	\N		1
21323	5	2022-03-05 13:45:10+00	\N	Invosys	1
21324	1	2022-03-05 14:27:29+00	\N		1
21325	1	2022-03-05 16:58:12+00	\N		1
21326	2	2022-03-05 17:24:37+00	\N		1
21327	5	2022-03-05 19:24:49+00	\N	Gatofloxin	1
21328	1	2022-03-05 20:07:55+00	\N		1
21329	1	2022-03-05 20:35:35+00	\N		1
21330	2	2022-03-05 22:00:22+00	\N		1
21331	1	2022-03-05 22:33:33+00	\N		1
21332	5	2022-03-05 22:33:39+00	\N	Gatofloxin	1
21333	1	2022-03-05 23:43:19+00	\N		1
21334	1	2022-03-06 00:04:28+00	\N		1
21335	1	2022-03-06 02:03:54+00	\N		1
21336	2	2022-03-06 02:23:40+00	\N		1
21337	5	2022-03-06 02:23:45+00	\N	Gatofloxin and inovys and restasis	1
21338	6	2022-03-06 02:24:14+00	3	Decent day, nothing out of the ordinary. Dry eye a bit	1
21339	5	2022-03-06 11:07:20+00	\N	Eyes feel a bit bad in am, definitely still kinda sticking. And its so significantly just my left eye that feels it	1
21340	5	2022-03-06 12:45:19+00	\N	Inovys & de3 & restasis and gatafloxin	1
21341	1	2022-03-06 14:46:35+00	\N		1
21342	1	2022-03-06 15:20:47+00	\N		1
21343	2	2022-03-06 15:36:18+00	\N		1
21344	5	2022-03-06 15:45:07+00	\N	C	1
21345	1	2022-03-06 16:41:03+00	\N		1
21346	5	2022-03-06 18:43:44+00	\N	Gatofloxin 	1
21347	1	2022-03-06 19:06:15+00	\N		1
21348	1	2022-03-06 19:06:25+00	\N		1
21349	2	2022-03-06 19:58:58+00	\N		1
21350	1	2022-03-06 20:49:49+00	\N		1
21351	5	2022-03-06 22:10:28+00	\N	Gatofloxin 	1
21352	1	2022-03-06 22:43:52+00	\N		1
21353	1	2022-03-06 23:41:48+00	\N		1
21354	1	2022-03-07 00:21:55+00	\N		1
21355	1	2022-03-07 02:18:18+00	\N		1
21356	2	2022-03-07 01:00:28+00	\N		1
21357	5	2022-03-07 02:20:43+00	\N	Inveltys\n& restasis & gatofloxin	1
21358	1	2022-03-07 02:43:41+00	\N		1
21359	6	2022-03-07 02:43:50+00	3	Can feel a difference in left eye vs roght when I close my eyes. Eyes felt a bit dry at times but I’d say today was one of the really good days in terms of how much I lubricate. Was also pretty windy out though and I was outside a bit today but really only maybe an hour and a half in total. Still scared since I woke up feeling dry in my left eye specifically. 	1
21360	3	2022-03-07 02:48:21+00	\N		1
21361	5	2022-03-07 11:06:30+00	\N	Eyes felt very good in am. Didnt wake up to alarm and I think it was a calm wake up (not suddden eye open). Didnt really feel a difference in either eye, like one being more dry than the other.\n\nNeither felt very dry tbh. Might be because I really put on a lot of ointment last night, also did lots of lubrication throughout the day	1
21362	5	2022-03-07 11:14:59+00	\N	De3 & invetys & C	1
21363	5	2022-03-07 12:22:02+00	\N	Gatofloxin & restasis	1
21364	1	2022-03-07 14:42:37+00	\N		1
21366	5	2022-03-07 17:05:09+00	\N	Gatafloxin	1
21368	1	2022-03-07 18:56:12+00	\N		1
21369	2	2022-03-07 21:08:37+00	\N		1
21370	1	2022-03-07 21:08:43+00	\N		1
21371	1	2022-03-07 21:34:46+00	\N		1
21367	2	2022-03-07 16:00:30+00	\N		1
21365	1	2022-03-07 15:55:02+00	\N		1
21372	1	2022-03-07 21:48:02+00	\N		1
21373	5	2022-03-07 22:04:34+00	\N	Gatofloxin 	1
21374	5	2022-03-08 01:09:02+00	\N	Restasis and Gatofloxin 	1
21375	1	2022-03-08 01:48:03+00	\N		1
21376	1	2022-03-08 02:10:11+00	\N		1
21377	1	2022-03-08 02:10:19+00	\N		1
21378	1	2022-03-08 01:57:24+00	\N		1
21379	1	2022-03-08 02:15:09+00	\N		1
21381	6	2022-03-08 00:21:40+00	2	Eyes felt a bit irritated during work. Could have been a tad more aggressive during work. After work was really good with it. Also forgot my pm muro. Loaded on the ointment left eye though at night	1
21380	5	2022-03-08 11:58:17+00	\N	Restasis	1
21382	5	2022-03-08 12:33:59+00	\N	Gatafloxin & inovys & de3 & c	1
21383	1	2022-03-08 13:53:05+00	\N		1
21384	2	2022-03-08 16:26:48+00	\N		1
21385	1	2022-03-08 16:26:53+00	\N		1
21386	1	2022-03-08 19:50:00+00	\N		1
21387	1	2022-03-08 21:03:14+00	\N		1
21388	1	2022-03-08 20:19:19+00	\N		1
21389	5	2022-03-08 19:03:29+00	\N	Gatafloxin 	1
21390	2	2022-03-08 21:03:41+00	\N		1
21391	5	2022-03-08 23:33:42+00	\N	Gatafloxin	1
21392	1	2022-03-09 00:14:52+00	\N		1
21393	2	2022-03-09 00:53:06+00	\N		1
21394	1	2022-03-09 01:37:49+00	\N		1
21395	5	2022-03-09 02:31:51+00	\N	Invoyts	1
21396	5	2022-03-09 02:46:06+00	\N	Restasis and Gatofloxin 	1
21397	1	2022-03-09 03:06:28+00	\N		1
21398	1	2022-03-09 03:18:52+00	\N		1
21399	3	2022-03-09 03:24:54+00	\N		1
21400	6	2022-03-09 03:25:00+00	3	Nothing too crazy today	1
21401	5	2022-03-09 11:22:59+00	\N	De3 & c & inveyts & Gatofloxin & restasis	1
21402	1	2022-03-09 13:40:57+00	\N		1
21403	1	2022-03-09 14:06:51+00	\N		1
21404	1	2022-03-09 14:27:27+00	\N		1
21405	5	2022-03-09 16:00:34+00	\N	Gatofloxin	1
21406	2	2022-03-09 16:00:48+00	\N		1
21407	1	2022-03-09 19:42:47+00	\N		1
21408	1	2022-03-09 19:10:50+00	\N		1
21409	5	2022-03-09 21:19:35+00	\N	Gatafloxin 	1
21410	2	2022-03-09 20:05:48+00	\N		1
21411	1	2022-03-09 21:58:27+00	\N		1
21412	1	2022-03-09 21:58:36+00	\N		1
21413	2	2022-03-10 00:57:42+00	\N		1
21414	5	2022-03-10 00:59:42+00	\N	Gatafloxim	1
21415	1	2022-03-10 01:54:56+00	\N		1
21416	5	2022-03-10 02:18:05+00	\N	Restasis and gatafloxin and invetys	1
21417	5	2022-03-10 12:09:34+00	\N	Restasis and de3 & c & invetys & gatafloxin	1
21418	1	2022-03-10 13:02:54+00	\N		1
21419	1	2022-03-10 13:28:05+00	\N		1
21420	2	2022-03-10 16:37:40+00	\N		1
21421	5	2022-03-10 18:58:56+00	\N	Gatafloxin	1
21422	1	2022-03-11 04:59:14+00	\N		1
21423	1	2022-03-10 18:59:23+00	\N		1
21424	1	2022-03-10 21:27:28+00	\N		1
21425	2	2022-03-11 01:55:41+00	\N		1
21426	1	2022-03-11 01:55:51+00	\N		1
21427	5	2022-03-11 01:55:57+00	\N	Restasis & invetys & gatafloxin	1
21428	1	2022-03-11 02:16:08+00	\N		1
21429	5	2022-03-11 12:59:28+00	\N	Gatafloxin	1
21430	5	2022-03-11 12:59:36+00	\N	Restasis & invetys & c & de3	1
21431	6	2022-03-11 01:17:00+00	3	Normal day, eyes felt a bit stressed during work, but I did a lot of systane	1
21432	2	2022-03-11 17:09:49+00	\N		1
21433	1	2022-03-12 04:46:31+00	\N		1
21434	1	2022-03-11 18:43:45+00	\N		1
21435	2	2022-03-11 23:40:05+00	\N		1
21436	5	2022-03-12 03:53:47+00	\N	Restasis	1
21437	1	2022-03-12 03:54:03+00	\N		1
21438	6	2022-03-12 04:10:32+00	2	Just got punctal plug in left eye. So far I think it is keeping in more moisture. However it was super windy out and i played bball and went on a walk for boba. I also could have been better about lubricating. 	1
21439	3	2022-03-12 04:16:21+00	\N		1
21440	1	2022-03-12 15:32:43+00	\N		1
21441	2	2022-03-12 20:00:11+00	\N		1
21442	5	2022-03-12 20:12:36+00	\N	Super windy and cold out	1
21443	5	2022-03-13 13:44:07+00	\N	De3 and c	1
21444	1	2022-03-13 17:04:05+00	\N		1
21445	1	2022-03-13 17:23:27+00	\N		1
21446	5	2022-03-13 23:55:46+00	\N	Restasis 	1
21447	1	2022-03-14 00:07:58+00	\N		1
21448	2	2022-03-13 21:10:07+00	\N		1
21449	1	2022-03-14 00:08:55+00	\N		1
21450	2	2022-03-14 02:42:25+00	\N		1
21451	1	2022-03-14 03:10:56+00	\N		1
21452	1	2022-03-14 03:11:02+00	\N		1
21453	6	2022-03-14 03:02:08+00	2	Eyes pretty dry, but didnt feel bad during the day. Cold outside. Homestly just sorta slacking on the lubricant eye drops and even missed a muro and restasis.	1
21454	6	2022-03-13 03:03:14+00	2	Cold and windy out. Slacked on systane and muro and was missing a restasis.	1
21455	5	2022-03-14 11:52:12+00	\N	Restasis	1
21456	1	2022-03-14 13:25:11+00	\N		1
21457	2	2022-03-14 20:23:09+00	\N		1
21458	1	2022-03-15 02:21:48+00	\N		1
21459	5	2022-03-15 02:21:54+00	\N	Restasis	1
21460	1	2022-03-15 02:03:03+00	\N		1
21461	2	2022-03-14 15:22:17+00	\N		1
21462	2	2022-03-15 00:46:24+00	\N		1
21463	1	2022-03-14 22:22:34+00	\N		1
21464	1	2022-03-14 14:22:41+00	\N		1
21465	5	2022-03-15 09:41:24+00	\N	Restasis	1
21466	1	2022-03-15 09:55:03+00	\N		1
21467	1	2022-03-15 10:07:03+00	\N		1
21468	5	2022-03-15 10:07:10+00	\N	De3 & c	1
21469	2	2022-03-15 16:31:00+00	\N		1
21470	2	2022-03-15 19:47:17+00	\N		1
21471	2	2022-03-16 00:04:33+00	\N		1
21472	6	2022-03-15 23:56:47+00	3	Eyes felt pretty good. Maybe a tad dry during the day but not too bad	1
21473	5	2022-03-16 11:57:57+00	\N	Just woke up, and my right eye is the one that feels dry and like kinda sticky, not my left. So I think the punctal plug is working	1
21474	5	2022-03-16 12:07:17+00	\N	De3 & c	1
21475	1	2022-03-16 14:29:51+00	\N		1
21476	2	2022-03-16 15:24:25+00	\N		1
21477	1	2022-03-16 18:16:53+00	\N		1
21478	2	2022-03-16 20:33:26+00	\N		1
21479	1	2022-03-16 22:28:22+00	\N		1
21480	6	2022-03-17 02:43:32+00	2	Eyes felt tired / strained when working on india paperwork at night and also stayed up late	1
21481	5	2022-03-17 13:44:20+00	\N	Restasis	1
21482	5	2022-03-18 03:39:01+00	\N	Restasis	1
21483	5	2022-03-18 12:00:50+00	\N	Eyes feel soar. Have been doing a poor job of taking care of them these past few days	1
21484	6	2022-03-18 00:01:30+00	2	Didnt do a good job lubricating today and just overall eyes felt a bit strained / dry.	1
21485	1	2022-03-18 18:38:04+00	\N		1
21486	2	2022-03-18 16:01:14+00	\N		1
21487	2	2022-03-20 04:51:07+00	\N		1
21488	2	2022-03-20 19:07:13+00	\N		1
21489	1	2022-03-22 03:30:43+00	\N		1
21490	1	2022-03-22 08:16:09+00	\N		1
21491	2	2022-03-22 14:30:53+00	\N		1
21492	2	2022-03-22 17:46:59+00	\N		1
21493	2	2022-03-23 05:39:36+00	\N		1
21494	1	2022-03-23 11:34:27+00	\N		1
21495	2	2022-03-23 09:34:35+00	\N		1
21496	1	2022-03-23 11:59:15+00	\N		1
21497	2	2022-03-24 15:22:00+00	\N		1
21498	2	2022-03-24 10:00:13+00	\N		1
21499	2	2022-03-24 05:30:22+00	\N		1
21500	6	2022-03-24 15:22:33+00	2	Went a while without refresh drops cuz I lost them. (Maybe 5 hrs) but all in all decent day.	1
21501	3	2022-03-24 15:23:05+00	\N		1
21502	1	2022-03-27 22:00:07+00	\N		1
21503	5	2022-03-28 02:00:08+00	\N	Restasis	1
21504	5	2022-03-28 12:18:44+00	\N	De3 & c & restasis	1
21505	1	2022-03-28 13:08:37+00	\N		1
21506	1	2022-03-28 13:41:55+00	\N		1
21507	1	2022-03-28 19:46:37+00	\N		1
21508	2	2022-03-28 16:33:10+00	\N		1
21509	2	2022-03-28 21:30:40+00	\N		1
21510	1	2022-03-29 03:13:00+00	\N		1
21511	5	2022-03-29 03:13:35+00	\N	Restasis	1
21512	1	2022-03-29 03:23:04+00	\N		1
21513	3	2022-03-29 03:23:10+00	\N		1
21514	6	2022-03-29 03:23:14+00	2	Eyes felt strained throughout the day	1
21515	1	2022-03-29 12:02:25+00	\N		1
21516	5	2022-03-29 12:20:47+00	\N	Restasis	1
21517	1	2022-03-29 13:15:41+00	\N		1
21518	2	2022-03-29 15:01:34+00	\N		1
21519	2	2022-03-29 19:14:48+00	\N		1
21520	1	2022-03-29 19:58:07+00	\N		1
21521	2	2022-03-30 01:18:28+00	\N		1
21522	5	2022-03-30 02:29:44+00	\N	Restasis	1
21523	6	2022-03-30 02:29:59+00	2	Eyes felt a little weird theoughout the day. Not quite dry but I could almost feel something in the corner of my left eye at times (where the punctal plug is) might just be in my head tho	1
21524	5	2022-03-30 13:21:53+00	\N	Restasis	1
21525	1	2022-03-30 14:42:52+00	\N		1
21526	2	2022-03-30 16:44:14+00	\N		1
21527	1	2022-03-30 20:19:43+00	\N		1
21528	2	2022-03-30 21:44:26+00	\N		1
21529	1	2022-03-31 00:42:34+00	\N		1
21530	2	2022-03-31 02:13:14+00	\N		1
21531	3	2022-03-31 03:58:34+00	\N		1
21532	5	2022-03-31 02:11:38+00	\N	Restasis	1
21533	6	2022-03-31 03:58:57+00	3	All gold, maybe slightly dry at times	1
21534	1	2022-03-31 12:55:11+00	\N		1
21535	5	2022-04-01 03:28:41+00	\N	Restasis	1
21536	5	2022-04-01 11:06:26+00	\N	Restasis y de3 y c	1
21537	5	2022-04-03 06:27:34+00	\N	Restasis	1
21538	5	2022-04-03 17:01:18+00	\N	Restasis	1
21539	1	2022-04-03 17:23:29+00	\N		1
21540	2	2022-04-03 17:23:33+00	\N		1
21541	5	2022-04-04 01:34:10+00	\N	Restasis	1
21542	2	2022-04-04 15:21:13+00	\N		1
21543	2	2022-04-04 21:54:28+00	\N		1
21544	5	2022-04-04 22:15:49+00	\N	De3 y c	1
21545	6	2022-04-05 01:20:26+00	3	Decent day	1
21546	3	2022-04-05 01:20:37+00	\N		1
21547	5	2022-04-05 01:20:42+00	\N	Redtasis	1
21548	5	2022-04-05 12:28:37+00	\N	Restasis	1
21549	2	2022-04-05 20:37:23+00	\N		1
21550	2	2022-04-06 00:16:49+00	\N		1
21551	2	2022-04-05 16:10:04+00	\N		1
21552	5	2022-04-06 01:32:35+00	\N	Restasis	1
21553	2	2022-04-06 17:00:17+00	\N		1
21554	5	2022-04-07 03:45:01+00	\N	Restasis	1
21555	3	2022-04-07 03:45:13+00	\N		1
21556	3	2022-04-07 03:45:27+00	\N		1
21557	5	2022-04-07 12:15:50+00	\N	Eyes felt a bit funky	1
21558	2	2022-04-08 00:33:14+00	\N		1
21559	2	2022-04-07 21:20:22+00	\N		1
21560	2	2022-04-07 16:16:29+00	\N		1
21561	5	2022-04-08 01:32:43+00	\N	Restasis	1
21562	4	2022-03-02 13:30:43+00	\N	Adding this retroactively. This wasnt quite an erosion like the other ones I’ve listed but falls into the same category and tbh I think this should be used as the metric for healing (like oh 6 months since my last X, time to step down muro).\n\nDr. Weigel says this was caused by my contact, especially because the way it healed was very indicative of a contact caused ‘erosion’. Once the bandage contact lens was off we were chilling tho	1
21563	5	2022-04-09 13:33:44+00	\N	Left eye felt kinda bad this morning, both eyes super red. Kind of just normal for my eyes to look really bad in the mornings now apparently. I wouldnt call this an erosion one cuz it was really super small like nowhere would i call it pain & 2. It only happens when I look to the right, granted its not like I need to look far right, but ta just glance to the right makes me think its really just the punctal plug.	1
21564	1	2022-04-09 17:08:01+00	\N		1
21565	2	2022-04-09 16:01:07+00	\N		1
21566	1	2022-04-09 18:42:55+00	\N		1
21567	2	2022-04-09 20:00:35+00	\N		1
21568	5	2022-04-09 20:58:36+00	\N	Restasis y de3 y c	1
21569	1	2022-04-10 00:02:32+00	\N		1
21570	1	2022-04-10 15:16:29+00	\N		1
21571	2	2022-04-09 13:16:38+00	\N		1
21572	2	2022-04-10 15:16:55+00	\N		1
21573	1	2022-04-10 19:17:41+00	\N		1
21574	2	2022-04-10 21:14:24+00	\N		1
21575	2	2022-04-11 01:14:38+00	\N		1
21576	5	2022-04-11 02:08:50+00	\N	Restasis	1
21577	1	2022-04-11 02:09:04+00	\N		1
21578	1	2022-04-11 02:23:17+00	\N		1
21579	3	2022-04-11 02:23:22+00	\N		1
21580	6	2022-04-11 02:24:21+00	3	Not too many systanes but did everything else well. Was at beach for a while, maybe didnt hydrate the most but all good	1
21581	5	2022-04-11 12:41:24+00	\N	Restasis y de3 y c	1
21582	2	2022-04-11 17:08:55+00	\N		1
21583	1	2022-04-11 17:53:23+00	\N		1
21584	1	2022-04-11 20:02:17+00	\N		1
21585	2	2022-04-12 00:24:59+00	\N		1
21586	6	2022-04-12 01:49:02+00	3	Dry day a bit at beach but no probs. A few systanes here and there	1
21587	2	2022-04-11 21:01:21+00	\N		1
21588	5	2022-04-12 02:01:39+00	\N	Restasis	1
21589	1	2022-04-12 02:08:38+00	\N		1
21590	3	2022-04-12 02:08:44+00	\N		1
21591	2	2022-04-12 15:39:50+00	\N		1
21592	1	2022-04-12 15:39:55+00	\N		1
21593	1	2022-04-12 17:27:12+00	\N		1
21594	5	2022-04-12 17:27:15+00	\N	Restasis	1
21595	1	2022-04-12 17:58:29+00	\N		1
21596	1	2022-04-12 23:03:51+00	\N		1
21597	5	2022-04-13 01:48:01+00	\N	Restasis	1
21598	6	2022-04-13 01:48:09+00	3	Decent day, went for a run (might have dried it out) besides that also got like no sleep	1
21599	2	2022-04-13 18:45:48+00	\N		1
21600	2	2022-04-13 20:41:26+00	\N		1
21601	2	2022-04-14 00:03:32+00	\N		1
21602	2	2022-04-14 16:41:18+00	\N		1
21603	1	2022-04-14 20:41:26+00	\N		1
21604	2	2022-04-14 21:00:24+00	\N		1
21605	5	2022-04-15 03:21:45+00	\N	Restasis	1
21606	6	2022-04-15 03:21:53+00	3	Maybe 2.8, sligjtly annoyed at times and forgot my drops when I went to the gym. Also didnt do a morning restasis or de3 and c	1
21607	5	2022-04-15 11:14:51+00	\N	In the morning it hurts a decent amount to look right	1
21608	2	2022-04-15 18:13:02+00	\N		1
21609	2	2022-04-15 22:47:08+00	\N		1
21610	5	2022-04-16 03:47:21+00	\N	Restasis	1
21611	1	2022-04-17 02:38:34+00	\N		1
21612	2	2022-04-16 16:03:41+00	\N		1
21613	2	2022-04-16 22:01:54+00	\N		1
21614	2	2022-04-17 01:39:14+00	\N		1
21615	5	2022-04-17 02:39:23+00	\N	Restasis and de3 and omegas	1
21616	3	2022-04-17 02:39:38+00	\N		1
21617	6	2022-04-17 02:39:42+00	3	Felt dry st times was also on the beach for a minute but all gucci now	1
21618	5	2022-04-17 10:12:25+00	\N	Eye felt super dry in am	1
21619	5	2022-04-17 10:48:43+00	\N	Restasis	1
21620	2	2022-04-17 11:35:09+00	\N		1
21621	1	2022-04-17 11:35:14+00	\N		1
21622	2	2022-04-17 21:03:13+00	\N		1
21623	1	2022-04-17 19:03:32+00	\N		1
21624	2	2022-04-17 23:56:43+00	\N		1
21625	5	2022-04-18 01:56:54+00	\N	Restasis de3 and c	1
21626	5	2022-04-18 10:41:30+00	\N	Eyes felt good in am, nothin sus. We did the pot of boiling water last night so might have helped	1
21627	6	2022-04-18 03:42:06+00	3	Eyes felt decent. Still worried that I’m being a bit too easy going. It was windy for a bit and I didnt have the most water or sleep but either way eyes felt ok	1
21628	2	2022-04-18 16:45:34+00	\N		1
21629	1	2022-04-18 20:04:38+00	\N		1
21630	2	2022-04-18 22:43:24+00	\N		1
21631	5	2022-04-19 00:12:01+00	\N	Restasis and de3 and c	1
21632	2	2022-04-19 00:12:24+00	\N		1
21633	6	2022-04-19 01:06:18+00	3	Eyes felt great whole day (was inside almost all day too 👍)	1
21634	1	2022-04-19 01:06:45+00	\N		1
21635	2	2022-04-19 20:35:41+00	\N		1
21636	2	2022-04-19 16:35:48+00	\N		1
21637	2	2022-04-20 01:16:52+00	\N		1
21638	5	2022-04-20 02:38:00+00	\N	Restasis y de3 y c	1
21639	6	2022-04-20 02:38:17+00	3	Good on the ball	1
21640	3	2022-04-20 02:38:29+00	\N		1
21641	2	2022-04-20 17:25:33+00	\N		1
21642	1	2022-04-20 21:22:52+00	\N		1
21643	2	2022-04-20 21:00:16+00	\N		1
21644	1	2022-04-21 02:18:46+00	\N		1
21645	5	2022-04-22 00:39:26+00	\N	Restasis	1
21646	2	2022-04-22 00:39:47+00	\N		1
21647	2	2022-04-21 18:20:52+00	\N		1
21648	2	2022-04-21 21:40:08+00	\N		1
21649	2	2022-04-22 19:00:25+00	\N		1
21650	2	2022-04-22 15:00:35+00	\N		1
21651	1	2022-04-23 04:33:40+00	\N		1
21652	2	2022-04-24 01:52:01+00	\N		1
21653	2	2022-04-23 17:01:17+00	\N		1
21654	5	2022-04-24 05:11:36+00	\N	Restasis	1
21655	6	2022-04-24 05:18:07+00	3	Irregular sleep and only got two muros but besides that pretty good	1
21656	5	2022-04-24 13:34:44+00	\N	Restasis	1
21657	1	2022-04-24 21:28:25+00	\N		1
21658	1	2022-04-24 22:19:05+00	\N		1
21659	2	2022-04-25 02:08:52+00	\N		1
21660	5	2022-04-25 02:09:00+00	\N	Restasis	1
21661	6	2022-04-25 02:09:09+00	3	Eyes feel great, super hot out and bballed during the day. Was in the car with Saloni and windy but besides that all good i’d say	1
21662	2	2022-04-25 16:22:50+00	\N		1
21663	2	2022-04-25 21:40:27+00	\N		1
21664	2	2022-04-26 00:25:37+00	\N		1
21665	1	2022-04-26 02:48:11+00	\N		1
21666	5	2022-04-26 02:48:20+00	\N	Restasis de3 c	1
21667	5	2022-04-27 02:51:37+00	\N	Restasis	1
21668	2	2022-04-27 16:15:05+00	\N		1
21669	2	2022-04-28 01:01:21+00	\N		1
21670	5	2022-04-28 01:38:33+00	\N	Restasis and de3 and c	1
21671	2	2022-04-27 21:45:26+00	\N		1
21672	2	2022-04-28 17:50:57+00	\N		1
21673	2	2022-04-29 06:59:02+00	\N		1
21674	2	2022-04-30 01:33:06+00	\N		1
21675	2	2022-05-01 02:05:00+00	\N		1
21676	2	2022-05-02 17:39:37+00	\N		1
21677	2	2022-05-06 18:01:24+00	\N		1
21678	5	2022-05-06 18:01:29+00	\N	Restasis and de3 and c	1
21679	2	2022-05-09 16:43:09+00	\N		1
21680	2	2022-05-12 15:40:48+00	\N		1
21681	2	2022-05-13 00:15:20+00	\N		1
21682	5	2022-05-14 05:17:42+00	\N	Restasis and systane ointment	1
21683	6	2022-05-14 03:57:56+00	2	Pretty shitty eye day tbh, they really didnt feel too good, idk if it was allergies or what. Maybe coulda lubricated better but idk	1
21684	2	2022-05-14 20:05:42+00	\N		1
21685	6	2022-05-15 03:08:27+00	3	Decent day	1
21686	2	2022-05-15 00:08:51+00	\N		1
21687	5	2022-05-15 02:41:58+00	\N	Restasis	1
21688	1	2022-05-15 03:09:12+00	\N		1
21689	2	2022-05-15 05:15:48+00	\N		1
21690	5	2022-05-15 13:01:41+00	\N	Restasis and de3 and c	1
21691	5	2022-05-15 13:01:56+00	\N	My eye feels a tad funky in am, like how it usually feels a bit iff in the mornings when i blink left or something, but it wasnt like overly painful	1
21692	1	2022-05-15 19:38:36+00	\N		1
21693	2	2022-05-15 21:43:02+00	\N		1
21694	2	2022-05-15 15:43:15+00	\N		1
21695	2	2022-05-16 00:05:24+00	\N		1
21696	1	2022-05-16 02:04:12+00	\N		1
21697	5	2022-05-16 02:16:21+00	\N	Restasis 	1
21698	6	2022-05-17 03:14:30+00	3	Decent day got all drops in and lots of systane (maybe a little bit of allergy stress) also using the muro ointment again finally	1
21699	6	2022-05-15 04:15:38+00	3	Decent	1
21700	5	2022-05-17 04:33:49+00	\N	Restasis	1
21701	2	2022-05-17 18:07:25+00	\N		1
21702	2	2022-05-18 01:03:29+00	\N		1
21703	2	2022-05-17 22:24:56+00	\N		1
21704	5	2022-05-18 02:29:03+00	\N	Restasis	1
21705	1	2022-05-18 05:35:22+00	\N		1
21706	2	2022-05-18 15:46:23+00	\N		1
21707	1	2022-05-18 17:27:51+00	\N		1
21708	1	2022-05-18 17:59:55+00	\N		1
21709	1	2022-05-18 19:53:09+00	\N		1
21710	2	2022-05-21 04:57:51+00	\N		1
21711	6	2022-05-21 05:00:19+00	2	Decent day, didnt get one muro, was outside a lot, lots of refresh tho	1
21712	5	2022-05-21 15:39:46+00	\N	Restasis	1
21713	1	2022-05-21 23:34:07+00	\N		1
21714	2	2022-05-21 23:34:12+00	\N		1
21715	2	2022-05-21 20:05:17+00	\N		1
21716	1	2022-05-22 00:10:26+00	\N		1
21717	1	2022-05-22 00:35:01+00	\N		1
21718	5	2022-05-22 12:33:12+00	\N	Eyes felt super dry in the am not gonna lie, I did also wake up at 3:30 and got like two hours of sleep and it was a while after putting on ointment before i actually slept. Still kinda concerning	1
21719	6	2022-05-22 12:33:58+00	1	Shitty eyes in am	1
21720	2	2022-05-22 14:24:00+00	\N		1
21721	1	2022-05-22 13:24:12+00	\N		1
21722	2	2022-05-22 20:31:07+00	\N		1
21723	1	2022-05-22 21:03:32+00	\N		1
21724	5	2022-05-22 22:28:12+00	\N	Restasis	1
21725	6	2022-05-22 22:28:27+00	2	Didnt get much sleep. Super windy, but eyes didnt feel tooooo bad	1
21726	5	2022-05-23 11:06:09+00	\N	Eyes felt super duper dry in am	1
21727	5	2022-05-23 11:06:23+00	\N	Restasis, de3, C	1
21728	2	2022-05-23 16:53:59+00	\N		1
21729	1	2022-05-23 16:54:05+00	\N		1
21730	1	2022-05-23 19:38:00+00	\N		1
21731	2	2022-05-23 21:02:01+00	\N		1
21732	2	2022-05-24 01:30:10+00	\N		1
21733	1	2022-05-24 03:13:48+00	\N		1
21734	1	2022-05-24 03:13:54+00	\N		1
21735	5	2022-05-24 13:07:45+00	\N	Eyes felt fantastic this morning, I put on a bunch of ointment last night and humidifier on so maybe that was it.	1
21736	5	2022-05-24 17:23:56+00	\N	de3, c	1
21737	2	2022-05-24 17:24:05+00	\N		1
21738	5	2022-05-24 15:00:28+00	\N	restasis	1
21739	6	2022-05-24 03:24:59+00	1	Worked late annd eyes just felt super dry and bugging out while working. Not sure why, did a lot of systane, could just be allergies	1
21740	2	2022-05-25 00:40:26+00	\N		1
21741	2	2022-05-24 20:40:36+00	\N		1
21742	1	2022-05-25 01:07:38+00	\N		1
21743	1	2022-05-25 01:26:41+00	\N		1
21744	1	2022-05-25 04:30:59+00	\N		1
21745	5	2022-05-25 04:31:03+00	\N	Restasis	1
21746	5	2022-05-25 13:39:58+00	\N	Eyes felt fantastic in Am	1
21747	6	2022-05-25 01:40:13+00	2	Eyes felt ok throughout the day, woke up great but I think allergies are hitting	1
21748	2	2022-05-25 18:19:16+00	\N		1
21749	5	2022-05-25 21:53:31+00	\N	Restasi	1
21750	2	2022-05-26 01:22:02+00	\N		1
21751	2	2022-05-25 22:14:17+00	\N		1
21752	1	2022-05-26 01:22:31+00	\N		1
21753	2	2022-05-26 18:13:40+00	\N		1
21754	1	2022-05-27 02:45:16+00	\N		1
21755	1	2022-05-27 02:45:21+00	\N		1
21756	6	2022-05-26 02:45:30+00	3	Decent day, not much to report	1
21757	2	2022-05-27 02:45:50+00	\N		1
21758	1	2022-05-27 20:31:42+00	\N		1
21759	1	2022-05-27 20:31:47+00	\N		1
21760	2	2022-05-28 00:34:28+00	\N		1
21761	1	2022-05-28 04:48:52+00	\N		1
21762	1	2022-05-28 04:48:57+00	\N		1
21763	2	2022-05-28 19:40:01+00	\N		1
21764	1	2022-05-30 03:04:43+00	\N		1
21765	6	2022-05-28 03:04:58+00	2	Mid	1
21766	6	2022-05-28 03:05:12+00	2	Mid	1
21767	6	2022-05-29 03:05:25+00	2	Mid	1
21768	6	2022-05-30 03:05:41+00	1	Ive had a really decent string of bad days and its kinda concerning. I’m worried my eyes are gonna get an erosion soon. Allerfgies are also flaring tho so idk	1
21769	5	2022-05-30 04:26:51+00	\N	Restasis and de3 and c	1
21770	5	2022-05-30 13:14:45+00	\N	Eyes feel dry in the am. No himidifier on last night	1
21771	5	2022-05-30 14:04:46+00	\N	Restasis	1
21772	1	2022-05-30 16:14:17+00	\N		1
21773	2	2022-05-30 16:14:22+00	\N		1
21774	1	2022-05-30 16:33:17+00	\N		1
21775	5	2022-05-31 12:20:01+00	\N	Left eye feels pretty bad in am, idk why	1
21776	1	2022-05-31 21:07:43+00	\N		1
21777	2	2022-05-31 21:07:48+00	\N		1
21778	6	2022-06-01 03:57:21+00	3	Decent day even though the morning was rough	1
21779	6	2022-05-30 04:11:57+00	2	Mid day	1
21780	1	2022-06-01 04:12:30+00	\N		1
21781	1	2022-06-02 02:59:55+00	\N		1
21782	2	2022-06-02 01:00:00+00	\N		1
21783	6	2022-06-02 03:00:07+00	3	Decent day. Eye hurt a little bit during work but not bad	1
21784	5	2022-06-02 03:14:37+00	\N	Restasis	1
21785	3	2022-06-02 03:18:21+00	\N		1
21786	5	2022-06-02 12:24:33+00	\N	Eyes super super dry in am	1
21787	1	2022-06-02 19:10:16+00	\N		1
21788	5	2022-06-02 19:10:21+00	\N	De3 and c	1
21789	2	2022-06-02 21:40:41+00	\N		1
21790	2	2022-06-02 15:40:55+00	\N		1
21791	5	2022-06-03 04:34:07+00	\N	Restasis	1
21792	5	2022-06-03 15:33:21+00	\N	Eyes felt much better this morning	1
21793	1	2022-06-03 16:42:19+00	\N		1
21794	2	2022-06-03 17:58:22+00	\N		1
21795	5	2022-06-03 17:58:28+00	\N	De3 and c	1
21796	1	2022-06-04 02:36:55+00	\N		1
21797	2	2022-06-03 21:09:11+00	\N		1
21798	2	2022-06-04 01:37:21+00	\N		1
21799	5	2022-06-04 02:37:48+00	\N	Restasis	1
21800	5	2022-06-04 14:38:28+00	\N	Still wake up with super dry eyes man its crazy. This morning my left eye was super dry	1
21801	5	2022-06-04 15:07:50+00	\N	Restasis and de3 and c	1
21802	2	2022-06-04 15:33:25+00	\N		1
21803	6	2022-06-03 16:38:50+00	2	Bad. Woke up eyes were super duper dry.	1
21804	4	2022-06-01 16:40:13+00	\N	Not a real erosion but want to track it. Felt funky but not a real erosion but enough to be concerning and may make me want to continue treatment a little longer to be safe	1
21805	2	2022-06-04 22:34:31+00	\N		1
21806	5	2022-06-05 15:31:18+00	\N	De3 and c	1
21807	2	2022-06-05 16:31:35+00	\N		1
21808	5	2022-06-05 18:31:47+00	\N	Restasis	1
21809	6	2022-06-04 18:32:05+00	3	Mid	1
21810	2	2022-06-05 22:55:30+00	\N		1
21811	6	2022-06-05 06:31:13+00	3	Eyes felt pretty great all day	1
21812	2	2022-06-06 16:23:18+00	\N		1
21813	2	2022-06-06 21:23:26+00	\N		1
21814	5	2022-06-07 05:08:47+00	\N	Restasis	1
21815	2	2022-06-07 00:09:00+00	\N		1
21816	6	2022-06-06 05:09:13+00	2	Eyes felt a little dry throughout the day	1
21817	2	2022-06-07 21:04:39+00	\N		1
21818	2	2022-06-07 17:04:44+00	\N		1
21819	5	2022-06-07 21:05:00+00	\N	De3 and c	1
21820	2	2022-06-09 19:31:04+00	\N		1
21821	2	2022-06-10 17:34:25+00	\N		1
21822	6	2022-06-11 14:06:12+00	1	Eyes felt terribly dry the whole day. Honestly been super dry for a few days now	1
21823	6	2022-06-11 14:16:12+00	1	Super dry	1
21824	6	2022-06-10 14:16:29+00	1	Super dry	1
21825	2	2022-06-15 18:54:29+00	\N		1
21826	6	2022-06-15 18:54:36+00	1	Eyes just been feeling terrible in the mornings recently	1
21827	1	2022-06-15 23:04:16+00	\N		1
21828	5	2022-06-16 03:55:00+00	\N	Restasis	1
21829	6	2022-06-16 03:55:13+00	2	Was terrible this morning and eyes also felt very dry throughout day. Did all three muros but was at wharf and super windy	1
21830	4	2022-06-16 11:46:35+00	\N	Both eyes. Abt 30 mins. Felt maybe a little different than classical erosions at first but nah I’m pretty sure it was. Both eyes hurt pretty bad and then slowly felt better. We also cried last night so maybe that wiped out the ointment. Yesterday was also super windy at wharf and our eyes have been feeling terrible these past few days.	1
21831	1	2022-06-16 17:40:08+00	\N		1
21832	2	2022-06-16 16:01:12+00	\N		1
21833	1	2022-06-17 19:49:22+00	\N		1
21834	2	2022-06-18 16:07:26+00	\N		1
21835	5	2022-06-18 15:07:37+00	\N	Redtasis y c y de3	1
21836	6	2022-06-17 17:08:00+00	2	Super windy out but was really aggressive with systane	1
21837	1	2022-06-19 04:23:03+00	\N		1
21838	6	2022-06-19 03:23:07+00	2	Eyes just been feeling dryer recently. Did two muros and a restasis in am and de3 and c and yet still feelt dry. And I did a crap ton of systanes throughout the day	1
21839	5	2022-06-19 04:32:00+00	\N	Restasis	1
21840	2	2022-06-19 16:47:22+00	\N		1
21841	5	2022-06-19 23:15:39+00	\N	Systane ointment	1
21842	1	2022-06-20 04:04:11+00	\N		1
21843	2	2022-06-20 18:44:55+00	\N		1
21844	6	2022-06-19 18:45:05+00	3	Dry and ran out of systane vut used the systane ointment and really hydrated and felt fine next am	1
21845	5	2022-06-20 21:31:38+00	\N	Systane ointment	1
21846	1	2022-06-21 03:21:05+00	\N		1
21847	6	2022-06-21 03:21:10+00	3	Decent day even tho i didnt do much systane. I put on systane ointment twice and  muro twice 	1
21848	5	2022-06-21 12:22:08+00	\N	Eyes feel super dry in am. Had no humidifier in the room and didnt use much systane but still annoying	1
21849	5	2022-06-21 12:48:25+00	\N	Restasis	1
21850	2	2022-06-21 17:32:37+00	\N		1
21851	3	2022-06-22 04:04:34+00	\N		1
21852	1	2022-06-22 15:59:41+00	\N		1
21853	5	2022-06-22 04:05:16+00	\N	Restasis	1
21854	6	2022-06-23 03:59:24+00	2	Was in park for a bit without eye drops an wyes felt a bit irritated	1
21855	2	2022-06-23 19:31:17+00	\N		1
21856	6	2022-06-22 20:31:31+00	2	Itched my eyes, didnt have systane with me at airport for a while. Wore ointment	1
21857	5	2022-06-24 04:56:23+00	\N	Restasis	1
21858	5	2022-06-26 04:07:30+00	\N	Restasis	1
21859	5	2022-06-26 11:13:15+00	\N	Left eye feels not great tbh. Idk if itd the punctal plug or what	1
21860	6	2022-06-25 11:13:49+00	3	Not bad, did muro twice, not a bunch of systane but def more than 4	1
21861	2	2022-06-26 22:34:36+00	\N		1
21862	1	2022-06-28 01:12:11+00	\N		1
21863	6	2022-06-28 03:58:39+00	3	Eyes decent, only two muros tho	1
21864	5	2022-06-28 03:58:22+00	\N	Restasis	1
21865	5	2022-06-28 11:36:24+00	\N	Eyes feel a bit sticky	1
21866	2	2022-06-28 23:13:30+00	\N		1
21867	2	2022-06-28 18:21:57+00	\N		1
21868	2	2022-06-29 01:22:06+00	\N		1
21869	5	2022-06-29 03:26:38+00	\N	Restasis	1
21870	6	2022-06-29 03:38:26+00	2	Felt good today but not great	1
21871	5	2022-06-30 04:23:15+00	\N	Restasis	1
21872	6	2022-06-30 03:23:28+00	3	Good day	1
21873	2	2022-06-30 18:02:36+00	\N		1
21874	2	2022-07-02 00:52:25+00	\N		1
21875	2	2022-07-02 06:05:05+00	\N		1
21876	2	2022-07-03 19:21:15+00	\N		1
21877	2	2022-07-04 00:27:35+00	\N		1
21878	5	2022-07-05 12:31:23+00	\N	Eyes feel terrible in am. Left eye feel funky. Both eyes feel super dry	1
21879	6	2022-07-04 12:33:21+00	2	Didnt do any muros and barely any systane. Also cried a lot throughout the day so eyes felt bad from That	1
21880	2	2022-07-05 16:00:43+00	\N		1
21881	2	2022-07-05 21:11:34+00	\N		1
21882	1	2022-07-05 23:45:51+00	\N		1
21883	5	2022-07-06 12:36:32+00	\N	Tired of always waking up with ny eyes so freaking dry	1
21884	5	2022-07-07 02:52:03+00	\N	Ran out of systane deops so using the ointment	1
21885	6	2022-07-07 02:52:17+00	2	Only did two muros. Eyes slightly dry at eod	1
21886	5	2022-07-10 13:22:56+00	\N	Eyes hurt, rubbed right eye too much. Also got stye in my left eye now	1
21887	6	2022-07-09 13:23:21+00	2	Got a stye in my eye also hung out with oreeth and devi chechi and ruth and sachin at devi’s house. Hung out there most of the middle day, only did eye drops once i think, the muro that is	1
21888	2	2022-07-10 20:02:54+00	\N		1
21889	6	2022-07-10 12:32:40+00	2	Got a big stye in my left eye	1
21890	2	2022-07-11 18:40:02+00	\N		1
21891	2	2022-07-11 22:19:38+00	\N		1
21892	6	2022-07-12 03:41:33+00	2	Not bad. Muro twice, did probably more than 4 systanes so thats good	1
21893	1	2022-07-12 03:42:09+00	\N		1
21894	1	2022-07-12 02:42:18+00	\N		1
21895	3	2022-07-12 03:42:29+00	\N		1
21896	2	2022-07-12 19:31:09+00	\N		1
21897	1	2022-07-14 03:52:27+00	\N		1
21898	1	2022-07-14 00:52:33+00	\N		1
21899	2	2022-07-13 23:39:42+00	\N		1
21900	6	2022-07-14 03:53:00+00	2	Eyes feel dry, did sone systane but not too much. Did only one muro	1
21901	1	2022-07-14 03:59:04+00	\N		1
21902	5	2022-07-16 13:25:09+00	\N	Did one muro yesterday. Woke up today and eyes feel fine	1
21903	1	2022-07-17 03:18:27+00	\N		1
21904	2	2022-07-17 03:19:06+00	\N		1
21905	1	2022-07-18 01:09:43+00	\N		1
21906	2	2022-07-17 23:09:48+00	\N		1
21907	6	2022-07-18 01:10:05+00	2	Decent day, eyes definitely felt dry in the am. Barely any systane throughout the day tbh. One muro later in the day	1
21908	5	2022-07-18 12:30:29+00	\N	Woke  up in the middle of night and eyes felt suuper dry. Hey put on another round of ointment but I’m worried it coulda been ane rosiom had I not	1
21909	1	2022-07-19 00:57:51+00	\N		1
21910	2	2022-07-18 22:19:15+00	\N		1
21911	5	2022-07-19 14:32:53+00	\N	Eyes felt pretty decent this morning	1
21912	6	2022-07-19 14:33:05+00	1	Nothing much so far	1
21913	6	2022-07-18 14:33:23+00	2	I think eyes still adjusting to no muro	1
21914	1	2022-07-20 04:07:04+00	\N		1
21915	1	2022-07-20 02:07:11+00	\N		1
21916	5	2022-07-20 12:36:26+00	\N	Stayed up pretty late after putting on ointment. Right eye felt bad when I woke up. Kinda like the tiniest of tiny erosions. Really just felt like there was a tiny bump under my right eyelid	1
21917	1	2022-07-22 02:47:58+00	\N		1
21918	1	2022-07-21 23:36:04+00	\N		1
21919	1	2022-07-24 06:42:00+00	\N		1
21920	2	2022-07-24 06:42:08+00	\N		1
21921	6	2022-07-23 06:42:15+00	3	Decent day, nothing too crazy an eyes feel fine without muro now adays	1
21922	5	2022-07-25 12:02:11+00	\N	Eyes feeling sticky in am, honestly kinda feels like a matter of time until my next erosion in left eye	1
21923	4	2022-07-28 12:30:40+00	\N	Mini erosion. Feel it in my left eye. Happened when I woke up but not like right when I woke up like a few sexonds after when I opened my eyes up. Makes sense cuz I only did one systane drop all of yesterday	1
21924	1	2022-07-31 03:10:55+00	\N		1
21925	5	2022-08-02 10:19:15+00	\N	Eyes didnt feel great in am, no erosions just soar	1
21926	6	2022-08-04 10:29:04+00	2	Waking up early got my eyes feeling some type a way. Alos put on a lot of ointment last night and kinda feel it all around my eyes	1
21927	6	2022-08-05 10:35:43+00	2	Again eyes just dont feel great in the am. I think being sleep deprived contributes but also just the ointment feels terrible on me	1
21928	5	2022-08-11 02:03:16+00	\N	Eyes felt super dry after work	1
21929	6	2022-08-13 02:18:26+00	1	Eyes felt super rough today, got a bunch of stuff in them, felt really dry throughout the day. Not that great all in all	1
21930	5	2022-08-13 12:54:08+00	\N	Eyes felt hella dry in am and not feeling great now. Def like one step away from an erosion	1
21931	4	2022-09-01 11:51:47+00	\N	Very tiny, left eye. I put in some systane night before but could def see why it happened, I haven’t been doing ointment or muro or systane very much at all this past month. Anywho it was super tiny so not stressed much	1
21932	4	2022-09-16 12:53:48+00	\N	Eh like 15 mins. We knew too we'd been rubbing our eye a crap ton the day before too and just been feeling bad the past few days. It was left eye only. In fact I woke up earlier and felt decent but my left eye felt super dry and sticky, went back to bed and when I woke up with the alarm I had it	1
21933	1	2022-11-30 17:39:47+00	\N		1
21934	5	2022-11-28 20:20:54+00	\N	Testing	1
\.


--
-- Data for Name: log_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_type (log_type_id, log_type_name) FROM stdin;
1	Systane Eye Drop
2	Muro Eye Drop
3	Muro Ointment
4	Erosion
5	Note
6	Daily Review
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (person_id, full_name, email, pwd_encrypted, phone, settings_obj_id) FROM stdin;
1	Joseph Rosenfeld	josephgrosenfeld@gmail.com	$2b$10$Pe4KSD6C3qNeB0DdhIRg5.SKshfX5PMt.rkjy3xBzPLvSsKXYbJL2	5406865236	1
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.session (sid, sess, expire) FROM stdin;
uTBRKpRm1vThgQCOEMhCyAu50amSngXg	{"cookie":{"originalMaxAge":7776000000,"expires":"2023-02-03T17:15:20.878Z","secure":true,"httpOnly":false,"path":"/","sameSite":"none"},"role":{"isAdmin":true,"isGuest":false}}	2023-02-03 17:15:22
iy4uHmHQpWSFiCbmupJaG0blifrLJYZT	{"cookie":{"originalMaxAge":7776000000,"expires":"2022-12-15T12:53:43.692Z","secure":true,"httpOnly":false,"path":"/","sameSite":"none"},"role":{"isAdmin":true,"isGuest":false}}	2023-02-28 17:43:13
\.


--
-- Data for Name: settings_obj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.settings_obj (settings_obj_id, systane_color, muro_color, muro_ointment_color, erosion_color, note_color, daily_review1_color, daily_review2_color, daily_review3_color, daily_review4_color, daily_review5_color, systane_abbreviation, muro_abbreviation, muro_ointment_abbreviation, erosion_abbreviation, note_abbreviation, daily_review_abbreviation) FROM stdin;
1	#3fcf5c	#fda744	#6991ec	#ff0000	#a14545	#ff4d94	#ea6cdf	#9146dd	#5045e8	#42b7ff	S	M	O	E	N	D
\.


--
-- Name: log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_log_id_seq', 21934, true);


--
-- Name: log_type_log_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_type_log_type_id_seq', 6, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 1, true);


--
-- Name: settings_obj_settings_obj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.settings_obj_settings_obj_id_seq', 1, true);


--
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (log_id);


--
-- Name: log_type log_type_log_type_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_type
    ADD CONSTRAINT log_type_log_type_name_key UNIQUE (log_type_name);


--
-- Name: log_type log_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_type
    ADD CONSTRAINT log_type_pkey PRIMARY KEY (log_type_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: person person_settings_obj_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_settings_obj_id_key UNIQUE (settings_obj_id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);


--
-- Name: settings_obj settings_obj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings_obj
    ADD CONSTRAINT settings_obj_pkey PRIMARY KEY (settings_obj_id);


--
-- Name: IDX_session_expire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);


--
-- Name: log log_log_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_log_type_id_fkey FOREIGN KEY (log_type_id) REFERENCES public.log_type(log_type_id);


--
-- Name: log log_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: person person_settings_obj_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_settings_obj_id_fkey FOREIGN KEY (settings_obj_id) REFERENCES public.settings_obj(settings_obj_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

