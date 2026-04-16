--
-- PostgreSQL database dump
--

\restrict c6MshQc1zbhBaHCwkgwikjPn9UfLkOK8lh3Tf5tKnIHl2eeJx7jt52vctVABNEA

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: urban_db
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO urban_db;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO urban_db;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO urban_db;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO urban_db;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO urban_db;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO urban_db;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO urban_db;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO urban_db;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO urban_db;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO urban_db;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO urban_db;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: breeds; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.breeds (
    id integer NOT NULL,
    document_id character varying(255),
    label character varying(255),
    value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.breeds OWNER TO urban_db;

--
-- Name: breeds_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.breeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.breeds_id_seq OWNER TO urban_db;

--
-- Name: breeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.breeds_id_seq OWNED BY public.breeds.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO urban_db;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_id_seq OWNER TO urban_db;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    email character varying(255),
    instagram_id character varying(255),
    address character varying(255),
    area character varying(255),
    city character varying(255),
    zip integer,
    note character varying(255),
    mobile_number character varying(255),
    name character varying(255)
);


ALTER TABLE public.customers OWNER TO urban_db;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO urban_db;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: customers_store_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customers_store_lnk (
    id integer NOT NULL,
    customer_id integer,
    store_id integer
);


ALTER TABLE public.customers_store_lnk OWNER TO urban_db;

--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customers_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_store_lnk_id_seq OWNER TO urban_db;

--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customers_store_lnk_id_seq OWNED BY public.customers_store_lnk.id;


--
-- Name: customet_follow_ups; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customet_follow_ups (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.customet_follow_ups OWNER TO urban_db;

--
-- Name: customet_follow_ups_customer_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customet_follow_ups_customer_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    customer_id integer
);


ALTER TABLE public.customet_follow_ups_customer_lnk OWNER TO urban_db;

--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customet_follow_ups_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_customer_lnk_id_seq OWNER TO urban_db;

--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customet_follow_ups_customer_lnk_id_seq OWNED BY public.customet_follow_ups_customer_lnk.id;


--
-- Name: customet_follow_ups_follow_ups_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customet_follow_ups_follow_ups_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    follow_up_list_id integer,
    follow_up_list_ord double precision,
    customet_follow_up_ord double precision
);


ALTER TABLE public.customet_follow_ups_follow_ups_lnk OWNER TO urban_db;

--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq OWNER TO urban_db;

--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq OWNED BY public.customet_follow_ups_follow_ups_lnk.id;


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customet_follow_ups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_id_seq OWNER TO urban_db;

--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customet_follow_ups_id_seq OWNED BY public.customet_follow_ups.id;


