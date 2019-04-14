--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Group" (
    "Number" character varying NOT NULL,
    "Year" smallint,
    "Specialization" character varying
);


ALTER TABLE public."Group" OWNER TO postgres;

--
-- Name: LectureHall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LectureHall" (
    "Number" smallint NOT NULL,
    "X" double precision,
    "Y" double precision,
    "Floor" smallint,
    "Photo" character varying
);


ALTER TABLE public."LectureHall" OWNER TO postgres;

--
-- Name: Lecturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lecturer" (
    "FirstName" character varying,
    "LastName" character varying,
    "FatherName" character varying,
    "ID" character varying NOT NULL
);


ALTER TABLE public."Lecturer" OWNER TO postgres;

--
-- Name: PairLesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PairLesson" (
    "ID" smallint NOT NULL,
    "Group" character varying,
    "LectureHall" smallint,
    "Lecturer" character varying,
    "Subject" character varying,
    "Day" smallint,
    "LessonNumber" smallint
);


ALTER TABLE public."PairLesson" OWNER TO postgres;

--
-- Name: Schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Schedule" (
    "Group" character varying,
    "Semester" smallint,
    "Year" smallint
);


ALTER TABLE public."Schedule" OWNER TO postgres;

--
-- Name: Subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subject" (
    "Name" character varying,
    "ID" character varying NOT NULL
);


ALTER TABLE public."Subject" OWNER TO postgres;

--
-- Name: Group Group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Group"
    ADD CONSTRAINT "Group_pkey" PRIMARY KEY ("Number");


--
-- Name: LectureHall LectureHall_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LectureHall"
    ADD CONSTRAINT "LectureHall_pkey" PRIMARY KEY ("Number");


--
-- Name: Lecturer Lecturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturer"
    ADD CONSTRAINT "Lecturer_pkey" PRIMARY KEY ("ID");


--
-- Name: PairLesson PairLesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PairLesson"
    ADD CONSTRAINT "PairLesson_pkey" PRIMARY KEY ("ID");


--
-- Name: Subject Subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT "Subject_pkey" PRIMARY KEY ("ID");


--
-- Name: Schedule Group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "Group" FOREIGN KEY ("Group") REFERENCES public."Group"("Number");


--
-- Name: PairLesson Group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PairLesson"
    ADD CONSTRAINT "Group" FOREIGN KEY ("Group") REFERENCES public."Group"("Number");


--
-- Name: PairLesson LectureHall; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PairLesson"
    ADD CONSTRAINT "LectureHall" FOREIGN KEY ("LectureHall") REFERENCES public."LectureHall"("Number");


--
-- Name: PairLesson Lecturer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PairLesson"
    ADD CONSTRAINT "Lecturer" FOREIGN KEY ("Lecturer") REFERENCES public."Lecturer"("ID");


--
-- Name: PairLesson Subject; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PairLesson"
    ADD CONSTRAINT "Subject" FOREIGN KEY ("Subject") REFERENCES public."Subject"("ID");


--
-- PostgreSQL database dump complete
--