--
-- Name: customet_statuses; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customet_statuses (
    id integer NOT NULL,
    document_id character varying(255),
    achievement character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.customet_statuses OWNER TO urban_db;

--
-- Name: customet_statuses_customer_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.customet_statuses_customer_lnk (
    id integer NOT NULL,
    customet_status_id integer,
    customer_id integer
);


ALTER TABLE public.customet_statuses_customer_lnk OWNER TO urban_db;

--
-- Name: customet_statuses_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customet_statuses_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_statuses_customer_lnk_id_seq OWNER TO urban_db;

--
-- Name: customet_statuses_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customet_statuses_customer_lnk_id_seq OWNED BY public.customet_statuses_customer_lnk.id;


--
-- Name: customet_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.customet_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_statuses_id_seq OWNER TO urban_db;

--
-- Name: customet_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.customet_statuses_id_seq OWNED BY public.customet_statuses.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    focal_point jsonb,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO urban_db;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO urban_db;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO urban_db;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO urban_db;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO urban_db;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO urban_db;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: follow_up_lists; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.follow_up_lists (
    id integer NOT NULL,
    document_id character varying(255),
    till_sequence character varying(255),
    customer_name character varying(255),
    bill_amount bigint,
    notes text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    bill_date date
);


ALTER TABLE public.follow_up_lists OWNER TO urban_db;

--
-- Name: follow_up_lists_customer_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.follow_up_lists_customer_lnk (
    id integer NOT NULL,
    follow_up_list_id integer,
    customer_id integer,
    follow_up_list_ord double precision
);


ALTER TABLE public.follow_up_lists_customer_lnk OWNER TO urban_db;

--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.follow_up_lists_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_customer_lnk_id_seq OWNER TO urban_db;

--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.follow_up_lists_customer_lnk_id_seq OWNED BY public.follow_up_lists_customer_lnk.id;


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.follow_up_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_id_seq OWNER TO urban_db;

--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.follow_up_lists_id_seq OWNED BY public.follow_up_lists.id;


--
-- Name: follow_up_lists_store_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.follow_up_lists_store_lnk (
    id integer NOT NULL,
    follow_up_list_id integer,
    store_id integer,
    follow_up_list_ord double precision
);


ALTER TABLE public.follow_up_lists_store_lnk OWNER TO urban_db;

--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.follow_up_lists_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_store_lnk_id_seq OWNER TO urban_db;

--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.follow_up_lists_store_lnk_id_seq OWNED BY public.follow_up_lists_store_lnk.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO urban_db;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO urban_db;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: pet_types; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.pet_types (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.pet_types OWNER TO urban_db;

--
-- Name: pet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.pet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pet_types_id_seq OWNER TO urban_db;

--
-- Name: pet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.pet_types_id_seq OWNED BY public.pet_types.id;


--
-- Name: pets; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.pets (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    birth_date date,
    gender character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.pets OWNER TO urban_db;

--
-- Name: pets_breed_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.pets_breed_lnk (
    id integer NOT NULL,
    pet_id integer,
    breed_id integer
);


ALTER TABLE public.pets_breed_lnk OWNER TO urban_db;

--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.pets_breed_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_breed_lnk_id_seq OWNER TO urban_db;

--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.pets_breed_lnk_id_seq OWNED BY public.pets_breed_lnk.id;


--
-- Name: pets_customer_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.pets_customer_lnk (
    id integer NOT NULL,
    pet_id integer,
    customer_id integer,
    pet_ord double precision
);


ALTER TABLE public.pets_customer_lnk OWNER TO urban_db;

--
-- Name: pets_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.pets_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_customer_lnk_id_seq OWNER TO urban_db;

--
-- Name: pets_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.pets_customer_lnk_id_seq OWNED BY public.pets_customer_lnk.id;


--
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_id_seq OWNER TO urban_db;

--
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- Name: pets_pet_type_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.pets_pet_type_lnk (
    id integer NOT NULL,
    pet_id integer,
    pet_type_id integer
);


ALTER TABLE public.pets_pet_type_lnk OWNER TO urban_db;

--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.pets_pet_type_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_pet_type_lnk_id_seq OWNER TO urban_db;

--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.pets_pet_type_lnk_id_seq OWNED BY public.pets_pet_type_lnk.id;


--
-- Name: staffs; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.staffs (
    id integer NOT NULL,
    document_id character varying(255),
    phone bigint,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.staffs OWNER TO urban_db;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.staffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staffs_id_seq OWNER TO urban_db;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.staffs_id_seq OWNED BY public.staffs.id;


--
-- Name: staffs_store_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.staffs_store_lnk (
    id integer NOT NULL,
    staff_id integer,
    store_id integer
);


ALTER TABLE public.staffs_store_lnk OWNER TO urban_db;

--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.staffs_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staffs_store_lnk_id_seq OWNER TO urban_db;

--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.staffs_store_lnk_id_seq OWNED BY public.staffs_store_lnk.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.stores (
    id integer NOT NULL,
    document_id character varying(255),
    location character varying(255),
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.stores OWNER TO urban_db;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stores_id_seq OWNER TO urban_db;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO urban_db;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO urban_db;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO urban_db;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO urban_db;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO urban_db;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO urban_db;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO urban_db;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO urban_db;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO urban_db;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO urban_db;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO urban_db;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO urban_db;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO urban_db;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO urban_db;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO urban_db;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO urban_db;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO urban_db;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO urban_db;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO urban_db;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO urban_db;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO urban_db;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO urban_db;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO urban_db;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO urban_db;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO urban_db;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO urban_db;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO urban_db;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO urban_db;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO urban_db;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO urban_db;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO urban_db;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO urban_db;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO urban_db;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO urban_db;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO urban_db;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO urban_db;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO urban_db;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO urban_db;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO urban_db;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO urban_db;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO urban_db;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO urban_db;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO urban_db;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO urban_db;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO urban_db;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO urban_db;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO urban_db;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO urban_db;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO urban_db;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: urban_db
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO urban_db;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: urban_db
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO urban_db;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urban_db
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: breeds id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.breeds ALTER COLUMN id SET DEFAULT nextval('public.breeds_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: customers_store_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.customers_store_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_id_seq'::regclass);


--
-- Name: customet_follow_ups_customer_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_customer_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_follow_ups_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_follow_ups_lnk_id_seq'::regclass);


--
-- Name: customet_statuses id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses ALTER COLUMN id SET DEFAULT nextval('public.customet_statuses_id_seq'::regclass);


--
-- Name: customet_statuses_customer_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_statuses_customer_lnk_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: follow_up_lists id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_id_seq'::regclass);


--
-- Name: follow_up_lists_customer_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_customer_lnk_id_seq'::regclass);


--
-- Name: follow_up_lists_store_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_store_lnk_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: pet_types id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pet_types ALTER COLUMN id SET DEFAULT nextval('public.pet_types_id_seq'::regclass);


--
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- Name: pets_breed_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_breed_lnk ALTER COLUMN id SET DEFAULT nextval('public.pets_breed_lnk_id_seq'::regclass);


--
-- Name: pets_customer_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.pets_customer_lnk_id_seq'::regclass);


--
-- Name: pets_pet_type_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_pet_type_lnk ALTER COLUMN id SET DEFAULT nextval('public.pets_pet_type_lnk_id_seq'::regclass);


--
-- Name: staffs id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs ALTER COLUMN id SET DEFAULT nextval('public.staffs_id_seq'::regclass);


--
-- Name: staffs_store_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.staffs_store_lnk_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
194	os5f5d7a7snvbimj674cr8wl	plugin::content-manager.explorer.create	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-04 23:25:13.661	2026-03-04 23:25:13.661	2026-03-04 23:25:13.663	\N	\N	\N
196	ngxta4vl022zygmu9hu4chmc	plugin::content-manager.explorer.read	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-04 23:25:13.746	2026-03-04 23:25:13.746	2026-03-04 23:25:13.746	\N	\N	\N
198	usopvu6gpojy1p4ywbfbu7gm	plugin::content-manager.explorer.update	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-04 23:25:13.773	2026-03-04 23:25:13.773	2026-03-04 23:25:13.774	\N	\N	\N
200	men997ux3ld74djrcdrxxx6a	plugin::content-manager.explorer.delete	{}	api::staff.staff	{}	[]	2026-03-04 23:25:13.794	2026-03-04 23:25:13.794	2026-03-04 23:25:13.794	\N	\N	\N
201	hl3w63k076ulu0kogq50l1ey	plugin::content-manager.explorer.publish	{}	api::staff.staff	{}	[]	2026-03-04 23:25:13.803	2026-03-04 23:25:13.803	2026-03-04 23:25:13.803	\N	\N	\N
26	ij5k3e06kr7szbm8ptho2rvf	plugin::upload.read	{}	\N	{}	[]	2026-02-22 10:52:17.803	2026-02-22 10:52:17.803	2026-02-22 10:52:17.804	\N	\N	\N
27	jgmed0c69p3ok5xs8dkl5idt	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-22 10:52:17.81	2026-02-22 10:52:17.81	2026-02-22 10:52:17.81	\N	\N	\N
28	gnqfnwgwkr7hoiys8zyplpwb	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-22 10:52:17.816	2026-02-22 10:52:17.816	2026-02-22 10:52:17.816	\N	\N	\N
29	rmnsqlemcluq8tk0ky9hp1a2	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-22 10:52:17.822	2026-02-22 10:52:17.822	2026-02-22 10:52:17.822	\N	\N	\N
30	xthf5zedswlzf1qyamzgx05s	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-22 10:52:17.829	2026-02-22 10:52:17.829	2026-02-22 10:52:17.829	\N	\N	\N
31	uf9c9z9bmmebabanaiga10ei	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-22 10:52:17.835	2026-02-22 10:52:17.835	2026-02-22 10:52:17.835	\N	\N	\N
52	davd2er9eq4ff4yoomqz82q3	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-02-22 10:52:17.99	2026-02-22 10:52:17.99	2026-02-22 10:52:17.99	\N	\N	\N
53	r4uy6n57p6b7lunl539qark5	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-22 10:52:17.995	2026-02-22 10:52:17.995	2026-02-22 10:52:17.995	\N	\N	\N
54	r9qxf41e4ca8xt1u0b06eomo	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-22 10:52:18.002	2026-02-22 10:52:18.002	2026-02-22 10:52:18.002	\N	\N	\N
55	c1urlhgps81ekqjxxqbkm424	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-02-22 10:52:18.008	2026-02-22 10:52:18.008	2026-02-22 10:52:18.008	\N	\N	\N
56	dwesaspstrg9c45erm3igmmd	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-22 10:52:18.014	2026-02-22 10:52:18.014	2026-02-22 10:52:18.015	\N	\N	\N
57	fhkp42d5y8w26r8ute99we90	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-22 10:52:18.022	2026-02-22 10:52:18.022	2026-02-22 10:52:18.022	\N	\N	\N
58	i9ex6y57jolq0rlaws0qnmxw	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-22 10:52:18.09	2026-02-22 10:52:18.09	2026-02-22 10:52:18.09	\N	\N	\N
64	or2a8xmbvcq1npeivmys7jo9	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-22 10:52:18.151	2026-02-22 10:52:18.151	2026-02-22 10:52:18.152	\N	\N	\N
70	ml4qzky3yvfk0f8iebz82inc	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-02-22 10:52:18.188	2026-02-22 10:52:18.188	2026-02-22 10:52:18.188	\N	\N	\N
76	lkbrkuou1p3sloe1uxbqj5df	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-02-22 10:52:18.222	2026-02-22 10:52:18.222	2026-02-22 10:52:18.222	\N	\N	\N
82	j9m1ejnggt7q07ws8jlk6i8a	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-02-22 10:52:18.252	2026-02-22 10:52:18.252	2026-02-22 10:52:18.253	\N	\N	\N
97	l20ionmtzk0h2jhhoqb97vi2	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-02-22 10:52:18.348	2026-02-22 10:52:18.348	2026-02-22 10:52:18.349	\N	\N	\N
98	e707t115o1f8zr75bwoj9s1s	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-02-22 10:52:18.355	2026-02-22 10:52:18.355	2026-02-22 10:52:18.355	\N	\N	\N
99	gqd58vlh1p1495gutbmwouyb	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-02-22 10:52:18.361	2026-02-22 10:52:18.361	2026-02-22 10:52:18.361	\N	\N	\N
100	w6zwx5hmpdbcq1d5jhrd2d06	plugin::content-type-builder.read	{}	\N	{}	[]	2026-02-22 10:52:18.365	2026-02-22 10:52:18.365	2026-02-22 10:52:18.365	\N	\N	\N
101	y4sqpblqudnja54btai4uogx	plugin::email.settings.read	{}	\N	{}	[]	2026-02-22 10:52:18.374	2026-02-22 10:52:18.374	2026-02-22 10:52:18.374	\N	\N	\N
102	dvtbe5gpm0bdmaukfimzchje	plugin::upload.read	{}	\N	{}	[]	2026-02-22 10:52:18.379	2026-02-22 10:52:18.379	2026-02-22 10:52:18.38	\N	\N	\N
103	mxajofxpqqssipwf54at6sod	plugin::upload.assets.create	{}	\N	{}	[]	2026-02-22 10:52:18.389	2026-02-22 10:52:18.389	2026-02-22 10:52:18.389	\N	\N	\N
104	zj27hmk8fq7xkukc7i1tad6k	plugin::upload.assets.update	{}	\N	{}	[]	2026-02-22 10:52:18.399	2026-02-22 10:52:18.399	2026-02-22 10:52:18.399	\N	\N	\N
105	j8ehpf1s9d24i7x71dcts9yx	plugin::upload.assets.download	{}	\N	{}	[]	2026-02-22 10:52:18.405	2026-02-22 10:52:18.405	2026-02-22 10:52:18.405	\N	\N	\N
106	vu6wucw57pcs1apdxoqm81xn	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-02-22 10:52:18.41	2026-02-22 10:52:18.41	2026-02-22 10:52:18.41	\N	\N	\N
107	tafrbdtxj6a7wqvtutdii6vd	plugin::upload.configure-view	{}	\N	{}	[]	2026-02-22 10:52:18.417	2026-02-22 10:52:18.417	2026-02-22 10:52:18.418	\N	\N	\N
108	hyjncaro4zao7g1mjvq9a0pm	plugin::upload.settings.read	{}	\N	{}	[]	2026-02-22 10:52:18.424	2026-02-22 10:52:18.424	2026-02-22 10:52:18.425	\N	\N	\N
109	lmrow84h9y2mt2ry7n9ucxdk	plugin::i18n.locale.create	{}	\N	{}	[]	2026-02-22 10:52:18.43	2026-02-22 10:52:18.43	2026-02-22 10:52:18.43	\N	\N	\N
110	b6vi2eokxq0b3jzzswosqu47	plugin::i18n.locale.read	{}	\N	{}	[]	2026-02-22 10:52:18.438	2026-02-22 10:52:18.438	2026-02-22 10:52:18.438	\N	\N	\N
111	gubqkg9nuckxmb1e790olhaw	plugin::i18n.locale.update	{}	\N	{}	[]	2026-02-22 10:52:18.447	2026-02-22 10:52:18.447	2026-02-22 10:52:18.447	\N	\N	\N
112	g9r4wr1tl1sxemvarxr7g8c6	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-02-22 10:52:18.454	2026-02-22 10:52:18.454	2026-02-22 10:52:18.455	\N	\N	\N
113	dbq1kytmshnv0e2tu1xlfv0s	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-02-22 10:52:18.459	2026-02-22 10:52:18.459	2026-02-22 10:52:18.46	\N	\N	\N
114	q0tqtm6yjhmi8vce6acxxm47	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-02-22 10:52:18.465	2026-02-22 10:52:18.465	2026-02-22 10:52:18.465	\N	\N	\N
115	nkellr1u40zculmkyeoz3nw4	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-02-22 10:52:18.471	2026-02-22 10:52:18.471	2026-02-22 10:52:18.471	\N	\N	\N
116	t3j3s04z4h8d821oc91yxaz5	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-02-22 10:52:18.476	2026-02-22 10:52:18.476	2026-02-22 10:52:18.477	\N	\N	\N
117	s7szlukhonj56ce2ar8er7zi	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-02-22 10:52:18.482	2026-02-22 10:52:18.482	2026-02-22 10:52:18.482	\N	\N	\N
118	a4nbhgykq38vn4iktqgwk76r	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-02-22 10:52:18.488	2026-02-22 10:52:18.488	2026-02-22 10:52:18.489	\N	\N	\N
119	ytjq6vqd2bp7y2ha6z7rovvm	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-02-22 10:52:18.505	2026-02-22 10:52:18.505	2026-02-22 10:52:18.505	\N	\N	\N
120	sxznqc6tdeiw7ms14qxud10f	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-02-22 10:52:18.51	2026-02-22 10:52:18.51	2026-02-22 10:52:18.51	\N	\N	\N
121	marxq9x422agq0hajjjxzpjo	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-02-22 10:52:18.515	2026-02-22 10:52:18.515	2026-02-22 10:52:18.515	\N	\N	\N
122	hshweue7q0cp3clud1g5q8ic	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-02-22 10:52:18.521	2026-02-22 10:52:18.521	2026-02-22 10:52:18.521	\N	\N	\N
125	nm9qiu1foajeu8g3phlkknnf	admin::marketplace.read	{}	\N	{}	[]	2026-02-22 10:52:18.538	2026-02-22 10:52:18.538	2026-02-22 10:52:18.538	\N	\N	\N
126	gmtm5bozs6qin08a1h715y9s	admin::webhooks.create	{}	\N	{}	[]	2026-02-22 10:52:18.544	2026-02-22 10:52:18.544	2026-02-22 10:52:18.544	\N	\N	\N
127	yywkllupgx9z2trubrr6yy7z	admin::webhooks.read	{}	\N	{}	[]	2026-02-22 10:52:18.555	2026-02-22 10:52:18.555	2026-02-22 10:52:18.556	\N	\N	\N
128	hagqlt2xqek04bxatl923v6b	admin::webhooks.update	{}	\N	{}	[]	2026-02-22 10:52:18.566	2026-02-22 10:52:18.566	2026-02-22 10:52:18.566	\N	\N	\N
129	vk45ldvjcasgrjp6s1go39w4	admin::webhooks.delete	{}	\N	{}	[]	2026-02-22 10:52:18.572	2026-02-22 10:52:18.572	2026-02-22 10:52:18.572	\N	\N	\N
130	ma5857f7yoomfh6leqp26w11	admin::users.create	{}	\N	{}	[]	2026-02-22 10:52:18.578	2026-02-22 10:52:18.578	2026-02-22 10:52:18.578	\N	\N	\N
131	ncs0dtbzs5m48dla2le98mva	admin::users.read	{}	\N	{}	[]	2026-02-22 10:52:18.586	2026-02-22 10:52:18.586	2026-02-22 10:52:18.586	\N	\N	\N
132	ik0th0z0r4pipxlqpel9qdhm	admin::users.update	{}	\N	{}	[]	2026-02-22 10:52:18.593	2026-02-22 10:52:18.593	2026-02-22 10:52:18.593	\N	\N	\N
133	sc0dtncz337r2rui8edq7xon	admin::users.delete	{}	\N	{}	[]	2026-02-22 10:52:18.599	2026-02-22 10:52:18.599	2026-02-22 10:52:18.599	\N	\N	\N
134	xj1ceaj2u7vn6gyvcdfhk2ew	admin::roles.create	{}	\N	{}	[]	2026-02-22 10:52:18.606	2026-02-22 10:52:18.606	2026-02-22 10:52:18.606	\N	\N	\N
135	e54je9qrvyrfrtbnkn4xu4jd	admin::roles.read	{}	\N	{}	[]	2026-02-22 10:52:18.612	2026-02-22 10:52:18.612	2026-02-22 10:52:18.612	\N	\N	\N
136	fkvjadmv7jv1pu9au92d749x	admin::roles.update	{}	\N	{}	[]	2026-02-22 10:52:18.619	2026-02-22 10:52:18.619	2026-02-22 10:52:18.619	\N	\N	\N
137	pf7wctatp9qitparhvk5p2je	admin::roles.delete	{}	\N	{}	[]	2026-02-22 10:52:18.626	2026-02-22 10:52:18.626	2026-02-22 10:52:18.626	\N	\N	\N
138	gxp2wpk1goykg13gnztiwdqa	admin::api-tokens.access	{}	\N	{}	[]	2026-02-22 10:52:18.631	2026-02-22 10:52:18.631	2026-02-22 10:52:18.631	\N	\N	\N
139	xs10mab4g1xihc0b9rrczgoc	admin::api-tokens.create	{}	\N	{}	[]	2026-02-22 10:52:18.637	2026-02-22 10:52:18.637	2026-02-22 10:52:18.638	\N	\N	\N
140	d2eevkdkxyrg7t0hmhlqw4xm	admin::api-tokens.read	{}	\N	{}	[]	2026-02-22 10:52:18.642	2026-02-22 10:52:18.642	2026-02-22 10:52:18.643	\N	\N	\N
141	es8bjynfcoypy613qomg5b2s	admin::api-tokens.update	{}	\N	{}	[]	2026-02-22 10:52:18.648	2026-02-22 10:52:18.648	2026-02-22 10:52:18.649	\N	\N	\N
142	hpj3jxwrhu5hiji3nhfsukna	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-02-22 10:52:18.655	2026-02-22 10:52:18.655	2026-02-22 10:52:18.656	\N	\N	\N
143	pifuoevbdjontj0ipbtlws05	admin::api-tokens.delete	{}	\N	{}	[]	2026-02-22 10:52:18.665	2026-02-22 10:52:18.665	2026-02-22 10:52:18.665	\N	\N	\N
144	bg94n8iqcx2dip0v4r8yzv8y	admin::project-settings.update	{}	\N	{}	[]	2026-02-22 10:52:18.671	2026-02-22 10:52:18.671	2026-02-22 10:52:18.671	\N	\N	\N
145	bxtlyjpt6jsrghei0oyq6qd8	admin::project-settings.read	{}	\N	{}	[]	2026-02-22 10:52:18.677	2026-02-22 10:52:18.677	2026-02-22 10:52:18.677	\N	\N	\N
146	w55zbfktcblxv6itnt78c590	admin::transfer.tokens.access	{}	\N	{}	[]	2026-02-22 10:52:18.681	2026-02-22 10:52:18.681	2026-02-22 10:52:18.682	\N	\N	\N
147	fz11fjjue496u0z47jyvhm0e	admin::transfer.tokens.create	{}	\N	{}	[]	2026-02-22 10:52:18.691	2026-02-22 10:52:18.691	2026-02-22 10:52:18.691	\N	\N	\N
148	lb95sdfqjc48umb9ons13h5j	admin::transfer.tokens.read	{}	\N	{}	[]	2026-02-22 10:52:18.704	2026-02-22 10:52:18.704	2026-02-22 10:52:18.704	\N	\N	\N
149	q07uw4vsej05eyzw96mkoxbw	admin::transfer.tokens.update	{}	\N	{}	[]	2026-02-22 10:52:18.71	2026-02-22 10:52:18.71	2026-02-22 10:52:18.71	\N	\N	\N
150	ogxzxd6uwiqwo65gxov9t3pn	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-02-22 10:52:18.74	2026-02-22 10:52:18.74	2026-02-22 10:52:18.74	\N	\N	\N
151	c8uudmsexxham1mgk6w0amyz	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-02-22 10:52:18.746	2026-02-22 10:52:18.746	2026-02-22 10:52:18.746	\N	\N	\N
155	o4vmdxcnvalkk8neig80mvmc	plugin::content-manager.explorer.delete	{}	api::customer.customer	{}	[]	2026-02-22 10:58:00.68	2026-02-22 10:58:00.68	2026-02-22 10:58:00.681	\N	\N	\N
156	feu7lp9dhj7oeowofmspavqk	plugin::content-manager.explorer.publish	{}	api::customer.customer	{}	[]	2026-02-22 10:58:00.684	2026-02-22 10:58:00.684	2026-02-22 10:58:00.685	\N	\N	\N
189	pum0nwx48nse4hvey6xgsu3e	plugin::content-manager.explorer.delete	{}	api::store.store	{}	[]	2026-02-26 00:13:40.743	2026-02-26 00:13:40.743	2026-02-26 00:13:40.743	\N	\N	\N
190	vg6tz06ytov3cz0wft51jhzb	plugin::content-manager.explorer.publish	{}	api::store.store	{}	[]	2026-02-26 00:13:40.764	2026-02-26 00:13:40.764	2026-02-26 00:13:40.766	\N	\N	\N
249	eyzdg4j50nvzycbxqgbxpsb1	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-18 21:07:31.541	2026-03-18 21:07:31.541	2026-03-18 21:07:31.541	\N	\N	\N
250	wfhc7mn4br90x96as5leisjk	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-18 21:07:31.55	2026-03-18 21:07:31.55	2026-03-18 21:07:31.55	\N	\N	\N
251	kd4gq8qha4cvqe7lufmuwjgj	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-18 21:07:31.556	2026-03-18 21:07:31.556	2026-03-18 21:07:31.557	\N	\N	\N
252	y89rrwdl5wdw8hajfaqmxofh	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-03-18 21:07:31.562	2026-03-18 21:07:31.562	2026-03-18 21:07:31.562	\N	\N	\N
369	zb9cs7g193xg4kgd594j0sdy	plugin::content-manager.explorer.create	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups"]}	[]	2026-03-31 18:47:50.523	2026-03-31 18:47:50.523	2026-03-31 18:47:50.524	\N	\N	\N
371	vxvpkg512t80jcniymvcakul	plugin::content-manager.explorer.read	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups"]}	[]	2026-03-31 18:47:50.549	2026-03-31 18:47:50.549	2026-03-31 18:47:50.549	\N	\N	\N
253	oqksnvvhhso6h46v0xn6ertq	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-03-18 21:07:31.592	2026-03-18 21:07:31.592	2026-03-18 21:07:31.595	\N	\N	\N
257	jh822ptdcugkaztv8oqcgf95	plugin::content-manager.explorer.delete	{}	api::customer.customer	{}	[]	2026-03-18 21:07:31.846	2026-03-18 21:07:31.846	2026-03-18 21:07:31.85	\N	\N	\N
258	msit20p661cz8hdnfpp9otuo	plugin::content-manager.explorer.publish	{}	api::customer.customer	{}	[]	2026-03-18 21:07:31.885	2026-03-18 21:07:31.885	2026-03-18 21:07:31.887	\N	\N	\N
361	jbdjbrvadl3uvksmg4038xw1	plugin::content-manager.explorer.delete	{}	api::customet-follow-up.customet-follow-up	{}	[]	2026-03-31 18:22:46.188	2026-03-31 18:22:46.188	2026-03-31 18:22:46.188	\N	\N	\N
362	tyyvs135vourzopgph9e16oz	plugin::content-manager.explorer.publish	{}	api::customet-follow-up.customet-follow-up	{}	[]	2026-03-31 18:22:46.208	2026-03-31 18:22:46.208	2026-03-31 18:22:46.208	\N	\N	\N
373	yqez260i10bq0lgr9a2ebdpw	plugin::content-manager.explorer.update	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups"]}	[]	2026-03-31 18:47:50.559	2026-03-31 18:47:50.559	2026-03-31 18:47:50.559	\N	\N	\N
264	galrb8x5bb3qqov6b7ohacy2	plugin::content-manager.explorer.create	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.924	2026-03-18 21:07:31.924	2026-03-18 21:07:31.924	\N	\N	\N
265	taouib6qgjq3hkjk9in33giy	plugin::content-manager.explorer.read	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.931	2026-03-18 21:07:31.931	2026-03-18 21:07:31.931	\N	\N	\N
266	ch9zu93iec7s4w5s5ik19h1b	plugin::content-manager.explorer.update	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.937	2026-03-18 21:07:31.937	2026-03-18 21:07:31.937	\N	\N	\N
267	ozp1ekkcks60zv6hvwvly0q7	plugin::content-manager.explorer.delete	{}	api::staff.staff	{}	[]	2026-03-18 21:07:31.946	2026-03-18 21:07:31.946	2026-03-18 21:07:31.946	\N	\N	\N
268	yzy619lm5lhkm50t6lskkq4v	plugin::content-manager.explorer.publish	{}	api::staff.staff	{}	[]	2026-03-18 21:07:31.952	2026-03-18 21:07:31.952	2026-03-18 21:07:31.952	\N	\N	\N
406	qsuodz5p4ksjh8le3c4xb1fb	plugin::content-manager.explorer.delete	{}	api::pet-type.pet-type	{}	[]	2026-04-16 15:53:20.207	2026-04-16 15:53:20.207	2026-04-16 15:53:20.211	\N	\N	\N
272	vov6dgcdvnfuasnakkhgbiqn	plugin::content-manager.explorer.delete	{}	api::store.store	{}	[]	2026-03-18 21:07:31.993	2026-03-18 21:07:31.993	2026-03-18 21:07:31.993	\N	\N	\N
273	q7flrrkkjysmujv6sxgzx4ev	plugin::content-manager.explorer.publish	{}	api::store.store	{}	[]	2026-03-18 21:07:32.002	2026-03-18 21:07:32.002	2026-03-18 21:07:32.003	\N	\N	\N
407	z26lg8fnrk9cgzhxt6ozjsec	plugin::content-manager.explorer.publish	{}	api::pet-type.pet-type	{}	[]	2026-04-16 15:53:20.336	2026-04-16 15:53:20.336	2026-04-16 15:53:20.338	\N	\N	\N
275	igcpe0t2faisdgjprgpqugf2	plugin::content-manager.explorer.create	{}	api::customet-status.customet-status	{"fields": ["customer", "achievement"]}	[]	2026-03-26 18:15:48.271	2026-03-26 18:15:48.271	2026-03-26 18:15:48.272	\N	\N	\N
411	smw7xs51yxocxlh9po8kkg4n	plugin::content-manager.explorer.create	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed", "customer"]}	[]	2026-04-16 16:08:28.866	2026-04-16 16:08:28.866	2026-04-16 16:08:28.868	\N	\N	\N
277	nyogtqlk5ys08h61t0avptzq	plugin::content-manager.explorer.read	{}	api::customet-status.customet-status	{"fields": ["customer", "achievement"]}	[]	2026-03-26 18:15:48.282	2026-03-26 18:15:48.282	2026-03-26 18:15:48.282	\N	\N	\N
279	m1yikjazqc6plwjlovyimfkg	plugin::content-manager.explorer.update	{}	api::customet-status.customet-status	{"fields": ["customer", "achievement"]}	[]	2026-03-26 18:15:48.293	2026-03-26 18:15:48.293	2026-03-26 18:15:48.293	\N	\N	\N
280	hvthnlca3x7ha1nxxlpj9pes	plugin::content-manager.explorer.delete	{}	api::customet-status.customet-status	{}	[]	2026-03-26 18:15:48.298	2026-03-26 18:15:48.298	2026-03-26 18:15:48.298	\N	\N	\N
281	xepkndnjvxckjkh6dv1oifrn	plugin::content-manager.explorer.publish	{}	api::customet-status.customet-status	{}	[]	2026-03-26 18:15:48.303	2026-03-26 18:15:48.303	2026-03-26 18:15:48.303	\N	\N	\N
254	wj8euw49vvpp29x9j6as38i9	plugin::content-manager.explorer.create	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.651	2026-04-15 18:04:38.7	2026-03-18 21:07:31.657	\N	\N	\N
255	l4b7hsb63rat6b9drbp4cgl4	plugin::content-manager.explorer.read	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.709	2026-04-15 18:04:38.7	2026-03-18 21:07:31.709	\N	\N	\N
256	f039c8smdlu0zwxy77cl1aq3	plugin::content-manager.explorer.update	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.762	2026-04-15 18:04:38.7	2026-03-18 21:07:31.765	\N	\N	\N
403	uve9o2wwaqz4977ecktnspe8	plugin::content-manager.explorer.create	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.069	2026-04-16 15:53:20.069	2026-04-16 15:53:20.073	\N	\N	\N
404	est3gie8x775w7e0nkz9dfys	plugin::content-manager.explorer.read	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.122	2026-04-16 15:53:20.122	2026-04-16 15:53:20.122	\N	\N	\N
405	pf77uupeia8n9j7x4kcbp639	plugin::content-manager.explorer.update	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.163	2026-04-16 15:53:20.163	2026-04-16 15:53:20.163	\N	\N	\N
412	d51ovs3yi8tw02ciup0skagw	plugin::content-manager.explorer.read	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed", "customer"]}	[]	2026-04-16 16:08:28.881	2026-04-16 16:08:28.881	2026-04-16 16:08:28.882	\N	\N	\N
413	z45ndvhxb0gamuqkqr8r3y2z	plugin::content-manager.explorer.update	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed", "customer"]}	[]	2026-04-16 16:08:28.885	2026-04-16 16:08:28.885	2026-04-16 16:08:28.885	\N	\N	\N
269	xr77nc99u7dckjvuqax4ji5l	plugin::content-manager.explorer.create	{}	api::store.store	{"fields": ["Location", "Name", "staff"]}	[]	2026-03-18 21:07:31.965	2026-03-30 19:23:18.134	2026-03-18 21:07:31.965	\N	\N	\N
270	dpnucvyw5olk02clqqc65uwd	plugin::content-manager.explorer.read	{}	api::store.store	{"fields": ["Location", "Name", "staff"]}	[]	2026-03-18 21:07:31.97	2026-03-30 19:23:18.134	2026-03-18 21:07:31.97	\N	\N	\N
271	ws5w5zntksm3fsmkolyk7fee	plugin::content-manager.explorer.update	{}	api::store.store	{"fields": ["Location", "Name", "staff"]}	[]	2026-03-18 21:07:31.984	2026-03-30 19:23:18.134	2026-03-18 21:07:31.984	\N	\N	\N
375	ibywadykvxfq9t9xg74k2jyr	plugin::content-manager.explorer.create	{}	api::follow-up-list.follow-up-list	{"fields": ["tillSequence", "CustomerName", "billAmount", "store", "customer", "Notes", "customet_follow_ups", "billDate"]}	[]	2026-03-31 18:56:42.995	2026-03-31 18:56:42.995	2026-03-31 18:56:42.997	\N	\N	\N
376	k9sozrvw6t24tefonxf8hswu	plugin::content-manager.explorer.read	{}	api::follow-up-list.follow-up-list	{"fields": ["tillSequence", "CustomerName", "billAmount", "store", "customer", "Notes", "customet_follow_ups", "billDate"]}	[]	2026-03-31 18:56:43.017	2026-03-31 18:56:43.017	2026-03-31 18:56:43.018	\N	\N	\N
377	qkw4ykcucjzajmjeztniyzxu	plugin::content-manager.explorer.update	{}	api::follow-up-list.follow-up-list	{"fields": ["tillSequence", "CustomerName", "billAmount", "store", "customer", "Notes", "customet_follow_ups", "billDate"]}	[]	2026-03-31 18:56:43.023	2026-03-31 18:56:43.023	2026-03-31 18:56:43.023	\N	\N	\N
378	rstdt10mhmc37c54tdsin4zg	plugin::content-manager.explorer.create	{}	api::breed.breed	{"fields": ["label", "value"]}	[]	2026-04-15 16:05:30.322	2026-04-15 16:05:30.322	2026-04-15 16:05:30.323	\N	\N	\N
380	pbj3xis6nef23zuzp2bydow2	plugin::content-manager.explorer.read	{}	api::breed.breed	{"fields": ["label", "value"]}	[]	2026-04-15 16:05:30.351	2026-04-15 16:05:30.351	2026-04-15 16:05:30.351	\N	\N	\N
382	hqy45o2i70hehhtirhc1re8f	plugin::content-manager.explorer.update	{}	api::breed.breed	{"fields": ["label", "value"]}	[]	2026-04-15 16:05:30.363	2026-04-15 16:05:30.363	2026-04-15 16:05:30.364	\N	\N	\N
384	incnlxu76bcpjr91c1sglz51	plugin::content-manager.explorer.delete	{}	api::breed.breed	{}	[]	2026-04-15 16:05:30.374	2026-04-15 16:05:30.374	2026-04-15 16:05:30.375	\N	\N	\N
385	kvnwf6cg786njws7qrsubvsf	plugin::content-manager.explorer.publish	{}	api::breed.breed	{}	[]	2026-04-15 16:05:30.379	2026-04-15 16:05:30.379	2026-04-15 16:05:30.379	\N	\N	\N
320	zomqag05b1oju2twltfcsbpy	plugin::content-manager.explorer.delete	{}	api::follow-up-list.follow-up-list	{}	[]	2026-03-30 19:30:14.407	2026-03-30 19:30:14.407	2026-03-30 19:30:14.407	\N	\N	\N
321	fxr0oyd2orgmxadqwk590e6p	plugin::content-manager.explorer.publish	{}	api::follow-up-list.follow-up-list	{}	[]	2026-03-30 19:30:14.415	2026-03-30 19:30:14.415	2026-03-30 19:30:14.415	\N	\N	\N
323	f7lez9jf367uqhvx23eemtdm	plugin::content-manager.explorer.create	{}	api::store.store	{"fields": ["Location", "Name", "staff", "follow_up_lists"]}	[]	2026-03-30 19:38:42.163	2026-03-30 19:38:42.163	2026-03-30 19:38:42.163	\N	\N	\N
325	kcnn8wpkqwqy2df1tytcqrms	plugin::content-manager.explorer.read	{}	api::store.store	{"fields": ["Location", "Name", "staff", "follow_up_lists"]}	[]	2026-03-30 19:38:42.175	2026-03-30 19:38:42.175	2026-03-30 19:38:42.175	\N	\N	\N
395	eqq1j26n3s7ju1rolv7egui6	plugin::content-manager.explorer.create	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note", "pets", "customet_status", "follow_up_lists", "customet_follow_up"]}	[]	2026-04-15 18:09:07.522	2026-04-15 18:09:07.522	2026-04-15 18:09:07.525	\N	\N	\N
327	l82m2r1naqu1qlhovz4yvdd8	plugin::content-manager.explorer.update	{}	api::store.store	{"fields": ["Location", "Name", "staff", "follow_up_lists"]}	[]	2026-03-30 19:38:42.183	2026-03-30 19:38:42.183	2026-03-30 19:38:42.183	\N	\N	\N
397	kyl54u9f3qw1gt63d7q80jvl	plugin::content-manager.explorer.read	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note", "pets", "customet_status", "follow_up_lists", "customet_follow_up"]}	[]	2026-04-15 18:09:07.544	2026-04-15 18:09:07.544	2026-04-15 18:09:07.545	\N	\N	\N
399	id5lgbom46humpqd4vda6naq	plugin::content-manager.explorer.update	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "email", "instagramId", "address", "area", "city", "zip", "Note", "pets", "customet_status", "follow_up_lists", "customet_follow_up"]}	[]	2026-04-15 18:09:07.558	2026-04-15 18:09:07.558	2026-04-15 18:09:07.558	\N	\N	\N
401	n1kkf3tepj2mgswya9oablw9	plugin::content-manager.explorer.delete	{}	api::pet.pet	{}	[]	2026-04-15 18:09:07.566	2026-04-15 18:09:07.566	2026-04-15 18:09:07.566	\N	\N	\N
402	usa22b7dscr168yrsqh2i547	plugin::content-manager.explorer.publish	{}	api::pet.pet	{}	[]	2026-04-15 18:09:07.57	2026-04-15 18:09:07.57	2026-04-15 18:09:07.57	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
194	194	1	111
196	196	1	113
198	198	1	115
200	200	1	117
201	201	1	118
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
58	58	1	1
64	64	1	7
70	70	1	13
76	76	1	19
361	361	1	192
362	362	1	193
82	82	1	25
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	1	84
142	142	1	85
143	143	1	86
144	144	1	87
145	145	1	88
146	146	1	89
147	147	1	90
148	148	1	91
149	149	1	92
150	150	1	93
151	151	1	94
155	155	1	98
156	156	1	99
189	189	1	106
190	190	1	107
249	249	2	32
250	250	2	33
251	251	2	34
252	252	2	35
253	253	2	36
254	254	2	37
255	255	2	38
256	256	2	39
257	257	2	40
258	258	2	41
264	264	2	47
265	265	2	48
266	266	2	49
267	267	2	50
268	268	2	51
269	269	2	52
270	270	2	53
271	271	2	54
272	272	2	55
273	273	2	56
275	275	1	145
369	369	1	194
277	277	1	147
279	279	1	149
280	280	1	150
281	281	1	151
371	371	1	196
373	373	1	198
375	375	1	199
376	376	1	200
377	377	1	201
378	378	1	202
380	380	1	204
382	382	1	206
384	384	1	208
385	385	1	209
395	395	1	210
397	397	1	212
399	399	1	214
401	401	1	216
402	402	1	217
403	403	1	218
404	404	1	219
405	405	1	220
406	406	1	221
407	407	1	222
320	320	1	175
321	321	1	176
323	323	1	178
325	325	1	180
411	411	1	223
327	327	1	182
412	412	1	224
413	413	1	225
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xombxcfzaggve8dnzoqjjive	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-02-22 10:52:17.546	2026-02-22 10:52:17.546	2026-02-22 10:52:17.546	\N	\N	\N
3	zlogskowdlilg4jr2wc8zfwe	Author	strapi-author	Authors can manage the content they have created.	2026-02-22 10:52:17.566	2026-02-22 10:52:17.566	2026-02-22 10:52:17.567	\N	\N	\N
2	gvio1319vvigtf6d0k0vsl4j	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-02-22 10:52:17.56	2026-03-18 21:07:31.334	2026-02-22 10:52:17.561	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vz1zj1wx1ta09tbpnc5m2gtm	admin	admin	\N	admin@admin.com	$2a$10$Rchl8S3mpTnVa14AYlPhsOanzgUHDnYYALd.V4rSk7FiB7isTBDfe	\N	\N	t	f	\N	2026-02-22 10:56:55.256	2026-02-22 10:56:55.256	2026-02-22 10:56:55.257	\N	\N	\N
2	r82sbu1d67queo28pcq0yku8	KOSHTI	PIYUSH	\N	urbanpet@gmail.com	$2a$10$6XV7Q.bqAYBJvN4y.M0bKui9VhtEAnmsEDohjJa2BuDmO9e2Muc2y	\N	51cc6df15e476f1ccaab3645b56be3c74b87cbc1	t	f	\N	2026-03-18 21:03:41.504	2026-03-18 21:05:04.939	2026-03-18 21:03:41.504	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
2	2	2	1	1
\.


--
-- Data for Name: breeds; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.breeds (id, document_id, label, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i2puep4xu7oh18en3rzvk2il	American Bulldog	american-bulldog	2026-04-15 16:56:48.078	2026-04-15 16:56:48.078	\N	1	1	\N
2	i2puep4xu7oh18en3rzvk2il	American Bulldog	american-bulldog	2026-04-15 16:56:48.078	2026-04-15 16:56:48.078	2026-04-15 16:56:48.099	1	1	\N
5	g8y4u6w5rrzgrb2bgofdx45g	Labrador Retriever	labrador-retriever	2026-04-15 16:57:46.36	2026-04-15 16:57:49.635	\N	1	1	\N
7	g8y4u6w5rrzgrb2bgofdx45g	Labrador Retriever	labrador-retriever	2026-04-15 16:57:46.36	2026-04-15 16:57:49.635	2026-04-15 16:57:49.646	1	1	\N
8	y47yikm8khzcac8i9v1dguwz	Beagle	beagle	2026-04-15 16:58:10.598	2026-04-15 16:58:10.598	\N	1	1	\N
9	y47yikm8khzcac8i9v1dguwz	Beagle	beagle	2026-04-15 16:58:10.598	2026-04-15 16:58:10.598	2026-04-15 16:58:10.611	1	1	\N
3	dslt709x1lzfs0trtqa7ig6w	Golden Retriever	golden-retriever	2026-04-15 16:57:06.33	2026-04-15 17:12:54.125	\N	1	1	\N
10	dslt709x1lzfs0trtqa7ig6w	Golden Retriever	golden-retriever	2026-04-15 16:57:06.33	2026-04-15 17:12:54.125	2026-04-15 17:12:54.138	1	1	\N
11	yhbgpptz0p264mt4ehogl0ce	German Shepherd	german-shepherd	2026-04-15 17:14:32.762	2026-04-15 17:14:32.762	\N	1	1	\N
12	yhbgpptz0p264mt4ehogl0ce	German Shepherd	german-shepherd	2026-04-15 17:14:32.762	2026-04-15 17:14:32.762	2026-04-15 17:14:32.78	1	1	\N
13	wkd1hk7udbcg55lg5ed7dog4	Pug	pug	2026-04-15 17:14:47.361	2026-04-15 17:15:23.801	\N	1	1	\N
15	wkd1hk7udbcg55lg5ed7dog4	Pug	pug	2026-04-15 17:14:47.361	2026-04-15 17:15:23.801	2026-04-15 17:15:23.816	1	1	\N
16	bhgzifpgc8kq7lyakfpkqogp	Pomeranian	pomeranian	2026-04-15 17:16:02.609	2026-04-15 17:16:02.609	\N	1	1	\N
17	bhgzifpgc8kq7lyakfpkqogp	Pomeranian	pomeranian	2026-04-15 17:16:02.609	2026-04-15 17:16:02.609	2026-04-15 17:16:02.627	1	1	\N
18	iv011y0ae65o0dplhju61o3r	Shihtzu	shihtzu	2026-04-15 17:16:13.525	2026-04-15 17:16:13.525	\N	1	1	\N
19	iv011y0ae65o0dplhju61o3r	Shihtzu	shihtzu	2026-04-15 17:16:13.525	2026-04-15 17:16:13.525	2026-04-15 17:16:13.537	1	1	\N
20	ybr81xcaywx3dnmbx6vwlk2g	Rottweilers	rottweilers	2026-04-15 17:16:58.382	2026-04-15 17:16:58.382	\N	1	1	\N
21	ybr81xcaywx3dnmbx6vwlk2g	Rottweilers	rottweilers	2026-04-15 17:16:58.382	2026-04-15 17:16:58.382	2026-04-15 17:16:58.393	1	1	\N
22	zmn1d3xatl5z6wmv2lklanpn	Cocker Spaniel	cocker-spaniel	2026-04-15 17:17:12.933	2026-04-15 17:17:12.933	\N	1	1	\N
23	zmn1d3xatl5z6wmv2lklanpn	Cocker Spaniel	cocker-spaniel	2026-04-15 17:17:12.933	2026-04-15 17:17:12.933	2026-04-15 17:17:12.95	1	1	\N
24	h23wuef5i15ybw21suvs65wb	Siberian Husky	siberian-husky	2026-04-15 17:17:29.526	2026-04-15 17:17:29.526	\N	1	1	\N
25	h23wuef5i15ybw21suvs65wb	Siberian Husky	siberian-husky	2026-04-15 17:17:29.526	2026-04-15 17:17:29.526	2026-04-15 17:17:29.543	1	1	\N
26	e52kj2tl291yhb7xjk4ft68c	Great Dane	great-dane	2026-04-15 17:17:45.804	2026-04-15 17:17:45.804	\N	1	1	\N
27	e52kj2tl291yhb7xjk4ft68c	Great Dane	great-dane	2026-04-15 17:17:45.804	2026-04-15 17:17:45.804	2026-04-15 17:17:45.815	1	1	\N
28	j9x436bgx6n8tom9mrm81r7k	Dachshunds	dachshunds	2026-04-15 17:17:56.87	2026-04-15 17:17:56.87	\N	1	1	\N
29	j9x436bgx6n8tom9mrm81r7k	Dachshunds	dachshunds	2026-04-15 17:17:56.87	2026-04-15 17:17:56.87	2026-04-15 17:17:56.883	1	1	\N
30	bxei97r6m8sxxr18rfawhvd1	Doberman	doberman	2026-04-15 17:18:06.493	2026-04-15 17:18:06.493	\N	1	1	\N
31	bxei97r6m8sxxr18rfawhvd1	Doberman	doberman	2026-04-15 17:18:06.493	2026-04-15 17:18:06.493	2026-04-15 17:18:06.503	1	1	\N
32	w0qnnwbjzgho7tjyorxkj3dt	Poodle	poodle	2026-04-15 17:19:18.732	2026-04-15 17:19:18.732	\N	1	1	\N
33	w0qnnwbjzgho7tjyorxkj3dt	Poodle	poodle	2026-04-15 17:19:18.732	2026-04-15 17:19:18.732	2026-04-15 17:19:18.743	1	1	\N
34	zrk78asv51womtc5hcvp7dwy	Saint bernard	saint-bernard	2026-04-15 17:19:31.891	2026-04-15 17:19:31.891	\N	1	1	\N
35	zrk78asv51womtc5hcvp7dwy	Saint bernard	saint-bernard	2026-04-15 17:19:31.891	2026-04-15 17:19:31.891	2026-04-15 17:19:31.905	1	1	\N
36	j7jiri83eknv7e9ape166mh9	Chow chow	chow-chow	2026-04-15 17:20:19.458	2026-04-15 17:20:19.458	\N	1	1	\N
37	j7jiri83eknv7e9ape166mh9	Chow chow	chow-chow	2026-04-15 17:20:19.458	2026-04-15 17:20:19.458	2026-04-15 17:20:19.471	1	1	\N
38	rp5f8fqo6tpg68805r0y107i	others	others	2026-04-15 17:20:39.416	2026-04-15 17:20:39.416	\N	1	1	\N
39	rp5f8fqo6tpg68805r0y107i	others	others	2026-04-15 17:20:39.416	2026-04-15 17:20:39.416	2026-04-15 17:20:39.425	1	1	\N
40	sf2762mceur99ih5jldmp83m	French Bulldog	french-bulldog	2026-04-15 17:20:54.665	2026-04-15 17:20:54.665	\N	1	1	\N
41	sf2762mceur99ih5jldmp83m	French Bulldog	french-bulldog	2026-04-15 17:20:54.665	2026-04-15 17:20:54.665	2026-04-15 17:20:54.676	1	1	\N
42	j9s4blmm91qdx6rikphmn264	Leonberger	leonberger	2026-04-15 17:21:15.704	2026-04-15 17:21:15.704	\N	1	1	\N
43	j9s4blmm91qdx6rikphmn264	Leonberger	leonberger	2026-04-15 17:21:15.704	2026-04-15 17:21:15.704	2026-04-15 17:21:15.714	1	1	\N
44	yp36xjwpt596wkzun9x9v1y5	Persian Cat	persian-cat	2026-04-15 17:21:29.144	2026-04-15 17:21:29.144	\N	1	1	\N
45	yp36xjwpt596wkzun9x9v1y5	Persian Cat	persian-cat	2026-04-15 17:21:29.144	2026-04-15 17:21:29.144	2026-04-15 17:21:29.156	1	1	\N
46	o0qonpwf4jfc0c7t3bets254	Dogo Argentino	dogo-argentino	2026-04-15 17:21:42.275	2026-04-15 17:21:42.275	\N	1	1	\N
47	o0qonpwf4jfc0c7t3bets254	Dogo Argentino	dogo-argentino	2026-04-15 17:21:42.275	2026-04-15 17:21:42.275	2026-04-15 17:21:42.303	1	1	\N
48	vboe6kdksa25s84y8divqp6m	Cancorso	cancorso	2026-04-15 17:21:54.878	2026-04-15 17:21:54.878	\N	1	1	\N
49	vboe6kdksa25s84y8divqp6m	Cancorso	cancorso	2026-04-15 17:21:54.878	2026-04-15 17:21:54.878	2026-04-15 17:21:54.888	1	1	\N
50	jb7rz1jm27hsath4ngi7f0p1	Malties	malties	2026-04-15 17:22:14.302	2026-04-15 17:22:14.302	\N	1	1	\N
51	jb7rz1jm27hsath4ngi7f0p1	Malties	malties	2026-04-15 17:22:14.302	2026-04-15 17:22:14.302	2026-04-15 17:22:14.312	1	1	\N
52	eil01uglxsnutmg7jyj8h9av	Lhasa Apso	lhasa-apso	2026-04-15 17:22:33.971	2026-04-15 17:22:39.892	\N	1	1	\N
54	eil01uglxsnutmg7jyj8h9av	Lhasa Apso	lhasa-apso	2026-04-15 17:22:33.971	2026-04-15 17:22:39.892	2026-04-15 17:22:39.903	1	1	\N
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customers (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, email, instagram_id, address, area, city, zip, note, mobile_number, name) FROM stdin;
\.


--
-- Data for Name: customers_store_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customers_store_lnk (id, customer_id, store_id) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customet_follow_ups (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups_customer_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customet_follow_ups_customer_lnk (id, customet_follow_up_id, customer_id) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups_follow_ups_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customet_follow_ups_follow_ups_lnk (id, customet_follow_up_id, follow_up_list_id, follow_up_list_ord, customet_follow_up_ord) FROM stdin;
\.


--
-- Data for Name: customet_statuses; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customet_statuses (id, document_id, achievement, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	v84axt1f540rvu7g27hnamkz	Diamond	2026-03-26 18:23:55.683	2026-03-26 18:23:55.683	\N	1	1	\N
2	v84axt1f540rvu7g27hnamkz	Diamond	2026-03-26 18:23:55.683	2026-03-26 18:23:55.683	2026-03-26 18:23:55.705	1	1	\N
\.


--
-- Data for Name: customet_statuses_customer_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.customet_statuses_customer_lnk (id, customet_status_id, customer_id) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.files (id, document_id, name, alternative_text, caption, focal_point, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	plr7nfm8h8jg17hd7iqphi08	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	\N	1200	1345	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_27d9ecf615.jpeg", "hash": "large_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 76.95, "width": 892, "height": 1000, "sizeInBytes": 76951}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_27d9ecf615.jpeg", "hash": "small_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 23.36, "width": 446, "height": 500, "sizeInBytes": 23361}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_27d9ecf615.jpeg", "hash": "medium_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 46.85, "width": 669, "height": 750, "sizeInBytes": 46854}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_27d9ecf615.jpeg", "hash": "thumbnail_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.21, "width": 139, "height": 156, "sizeInBytes": 4210}}	daviddoe_strapi_27d9ecf615	.jpeg	image/jpeg	106.75	/uploads/daviddoe_strapi_27d9ecf615.jpeg	\N	local	\N	/	2026-02-22 10:52:19.974	2026-02-22 10:52:19.974	2026-02-22 10:52:19.974	\N	\N	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: follow_up_lists; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.follow_up_lists (id, document_id, till_sequence, customer_name, bill_amount, notes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, bill_date) FROM stdin;
\.


--
-- Data for Name: follow_up_lists_customer_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.follow_up_lists_customer_lnk (id, follow_up_list_id, customer_id, follow_up_list_ord) FROM stdin;
\.


--
-- Data for Name: follow_up_lists_store_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.follow_up_lists_store_lnk (id, follow_up_list_id, store_id, follow_up_list_ord) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	z6kx02flo7cqfu5pwa1re1pq	English (en)	en	2026-02-22 10:52:17.345	2026-02-22 10:52:17.345	2026-02-22 10:52:17.347	\N	\N	\N
\.


--
-- Data for Name: pet_types; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.pet_types (id, document_id, name, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.pets (id, document_id, name, birth_date, gender, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	k78r1xl1dlbq4a9d3uq9a56i	peta	2025-04-01	Male	2026-04-15 18:11:02.391	2026-04-15 18:12:56.792	\N	1	1	\N
6	k78r1xl1dlbq4a9d3uq9a56i	peta	2025-04-01	Male	2026-04-15 18:11:02.391	2026-04-15 18:12:56.792	2026-04-15 18:12:56.806	1	1	\N
3	si9ydholfz9gdkbowyc3tt3b	sada	2025-04-16	Male	2026-04-15 18:11:53.484	2026-04-15 18:28:34.733	\N	1	1	\N
7	si9ydholfz9gdkbowyc3tt3b	sada	2025-04-16	Male	2026-04-15 18:11:53.484	2026-04-15 18:28:34.733	2026-04-15 18:28:34.758	1	1	\N
8	v51borucukvm9q1imq582nhy	tasmiyah	2023-04-01	Male	2026-04-15 18:35:05.05	2026-04-15 18:35:05.05	\N	1	1	\N
9	v51borucukvm9q1imq582nhy	tasmiyah	2023-04-01	Male	2026-04-15 18:35:05.05	2026-04-15 18:35:05.05	2026-04-15 18:35:05.085	1	1	\N
\.


--
-- Data for Name: pets_breed_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.pets_breed_lnk (id, pet_id, breed_id) FROM stdin;
1	1	11
6	6	12
7	3	8
8	7	9
9	8	30
10	9	31
\.


--
-- Data for Name: pets_customer_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.pets_customer_lnk (id, pet_id, customer_id, pet_ord) FROM stdin;
\.


--
-- Data for Name: pets_pet_type_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.pets_pet_type_lnk (id, pet_id, pet_type_id) FROM stdin;
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.staffs (id, document_id, phone, name, email, password, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
4	c1lo1lc87rqnj50sdnfnmyaw	9865327410	ankit	ankit@gmail.com	$2a$10$ZU90.IdEsS28n.dUjok0T.sUTD9SLjk3.eAdyl2xpPiREqKXGlBXe	2026-03-06 00:04:43.571	2026-03-06 00:04:43.571	\N	1	1	\N
5	c1lo1lc87rqnj50sdnfnmyaw	9865327410	ankit	ankit@gmail.com	$2a$10$rDRtJubkCv3tPtcqdAGKWeWbJi5jptOCh8orxdV5s8MdnO5qiW73W	2026-03-06 00:04:43.571	2026-03-06 00:04:43.571	2026-03-06 00:04:43.621	1	1	\N
1	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Piyush Koshti	piyush.koshti@gmail.com	$2a$10$naJXGuYwhdNWhYzVkDMW1eQ/RgXKc2l2gwZ6eQ4ezslL906hEW0F2	2026-03-04 23:31:16.692	2026-03-21 05:46:27.658	\N	1	1	\N
11	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Piyush Koshti	piyush.koshti@gmail.com	$2a$10$5ILY5IzC3LgW7CWXsnB86eFql1QrLQ11CkIs5.X6EIXaxKERrUzAC	2026-03-04 23:31:16.692	2026-03-21 05:46:27.658	2026-03-21 05:46:27.677	1	1	\N
\.


--
-- Data for Name: staffs_store_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.staffs_store_lnk (id, staff_id, store_id) FROM stdin;
1	1	1
4	4	3
5	5	4
11	11	2
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.stores (id, document_id, location, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	x752755qfnorz24c0ggsvivh	Science City	Mery Shop	2026-02-26 00:16:32.501	2026-02-26 00:16:32.501	\N	1	1	\N
2	x752755qfnorz24c0ggsvivh	Science City	Mery Shop	2026-02-26 00:16:32.501	2026-02-26 00:16:32.501	2026-02-26 00:16:32.55	1	1	\N
3	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	\N	1	1	\N
4	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	2026-02-26 00:17:00.224	1	1	\N
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
19	baxeeu64mau07ci5y6uic61n	api::customer.customer.find	2026-02-22 11:10:29.265	2026-02-22 11:10:29.265	2026-02-22 11:10:29.268	\N	\N	\N
20	urdu9z28zlgl46kyjh36qb7h	api::customer.customer.findOne	2026-02-22 11:10:29.265	2026-02-22 11:10:29.265	2026-02-22 11:10:29.268	\N	\N	\N
21	khd412nmwzdcke8kz2c28bi8	api::customer.customer.create	2026-02-22 11:10:29.265	2026-02-22 11:10:29.265	2026-02-22 11:10:29.269	\N	\N	\N
22	wt98bb78nd3hdy46v974yjzj	api::customer.customer.update	2026-02-22 11:10:29.265	2026-02-22 11:10:29.265	2026-02-22 11:10:29.269	\N	\N	\N
23	lfpaxgunknsibie7wg46b1g3	api::customer.customer.delete	2026-02-22 11:10:29.265	2026-02-22 11:10:29.265	2026-02-22 11:10:29.269	\N	\N	\N
27	urxp5sv2lnouukvh4xwen0dl	api::staff.staff.find	2026-03-04 23:59:43.765	2026-03-04 23:59:43.765	2026-03-04 23:59:43.779	\N	\N	\N
28	oyji49c87jv0lirijp9jdkvg	api::staff.staff.findOne	2026-03-04 23:59:43.765	2026-03-04 23:59:43.765	2026-03-04 23:59:43.78	\N	\N	\N
29	empqd1lf5m97cueudd9tgnbm	api::store.store.find	2026-03-13 00:07:43.312	2026-03-13 00:07:43.312	2026-03-13 00:07:43.313	\N	\N	\N
31	x6sqgvp5qqibm3sp5ymkw2xd	api::store.store.create	2026-03-13 00:07:43.312	2026-03-13 00:07:43.312	2026-03-13 00:07:43.314	\N	\N	\N
30	dr2kapa875awo964una361tp	api::store.store.findOne	2026-03-13 00:07:43.312	2026-03-13 00:07:43.312	2026-03-13 00:07:43.314	\N	\N	\N
40	tfaun1ha5fmppijnvqdicnf9	api::follow-up-list.follow-up-list.create	2026-03-30 19:41:22.794	2026-03-30 19:41:22.794	2026-03-30 19:41:22.804	\N	\N	\N
41	ft02uc0whq5l6w7smhflyhjn	api::follow-up-list.follow-up-list.find	2026-03-30 19:41:22.794	2026-03-30 19:41:22.794	2026-03-30 19:41:22.8	\N	\N	\N
42	z3ornh58x2w2mpc997gomyd8	api::follow-up-list.follow-up-list.findOne	2026-03-30 19:41:22.794	2026-03-30 19:41:22.794	2026-03-30 19:41:22.805	\N	\N	\N
44	s9xk9a99y0g8msnhyytnw2dg	api::customet-follow-up.customet-follow-up.find	2026-03-31 18:44:54.109	2026-03-31 18:44:54.109	2026-03-31 18:44:54.11	\N	\N	\N
45	an5705rfg4dwc7rbsh6xa68x	api::customet-follow-up.customet-follow-up.create	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	\N	\N	\N
46	tledx42yzj4w68aja9z6zhq6	api::customet-follow-up.customet-follow-up.delete	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	\N	\N	\N
47	lwz8m0lb1xk21hbhb7j83jy4	api::customet-follow-up.customet-follow-up.update	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	\N	\N	\N
48	jsy7456oeaf8tvfvju6tpjp3	api::customet-follow-up.customet-follow-up.findOne	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	2026-03-31 18:44:54.11	\N	\N	\N
49	wiitp4wktvdw96xozp59qqxc	api::follow-up-list.follow-up-list.update	2026-04-06 18:34:44.087	2026-04-06 18:34:44.087	2026-04-06 18:34:44.087	\N	\N	\N
50	g4d244d6rccg02jq7kx69a1z	api::customer.customer.birthdayByDate	2026-04-15 17:37:36.406	2026-04-15 17:37:36.406	2026-04-15 17:37:36.409	\N	\N	\N
51	z0a7ot0ozyvr2nczsvioxmfn	api::breed.breed.find	2026-04-15 17:37:36.406	2026-04-15 17:37:36.406	2026-04-15 17:37:36.412	\N	\N	\N
52	lkmyk6wnscl0o71cczn4froa	api::breed.breed.create	2026-04-15 17:37:36.406	2026-04-15 17:37:36.406	2026-04-15 17:37:36.412	\N	\N	\N
53	liaogptl43d54pkm1curli4o	api::breed.breed.findOne	2026-04-15 17:37:36.406	2026-04-15 17:37:36.406	2026-04-15 17:37:36.414	\N	\N	\N
54	urs1c0n4cknqel12kj0yeg19	api::breed.breed.update	2026-04-15 17:37:36.406	2026-04-15 17:37:36.406	2026-04-15 17:37:36.414	\N	\N	\N
55	a90o5emsweaz7ec8htniecpd	api::breed.breed.delete	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	\N	\N	\N
56	vz103dl0psck51scwymnme08	api::customet-status.customet-status.find	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	\N	\N	\N
57	f93tir5u11d3yxkctxupvv68	api::customet-status.customet-status.create	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	\N	\N	\N
58	wzxp1gfd6uqiq04tq9ds62jt	api::customet-status.customet-status.update	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
59	rogzf9u4f128ns37a29y0zti	api::customet-status.customet-status.findOne	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
60	q6d0w0hlpta1ug49lxlp112i	api::follow-up-list.follow-up-list.delete	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
61	pw4ikgv4r2zyois5rcpd20aj	api::pet.pet.delete	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
62	ok7wjxxq3h6v9qh83yt9ymr8	api::customet-status.customet-status.delete	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
63	s7474y8gbr83ivhtcm3mw9l3	api::pet.pet.create	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
64	xc3g2b7u7pdb24h3k30l9bc1	api::pet.pet.find	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.7	\N	\N	\N
65	jcf4667nbjr1ql7om6rsoq1u	api::pet.pet.findOne	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.701	\N	\N	\N
66	jlzq80dwz7vifzrjg41his6u	api::pet.pet.update	2026-04-15 18:15:35.699	2026-04-15 18:15:35.699	2026-04-15 18:15:35.702	\N	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
22	22	3	5
17	20	3	5
19	19	3	5
21	21	3	5
23	23	3	5
27	27	3	6
28	28	3	6
29	29	3	7
30	31	3	7
31	30	3	7
40	41	3	9
41	42	3	9
42	40	3	9
44	44	3	10
45	45	3	10
46	46	3	10
47	47	3	11
48	48	3	11
49	49	3	12
50	50	3	13
51	53	3	13
52	52	3	13
53	54	3	14
54	51	3	14
55	55	3	15
56	56	3	15
57	58	3	15
58	60	3	16
59	63	3	16
60	66	3	16
61	57	3	16
62	59	3	16
63	65	3	16
64	62	3	16
65	61	3	16
66	64	3	17
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vexl7tsbxhbul6wcsgzihz77	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	270697f0b8070b6e11c1e5fb510f6045e28a055244bf286aa4c63883fe54592ad2eb29e7fb0f6dd2af9b3bbbccfdfc1e734d4c1cc429171d9ebae68fa6ea3013	v1:04175fd068048820ee72f3b4fa1d990d:128984bf1494fa13705ed9395f4bf184d42a6f9d3531cedf43b60c678eb88820bcf8f820b284dbaa837831bad75402b9d6a16e83af0a8a44bdad480b9e5e0e3731732113f0f49bcee6bb8abd660a85e8687e2bddfa7df784f8d2c015a9e67217673034bd77890e8c113cb3029b3dcf65c9c38c4dbd3b10c22c9396c23d1d5d975507c2d913cce960a3fcc6551153628a7d5231aeaead7638651f0dfdac1fbd861ddecd39ef3703597192c8426bc1fe06beac24bd01fbace953f134a4295821573b02671060ab7d0cf7ada87fe8a5b0e3018830aad00d5cd95fd19264cf37ca114e5e268fd33aed1678f7d9ee12ac7f7dccc1b5fe507c9cf24e2c7c205c0c5ea6:513843890c18bfe3fdd762398de5c8af	\N	\N	\N	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	\N	\N	\N
2	du8k956jtmflnwkimdxp1neb	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	ca1091a8da7c9f4c65f3566a2690aba1356fe0beefedd03e86c5dfcc4fd41abd8c291c25c56c015ad47eeb0c249601982ed0622e6d41767e5a47dfaa359c26b5	v1:1a587af3b902fdb323167a10b08ad1e5:46cd52581cf2f50fe659afb82aa1362f9946815460cc8ef8baaf035ebda5ffd218c6658b587b49b3068a274fcf22a7be426e00fb76ac1c0c059b0a8ee88e5c71109ed5e60ea2f2e63a2096dda1bed483c17efcde04da5767de7746603f678d9bfe4575f410a83a7bfa27679d4b2a2c2aa3cbb8b2ca09a289b21aa9bd9869a2fb915fbccb0a74757d2bf1e4bc7c944ecdafe7d1161f168d3c2b76dd55d6c9bc2764c2aa3097468e2549485ca5d5907b9ce51c322cd8ae1e783066669b60032b464a4f68ef14b447375ded05aa74a728ecc1c8f377448d9aefb3bd05a570f110f6c171fd12c2f36e75067c639d98e701dccc0db072760017cca7b0a2ef68db3bc1:8f66226084b82464cefd1b852bcabc95	\N	\N	\N	2026-02-22 10:52:18.938	2026-02-22 10:52:18.938	2026-02-22 10:52:18.939	\N	\N	\N
3	hu4w0irlefv6ywk5i7xihs7l	pet-shop		custom	033008267c902af428d843ca64bd8e9af1cdf9c4e6febfef67995c6cc02d31acc7542cf9126a9fac6b4d803318ac2a2659e5a5cc9a1c7c76015e8b23b53dccdb	v1:8ea1075f905b281fc5ab1062e17ec737:b8451661e386ce1adce54edf07bd0c2847192fdb6f5ff19e656f32b6f0093b2213c5cd12a00a0f7f8a5fc6cd5ea534311c681c5df45cf20dd27dd2384e398a7e77eea4a673ae44b45a1c8433c02172e7c44d4b496f57c9d1781296814312d8b7fe3da4e556c61a6f8637904d3c446ac8cd0f067d2e2aa9a1d9056d835e703bd15581678b74adb7a974806a437b2171cf3f66c79c41138d7df8be5aeb50d95c06c13cea27b460ee474278391010833386402167294bbe43ed3933ec1ca00ab22481ce2af0f7ee006de27bc0ab9cbdbc19ff1bda31e9abc1461f8653bf9c33a24753f8372c06cc22f0b55d91bc5a8213ae096972adec0878d47bfaa2a777a25772:4754e4f317be3869558e3ddbab552d06	2026-04-16 15:40:38.006	\N	\N	2026-02-22 11:10:29.251	2026-04-16 15:40:38.007	2026-02-22 11:10:29.251	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6}],[{"name":"focalPoint","size":12}],[{"name":"width","size":4},{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
8	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
3	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::breed.breed":{"kind":"collectionType","collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::breed.breed","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"breeds"}}},"apiName":"breed","globalId":"Breed","uid":"api::breed.breed","modelType":"contentType","__schema__":{"collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"breed","actions":{},"lifecycles":{}},"api::customer.customer":{"kind":"collectionType","collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"email":{"type":"email","required":false},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status","mappedBy":"customer"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customer.customer","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customers"}}},"apiName":"customer","globalId":"Customer","uid":"api::customer.customer","modelType":"contentType","__schema__":{"collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"email":{"type":"email","required":false},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status","mappedBy":"customer"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"}},"kind":"collectionType"},"modelName":"customer","actions":{},"lifecycles":{}},"api::customet-follow-up.customet-follow-up":{"kind":"collectionType","collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-follow-up.customet-follow-up","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_follow_ups"}}},"apiName":"customet-follow-up","globalId":"CustometFollowUp","uid":"api::customet-follow-up.customet-follow-up","modelType":"contentType","__schema__":{"collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"}},"kind":"collectionType"},"modelName":"customet-follow-up","actions":{},"lifecycles":{}},"api::customet-status.customet-status":{"kind":"collectionType","collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"custometStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_status"},"achievement":{"type":"enumeration","enum":["Diamond","Gold","Platinum","Silver"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-status.customet-status","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_statuses"}}},"apiName":"customet-status","globalId":"CustometStatus","uid":"api::customet-status.customet-status","modelType":"contentType","__schema__":{"collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"custometStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_status"},"achievement":{"type":"enumeration","enum":["Diamond","Gold","Platinum","Silver"]}},"kind":"collectionType"},"modelName":"customet-status","actions":{},"lifecycles":{}},"api::follow-up-list.follow-up-list":{"kind":"collectionType","collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"manyToOne","target":"api::store.store","inversedBy":"follow_up_lists"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"follow_up_lists"}}},"apiName":"follow-up-list","globalId":"FollowUpList","uid":"api::follow-up-list.follow-up-list","modelType":"contentType","__schema__":{"collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"manyToOne","target":"api::store.store","inversedBy":"follow_up_lists"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"}},"kind":"collectionType"},"modelName":"follow-up-list","actions":{},"lifecycles":{}},"api::pet.pet":{"kind":"collectionType","collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"pets"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pets"}}},"apiName":"pet","globalId":"Pet","uid":"api::pet.pet","modelType":"contentType","__schema__":{"collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"pets"}},"kind":"collectionType"},"modelName":"pet","actions":{},"lifecycles":{}},"api::pet-type.pet-type":{"kind":"collectionType","collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet-type.pet-type","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pet_types"}}},"apiName":"pet-type","globalId":"PetType","uid":"api::pet-type.pet-type","modelType":"contentType","__schema__":{"collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"pet-type","actions":{},"lifecycles":{}},"api::staff.staff":{"kind":"collectionType","collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store","inversedBy":"staff"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::staff.staff","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"staffs"}}},"apiName":"staff","globalId":"Staff","uid":"api::staff.staff","modelType":"contentType","__schema__":{"collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store","inversedBy":"staff"}},"kind":"collectionType"},"modelName":"staff","actions":{},"lifecycles":{}},"api::store.store":{"kind":"collectionType","collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff","mappedBy":"store"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"store"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::store.store","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stores"}}},"apiName":"store","globalId":"Store","uid":"api::store.store","modelType":"contentType","__schema__":{"collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff","mappedBy":"store"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"store"}},"kind":"collectionType"},"modelName":"store","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
43	type_setup_initHasRun	true	boolean	development	\N
41	ee_disabled_users	[]	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
42	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
33	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
34	core_persisted_tables	[{"name":"strapi_history_versions"}]	object	\N	\N
35	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
37	plugin_i18n_default_locale	"en"	string	\N	\N
39	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
40	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	ee_information	{"lastCheckAt":1771753343974,"license":"QVpMMlZiRWdEMEVWcC9VbDNITFV6eldzR2g1V1FscGhJU1FTemswaHgxRG9jcHJuMmxQejRyYzc4ZU1NY2x1ZnppVkRTZ29hZVY4TjhvN3Jsc1BzM0NzREtzS0llVmVWSWNmb0lRZ254cS9CSjdYb1hGS3RlMUFQRTlxVHJML2h2VzduQm51UlRHREpvUFROeVFuaTY4T3JlT2NpMlFyZEk0RGRoeFFkdTkydy9qbEZHczlUd3pIT0NkaXBESTFqV0ZtWkJnTS8rdGdtUjh2YW9iNldlaW14VnZ4a1dGMDJ6dThHTHFUY3hjUjNCZDZ4MWRWRmZkZ1drZitqL2JLWHpMeTZQTEV1TWU2SXlvNzAxc1NyYnNISHBOaWxQUTc0UHMvZDNhd011Z0JjTkN1VlE3YnlUd2xHQlpkNEZFUVFxZjZ5aFJ6TTBDZ1Nvd3VoVHAzU0d3PT0KZXlKc2FXTmxibk5sUzJWNUlqb2lObVF3WXpJeE4yUXRNelpoWVMwME9XTmpMVGhpWTJRdFpqVXlOakEyWlRBek9UVmpJaXdpZEhsd1pTSTZJbk5wYkhabGNpSXNJbWx6VkhKcFlXd2lPblJ5ZFdVc0ltVjRjR2x5WlVGMElqb3hOemN4T1RJMk1UUTNNekE0TENKelpXRjBjeUk2TVRBd01Dd2labVZoZEhWeVpYTWlPbHQ3SW01aGJXVWlPaUp6YzI4aWZTeDdJbTVoYldVaU9pSmpiWE10WVdraUxDSnZjSFJwYjI1eklqcDdJbU55WldScGRITkNZWE5sSWpveE1Dd2lZM0psWkdsMGMwMWhlRlZ6WVdkbElqb3hNSDE5TEhzaWJtRnRaU0k2SW1OdGN5MWpiMjUwWlc1MExXaHBjM1J2Y25raUxDSnZjSFJwYjI1eklqcDdJbkpsZEdWdWRHbHZia1JoZVhNaU9qTXdmWDBzZXlKdVlXMWxJam9pWTIxekxXRmtkbUZ1WTJWa0xYQnlaWFpwWlhjaWZTeDdJbTVoYldVaU9pSmpiWE10WTI5dWRHVnVkQzF5Wld4bFlYTmxjeUlzSW05d2RHbHZibk1pT25zaWJXRjRhVzExYlZKbGJHVmhjMlZ6SWpvNU9UazVPVGw5ZlYwc0ltTjFjM1J2YldWeVNXUWlPaUpCZW5GSVZXaFdObHBtZUhWbE5EZE5iU0lzSW5OMVluTmpjbWx3ZEdsdmJrbGtJam9pTVRaQ1oxZEdWa0oyYUZCQlVqVjRZbmtpTENKd2JHRnVVSEpwWTJWSlpDSTZJbWR5YjNkMGFDMXpjMjh0WTJ4cExYWXlMVlZUUkMxTmIyNTBhR3g1SW4wPQ=="}	\N	\N	\N
36	plugin_upload_metrics	{"weeklySchedule":"46 58 19 * * 3","lastWeeklyUpdate":1776283126621}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::staff.staff	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"phone","size":6},{"name":"name","size":6}],[{"name":"email","size":6},{"name":"password","size":6}],[{"name":"store","size":6}]],"list":["id","phone","name","email"]},"uid":"api::staff.staff"}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::store.store	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Location","defaultSortBy":"Location","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"staff":{"edit":{"label":"staff","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"staff","searchable":true,"sortable":true}},"follow_up_lists":{"edit":{"label":"follow_up_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_up_lists","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Location","Name","createdAt"],"edit":[[{"name":"Location","size":6},{"name":"Name","size":6}],[{"name":"staff","size":6}],[{"name":"follow_up_lists","size":6}]]},"uid":"api::store.store"}	object	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::customet-status.customet-status	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"achievement":{"edit":{"label":"achievement","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"achievement","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","customer","achievement","createdAt"],"edit":[[{"name":"customer","size":6},{"name":"achievement","size":6}]]},"uid":"api::customet-status.customet-status"}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::follow-up-list.follow-up-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tillSequence","defaultSortBy":"tillSequence","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tillSequence":{"edit":{"label":"tillSequence","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tillSequence","searchable":true,"sortable":true}},"CustomerName":{"edit":{"label":"CustomerName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CustomerName","searchable":true,"sortable":true}},"billAmount":{"edit":{"label":"billAmount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billAmount","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"Notes":{"edit":{"label":"Notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Notes","searchable":true,"sortable":true}},"customet_follow_ups":{"edit":{"label":"customet_follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_ups","searchable":false,"sortable":false}},"billDate":{"edit":{"label":"billDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billDate","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","tillSequence","CustomerName","billAmount"],"edit":[[{"name":"tillSequence","size":6},{"name":"CustomerName","size":6}],[{"name":"billAmount","size":4},{"name":"store","size":6}],[{"name":"customer","size":6}],[{"name":"Notes","size":6},{"name":"customet_follow_ups","size":6}],[{"name":"billDate","size":4}]]},"uid":"api::follow-up-list.follow-up-list"}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::customet-follow-up.customet-follow-up	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"follow_ups":{"edit":{"label":"follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_ups","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","customer","createdAt","follow_ups"],"edit":[[{"name":"customer","size":6},{"name":"follow_ups","size":6}]]},"uid":"api::customet-follow-up.customet-follow-up"}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::breed.breed	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}]]},"uid":"api::breed.breed"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::pet-type.pet-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","value","createdAt"],"edit":[[{"name":"Name","size":6},{"name":"value","size":6}]]},"uid":"api::pet-type.pet-type"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::customer.customer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortOrder":"ASC","defaultSortBy":"mobileNumber"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mobileNumber":{"edit":{"label":"mobileNumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobileNumber","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"instagramId":{"edit":{"label":"instagramId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instagramId","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"area":{"edit":{"label":"area","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"area","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"zip":{"edit":{"label":"zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"Note":{"edit":{"label":"Note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Note","searchable":true,"sortable":true}},"pets":{"edit":{"label":"pets","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"pets","searchable":false,"sortable":false}},"customet_status":{"edit":{"label":"customet_status","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_status","searchable":true,"sortable":true}},"follow_up_lists":{"edit":{"label":"follow_up_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_up_lists","searchable":false,"sortable":false}},"customet_follow_up":{"edit":{"label":"customet_follow_up","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_up","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["email","createdBy","mobileNumber","name"],"edit":[[{"name":"mobileNumber","size":4},{"name":"name","size":4},{"name":"store","size":4}],[{"name":"email","size":4},{"name":"instagramId","size":4}],[{"name":"area","size":4},{"name":"zip","size":4},{"name":"city","size":4}],[{"name":"address","size":6},{"name":"Note","size":6}],[{"name":"customet_status","size":6}],[{"name":"follow_up_lists","size":6},{"name":"customet_follow_up","size":6}],[{"name":"pets","size":6}]]},"uid":"api::customer.customer"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::pet.pet	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"birthDate":{"edit":{"label":"birthDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birthDate","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"pet_type":{"edit":{"label":"pet_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"pet_type","searchable":true,"sortable":true}},"breed":{"edit":{"label":"breed","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"breed","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","birthDate","gender"],"edit":[[{"name":"name","size":6},{"name":"birthDate","size":4}],[{"name":"gender","size":6}],[{"name":"breed","size":6},{"name":"customer","size":6}],[{"name":"pet_type","size":6}]]},"uid":"api::pet.pet"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
62	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"breeds","indexes":[{"name":"breeds_documents_idx","columns":["document_id","locale","published_at"]},{"name":"breeds_created_by_id_fk","columns":["created_by_id"]},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"breeds_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customers","indexes":[{"name":"customers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customers_created_by_id_fk","columns":["created_by_id"]},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_follow_ups","indexes":[{"name":"customet_follow_ups_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_statuses","indexes":[{"name":"customet_statuses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"achievement","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"follow_up_lists","indexes":[{"name":"follow_up_lists_documents_idx","columns":["document_id","locale","published_at"]},{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"till_sequence","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_amount","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pets","indexes":[{"name":"pets_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pets_created_by_id_fk","columns":["created_by_id"]},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pet_types","indexes":[{"name":"pet_types_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pet_types_created_by_id_fk","columns":["created_by_id"]},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pet_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"staffs","indexes":[{"name":"staffs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"staffs_created_by_id_fk","columns":["created_by_id"]},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"staffs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stores","indexes":[{"name":"stores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stores_created_by_id_fk","columns":["created_by_id"]},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_store_lnk","indexes":[{"name":"customers_store_lnk_fk","columns":["customer_id"]},{"name":"customers_store_lnk_ifk","columns":["store_id"]},{"name":"customers_store_lnk_uq","columns":["customer_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_store_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_customer_lnk","indexes":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"]},{"name":"customet_follow_ups_customer_lnk_uq","columns":["customet_follow_up_id","customer_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_follow_ups_lnk","indexes":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"]},{"name":"customet_follow_ups_follow_ups_lnk_uq","columns":["customet_follow_up_id","follow_up_list_id"],"type":"unique"},{"name":"customet_follow_ups_follow_ups_lnk_ofk","columns":["follow_up_list_ord"]},{"name":"customet_follow_ups_follow_ups_lnk_oifk","columns":["customet_follow_up_ord"]}],"foreignKeys":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_follow_up_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_statuses_customer_lnk","indexes":[{"name":"customet_statuses_customer_lnk_fk","columns":["customet_status_id"]},{"name":"customet_statuses_customer_lnk_ifk","columns":["customer_id"]},{"name":"customet_statuses_customer_lnk_uq","columns":["customet_status_id","customer_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_statuses_customer_lnk_fk","columns":["customet_status_id"],"referencedColumns":["id"],"referencedTable":"customet_statuses","onDelete":"CASCADE"},{"name":"customet_statuses_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_status_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_store_lnk","indexes":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"]},{"name":"follow_up_lists_store_lnk_uq","columns":["follow_up_list_id","store_id"],"type":"unique"},{"name":"follow_up_lists_store_lnk_oifk","columns":["follow_up_list_ord"]}],"foreignKeys":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_customer_lnk","indexes":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"]},{"name":"follow_up_lists_customer_lnk_uq","columns":["follow_up_list_id","customer_id"],"type":"unique"},{"name":"follow_up_lists_customer_lnk_oifk","columns":["follow_up_list_ord"]}],"foreignKeys":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_pet_type_lnk","indexes":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"]},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"]},{"name":"pets_pet_type_lnk_uq","columns":["pet_id","pet_type_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"],"referencedColumns":["id"],"referencedTable":"pet_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_breed_lnk","indexes":[{"name":"pets_breed_lnk_fk","columns":["pet_id"]},{"name":"pets_breed_lnk_ifk","columns":["breed_id"]},{"name":"pets_breed_lnk_uq","columns":["pet_id","breed_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_breed_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_breed_lnk_ifk","columns":["breed_id"],"referencedColumns":["id"],"referencedTable":"breeds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"breed_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_customer_lnk","indexes":[{"name":"pets_customer_lnk_fk","columns":["pet_id"]},{"name":"pets_customer_lnk_ifk","columns":["customer_id"]},{"name":"pets_customer_lnk_uq","columns":["pet_id","customer_id"],"type":"unique"},{"name":"pets_customer_lnk_oifk","columns":["pet_ord"]}],"foreignKeys":[{"name":"pets_customer_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"staffs_store_lnk","indexes":[{"name":"staffs_store_lnk_fk","columns":["staff_id"]},{"name":"staffs_store_lnk_ifk","columns":["store_id"]},{"name":"staffs_store_lnk_uq","columns":["staff_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"staffs_store_lnk_fk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"},{"name":"staffs_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-04-16 16:08:27.596	d781cb47533bc994fa572a96fd0d9307d1b6f7468b747566572ee477c117bb5b
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
1	api::customer.customer	qhanzp1pk6nfcbvj5o781y13	\N	published	{"id": 1, "zip": 145263, "area": "Et quia officia dolo", "city": "Quod maxime nisi fac", "name": "Edan Shepard", "email": "nutaxyr@mailinator.com", "state": "Tempore ex praesent", "locale": null, "address": "Ex quis est quia lor", "country": "In odit repudiandae ", "documentId": "qhanzp1pk6nfcbvj5o781y13", "instagramId": "Earum facere natus e", "mobileNumber": "7894561230"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 11:06:57.138	1
2	api::customer.customer	qhanzp1pk6nfcbvj5o781y13	\N	published	{"id": 1, "zip": 145263, "area": "Et quia officia dolo", "city": "Quod maxime nisi fac", "name": "Edan Shepard", "email": "nutaxyr@mailinator.com", "state": "Tempore ex praesent", "locale": null, "address": "Ex quis est quia lor", "country": "In odit repudiandae ", "documentId": "qhanzp1pk6nfcbvj5o781y13", "instagramId": "Earum facere natus e", "mobileNumber": "7894561230"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 11:06:57.147	1
3	api::customer.customer	k15brvg7w906fj84vcspu896	\N	published	{"id": 3, "zip": 145267, "area": "Aliquid ut minima ci", "city": "Facilis labore aliqu", "name": "Ariana Bean", "email": "fafano@mailinator.com", "state": "Vel sequi ut exceptu", "locale": null, "address": "Cumque quae est ut i", "country": "Vero ut cillum volup", "documentId": "k15brvg7w906fj84vcspu896", "instagramId": "Qui laudantium ex c", "mobileNumber": "123456789"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 11:07:25.78	1
4	api::customer.customer	k15brvg7w906fj84vcspu896	\N	published	{"id": 3, "zip": 145267, "area": "Aliquid ut minima ci", "city": "Facilis labore aliqu", "name": "Ariana Bean", "email": "fafano@mailinator.com", "state": "Vel sequi ut exceptu", "locale": null, "address": "Cumque quae est ut i", "country": "Vero ut cillum volup", "documentId": "k15brvg7w906fj84vcspu896", "instagramId": "Qui laudantium ex c", "mobileNumber": "123456789"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 11:07:25.782	1
5	api::customer.customer	tw7j87eoi50ota5sdqag925g	\N	published	{"id": 5, "zip": 380022, "area": "kankariya", "city": "Ahmedabad", "name": "piyush", "email": "piyush@gmail.com", "state": "Gujarat", "locale": null, "address": "kankariyya", "country": "India", "documentId": "tw7j87eoi50ota5sdqag925g", "instagramId": "piyush.koshti", "mobileNumber": "6353206589"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 12:05:16.904	1
6	api::customer.customer	tw7j87eoi50ota5sdqag925g	\N	published	{"id": 5, "zip": 380022, "area": "kankariya", "city": "Ahmedabad", "name": "piyush", "email": "piyush@gmail.com", "state": "Gujarat", "locale": null, "address": "kankariyya", "country": "India", "documentId": "tw7j87eoi50ota5sdqag925g", "instagramId": "piyush.koshti", "mobileNumber": "6353206589"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 12:05:16.902	1
7	api::customer.customer	tw7j87eoi50ota5sdqag925g	\N	published	{"id": 5, "zip": 380022, "area": "kankariya", "city": "Ahmedabad", "name": "piyush abc", "email": "piyush@gmail.com", "state": "Gujarat", "locale": null, "address": "kankariyya", "country": "India", "documentId": "tw7j87eoi50ota5sdqag925g", "instagramId": "piyush.koshti", "mobileNumber": "6353206589"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 12:06:49.444	1
8	api::customer.customer	tw7j87eoi50ota5sdqag925g	\N	published	{"id": 5, "zip": 380022, "area": "kankariya", "city": "Ahmedabad", "name": "piyush abc", "email": "piyush@gmail.com", "state": "Gujarat", "locale": null, "address": "kankariyya", "country": "India", "documentId": "tw7j87eoi50ota5sdqag925g", "instagramId": "piyush.koshti", "mobileNumber": "6353206589"}	{"zip": {"type": "integer"}, "area": {"type": "string"}, "city": {"type": "string"}, "name": {"type": "string"}, "email": {"type": "email"}, "state": {"type": "string"}, "locale": {"type": "string", "private": true, "visible": false, "writable": true, "configurable": false}, "address": {"type": "text"}, "country": {"type": "string"}, "instagramId": {"type": "string"}, "mobileNumber": {"type": "biginteger", "required": true}, "localizations": {"type": "relation", "target": "api::customer.customer", "private": true, "visible": false, "relation": "oneToMany", "writable": false, "joinColumn": {"name": "document_id", "referencedTable": "customers", "referencedColumn": "document_id"}, "configurable": false, "unstable_virtual": true}}	2026-02-22 12:06:49.465	1
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-02-22 10:52:12.253
2	5.0.0-02-created-document-id	2026-02-22 10:52:12.337
3	5.0.0-03-created-locale	2026-02-22 10:52:12.415
4	5.0.0-04-created-published-at	2026-02-22 10:52:12.494
5	5.0.0-05-drop-slug-fields-index	2026-02-22 10:52:12.568
6	5.0.0-06-add-document-id-indexes	2026-02-22 10:52:12.65
7	core::5.0.0-discard-drafts	2026-02-22 10:52:12.725
8	content-releases::5.0.0-add-entry-document-id-to-release-actions	2026-02-22 10:52:12.728
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
84	p5ogybucf5uuwvfi2pqqvzaa	1	3dbd77aeb1da65933af2ca17fe5133bd	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-09 22:37:45.539	2026-05-09 19:55:10.169	active	session	2026-04-09 20:37:45.54	2026-04-09 20:37:45.54	2026-04-09 20:37:45.541	\N	\N	\N
86	i6a5h4pd1e4krkd00iye92o5	1	36befec82492e777564e8a6ca3100cbc	f63c4daad2beae62797623f44ee67e1d	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-14 19:33:19.007	2026-05-14 17:33:19.007	rotated	session	2026-04-14 17:33:19.007	2026-04-14 19:01:38.835	2026-04-14 17:33:19.009	\N	\N	\N
88	ozv5rra1gsyty56dpzhrdv5m	1	289049fa398487437b0720bfd1ad861c	59be283fe4354f93511e4faa9fba77e4	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 17:42:59.908	2026-05-15 15:42:59.908	rotated	session	2026-04-15 15:42:59.908	2026-04-15 16:13:19.725	2026-04-15 15:42:59.908	\N	\N	\N
90	kjgfom0spm28dicw4k7ojuhm	1	8c2044a2fae12adac6e3fdbd670b0123	08a0435e45f873c734e85b775465f692	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 18:47:31.151	2026-05-15 15:42:59.908	rotated	session	2026-04-15 16:47:31.151	2026-04-15 17:17:45.601	2026-04-15 16:47:31.156	\N	\N	\N
92	xtqwj5qo7il41kxjh96xz76y	1	5dac7c258dbef0fc0af8301909ed82ed	7c53c0c85ac2318f22a9834d6ef459a0	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 19:51:08.772	2026-05-15 15:42:59.908	rotated	session	2026-04-15 17:51:08.772	2026-04-15 18:27:15.9	2026-04-15 17:51:08.772	\N	\N	\N
94	a9fsnld1lvn23exlsd2tptim	1	1b3eeefe93c8ee2c32454e48b19a108b	f6976a77dfb98bded5f1f37504aedd43	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 17:46:48.469	2026-05-16 15:46:48.469	rotated	session	2026-04-16 15:46:48.469	2026-04-16 16:31:33.76	2026-04-16 15:46:48.473	\N	\N	\N
25	f7sd0drpsnn0egxcn4j9c9s0	2	2519ccf383685ac1763e2050881e21c9	\N	cb873acd-1a97-49f6-b9ce-3428f042ed93	admin	2026-03-18 23:06:44.445	2026-04-17 21:06:44.445	active	session	2026-03-18 21:06:44.445	2026-03-18 21:06:44.445	2026-03-18 21:06:44.445	\N	\N	\N
83	x967g7x0ux0bkz3kpnl6kxzv	1	07e29c05578e39a921a47214c3c568b0	3dbd77aeb1da65933af2ca17fe5133bd	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-09 21:55:10.169	2026-05-09 19:55:10.169	rotated	session	2026-04-09 19:55:10.169	2026-04-09 20:37:45.546	2026-04-09 19:55:10.169	\N	\N	\N
85	och2686imhbilrfq5jz5j0j4	1	aa6c2e5538e0842e37f95c4420b8a45a	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-12 16:11:11.323	2026-05-12 14:11:11.323	active	session	2026-04-12 14:11:11.323	2026-04-12 14:11:11.323	2026-04-12 14:11:11.326	\N	\N	\N
87	zvjn647gsxlg6m21hegpkday	1	f63c4daad2beae62797623f44ee67e1d	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-14 21:01:38.83	2026-05-14 17:33:19.007	active	session	2026-04-14 19:01:38.83	2026-04-14 19:01:38.83	2026-04-14 19:01:38.831	\N	\N	\N
89	mu65a8uwk95toigrf0131ev3	1	59be283fe4354f93511e4faa9fba77e4	8c2044a2fae12adac6e3fdbd670b0123	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 18:13:19.704	2026-05-15 15:42:59.908	rotated	session	2026-04-15 16:13:19.705	2026-04-15 16:47:31.171	2026-04-15 16:13:19.711	\N	\N	\N
91	nc2kmlx08s3htpdjpn6f98ac	1	08a0435e45f873c734e85b775465f692	5dac7c258dbef0fc0af8301909ed82ed	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 19:17:45.595	2026-05-15 15:42:59.908	rotated	session	2026-04-15 17:17:45.595	2026-04-15 17:51:08.778	2026-04-15 17:17:45.596	\N	\N	\N
93	ec4koyl2o3fg2m56kpvdb2r9	1	7c53c0c85ac2318f22a9834d6ef459a0	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 20:27:15.895	2026-05-15 15:42:59.908	active	session	2026-04-15 18:27:15.895	2026-04-15 18:27:15.895	2026-04-15 18:27:15.895	\N	\N	\N
96	rpsgdboqyf8rh63qniipvi52	1	df9a4826c6614f2f7cd4626d6e0b3e36	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 18:31:34	2026-05-16 15:46:48.469	active	session	2026-04-16 16:31:34	2026-04-16 16:31:34	2026-04-16 16:31:34.001	\N	\N	\N
95	keso9jckldkupbsxkj93wes0	1	f6976a77dfb98bded5f1f37504aedd43	df9a4826c6614f2f7cd4626d6e0b3e36	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 18:31:33.736	2026-05-16 15:46:48.469	rotated	session	2026-04-16 16:31:33.736	2026-04-16 16:31:34.006	2026-04-16 16:31:33.741	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hy3xiucbn4nzmn0fgq2fdaql	plugin::users-permissions.auth.logout	2026-02-22 10:52:17.428	2026-02-22 10:52:17.428	2026-02-22 10:52:17.428	\N	\N	\N
2	n16gmi9boeg4qn26jq4msh02	plugin::users-permissions.user.me	2026-02-22 10:52:17.428	2026-02-22 10:52:17.428	2026-02-22 10:52:17.429	\N	\N	\N
3	udgn303ezmmgpuvyi0348sln	plugin::users-permissions.auth.changePassword	2026-02-22 10:52:17.428	2026-02-22 10:52:17.428	2026-02-22 10:52:17.429	\N	\N	\N
4	v2diuib1ht2156ckrh0h5qwp	plugin::users-permissions.auth.callback	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.456	\N	\N	\N
5	c2y6fph23vy1boj2yd8awkke	plugin::users-permissions.auth.connect	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.456	\N	\N	\N
6	pevwuaboko0ibzdp8sxegn8x	plugin::users-permissions.auth.forgotPassword	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.456	\N	\N	\N
7	js5xqoeg8law54bota47lg2i	plugin::users-permissions.auth.resetPassword	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.456	\N	\N	\N
8	mlj5rtz3997yo3kjv2w8q6eo	plugin::users-permissions.auth.register	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.456	\N	\N	\N
10	be6jyzxeowdq4gn2zmvjn7sv	plugin::users-permissions.auth.sendEmailConfirmation	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.457	\N	\N	\N
9	xh7mcpi2uw5nu08nfpzxeulv	plugin::users-permissions.auth.emailConfirmation	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.457	\N	\N	\N
11	w3gxyi5f78tnv9dg84vzbwvk	plugin::users-permissions.auth.refresh	2026-02-22 10:52:17.455	2026-02-22 10:52:17.455	2026-02-22 10:52:17.457	\N	\N	\N
27	lsk75qwqs1em274n1jtdcdx7	api::customer.customer.findOne	2026-03-21 07:39:38.026	2026-03-21 07:39:38.026	2026-03-21 07:39:38.027	\N	\N	\N
26	rd9s51y95b62il04gadyr3kq	api::customer.customer.find	2026-03-21 07:39:38.026	2026-03-21 07:39:38.026	2026-03-21 07:39:38.026	\N	\N	\N
28	qubiia7w436wttwbadn3noti	api::customer.customer.create	2026-03-21 07:39:38.026	2026-03-21 07:39:38.026	2026-03-21 07:39:38.027	\N	\N	\N
29	gz96ykkv95gsflp4caslubw2	api::staff.staff.find	2026-03-21 07:46:17.658	2026-03-21 07:46:17.658	2026-03-21 07:46:17.659	\N	\N	\N
30	azallo7k1hnqh0kal4ur2jwl	api::staff.staff.findOne	2026-03-21 07:46:17.658	2026-03-21 07:46:17.658	2026-03-21 07:46:17.659	\N	\N	\N
31	jmxy1tk9ncm4uvdwf7tz95sv	api::customer.customer.find	2026-03-21 08:42:47.207	2026-03-21 08:42:47.207	2026-03-21 08:42:47.208	\N	\N	\N
32	mpqa9kjfurrl45h6owcdvu3x	api::customer.customer.findOne	2026-03-21 08:42:47.207	2026-03-21 08:42:47.207	2026-03-21 08:42:47.208	\N	\N	\N
33	cxcd2jeu5plgmhu9r4ruje6w	api::customer.customer.create	2026-03-21 08:42:47.207	2026-03-21 08:42:47.207	2026-03-21 08:42:47.208	\N	\N	\N
34	cb5hj1vmm0kipyl7x5xfs2zv	plugin::content-type-builder.components.getComponents	2026-03-21 09:10:33.929	2026-03-21 09:10:33.929	2026-03-21 09:10:33.929	\N	\N	\N
35	wv1q0dcjz80gbzuc6629munz	api::breed.breed.find	2026-04-15 17:51:22.314	2026-04-15 17:51:22.314	2026-04-15 17:51:22.315	\N	\N	\N
36	myemr67lqyz9fnlny4mc4lxj	api::breed.breed.create	2026-04-15 17:51:22.314	2026-04-15 17:51:22.314	2026-04-15 17:51:22.315	\N	\N	\N
37	gfet6qc467ot4jsz29dxy0wj	api::breed.breed.findOne	2026-04-15 17:51:22.314	2026-04-15 17:51:22.314	2026-04-15 17:51:22.315	\N	\N	\N
38	llvxg1uivcev3huelumn0u49	api::breed.breed.delete	2026-04-15 17:51:22.314	2026-04-15 17:51:22.314	2026-04-15 17:51:22.315	\N	\N	\N
39	t6xch51hgkdqkxy7chek9pqz	api::breed.breed.update	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	\N	\N	\N
40	sap5hrbeji4n6br09bob0gih	api::customer.customer.birthdayByDate	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	\N	\N	\N
41	ccg1h74pfz0vroltbninoemx	api::pet.pet.find	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	\N	\N	\N
42	whh6mi04f4pv39t4ry6wyzp9	api::pet.pet.findOne	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.138	\N	\N	\N
43	xcp1wl3eqtrx188w66f1fpbl	api::pet.pet.create	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.138	\N	\N	\N
44	ics4g7hqts2e7j2dcio0rnlh	api::pet.pet.update	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.138	\N	\N	\N
45	cpphh3r9exr9866ry12dmjm8	api::pet.pet.delete	2026-04-15 18:15:00.137	2026-04-15 18:15:00.137	2026-04-15 18:15:00.138	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	1	1
4	4	2	1
5	5	2	1
6	6	2	1
7	7	2	1
8	8	2	1
9	10	2	2
10	9	2	2
11	11	2	2
26	28	2	3
27	27	2	3
28	26	2	3
29	29	2	4
30	30	2	4
31	32	1	2
32	31	1	2
33	33	1	2
34	34	2	5
35	35	2	6
36	36	2	6
37	37	2	6
38	38	2	7
39	39	2	8
40	41	2	8
41	40	2	9
42	42	2	9
43	44	2	9
44	45	2	9
45	43	2	9
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ffxgos932gjemyhi1l3b2kfd	Authenticated	Default role given to authenticated user.	authenticated	2026-02-22 10:52:17.407	2026-03-21 08:42:47.202	2026-02-22 10:52:17.407	\N	\N	\N
2	ox2fvqcncsu876dpwsmp5p5x	Public	Default role given to unauthenticated user.	public	2026-02-22 10:52:17.411	2026-04-15 18:15:00.131	2026-02-22 10:52:17.411	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: urban_db
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 413, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 413, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 4, true);


--
-- Name: breeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.breeds_id_seq', 54, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customers_id_seq', 7, true);


--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customers_store_lnk_id_seq', 6, true);


--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customet_follow_ups_customer_lnk_id_seq', 1, false);


--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customet_follow_ups_follow_ups_lnk_id_seq', 1, false);


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customet_follow_ups_id_seq', 1, false);


--
-- Name: customet_statuses_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customet_statuses_customer_lnk_id_seq', 7, true);


--
-- Name: customet_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.customet_statuses_id_seq', 2, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.files_id_seq', 1, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.follow_up_lists_customer_lnk_id_seq', 1, false);


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.follow_up_lists_id_seq', 1, false);


--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.follow_up_lists_store_lnk_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: pet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.pet_types_id_seq', 1, false);


--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.pets_breed_lnk_id_seq', 10, true);


--
-- Name: pets_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.pets_customer_lnk_id_seq', 9, true);


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.pets_id_seq', 9, true);


--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.pets_pet_type_lnk_id_seq', 1, false);


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.staffs_id_seq', 11, true);


--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.staffs_store_lnk_id_seq', 11, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.stores_id_seq', 4, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 66, true);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 66, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 3, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 56, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 62, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 8, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 8, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 96, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 45, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 45, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urban_db
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: breeds breeds_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: customers_store_lnk customers_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: customers_store_lnk customers_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_uq UNIQUE (customer_id, store_id);


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_uq UNIQUE (customet_follow_up_id, customer_id);


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_uq UNIQUE (customet_follow_up_id, follow_up_list_id);


--
-- Name: customet_follow_ups customet_follow_ups_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_pkey PRIMARY KEY (id);


--
-- Name: customet_statuses_customer_lnk customet_statuses_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses_customer_lnk
    ADD CONSTRAINT customet_statuses_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_statuses_customer_lnk customet_statuses_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses_customer_lnk
    ADD CONSTRAINT customet_statuses_customer_lnk_uq UNIQUE (customet_status_id, customer_id);


--
-- Name: customet_statuses customet_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_uq UNIQUE (follow_up_list_id, customer_id);


--
-- Name: follow_up_lists follow_up_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_uq UNIQUE (follow_up_list_id, store_id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: pet_types pet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_pkey PRIMARY KEY (id);


--
-- Name: pets_breed_lnk pets_breed_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_pkey PRIMARY KEY (id);


--
-- Name: pets_breed_lnk pets_breed_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_uq UNIQUE (pet_id, breed_id);


--
-- Name: pets_customer_lnk pets_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_customer_lnk
    ADD CONSTRAINT pets_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: pets_customer_lnk pets_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_customer_lnk
    ADD CONSTRAINT pets_customer_lnk_uq UNIQUE (pet_id, customer_id);


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_pkey PRIMARY KEY (id);


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_uq UNIQUE (pet_id, pet_type_id);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: staffs_store_lnk staffs_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: staffs_store_lnk staffs_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_uq UNIQUE (staff_id, store_id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: breeds_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX breeds_created_by_id_fk ON public.breeds USING btree (created_by_id);


--
-- Name: breeds_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX breeds_documents_idx ON public.breeds USING btree (document_id, locale, published_at);


--
-- Name: breeds_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX breeds_updated_by_id_fk ON public.breeds USING btree (updated_by_id);


--
-- Name: customers_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customers_created_by_id_fk ON public.customers USING btree (created_by_id);


--
-- Name: customers_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customers_documents_idx ON public.customers USING btree (document_id, locale, published_at);


--
-- Name: customers_store_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customers_store_lnk_fk ON public.customers_store_lnk USING btree (customer_id);


--
-- Name: customers_store_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customers_store_lnk_ifk ON public.customers_store_lnk USING btree (store_id);


--
-- Name: customers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customers_updated_by_id_fk ON public.customers USING btree (updated_by_id);


--
-- Name: customet_follow_ups_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_created_by_id_fk ON public.customet_follow_ups USING btree (created_by_id);


--
-- Name: customet_follow_ups_customer_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_customer_lnk_fk ON public.customet_follow_ups_customer_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_customer_lnk_ifk ON public.customet_follow_ups_customer_lnk USING btree (customer_id);


--
-- Name: customet_follow_ups_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_documents_idx ON public.customet_follow_ups USING btree (document_id, locale, published_at);


--
-- Name: customet_follow_ups_follow_ups_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_fk ON public.customet_follow_ups_follow_ups_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_follow_ups_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_ifk ON public.customet_follow_ups_follow_ups_lnk USING btree (follow_up_list_id);


--
-- Name: customet_follow_ups_follow_ups_lnk_ofk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_ofk ON public.customet_follow_ups_follow_ups_lnk USING btree (follow_up_list_ord);


--
-- Name: customet_follow_ups_follow_ups_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_oifk ON public.customet_follow_ups_follow_ups_lnk USING btree (customet_follow_up_ord);


--
-- Name: customet_follow_ups_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_follow_ups_updated_by_id_fk ON public.customet_follow_ups USING btree (updated_by_id);


--
-- Name: customet_statuses_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_statuses_created_by_id_fk ON public.customet_statuses USING btree (created_by_id);


--
-- Name: customet_statuses_customer_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_statuses_customer_lnk_fk ON public.customet_statuses_customer_lnk USING btree (customet_status_id);


--
-- Name: customet_statuses_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_statuses_customer_lnk_ifk ON public.customet_statuses_customer_lnk USING btree (customer_id);


--
-- Name: customet_statuses_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_statuses_documents_idx ON public.customet_statuses USING btree (document_id, locale, published_at);


--
-- Name: customet_statuses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX customet_statuses_updated_by_id_fk ON public.customet_statuses USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: follow_up_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_created_by_id_fk ON public.follow_up_lists USING btree (created_by_id);


--
-- Name: follow_up_lists_customer_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_customer_lnk_fk ON public.follow_up_lists_customer_lnk USING btree (follow_up_list_id);


--
-- Name: follow_up_lists_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_customer_lnk_ifk ON public.follow_up_lists_customer_lnk USING btree (customer_id);


--
-- Name: follow_up_lists_customer_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_customer_lnk_oifk ON public.follow_up_lists_customer_lnk USING btree (follow_up_list_ord);


--
-- Name: follow_up_lists_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_documents_idx ON public.follow_up_lists USING btree (document_id, locale, published_at);


--
-- Name: follow_up_lists_store_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_store_lnk_fk ON public.follow_up_lists_store_lnk USING btree (follow_up_list_id);


--
-- Name: follow_up_lists_store_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_store_lnk_ifk ON public.follow_up_lists_store_lnk USING btree (store_id);


--
-- Name: follow_up_lists_store_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_store_lnk_oifk ON public.follow_up_lists_store_lnk USING btree (follow_up_list_ord);


--
-- Name: follow_up_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX follow_up_lists_updated_by_id_fk ON public.follow_up_lists USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: pet_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pet_types_created_by_id_fk ON public.pet_types USING btree (created_by_id);


--
-- Name: pet_types_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pet_types_documents_idx ON public.pet_types USING btree (document_id, locale, published_at);


--
-- Name: pet_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pet_types_updated_by_id_fk ON public.pet_types USING btree (updated_by_id);


--
-- Name: pets_breed_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_breed_lnk_fk ON public.pets_breed_lnk USING btree (pet_id);


--
-- Name: pets_breed_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_breed_lnk_ifk ON public.pets_breed_lnk USING btree (breed_id);


--
-- Name: pets_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_created_by_id_fk ON public.pets USING btree (created_by_id);


--
-- Name: pets_customer_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_customer_lnk_fk ON public.pets_customer_lnk USING btree (pet_id);


--
-- Name: pets_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_customer_lnk_ifk ON public.pets_customer_lnk USING btree (customer_id);


--
-- Name: pets_customer_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_customer_lnk_oifk ON public.pets_customer_lnk USING btree (pet_ord);


--
-- Name: pets_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_documents_idx ON public.pets USING btree (document_id, locale, published_at);


--
-- Name: pets_pet_type_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_pet_type_lnk_fk ON public.pets_pet_type_lnk USING btree (pet_id);


--
-- Name: pets_pet_type_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_pet_type_lnk_ifk ON public.pets_pet_type_lnk USING btree (pet_type_id);


--
-- Name: pets_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX pets_updated_by_id_fk ON public.pets USING btree (updated_by_id);


--
-- Name: staffs_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX staffs_created_by_id_fk ON public.staffs USING btree (created_by_id);


--
-- Name: staffs_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX staffs_documents_idx ON public.staffs USING btree (document_id, locale, published_at);


--
-- Name: staffs_store_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX staffs_store_lnk_fk ON public.staffs_store_lnk USING btree (staff_id);


--
-- Name: staffs_store_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX staffs_store_lnk_ifk ON public.staffs_store_lnk USING btree (store_id);


--
-- Name: staffs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX staffs_updated_by_id_fk ON public.staffs USING btree (updated_by_id);


--
-- Name: stores_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX stores_created_by_id_fk ON public.stores USING btree (created_by_id);


--
-- Name: stores_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX stores_documents_idx ON public.stores USING btree (document_id, locale, published_at);


--
-- Name: stores_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX stores_updated_by_id_fk ON public.stores USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: urban_db
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: breeds breeds_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: breeds breeds_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customers customers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customers_store_lnk customers_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customers_store_lnk customers_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: customers customers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_follow_ups customet_follow_ups_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_ifk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups customet_follow_ups_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_statuses customet_statuses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_statuses_customer_lnk customet_statuses_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses_customer_lnk
    ADD CONSTRAINT customet_statuses_customer_lnk_fk FOREIGN KEY (customet_status_id) REFERENCES public.customet_statuses(id) ON DELETE CASCADE;


--
-- Name: customet_statuses_customer_lnk customet_statuses_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses_customer_lnk
    ADD CONSTRAINT customet_statuses_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customet_statuses customet_statuses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: follow_up_lists follow_up_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_fk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_fk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists follow_up_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pet_types pet_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pet_types pet_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pets_breed_lnk pets_breed_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_fk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pets_breed_lnk pets_breed_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_ifk FOREIGN KEY (breed_id) REFERENCES public.breeds(id) ON DELETE CASCADE;


--
-- Name: pets pets_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pets_customer_lnk pets_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_customer_lnk
    ADD CONSTRAINT pets_customer_lnk_fk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pets_customer_lnk pets_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_customer_lnk
    ADD CONSTRAINT pets_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_fk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_ifk FOREIGN KEY (pet_type_id) REFERENCES public.pet_types(id) ON DELETE CASCADE;


--
-- Name: pets pets_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: staffs staffs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: staffs_store_lnk staffs_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_fk FOREIGN KEY (staff_id) REFERENCES public.staffs(id) ON DELETE CASCADE;


--
-- Name: staffs_store_lnk staffs_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: staffs staffs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores stores_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores stores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: urban_db
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO urban_db;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO urban_db;


--
-- PostgreSQL database dump complete
--

\unrestrict c6MshQc1zbhBaHCwkgwikjPn9UfLkOK8lh3Tf5tKnIHl2eeJx7jt52vctVABNEA

