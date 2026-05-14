--
-- PostgreSQL database dump
--

\restrict XGsCcYbg7y2DgAtmdWoCEBJBahVQuRpYNy4bv9w7rCJP3aBKKGtp8wSNKZHyVEL

-- Dumped from database version 17.8
-- Dumped by pg_dump version 17.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO postgres;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO postgres;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas (
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


ALTER TABLE public.areas OWNER TO postgres;

--
-- Name: areas_city_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas_city_lnk (
    id integer NOT NULL,
    area_id integer,
    city_id integer
);


ALTER TABLE public.areas_city_lnk OWNER TO postgres;

--
-- Name: areas_city_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.areas_city_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.areas_city_lnk_id_seq OWNER TO postgres;

--
-- Name: areas_city_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.areas_city_lnk_id_seq OWNED BY public.areas_city_lnk.id;


--
-- Name: areas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.areas_id_seq OWNER TO postgres;

--
-- Name: areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;


--
-- Name: breeds; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.breeds OWNER TO postgres;

--
-- Name: breeds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.breeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.breeds_id_seq OWNER TO postgres;

--
-- Name: breeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.breeds_id_seq OWNED BY public.breeds.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
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


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);


ALTER TABLE public.components_shared_seos OWNER TO postgres;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_seos_id_seq OWNER TO postgres;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
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
    instagram_id character varying(255),
    address character varying(255),
    area character varying(255),
    city character varying(255),
    zip integer,
    note character varying(255),
    mobile_number character varying(255),
    name character varying(255),
    email character varying(255)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customet_status_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_customet_status_lnk (
    id integer NOT NULL,
    customer_id integer,
    customet_status_id integer
);


ALTER TABLE public.customers_customet_status_lnk OWNER TO postgres;

--
-- Name: customers_customet_status_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customet_status_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customet_status_lnk_id_seq OWNER TO postgres;

--
-- Name: customers_customet_status_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customet_status_lnk_id_seq OWNED BY public.customers_customet_status_lnk.id;


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: customers_pets_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_pets_lnk (
    id integer NOT NULL,
    customer_id integer,
    pet_id integer,
    pet_ord double precision
);


ALTER TABLE public.customers_pets_lnk OWNER TO postgres;

--
-- Name: customers_pets_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_pets_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_pets_lnk_id_seq OWNER TO postgres;

--
-- Name: customers_pets_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_pets_lnk_id_seq OWNED BY public.customers_pets_lnk.id;


--
-- Name: customers_store_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers_store_lnk (
    id integer NOT NULL,
    customer_id integer,
    store_id integer
);


ALTER TABLE public.customers_store_lnk OWNER TO postgres;

--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_store_lnk_id_seq OWNER TO postgres;

--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_store_lnk_id_seq OWNED BY public.customers_store_lnk.id;


--
-- Name: customet_follow_ups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    count integer,
    follow_up_date date,
    is_followed boolean,
    note text
);


ALTER TABLE public.customet_follow_ups OWNER TO postgres;

--
-- Name: customet_follow_ups_customer_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_customer_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    customer_id integer
);


ALTER TABLE public.customet_follow_ups_customer_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_customer_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_customer_lnk_id_seq OWNED BY public.customet_follow_ups_customer_lnk.id;


--
-- Name: customet_follow_ups_follow_ups_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_follow_ups_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    follow_up_list_id integer,
    follow_up_list_ord double precision,
    customet_follow_up_ord double precision
);


ALTER TABLE public.customet_follow_ups_follow_ups_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_follow_ups_lnk_id_seq OWNED BY public.customet_follow_ups_follow_ups_lnk.id;


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_id_seq OWNED BY public.customet_follow_ups.id;


--
-- Name: customet_follow_ups_staff_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_staff_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    staff_id integer
);


ALTER TABLE public.customet_follow_ups_staff_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_staff_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_staff_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_staff_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_staff_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_staff_lnk_id_seq OWNED BY public.customet_follow_ups_staff_lnk.id;


--
-- Name: customet_follow_ups_store_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_store_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    store_id integer
);


ALTER TABLE public.customet_follow_ups_store_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_store_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_store_lnk_id_seq OWNED BY public.customet_follow_ups_store_lnk.id;


--
-- Name: customet_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_statuses (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    name character varying(255),
    value character varying(255),
    color character varying(255),
    text_color character varying(255),
    border_color character varying(255)
);


ALTER TABLE public.customet_statuses OWNER TO postgres;

--
-- Name: customet_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_statuses_id_seq OWNER TO postgres;

--
-- Name: customet_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_statuses_id_seq OWNED BY public.customet_statuses.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO postgres;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO postgres;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO postgres;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO postgres;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: follow_up_lists; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.follow_up_lists OWNER TO postgres;

--
-- Name: follow_up_lists_customer_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow_up_lists_customer_lnk (
    id integer NOT NULL,
    follow_up_list_id integer,
    customer_id integer,
    follow_up_list_ord double precision
);


ALTER TABLE public.follow_up_lists_customer_lnk OWNER TO postgres;

--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.follow_up_lists_customer_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_customer_lnk_id_seq OWNER TO postgres;

--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.follow_up_lists_customer_lnk_id_seq OWNED BY public.follow_up_lists_customer_lnk.id;


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.follow_up_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_id_seq OWNER TO postgres;

--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.follow_up_lists_id_seq OWNED BY public.follow_up_lists.id;


--
-- Name: follow_up_lists_store_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow_up_lists_store_lnk (
    id integer NOT NULL,
    follow_up_list_id integer,
    store_id integer
);


ALTER TABLE public.follow_up_lists_store_lnk OWNER TO postgres;

--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.follow_up_lists_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_up_lists_store_lnk_id_seq OWNER TO postgres;

--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.follow_up_lists_store_lnk_id_seq OWNED BY public.follow_up_lists_store_lnk.id;


--
-- Name: general_diaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.general_diaries (
    id integer NOT NULL,
    document_id character varying(255),
    note text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.general_diaries OWNER TO postgres;

--
-- Name: general_diaries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.general_diaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.general_diaries_id_seq OWNER TO postgres;

--
-- Name: general_diaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.general_diaries_id_seq OWNED BY public.general_diaries.id;


--
-- Name: general_diaries_store_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.general_diaries_store_lnk (
    id integer NOT NULL,
    general_diary_id integer,
    store_id integer
);


ALTER TABLE public.general_diaries_store_lnk OWNER TO postgres;

--
-- Name: general_diaries_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.general_diaries_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.general_diaries_store_lnk_id_seq OWNER TO postgres;

--
-- Name: general_diaries_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.general_diaries_store_lnk_id_seq OWNED BY public.general_diaries_store_lnk.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: pet_types; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.pet_types OWNER TO postgres;

--
-- Name: pet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pet_types_id_seq OWNER TO postgres;

--
-- Name: pet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pet_types_id_seq OWNED BY public.pet_types.id;


--
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.pets OWNER TO postgres;

--
-- Name: pets_breed_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets_breed_lnk (
    id integer NOT NULL,
    pet_id integer,
    breed_id integer
);


ALTER TABLE public.pets_breed_lnk OWNER TO postgres;

--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_breed_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_breed_lnk_id_seq OWNER TO postgres;

--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_breed_lnk_id_seq OWNED BY public.pets_breed_lnk.id;


--
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_id_seq OWNER TO postgres;

--
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- Name: pets_pet_type_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets_pet_type_lnk (
    id integer NOT NULL,
    pet_id integer,
    pet_type_id integer
);


ALTER TABLE public.pets_pet_type_lnk OWNER TO postgres;

--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_pet_type_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pets_pet_type_lnk_id_seq OWNER TO postgres;

--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_pet_type_lnk_id_seq OWNED BY public.pets_pet_type_lnk.id;


--
-- Name: shopping_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopping_categories (
    id integer NOT NULL,
    document_id character varying(255),
    label character varying(255),
    value character varying(255),
    text_color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.shopping_categories OWNER TO postgres;

--
-- Name: shopping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopping_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shopping_categories_id_seq OWNER TO postgres;

--
-- Name: shopping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopping_categories_id_seq OWNED BY public.shopping_categories.id;


--
-- Name: staffs; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.staffs OWNER TO postgres;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staffs_id_seq OWNER TO postgres;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staffs_id_seq OWNED BY public.staffs.id;


--
-- Name: staffs_store_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staffs_store_lnk (
    id integer NOT NULL,
    staff_id integer,
    store_id integer
);


ALTER TABLE public.staffs_store_lnk OWNER TO postgres;

--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staffs_store_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.staffs_store_lnk_id_seq OWNER TO postgres;

--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staffs_store_lnk_id_seq OWNED BY public.staffs_store_lnk.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.stores OWNER TO postgres;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stores_id_seq OWNER TO postgres;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO postgres;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO postgres;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO postgres;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO postgres;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_history_versions OWNER TO postgres;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO postgres;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO postgres;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO postgres;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_sessions OWNER TO postgres;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO postgres;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_workflows OWNER TO postgres;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.strapi_workflows_stages OWNER TO postgres;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO postgres;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO postgres;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO postgres;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO postgres;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO postgres;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO postgres;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: working_hrs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.working_hrs (
    id integer NOT NULL,
    document_id character varying(255),
    in_time time without time zone,
    out_time time without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.working_hrs OWNER TO postgres;

--
-- Name: working_hrs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.working_hrs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.working_hrs_id_seq OWNER TO postgres;

--
-- Name: working_hrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.working_hrs_id_seq OWNED BY public.working_hrs.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: areas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);


--
-- Name: areas_city_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas_city_lnk ALTER COLUMN id SET DEFAULT nextval('public.areas_city_lnk_id_seq'::regclass);


--
-- Name: breeds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds ALTER COLUMN id SET DEFAULT nextval('public.breeds_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: customers_customet_status_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customet_status_lnk ALTER COLUMN id SET DEFAULT nextval('public.customers_customet_status_lnk_id_seq'::regclass);


--
-- Name: customers_pets_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_pets_lnk ALTER COLUMN id SET DEFAULT nextval('public.customers_pets_lnk_id_seq'::regclass);


--
-- Name: customers_store_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.customers_store_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_id_seq'::regclass);


--
-- Name: customet_follow_ups_customer_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_customer_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_follow_ups_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_follow_ups_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_staff_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_staff_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_staff_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_store_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_store_lnk_id_seq'::regclass);


--
-- Name: customet_statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_statuses ALTER COLUMN id SET DEFAULT nextval('public.customet_statuses_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: follow_up_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_id_seq'::regclass);


--
-- Name: follow_up_lists_customer_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_customer_lnk_id_seq'::regclass);


--
-- Name: follow_up_lists_store_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.follow_up_lists_store_lnk_id_seq'::regclass);


--
-- Name: general_diaries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries ALTER COLUMN id SET DEFAULT nextval('public.general_diaries_id_seq'::regclass);


--
-- Name: general_diaries_store_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.general_diaries_store_lnk_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: pet_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_types ALTER COLUMN id SET DEFAULT nextval('public.pet_types_id_seq'::regclass);


--
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- Name: pets_breed_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_breed_lnk ALTER COLUMN id SET DEFAULT nextval('public.pets_breed_lnk_id_seq'::regclass);


--
-- Name: pets_pet_type_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_pet_type_lnk ALTER COLUMN id SET DEFAULT nextval('public.pets_pet_type_lnk_id_seq'::regclass);


--
-- Name: shopping_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_categories ALTER COLUMN id SET DEFAULT nextval('public.shopping_categories_id_seq'::regclass);


--
-- Name: staffs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs ALTER COLUMN id SET DEFAULT nextval('public.staffs_id_seq'::regclass);


--
-- Name: staffs_store_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs_store_lnk ALTER COLUMN id SET DEFAULT nextval('public.staffs_store_lnk_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Name: working_hrs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.working_hrs ALTER COLUMN id SET DEFAULT nextval('public.working_hrs_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
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
253	oqksnvvhhso6h46v0xn6ertq	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-03-18 21:07:31.592	2026-03-18 21:07:31.592	2026-03-18 21:07:31.595	\N	\N	\N
257	jh822ptdcugkaztv8oqcgf95	plugin::content-manager.explorer.delete	{}	api::customer.customer	{}	[]	2026-03-18 21:07:31.846	2026-03-18 21:07:31.846	2026-03-18 21:07:31.85	\N	\N	\N
258	msit20p661cz8hdnfpp9otuo	plugin::content-manager.explorer.publish	{}	api::customer.customer	{}	[]	2026-03-18 21:07:31.885	2026-03-18 21:07:31.885	2026-03-18 21:07:31.887	\N	\N	\N
361	jbdjbrvadl3uvksmg4038xw1	plugin::content-manager.explorer.delete	{}	api::customet-follow-up.customet-follow-up	{}	[]	2026-03-31 18:22:46.188	2026-03-31 18:22:46.188	2026-03-31 18:22:46.188	\N	\N	\N
362	tyyvs135vourzopgph9e16oz	plugin::content-manager.explorer.publish	{}	api::customet-follow-up.customet-follow-up	{}	[]	2026-03-31 18:22:46.208	2026-03-31 18:22:46.208	2026-03-31 18:22:46.208	\N	\N	\N
264	galrb8x5bb3qqov6b7ohacy2	plugin::content-manager.explorer.create	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.924	2026-03-18 21:07:31.924	2026-03-18 21:07:31.924	\N	\N	\N
265	taouib6qgjq3hkjk9in33giy	plugin::content-manager.explorer.read	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.931	2026-03-18 21:07:31.931	2026-03-18 21:07:31.931	\N	\N	\N
266	ch9zu93iec7s4w5s5ik19h1b	plugin::content-manager.explorer.update	{}	api::staff.staff	{"fields": ["phone", "name", "email", "password", "store"]}	[]	2026-03-18 21:07:31.937	2026-03-18 21:07:31.937	2026-03-18 21:07:31.937	\N	\N	\N
267	ozp1ekkcks60zv6hvwvly0q7	plugin::content-manager.explorer.delete	{}	api::staff.staff	{}	[]	2026-03-18 21:07:31.946	2026-03-18 21:07:31.946	2026-03-18 21:07:31.946	\N	\N	\N
268	yzy619lm5lhkm50t6lskkq4v	plugin::content-manager.explorer.publish	{}	api::staff.staff	{}	[]	2026-03-18 21:07:31.952	2026-03-18 21:07:31.952	2026-03-18 21:07:31.952	\N	\N	\N
406	qsuodz5p4ksjh8le3c4xb1fb	plugin::content-manager.explorer.delete	{}	api::pet-type.pet-type	{}	[]	2026-04-16 15:53:20.207	2026-04-16 15:53:20.207	2026-04-16 15:53:20.211	\N	\N	\N
272	vov6dgcdvnfuasnakkhgbiqn	plugin::content-manager.explorer.delete	{}	api::store.store	{}	[]	2026-03-18 21:07:31.993	2026-03-18 21:07:31.993	2026-03-18 21:07:31.993	\N	\N	\N
273	q7flrrkkjysmujv6sxgzx4ev	plugin::content-manager.explorer.publish	{}	api::store.store	{}	[]	2026-03-18 21:07:32.002	2026-03-18 21:07:32.002	2026-03-18 21:07:32.003	\N	\N	\N
407	z26lg8fnrk9cgzhxt6ozjsec	plugin::content-manager.explorer.publish	{}	api::pet-type.pet-type	{}	[]	2026-04-16 15:53:20.336	2026-04-16 15:53:20.336	2026-04-16 15:53:20.338	\N	\N	\N
280	hvthnlca3x7ha1nxxlpj9pes	plugin::content-manager.explorer.delete	{}	api::customet-status.customet-status	{}	[]	2026-03-26 18:15:48.298	2026-03-26 18:15:48.298	2026-03-26 18:15:48.298	\N	\N	\N
281	xepkndnjvxckjkh6dv1oifrn	plugin::content-manager.explorer.publish	{}	api::customet-status.customet-status	{}	[]	2026-03-26 18:15:48.303	2026-03-26 18:15:48.303	2026-03-26 18:15:48.303	\N	\N	\N
403	uve9o2wwaqz4977ecktnspe8	plugin::content-manager.explorer.create	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.069	2026-04-16 15:53:20.069	2026-04-16 15:53:20.073	\N	\N	\N
404	est3gie8x775w7e0nkz9dfys	plugin::content-manager.explorer.read	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.122	2026-04-16 15:53:20.122	2026-04-16 15:53:20.122	\N	\N	\N
405	pf77uupeia8n9j7x4kcbp639	plugin::content-manager.explorer.update	{}	api::pet-type.pet-type	{"fields": ["Name", "value"]}	[]	2026-04-16 15:53:20.163	2026-04-16 15:53:20.163	2026-04-16 15:53:20.163	\N	\N	\N
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
401	n1kkf3tepj2mgswya9oablw9	plugin::content-manager.explorer.delete	{}	api::pet.pet	{}	[]	2026-04-15 18:09:07.566	2026-04-15 18:09:07.566	2026-04-15 18:09:07.566	\N	\N	\N
402	usa22b7dscr168yrsqh2i547	plugin::content-manager.explorer.publish	{}	api::pet.pet	{}	[]	2026-04-15 18:09:07.57	2026-04-15 18:09:07.57	2026-04-15 18:09:07.57	\N	\N	\N
414	gqdke22tfu9nt9vh8r7k2njk	plugin::content-manager.explorer.create	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed"]}	[]	2026-04-18 09:05:04.395	2026-04-18 09:05:04.395	2026-04-18 09:05:04.397	\N	\N	\N
415	exbyw13bhiw584ujv7o0kj9s	plugin::content-manager.explorer.read	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed"]}	[]	2026-04-18 09:05:04.41	2026-04-18 09:05:04.41	2026-04-18 09:05:04.41	\N	\N	\N
416	hv7mziyrvwpf612fhpznjd4z	plugin::content-manager.explorer.update	{}	api::pet.pet	{"fields": ["name", "birthDate", "gender", "pet_type", "breed"]}	[]	2026-04-18 09:05:04.414	2026-04-18 09:05:04.414	2026-04-18 09:05:04.414	\N	\N	\N
438	l3tpny0tt3k3k2h8ypban3r8	plugin::content-manager.explorer.create	{}	api::customet-status.customet-status	{"fields": ["name", "value", "color", "textColor", "borderColor"]}	[]	2026-04-18 14:37:21.281	2026-04-18 14:37:21.281	2026-04-18 14:37:21.283	\N	\N	\N
439	p10aa31kcp9jpngcnqss3m4g	plugin::content-manager.explorer.read	{}	api::customet-status.customet-status	{"fields": ["name", "value", "color", "textColor", "borderColor"]}	[]	2026-04-18 14:37:21.293	2026-04-18 14:37:21.293	2026-04-18 14:37:21.294	\N	\N	\N
440	qdmipt2hmj75gedw9u6iz91w	plugin::content-manager.explorer.update	{}	api::customet-status.customet-status	{"fields": ["name", "value", "color", "textColor", "borderColor"]}	[]	2026-04-18 14:37:21.299	2026-04-18 14:37:21.299	2026-04-18 14:37:21.299	\N	\N	\N
254	wj8euw49vvpp29x9j6as38i9	plugin::content-manager.explorer.create	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.651	2026-04-25 18:53:27.171	2026-03-18 21:07:31.657	\N	\N	\N
255	l4b7hsb63rat6b9drbp4cgl4	plugin::content-manager.explorer.read	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.709	2026-04-25 18:53:27.171	2026-03-18 21:07:31.709	\N	\N	\N
256	f039c8smdlu0zwxy77cl1aq3	plugin::content-manager.explorer.update	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "store", "instagramId", "address", "area", "city", "zip", "Note"]}	[]	2026-03-18 21:07:31.762	2026-04-25 18:53:27.171	2026-03-18 21:07:31.765	\N	\N	\N
269	xr77nc99u7dckjvuqax4ji5l	plugin::content-manager.explorer.create	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-03-18 21:07:31.965	2026-04-25 23:31:36.567	2026-03-18 21:07:31.965	\N	\N	\N
270	dpnucvyw5olk02clqqc65uwd	plugin::content-manager.explorer.read	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-03-18 21:07:31.97	2026-04-25 23:31:36.567	2026-03-18 21:07:31.97	\N	\N	\N
271	ws5w5zntksm3fsmkolyk7fee	plugin::content-manager.explorer.update	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-03-18 21:07:31.984	2026-04-25 23:31:36.567	2026-03-18 21:07:31.984	\N	\N	\N
452	vbo8t9q59rz45tl3qwspnm3g	plugin::content-manager.explorer.create	{}	api::general-diary.general-diary	{"fields": ["store", "Note"]}	[]	2026-04-23 00:43:32.072	2026-04-23 00:43:32.072	2026-04-23 00:43:32.073	\N	\N	\N
453	ympn5swxvyzqiqk0o2s3k0ie	plugin::content-manager.explorer.read	{}	api::general-diary.general-diary	{"fields": ["store", "Note"]}	[]	2026-04-23 00:43:32.104	2026-04-23 00:43:32.104	2026-04-23 00:43:32.105	\N	\N	\N
454	richn2b4423sdamo0e8ynpgz	plugin::content-manager.explorer.update	{}	api::general-diary.general-diary	{"fields": ["store", "Note"]}	[]	2026-04-23 00:43:32.11	2026-04-23 00:43:32.11	2026-04-23 00:43:32.11	\N	\N	\N
455	kqenzmqwh29dlcpio404phvi	plugin::content-manager.explorer.delete	{}	api::general-diary.general-diary	{}	[]	2026-04-23 00:43:32.114	2026-04-23 00:43:32.114	2026-04-23 00:43:32.114	\N	\N	\N
456	ljo6gqzwl93l5balcf3u7la0	plugin::content-manager.explorer.publish	{}	api::general-diary.general-diary	{}	[]	2026-04-23 00:43:32.12	2026-04-23 00:43:32.12	2026-04-23 00:43:32.12	\N	\N	\N
460	i24d0tp01rpwdufiqaof7ycd	plugin::content-manager.explorer.create	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "email", "instagramId", "address", "area", "city", "zip", "Note", "store", "pets", "follow_up_lists", "customet_follow_up", "customet_status"]}	[]	2026-04-25 18:58:56.078	2026-04-25 18:58:56.078	2026-04-25 18:58:56.081	\N	\N	\N
461	tvh323sb3xdmiyihuig152gq	plugin::content-manager.explorer.read	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "email", "instagramId", "address", "area", "city", "zip", "Note", "store", "pets", "follow_up_lists", "customet_follow_up", "customet_status"]}	[]	2026-04-25 18:58:56.094	2026-04-25 18:58:56.094	2026-04-25 18:58:56.095	\N	\N	\N
462	d3a7a3bo9ldx94d7wsfv9jnb	plugin::content-manager.explorer.update	{}	api::customer.customer	{"fields": ["mobileNumber", "name", "email", "instagramId", "address", "area", "city", "zip", "Note", "store", "pets", "follow_up_lists", "customet_follow_up", "customet_status"]}	[]	2026-04-25 18:58:56.105	2026-04-25 18:58:56.105	2026-04-25 18:58:56.105	\N	\N	\N
466	dl6g7yovyiiyt0hk5rylbtnu	plugin::content-manager.explorer.create	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-04-25 23:37:11.436	2026-04-25 23:37:11.436	2026-04-25 23:37:11.437	\N	\N	\N
467	hcfevduw6osaiok6mdscbtys	plugin::content-manager.explorer.read	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-04-25 23:37:11.451	2026-04-25 23:37:11.451	2026-04-25 23:37:11.451	\N	\N	\N
468	ns3dl8fynveh4554hoihp4tp	plugin::content-manager.explorer.update	{}	api::store.store	{"fields": ["Location", "Name"]}	[]	2026-04-25 23:37:11.456	2026-04-25 23:37:11.456	2026-04-25 23:37:11.456	\N	\N	\N
469	p9eb9ryv0rpt0nqjxdim7ua1	plugin::content-manager.explorer.create	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-04-26 01:21:23.864	2026-04-26 01:21:23.864	2026-04-26 01:21:23.867	\N	\N	\N
470	t19c8n6c8xb8orc61h9rs19h	plugin::content-manager.explorer.read	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-04-26 01:21:23.905	2026-04-26 01:21:23.905	2026-04-26 01:21:23.905	\N	\N	\N
471	ci2apgkf8owonls1eu3gx90t	plugin::content-manager.explorer.update	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-04-26 01:21:23.914	2026-04-26 01:21:23.914	2026-04-26 01:21:23.914	\N	\N	\N
472	jsyq4a70eg65felai05zggo7	plugin::content-manager.explorer.create	{}	api::working-hr.working-hr	{"fields": ["inTime", "outTime"]}	[]	2026-04-29 22:28:30.803	2026-04-29 22:28:30.803	2026-04-29 22:28:30.806	\N	\N	\N
473	frnvmkbo3ivqyl8j6d392nlw	plugin::content-manager.explorer.read	{}	api::working-hr.working-hr	{"fields": ["inTime", "outTime"]}	[]	2026-04-29 22:28:30.883	2026-04-29 22:28:30.883	2026-04-29 22:28:30.884	\N	\N	\N
474	jye1d8ah88vghco6rz3z0bib	plugin::content-manager.explorer.update	{}	api::working-hr.working-hr	{"fields": ["inTime", "outTime"]}	[]	2026-04-29 22:28:30.899	2026-04-29 22:28:30.899	2026-04-29 22:28:30.9	\N	\N	\N
475	hvvgusewsym9kyg35363suu5	plugin::content-manager.explorer.delete	{}	api::working-hr.working-hr	{}	[]	2026-04-29 22:28:30.91	2026-04-29 22:28:30.91	2026-04-29 22:28:30.911	\N	\N	\N
476	jdoov0g859cw7i9qpnal0b3s	plugin::content-manager.explorer.publish	{}	api::working-hr.working-hr	{}	[]	2026-04-29 22:28:30.923	2026-04-29 22:28:30.923	2026-04-29 22:28:30.923	\N	\N	\N
487	zx6brar2cmvp0c1ja2xqczsh	plugin::content-manager.explorer.create	{}	api::city.city	{"fields": ["label", "value"]}	[]	2026-05-01 15:16:39.736	2026-05-01 15:16:39.736	2026-05-01 15:16:39.737	\N	\N	\N
488	w8vbk47upeox42ozejyqljpm	plugin::content-manager.explorer.read	{}	api::city.city	{"fields": ["label", "value"]}	[]	2026-05-01 15:16:39.769	2026-05-01 15:16:39.769	2026-05-01 15:16:39.77	\N	\N	\N
489	yqmitxepipont3a1pfaphudz	plugin::content-manager.explorer.update	{}	api::city.city	{"fields": ["label", "value"]}	[]	2026-05-01 15:16:39.78	2026-05-01 15:16:39.78	2026-05-01 15:16:39.781	\N	\N	\N
490	c8cn55y5tiyogkleful3y09b	plugin::content-manager.explorer.delete	{}	api::city.city	{}	[]	2026-05-01 15:16:39.787	2026-05-01 15:16:39.787	2026-05-01 15:16:39.787	\N	\N	\N
491	jf1hag174oekj7aplyyos22b	plugin::content-manager.explorer.publish	{}	api::city.city	{}	[]	2026-05-01 15:16:39.793	2026-05-01 15:16:39.793	2026-05-01 15:16:39.793	\N	\N	\N
497	jzooonqfp36hphx2fmdb7alm	plugin::content-manager.explorer.create	{}	api::shopping-category.shopping-category	{"fields": ["label", "value", "textColor"]}	[]	2026-05-01 21:08:13.058	2026-05-01 21:08:13.058	2026-05-01 21:08:13.059	\N	\N	\N
498	xw5di3ywzkixjqlhkhddjhbb	plugin::content-manager.explorer.read	{}	api::shopping-category.shopping-category	{"fields": ["label", "value", "textColor"]}	[]	2026-05-01 21:08:13.091	2026-05-01 21:08:13.091	2026-05-01 21:08:13.091	\N	\N	\N
499	zocv0ws172u8f0c93dj3i3w9	plugin::content-manager.explorer.update	{}	api::shopping-category.shopping-category	{"fields": ["label", "value", "textColor"]}	[]	2026-05-01 21:08:13.096	2026-05-01 21:08:13.096	2026-05-01 21:08:13.097	\N	\N	\N
500	py4o49wydplpc74s4pxwi27f	plugin::content-manager.explorer.delete	{}	api::shopping-category.shopping-category	{}	[]	2026-05-01 21:08:13.101	2026-05-01 21:08:13.101	2026-05-01 21:08:13.102	\N	\N	\N
501	y8a3ht95p4mogqkcl3v2z71o	plugin::content-manager.explorer.publish	{}	api::shopping-category.shopping-category	{}	[]	2026-05-01 21:08:13.107	2026-05-01 21:08:13.107	2026-05-01 21:08:13.107	\N	\N	\N
505	v7701d2y15614klaindacqxd	plugin::content-manager.explorer.delete	{}	api::area.area	{}	[]	2026-05-04 22:50:44.599	2026-05-04 22:50:44.599	2026-05-04 22:50:44.6	\N	\N	\N
506	ytsexbvl54gh7gnn61ny2u70	plugin::content-manager.explorer.publish	{}	api::area.area	{}	[]	2026-05-04 22:50:44.608	2026-05-04 22:50:44.608	2026-05-04 22:50:44.609	\N	\N	\N
507	m1wrrqwx1gaszoezb8qnh055	plugin::content-manager.explorer.create	{}	api::area.area	{"fields": ["label", "value", "city"]}	[]	2026-05-04 22:52:57.979	2026-05-04 22:52:57.979	2026-05-04 22:52:57.982	\N	\N	\N
508	abizmynr7olz3t0enpzqpot1	plugin::content-manager.explorer.read	{}	api::area.area	{"fields": ["label", "value", "city"]}	[]	2026-05-04 22:52:57.999	2026-05-04 22:52:57.999	2026-05-04 22:52:58.001	\N	\N	\N
509	cvi4q8qf5247h8rrbc9afpas	plugin::content-manager.explorer.update	{}	api::area.area	{"fields": ["label", "value", "city"]}	[]	2026-05-04 22:52:58.009	2026-05-04 22:52:58.009	2026-05-04 22:52:58.009	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
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
280	280	1	150
281	281	1	151
375	375	1	199
376	376	1	200
377	377	1	201
378	378	1	202
380	380	1	204
382	382	1	206
384	384	1	208
385	385	1	209
401	401	1	216
402	402	1	217
403	403	1	218
404	404	1	219
405	405	1	220
406	406	1	221
407	407	1	222
320	320	1	175
321	321	1	176
414	414	1	223
415	415	1	224
416	416	1	225
438	438	1	234
439	439	1	235
440	440	1	236
452	452	1	240
453	453	1	241
454	454	1	242
455	455	1	243
456	456	1	244
460	460	1	245
461	461	1	246
462	462	1	247
466	466	1	248
467	467	1	249
468	468	1	250
469	469	1	251
470	470	1	252
471	471	1	253
472	472	1	254
473	473	1	255
474	474	1	256
475	475	1	257
476	476	1	258
487	487	1	259
488	488	1	260
489	489	1	261
490	490	1	262
491	491	1	263
497	497	1	264
498	498	1	265
499	499	1	266
500	500	1	267
501	501	1	268
505	505	1	272
506	506	1	273
507	507	1	274
508	508	1	275
509	509	1	276
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xombxcfzaggve8dnzoqjjive	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-02-22 10:52:17.546	2026-02-22 10:52:17.546	2026-02-22 10:52:17.546	\N	\N	\N
3	zlogskowdlilg4jr2wc8zfwe	Author	strapi-author	Authors can manage the content they have created.	2026-02-22 10:52:17.566	2026-02-22 10:52:17.566	2026-02-22 10:52:17.567	\N	\N	\N
2	gvio1319vvigtf6d0k0vsl4j	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-02-22 10:52:17.56	2026-03-18 21:07:31.334	2026-02-22 10:52:17.561	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vz1zj1wx1ta09tbpnc5m2gtm	admin	admin	\N	admin@admin.com	$2a$10$Rchl8S3mpTnVa14AYlPhsOanzgUHDnYYALd.V4rSk7FiB7isTBDfe	\N	\N	t	f	\N	2026-02-22 10:56:55.256	2026-02-22 10:56:55.256	2026-02-22 10:56:55.257	\N	\N	\N
2	r82sbu1d67queo28pcq0yku8	KOSHTI	PIYUSH	\N	urbanpet@gmail.com	$2a$10$6XV7Q.bqAYBJvN4y.M0bKui9VhtEAnmsEDohjJa2BuDmO9e2Muc2y	\N	51cc6df15e476f1ccaab3645b56be3c74b87cbc1	t	f	\N	2026-03-18 21:03:41.504	2026-03-18 21:05:04.939	2026-03-18 21:03:41.504	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
2	2	2	1	1
\.


--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas (id, document_id, label, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	oqb05v428etna3pitcf1sip3	Thaltej	thaltej	2026-05-04 22:54:10.444	2026-05-04 22:54:15.411	\N	1	1	\N
5	oqb05v428etna3pitcf1sip3	Thaltej	thaltej	2026-05-04 22:54:10.444	2026-05-04 22:54:15.411	2026-05-04 22:54:15.463	1	1	\N
6	x07yfx13vsdqg2ogvvdnrny1	Science City	science-city	2026-05-04 22:55:01.358	2026-05-04 22:55:08.644	\N	1	1	\N
8	x07yfx13vsdqg2ogvvdnrny1	Science City	science-city	2026-05-04 22:55:01.358	2026-05-04 22:55:08.644	2026-05-04 22:55:08.669	1	1	\N
9	glcv6naqrc9kjnojfyig607w	Motera	motera	2026-05-04 22:56:10.538	2026-05-04 22:56:10.538	\N	1	1	\N
10	glcv6naqrc9kjnojfyig607w	Motera	motera	2026-05-04 22:56:10.538	2026-05-04 22:56:10.538	2026-05-04 22:56:10.573	1	1	\N
11	d5a0dhoaiofupsb5uu9u69ls	GIFT City	gift-city	2026-05-04 22:57:03.027	2026-05-04 22:57:03.027	\N	1	1	\N
12	d5a0dhoaiofupsb5uu9u69ls	GIFT City	gift-city	2026-05-04 22:57:03.027	2026-05-04 22:57:03.027	2026-05-04 22:57:03.054	1	1	\N
13	aby239wvvwpt723jk9yygurp	Infocity	infocity	2026-05-04 22:57:34.911	2026-05-04 22:57:34.911	\N	1	1	\N
14	aby239wvvwpt723jk9yygurp	Infocity	infocity	2026-05-04 22:57:34.911	2026-05-04 22:57:34.911	2026-05-04 22:57:34.964	1	1	\N
1	a5mm4od53l4ky5fgjexzeel0	Ambli	ambli	2026-05-04 22:53:56.146	2026-05-05 00:39:22.08	\N	1	1	\N
15	a5mm4od53l4ky5fgjexzeel0	Ambli	ambli	2026-05-04 22:53:56.146	2026-05-05 00:39:22.08	2026-05-05 00:39:22.114	1	1	\N
\.


--
-- Data for Name: areas_city_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas_city_lnk (id, area_id, city_id) FROM stdin;
3	3	1
4	5	2
5	6	1
6	8	2
7	9	1
8	10	2
9	11	9
10	12	10
11	13	9
12	14	10
13	1	1
14	15	2
\.


--
-- Data for Name: breeds; Type: TABLE DATA; Schema: public; Owner: postgres
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
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, document_id, label, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	jfeiz4srxv3rlki7cvewopgf	Ahmedabad	ahmedabad	2026-05-01 15:17:50.215	2026-05-01 15:17:50.215	\N	1	1	\N
2	jfeiz4srxv3rlki7cvewopgf	Ahmedabad	ahmedabad	2026-05-01 15:17:50.215	2026-05-01 15:17:50.215	2026-05-01 15:17:50.235	1	1	\N
9	c8qk35mu0fcga48iyv422r8c	Gandhinagar	gandhinagar	2026-05-01 15:18:40.41	2026-05-01 15:18:40.41	\N	1	1	\N
10	c8qk35mu0fcga48iyv422r8c	Gandhinagar	gandhinagar	2026-05-01 15:18:40.41	2026-05-01 15:18:40.41	2026-05-01 15:18:40.421	1	1	\N
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, instagram_id, address, area, city, zip, note, mobile_number, name, email) FROM stdin;
1157	iml5iy3nargdtktgsr8qdy57	2026-05-14 19:06:03.178	2026-05-14 19:06:04.001	2026-05-14 19:06:04.017	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099653533	NIKITA DESAI	\N
1161	me877vimp0x35rnt23rriwxy	2026-05-14 19:05:58.81	2026-05-14 19:06:05.233	2026-05-14 19:06:05.246	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426384619	pooja mehata	\N
1047	que8ffkui0rozuiyvuofn89z	2026-05-14 19:05:37.886	2026-05-14 19:17:06.427	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6901037938	G KHIMPI-CAT	\N
1423	iewm1hits5368n9ialx26bop	2026-05-14 19:07:02.994	2026-05-14 19:07:03.534	2026-05-14 19:07:03.573	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925472679	varsha acharya	\N
1002	sjtf3jj3efbgovhxgsjv5yy2	2026-05-14 19:05:27.548	2026-05-14 19:37:35.064	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924248582	anushree	\N
1068	js5zjzgeagspk0hosc7mu2up	2026-05-14 19:05:41.571	2026-05-14 19:37:35.717	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016147656	VAMA	\N
1043	tne9ihy538rjavpp53vqiwaw	2026-05-14 19:05:36.428	2026-05-14 19:05:36.951	2026-05-14 19:05:36.968	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537752510	shilp roy	\N
1050	rolq763h9cjtbzpihwhj4g06	2026-05-14 19:05:38.428	2026-05-14 19:17:09.088	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825884867	hina shah	\N
1092	rysgvk4mrmlz9gtjk84j9gqh	2026-05-14 19:05:47.374	2026-05-14 19:17:09.774	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874966964	yash oberoi	\N
1796	rysgvk4mrmlz9gtjk84j9gqh	2026-05-14 19:05:47.374	2026-05-14 19:11:03.409	2026-05-14 19:11:03.432	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874966964	yash oberoi	\N
1023	pukbyr6dx80esb5vbymf69o3	2026-05-14 19:05:32.598	2026-05-14 19:17:09.21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904099897	MAHESH HIRAGAR	\N
1008	h4fqhvmtdqznjaxcgpt3vbl6	2026-05-14 19:05:29.281	2026-05-14 19:17:06.307	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8469033477	VILAKSHI MODI	\N
1004	sjtf3jj3efbgovhxgsjv5yy2	2026-05-14 19:05:27.548	2026-05-14 19:05:28.232	2026-05-14 19:05:28.258	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924248582	anushree	\N
1429	eax41brxew632z4gtyd6wwai	2026-05-14 19:07:04.441	2026-05-14 19:07:04.981	2026-05-14 19:07:05.005	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
1017	ogq94mq6z764jiwfzsvp7rtv	2026-05-14 19:05:31.393	2026-05-14 19:37:35.235	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824023455	APURVA BHAI	\N
1007	nlz8ky04li0ocfdoypadplhx	2026-05-14 19:05:28.504	2026-05-14 19:05:29.011	2026-05-14 19:05:29.041	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428017371	manthan chauhan	\N
1026	zxe53l4owm05ejs4a9nhkcvo	2026-05-14 19:05:33.137	2026-05-14 19:37:35.306	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427124401	RAJAN PANDYA	\N
1010	h4fqhvmtdqznjaxcgpt3vbl6	2026-05-14 19:05:29.281	2026-05-14 19:05:29.985	2026-05-14 19:05:29.997	\N	\N	\N	\N	\N	\N	\N	\N	\N	8469033477	VILAKSHI MODI	\N
1433	dcrr8520rgpgjrxanub6xjjw	2026-05-14 19:06:12.036	2026-05-14 19:07:06.43	2026-05-14 19:07:06.445	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898100038	JINAY	\N
1098	xj8qcrrt8zzh46ze0w0y8wlu	2026-05-14 19:05:49.093	2026-05-14 19:37:35.826	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
1807	jos9wbr5styepcsud29u1x20	2026-05-14 19:11:06.458	2026-05-14 19:17:06.078	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898028962	DOGDOM TRUST	\N
1799	ojgtltxvv3kjf44zkk6r0fa5	2026-05-14 19:11:03.64	2026-05-14 19:11:04.217	2026-05-14 19:11:04.245	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690644411	amee	\N
1678	o99pwtt8zhikq3bes3zw017r	2026-05-14 19:10:33.432	2026-05-14 19:17:09.312	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924454194	jagdish bhai	\N
1184	l1tvgiyuk4l3tmt5zua5twb1	2026-05-14 19:06:10.29	2026-05-14 19:17:06.11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
1193	dcrr8520rgpgjrxanub6xjjw	2026-05-14 19:06:12.036	2026-05-14 19:37:36.76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898100038	JINAY	\N
1005	nlz8ky04li0ocfdoypadplhx	2026-05-14 19:05:28.504	2026-05-14 19:17:06.292	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428017371	manthan chauhan	\N
1019	ogq94mq6z764jiwfzsvp7rtv	2026-05-14 19:05:31.393	2026-05-14 19:05:31.788	2026-05-14 19:05:31.817	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824023455	APURVA BHAI	\N
1038	chjes04qabkh5rsx16p2p1jv	2026-05-14 19:05:35.754	2026-05-14 19:17:06.381	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200861365	SANI Vaghela	\N
1041	tne9ihy538rjavpp53vqiwaw	2026-05-14 19:05:36.428	2026-05-14 19:17:06.396	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537752510	shilp roy	\N
1044	ozocjyc2pbd2v6mt64m0xy47	2026-05-14 19:05:37.144	2026-05-14 19:17:06.411	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
1056	zsidzxl0ifnq1wfr7fkiot9l	2026-05-14 19:05:39.479	2026-05-14 19:17:06.454	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320082452	KAVYA	\N
1032	otdk5s5gikebss9feaibocqg	2026-05-14 19:05:34.364	2026-05-14 19:37:35.419	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825300706	Surekha Pillai	\N
1062	v6czsxrf8318pdimirw23hed	2026-05-14 19:05:40.503	2026-05-14 19:17:06.481	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662474255	prabhu bhai	\N
1028	zxe53l4owm05ejs4a9nhkcvo	2026-05-14 19:05:33.137	2026-05-14 19:05:33.521	2026-05-14 19:05:33.537	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427124401	RAJAN PANDYA	\N
1059	l1m2n6bmr2zyjvi1l14ry5zu	2026-05-14 19:05:40.022	2026-05-14 19:37:35.524	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173168681	ravina madan	\N
1065	ilgajbve1o3s7lj983mcica2	2026-05-14 19:05:41.071	2026-05-14 19:37:35.636	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779044496	RUSHIKESH BHAI	\N
1031	ipt9n1ip246vy9ygsd0r1ab6	2026-05-14 19:05:33.756	2026-05-14 19:05:34.205	2026-05-14 19:05:34.221	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428219652	DINA BEN	\N
1071	enr1mas1brt2x7ca7dqg18jk	2026-05-14 19:05:42.069	2026-05-14 19:17:06.525	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898877517	kamlesh patel	\N
1074	api0qvm3wsdpfz7zzhogrw9f	2026-05-14 19:05:42.674	2026-05-14 19:17:06.538	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
1034	otdk5s5gikebss9feaibocqg	2026-05-14 19:05:34.364	2026-05-14 19:05:34.87	2026-05-14 19:05:34.889	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825300706	Surekha Pillai	\N
1077	ls19fjcw4pt1uz5j38eq8akl	2026-05-14 19:05:43.221	2026-05-14 19:17:06.551	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9509464764	naveen kumar	\N
1080	taxczgqs8lema4vba4mua9pn	2026-05-14 19:05:43.966	2026-05-14 19:17:06.565	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974982884	himmatsingh	\N
1083	nqmbl1nrc534we5v5x7ue6w8	2026-05-14 19:05:44.885	2026-05-14 19:17:06.58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510980651	CHETANBHAI	\N
1086	j7jkvxvl6m0me61mo6f8y6tm	2026-05-14 19:05:45.854	2026-05-14 19:17:06.594	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879552785	SUHANI MAM	\N
1089	n1sylvy46jgkmo344mn3ei4j	2026-05-14 19:05:46.644	2026-05-14 19:17:06.608	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
1040	chjes04qabkh5rsx16p2p1jv	2026-05-14 19:05:35.754	2026-05-14 19:05:36.252	2026-05-14 19:05:36.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200861365	SANI Vaghela	\N
1035	dtucnjeseu3o1cc0j85h9ess	2026-05-14 19:05:35.06	2026-05-14 19:17:07.111	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
1020	bk5vytq9wgliv7qo2ifd25ht	2026-05-14 19:05:32.03	2026-05-14 19:17:07.295	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724919595	deval	\N
1046	ozocjyc2pbd2v6mt64m0xy47	2026-05-14 19:05:37.144	2026-05-14 19:05:37.647	2026-05-14 19:05:37.669	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
1367	ci299mr43xcfmm67jvb1w7fb	2026-05-14 19:06:52.562	2026-05-14 19:17:07.551	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238077276	rajvee	\N
1049	que8ffkui0rozuiyvuofn89z	2026-05-14 19:05:37.886	2026-05-14 19:05:38.288	2026-05-14 19:05:38.304	\N	\N	\N	\N	\N	\N	\N	\N	\N	6901037938	G KHIMPI-CAT	\N
1095	inm02jec2azm6nrzli3ly70y	2026-05-14 19:05:48.233	2026-05-14 19:17:06.625	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
1029	ipt9n1ip246vy9ygsd0r1ab6	2026-05-14 19:05:33.756	2026-05-14 19:17:06.351	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428219652	DINA BEN	\N
1055	jdb7pyghy5hmrcr4vqe1lqjl	2026-05-14 19:05:38.894	2026-05-14 19:05:39.279	2026-05-14 19:05:39.301	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779005950	ARJUN HARIBHAI PARMAR	\N
1058	zsidzxl0ifnq1wfr7fkiot9l	2026-05-14 19:05:39.479	2026-05-14 19:05:39.874	2026-05-14 19:05:39.889	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320082452	KAVYA	\N
1061	l1m2n6bmr2zyjvi1l14ry5zu	2026-05-14 19:05:40.022	2026-05-14 19:05:40.358	2026-05-14 19:05:40.371	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173168681	ravina madan	\N
1064	v6czsxrf8318pdimirw23hed	2026-05-14 19:05:40.503	2026-05-14 19:05:40.875	2026-05-14 19:05:40.895	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662474255	prabhu bhai	\N
1067	ilgajbve1o3s7lj983mcica2	2026-05-14 19:05:41.071	2026-05-14 19:05:41.411	2026-05-14 19:05:41.424	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779044496	RUSHIKESH BHAI	\N
1070	js5zjzgeagspk0hosc7mu2up	2026-05-14 19:05:41.571	2026-05-14 19:05:41.922	2026-05-14 19:05:41.934	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016147656	VAMA	\N
1073	enr1mas1brt2x7ca7dqg18jk	2026-05-14 19:05:42.069	2026-05-14 19:05:42.486	2026-05-14 19:05:42.5	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898877517	kamlesh patel	\N
1076	api0qvm3wsdpfz7zzhogrw9f	2026-05-14 19:05:42.674	2026-05-14 19:05:43.071	2026-05-14 19:05:43.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
1079	ls19fjcw4pt1uz5j38eq8akl	2026-05-14 19:05:43.221	2026-05-14 19:05:43.692	2026-05-14 19:05:43.717	\N	\N	\N	\N	\N	\N	\N	\N	\N	9509464764	naveen kumar	\N
1082	taxczgqs8lema4vba4mua9pn	2026-05-14 19:05:43.966	2026-05-14 19:05:44.68	2026-05-14 19:05:44.7	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974982884	himmatsingh	\N
1085	nqmbl1nrc534we5v5x7ue6w8	2026-05-14 19:05:44.885	2026-05-14 19:05:45.568	2026-05-14 19:05:45.603	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510980651	CHETANBHAI	\N
1088	j7jkvxvl6m0me61mo6f8y6tm	2026-05-14 19:05:45.854	2026-05-14 19:05:46.474	2026-05-14 19:05:46.49	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879552785	SUHANI MAM	\N
1091	n1sylvy46jgkmo344mn3ei4j	2026-05-14 19:05:46.644	2026-05-14 19:05:47.092	2026-05-14 19:05:47.118	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
1097	inm02jec2azm6nrzli3ly70y	2026-05-14 19:05:48.233	2026-05-14 19:05:48.871	2026-05-14 19:05:48.893	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
1100	xj8qcrrt8zzh46ze0w0y8wlu	2026-05-14 19:05:49.093	2026-05-14 19:05:49.784	2026-05-14 19:05:49.81	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
1103	u5l6t6rj6025yaglgz0qvd8a	2026-05-14 19:05:50.108	2026-05-14 19:05:50.847	2026-05-14 19:05:50.879	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925206149	Vandana Mohta	\N
1131	wz8gmi1k8by8r2ixmy8riust	2026-05-14 19:05:58.323	2026-05-14 19:17:09.927	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825061176	mayur bhai	\N
1797	ojgtltxvv3kjf44zkk6r0fa5	2026-05-14 19:11:03.64	2026-05-14 19:17:09.909	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690644411	amee	\N
1109	g1pchgq6wocsylzcsf0dbhx7	2026-05-14 19:05:52.245	2026-05-14 19:05:52.793	2026-05-14 19:05:52.809	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510767676	irfan saikh	\N
1181	otdtw0so8rs7b6qor33kn7ud	2026-05-14 19:06:09.691	2026-05-14 19:37:36.417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984549810	PAAVAN PANCHAL	\N
1379	xylkxsxjs72dx82vrv7tyrje	2026-05-14 19:06:54.846	2026-05-14 19:37:36.72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376144612	SANTOSHKUMAR SACHAN	\N
1801	gki1ex3pncv0ch6kqbfl7ukf	2026-05-14 19:11:05.081	2026-05-14 19:17:06.048	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687016531	dhananjay raval	\N
1382	r7hqw5udrsorwulyvit5ju7f	2026-05-14 19:06:55.427	2026-05-14 19:37:36.57	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000602710	DEVANG	\N
1160	v5rzf3bojg0cuoj64dw12i6h	2026-05-14 19:06:04.196	2026-05-14 19:06:04.617	2026-05-14 19:06:04.633	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574842899	devansh	\N
1804	gal8d8zj4ov3h7t4owf4w5ss	2026-05-14 19:11:05.76	2026-05-14 19:17:06.064	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727123450	NIRAV AGARWAL	\N
1142	cy0md650spra5n1f1wgopg8d	2026-05-14 19:05:59.768	2026-05-14 19:06:00.176	2026-05-14 19:06:00.192	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698062908	KALPANA PATEL	\N
1385	m0hs4yjhpp3sz7nwl37feyex	2026-05-14 19:06:56.009	2026-05-14 19:17:08.008	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327034286	vishal parmar	\N
1298	azlo114y1gi2d64up2qxpn5a	2026-05-14 19:06:35.638	2026-05-14 19:17:07.815	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408784223	ami shah	\N
1162	zkcw6zxg32xsd9plzhteork6	2026-05-14 19:06:05.38	2026-05-14 19:37:36.386	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460721837	shilly shah	\N
1391	yzamzzkv39dw9w49vtgy5avy	2026-05-14 19:06:57.143	2026-05-14 19:17:08.023	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990328335	ankita	\N
1294	cuqmosr7qpe9xnufb8q4spvi	2026-05-14 19:06:34.082	2026-05-14 19:17:06.171	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
1164	zkcw6zxg32xsd9plzhteork6	2026-05-14 19:06:05.38	2026-05-14 19:06:05.725	2026-05-14 19:06:05.739	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460721837	shilly shah	\N
1427	eax41brxew632z4gtyd6wwai	2026-05-14 19:07:04.441	2026-05-14 19:17:08.109	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
1146	yttns1hr4dtmfydr4ohobve8	2026-05-14 19:06:00.811	2026-05-14 19:37:36.826	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723814430	BINDU ACHARYA	\N
1168	pqd73sp2aiamsvew1m5g82gn	2026-05-14 19:06:06.454	2026-05-14 19:06:06.793	2026-05-14 19:06:06.808	\N	\N	\N	\N	\N	\N	\N	\N	\N	8878799771	ankish	\N
1800	wz8gmi1k8by8r2ixmy8riust	2026-05-14 19:05:58.323	2026-05-14 19:11:04.914	2026-05-14 19:11:04.929	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825061176	mayur bhai	\N
1107	g1pchgq6wocsylzcsf0dbhx7	2026-05-14 19:05:52.245	2026-05-14 19:17:06.687	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510767676	irfan saikh	\N
1128	urfta6llzaxohfczbly5f5h9	2026-05-14 19:05:57.578	2026-05-14 19:17:06.743	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427711874	shefali	\N
1803	gki1ex3pncv0ch6kqbfl7ukf	2026-05-14 19:11:05.081	2026-05-14 19:11:05.562	2026-05-14 19:11:05.578	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687016531	dhananjay raval	\N
1125	cn2lcfdmiuxlhdc5ddyr4vkb	2026-05-14 19:05:56.469	2026-05-14 19:37:37.144	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662194423	dr.kapil ahuja	\N
1158	v5rzf3bojg0cuoj64dw12i6h	2026-05-14 19:06:04.196	2026-05-14 19:17:06.827	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574842899	devansh	\N
1192	jbe9k5gd54ivfyu8qc4atav9	2026-05-14 19:06:11.466	2026-05-14 19:06:11.871	2026-05-14 19:06:11.885	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
1166	pqd73sp2aiamsvew1m5g82gn	2026-05-14 19:06:06.454	2026-05-14 19:17:06.883	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8878799771	ankish	\N
1198	woxdl4jv7cubn0r0wukzmo5t	2026-05-14 19:06:12.647	2026-05-14 19:06:13.113	2026-05-14 19:06:13.127	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984661368	VIDHI MAM	\N
1155	iml5iy3nargdtktgsr8qdy57	2026-05-14 19:06:03.178	2026-05-14 19:37:36.295	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099653533	NIKITA DESAI	\N
1190	jbe9k5gd54ivfyu8qc4atav9	2026-05-14 19:06:11.466	2026-05-14 19:17:06.958	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
1281	tg13lwrqmrvuc3pv95mw0txc	2026-05-14 19:06:30.79	2026-05-14 19:06:31.222	2026-05-14 19:06:31.238	\N	\N	\N	\N	\N	\N	\N	\N	\N	8140787834	TANIYA CHOITHANI	\N
1196	woxdl4jv7cubn0r0wukzmo5t	2026-05-14 19:06:12.647	2026-05-14 19:17:06.973	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984661368	VIDHI MAM	\N
1101	u5l6t6rj6025yaglgz0qvd8a	2026-05-14 19:05:50.108	2026-05-14 19:37:35.945	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925206149	Vandana Mohta	\N
1290	icullry82ctwfaccd3wxqty3	2026-05-14 19:06:32.815	2026-05-14 19:06:33.265	2026-05-14 19:06:33.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925888388	AARTI	\N
1301	f8cwvfsuy6d61udckotf31io	2026-05-14 19:06:36.297	2026-05-14 19:17:07.379	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974039464	sanjeev sir	\N
1319	zr6ndaek8qpc5yy6bwzzcvf7	2026-05-14 19:06:40.65	2026-05-14 19:17:07.392	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924110049	DHRUVA	\N
1335	iqalus9jq5se7j3y16xnfpn3	2026-05-14 19:06:44.963	2026-05-14 19:17:07.465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173138901	yagnish	\N
1342	hmr5b11eporqots2aynh7844	2026-05-14 19:06:46.924	2026-05-14 19:17:07.494	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980792255	rajani sanyal	\N
1357	wyoluckyxxq4lhyg7m4eu5y2	2026-05-14 19:06:50.169	2026-05-14 19:17:07.525	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825225536	vishal	\N
1348	npfv0q6rki3e096gldu8yume	2026-05-14 19:06:48.372	2026-05-14 19:17:07.511	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924630055	VATSALA	\N
1361	gjqtb05lrkvgx927xp5yv0r7	2026-05-14 19:06:51.409	2026-05-14 19:17:07.539	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238087667	JAYA MEM	\N
1303	f8cwvfsuy6d61udckotf31io	2026-05-14 19:06:36.297	2026-05-14 19:06:36.784	2026-05-14 19:06:36.801	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974039464	sanjeev sir	\N
1373	s7d60pcfaawplr8btzulmxcw	2026-05-14 19:06:53.711	2026-05-14 19:17:07.566	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
1267	fvtihrilxr14z30jbyl0mg6b	2026-05-14 19:06:28.058	2026-05-14 19:37:36.548	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327608033	shivani	\N
1388	ik4yonon8rzce7kitwilh8ah	2026-05-14 19:06:56.575	2026-05-14 19:17:07.594	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043920593	BHAVESH	\N
1394	q3nhdt6v8jd0213l8zytj0z2	2026-05-14 19:06:57.72	2026-05-14 19:17:07.608	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9104982128	nirav agrawal	\N
1316	y74esgmok5gw1u9ut9b44kkw	2026-05-14 19:06:39.672	2026-05-14 19:37:36.59	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978799729	rekha nobalnagar	\N
1354	b12fbo975fgyf1k4uazd0y7n	2026-05-14 19:06:49.57	2026-05-14 19:37:36.649	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8128686886	anamika	\N
1307	codagj56yi577erduz22rn2p	2026-05-14 19:06:37.741	2026-05-14 19:17:09.633	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825539995	mansi	\N
1321	zr6ndaek8qpc5yy6bwzzcvf7	2026-05-14 19:06:40.65	2026-05-14 19:06:41.128	2026-05-14 19:06:41.143	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924110049	DHRUVA	\N
1140	cy0md650spra5n1f1wgopg8d	2026-05-14 19:05:59.768	2026-05-14 19:17:06.799	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698062908	KALPANA PATEL	\N
1288	icullry82ctwfaccd3wxqty3	2026-05-14 19:06:32.815	2026-05-14 19:17:07.364	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925888388	AARTI	\N
1279	tg13lwrqmrvuc3pv95mw0txc	2026-05-14 19:06:30.79	2026-05-14 19:17:07.352	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8140787834	TANIYA CHOITHANI	\N
1337	iqalus9jq5se7j3y16xnfpn3	2026-05-14 19:06:44.963	2026-05-14 19:06:45.395	2026-05-14 19:06:45.412	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173138901	yagnish	\N
1340	l1jx9ey45ixqiinbiukyiphn	2026-05-14 19:06:45.643	2026-05-14 19:06:46.095	2026-05-14 19:06:46.109	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328261967	kavita gupta	\N
1344	hmr5b11eporqots2aynh7844	2026-05-14 19:06:46.924	2026-05-14 19:06:47.477	2026-05-14 19:06:47.498	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980792255	rajani sanyal	\N
1350	npfv0q6rki3e096gldu8yume	2026-05-14 19:06:48.372	2026-05-14 19:06:48.846	2026-05-14 19:06:48.864	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924630055	VATSALA	\N
1359	wyoluckyxxq4lhyg7m4eu5y2	2026-05-14 19:06:50.169	2026-05-14 19:06:50.57	2026-05-14 19:06:50.587	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825225536	vishal	\N
1363	gjqtb05lrkvgx927xp5yv0r7	2026-05-14 19:06:51.409	2026-05-14 19:06:51.853	2026-05-14 19:06:51.867	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238087667	JAYA MEM	\N
1369	ci299mr43xcfmm67jvb1w7fb	2026-05-14 19:06:52.562	2026-05-14 19:06:52.976	2026-05-14 19:06:52.99	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238077276	rajvee	\N
1375	s7d60pcfaawplr8btzulmxcw	2026-05-14 19:06:53.711	2026-05-14 19:06:54.125	2026-05-14 19:06:54.141	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
1384	r7hqw5udrsorwulyvit5ju7f	2026-05-14 19:06:55.427	2026-05-14 19:06:55.847	2026-05-14 19:06:55.866	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000602710	DEVANG	\N
1387	m0hs4yjhpp3sz7nwl37feyex	2026-05-14 19:06:56.009	2026-05-14 19:06:56.421	2026-05-14 19:06:56.436	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327034286	vishal parmar	\N
1390	ik4yonon8rzce7kitwilh8ah	2026-05-14 19:06:56.575	2026-05-14 19:06:56.991	2026-05-14 19:06:57.005	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043920593	BHAVESH	\N
1393	yzamzzkv39dw9w49vtgy5avy	2026-05-14 19:06:57.143	2026-05-14 19:06:57.56	2026-05-14 19:06:57.574	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990328335	ankita	\N
1106	w533xzk3869lgny6i4gjfji2	2026-05-14 19:05:51.123	2026-05-14 19:05:51.957	2026-05-14 19:05:52.005	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600062523	PALAK	\N
1116	xb6b1vvdbzzwp5m2so6p5m39	2026-05-14 19:05:54.446	2026-05-14 19:17:08.891	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828431	simba parikh	\N
1806	gal8d8zj4ov3h7t4owf4w5ss	2026-05-14 19:11:05.76	2026-05-14 19:11:06.279	2026-05-14 19:11:06.3	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727123450	NIRAV AGARWAL	\N
1165	p0ud8w2fx876h9u9hhgczda9	2026-05-14 19:05:30.16	2026-05-14 19:06:06.314	2026-05-14 19:06:06.326	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979846268	DIPAK	\N
1110	pi27h9ajrnax7nyb2s0ehdjo	2026-05-14 19:05:52.968	2026-05-14 19:37:36.944	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265702121	KAVITA	\N
1809	jos9wbr5styepcsud29u1x20	2026-05-14 19:11:06.458	2026-05-14 19:11:06.962	2026-05-14 19:11:06.977	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898028962	DOGDOM TRUST	\N
1230	icf53ufhxdekoqwkuxxjopzg	2026-05-14 19:06:20.358	2026-05-14 19:37:37.11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9632222155	bhavna	\N
1124	w9dmc5wo04vgx5eg0oqoic06	2026-05-14 19:05:55.714	2026-05-14 19:05:56.261	2026-05-14 19:05:56.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726855444	Essence Productions	\N
1130	urfta6llzaxohfczbly5f5h9	2026-05-14 19:05:57.578	2026-05-14 19:05:58.158	2026-05-14 19:05:58.176	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427711874	shefali	\N
1345	o7t89v6s0c07euzxw79bnufg	2026-05-14 19:06:47.66	2026-05-14 19:37:36.629	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825645991	KEYUR	\N
1376	erkc12bf1itzpajctdfsrfsh	2026-05-14 19:06:54.282	2026-05-14 19:37:36.702	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537165120	mina	\N
1139	my8zfpnk4zz0vb5onqeqf5eu	2026-05-14 19:05:59.288	2026-05-14 19:05:59.594	2026-05-14 19:05:59.605	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978990350	JATIN GANDHI	\N
1199	shfrvoyivz2y49xi1daviv04	2026-05-14 19:06:13.436	2026-05-14 19:17:06.987	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690217111	KAMRAJ MODI	\N
1011	p0ud8w2fx876h9u9hhgczda9	2026-05-14 19:05:30.16	2026-05-14 19:17:06.871	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979846268	DIPAK	\N
1145	v3naltmlmavl1hxp08ohmouj	2026-05-14 19:06:00.323	2026-05-14 19:06:00.669	2026-05-14 19:06:00.681	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586837007	paul sir	\N
1364	n0gviz9fcu3za2b4ga6bgzw3	2026-05-14 19:06:52.012	2026-05-14 19:37:36.684	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925228812	pranjali shah	\N
1812	vd0nhwr9l0zpmjhubz6410pw	2026-05-14 19:11:07.124	2026-05-14 19:11:07.557	2026-05-14 19:11:07.571	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355561852	mamta	\N
1263	xtzopu5071blpxfp459d8p4d	2026-05-14 19:06:26.788	2026-05-14 19:37:36.527	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879737299	RENUKA MAM	\N
1814	e0945wv6rg49b71nrdo9rzvu	2026-05-14 19:11:08.372	2026-05-14 19:17:06.127	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712885845	ASHMITA	\N
1810	vd0nhwr9l0zpmjhubz6410pw	2026-05-14 19:11:07.124	2026-05-14 19:37:37.458	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355561852	mamta	\N
1208	k4b12r09286ghp05evzsaghs	2026-05-14 19:06:15.189	2026-05-14 19:17:07.027	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376495441	BHAVNA	\N
1201	shfrvoyivz2y49xi1daviv04	2026-05-14 19:06:13.436	2026-05-14 19:06:13.849	2026-05-14 19:06:13.865	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690217111	KAMRAJ MODI	\N
1204	p8vrfxqtpax0u2zvsx4666mw	2026-05-14 19:06:14.013	2026-05-14 19:06:14.435	2026-05-14 19:06:14.451	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558550025	SUHANI	\N
1175	quuz6dpze8egyjawp5cz4wu2	2026-05-14 19:06:08.473	2026-05-14 19:17:06.185	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
1210	k4b12r09286ghp05evzsaghs	2026-05-14 19:06:15.189	2026-05-14 19:06:15.644	2026-05-14 19:06:15.665	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376495441	BHAVNA	\N
1152	oxblf3vpxj4pa0dqcymna77t	2026-05-14 19:06:02.482	2026-05-14 19:37:36.963	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
1217	tbtxaop5ve8dnmlw5sghpat9	2026-05-14 19:06:17.258	2026-05-14 19:17:07.071	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328920659	print vision	\N
1122	w9dmc5wo04vgx5eg0oqoic06	2026-05-14 19:05:55.714	2026-05-14 19:17:06.729	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726855444	Essence Productions	\N
1137	my8zfpnk4zz0vb5onqeqf5eu	2026-05-14 19:05:59.288	2026-05-14 19:37:36.118	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978990350	JATIN GANDHI	\N
1823	cuqmosr7qpe9xnufb8q4spvi	2026-05-14 19:06:34.082	2026-05-14 19:11:10.892	2026-05-14 19:11:10.907	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
1104	w533xzk3869lgny6i4gjfji2	2026-05-14 19:05:51.123	2026-05-14 19:37:35.996	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600062523	PALAK	\N
1222	f7mpdayg5j83g3sy7vzotvfg	2026-05-14 19:06:17.856	2026-05-14 19:06:18.281	2026-05-14 19:06:18.299	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
1226	dtucnjeseu3o1cc0j85h9ess	2026-05-14 19:05:35.06	2026-05-14 19:06:19.608	2026-05-14 19:06:19.624	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
1172	l9grd0br7borwlg3zluws7i3	2026-05-14 19:06:07.86	2026-05-14 19:17:06.914	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824022765	uma singh	\N
1242	ug4p9ih0dbr2hpp14bmyub12	2026-05-14 19:06:22.681	2026-05-14 19:17:07.183	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7229019457	nimisha	\N
1248	mov84tiwvu0dq6n2u50erz3a	2026-05-14 19:06:23.896	2026-05-14 19:17:07.211	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
1254	tvlriddvyn8nv4uqb627tal3	2026-05-14 19:06:25.052	2026-05-14 19:17:07.24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8959591489	mamta agrawal	\N
1238	j5cxnmdd7iat8h8clu4cofxc	2026-05-14 19:06:21.494	2026-05-14 19:06:21.919	2026-05-14 19:06:21.933	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007727	nainash	\N
1260	zhlv7g7p9ut4xiwk2lea5xvc	2026-05-14 19:06:26.212	2026-05-14 19:17:07.267	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
1143	v3naltmlmavl1hxp08ohmouj	2026-05-14 19:06:00.323	2026-05-14 19:37:36.204	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586837007	paul sir	\N
1244	ug4p9ih0dbr2hpp14bmyub12	2026-05-14 19:06:22.681	2026-05-14 19:06:23.13	2026-05-14 19:06:23.145	\N	\N	\N	\N	\N	\N	\N	\N	\N	7229019457	nimisha	\N
1276	rar7lvup31qlidua4tpz7k9u	2026-05-14 19:06:30.009	2026-05-14 19:17:07.338	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825017116	AKASH K SHAH	\N
1322	zv8g2xviw230j8dy7t7c5o27	2026-05-14 19:06:41.399	2026-05-14 19:17:07.407	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099083999	tarana bhatiya	\N
1250	mov84tiwvu0dq6n2u50erz3a	2026-05-14 19:06:23.896	2026-05-14 19:06:24.31	2026-05-14 19:06:24.324	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
1273	bytsqz7jiqocsmic8b0zeng0	2026-05-14 19:06:29.232	2026-05-14 19:17:07.451	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824033130	MANISH PATEL	\N
1338	l1jx9ey45ixqiinbiukyiphn	2026-05-14 19:06:45.643	2026-05-14 19:17:07.479	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328261967	kavita gupta	\N
1256	tvlriddvyn8nv4uqb627tal3	2026-05-14 19:06:25.052	2026-05-14 19:06:25.47	2026-05-14 19:06:25.483	\N	\N	\N	\N	\N	\N	\N	\N	\N	8959591489	mamta agrawal	\N
1304	qldkzpwgg56j6ybgzawgbmbm	2026-05-14 19:06:37.077	2026-05-14 19:17:07.829	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
1310	qddfvzvr7u78f02o17mc1ud2	2026-05-14 19:06:38.404	2026-05-14 19:17:07.844	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383465118	MARGESH	\N
1214	t1zkme0ss9h908h15y225evv	2026-05-14 19:06:16.558	2026-05-14 19:37:36.437	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173910155	MEET	\N
1351	nlfxhu3ucrzpswwbs3wmk0sb	2026-05-14 19:06:49.006	2026-05-14 19:17:07.917	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9313718597	SNEHA	\N
1266	bk5vytq9wgliv7qo2ifd25ht	2026-05-14 19:05:32.03	2026-05-14 19:06:27.893	2026-05-14 19:06:27.91	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724919595	deval	\N
1269	fvtihrilxr14z30jbyl0mg6b	2026-05-14 19:06:28.058	2026-05-14 19:06:28.487	2026-05-14 19:06:28.503	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327608033	shivani	\N
1220	f7mpdayg5j83g3sy7vzotvfg	2026-05-14 19:06:17.856	2026-05-14 19:37:36.46	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
1370	g2kdcel05mxmvny48z9eqjna	2026-05-14 19:06:53.132	2026-05-14 19:17:07.964	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
1236	j5cxnmdd7iat8h8clu4cofxc	2026-05-14 19:06:21.494	2026-05-14 19:37:36.481	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007727	nainash	\N
1278	rar7lvup31qlidua4tpz7k9u	2026-05-14 19:06:30.009	2026-05-14 19:06:30.492	2026-05-14 19:06:30.509	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825017116	AKASH K SHAH	\N
1306	qldkzpwgg56j6ybgzawgbmbm	2026-05-14 19:06:37.077	2026-05-14 19:06:37.547	2026-05-14 19:06:37.562	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
1312	qddfvzvr7u78f02o17mc1ud2	2026-05-14 19:06:38.404	2026-05-14 19:06:38.842	2026-05-14 19:06:38.868	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383465118	MARGESH	\N
1324	zv8g2xviw230j8dy7t7c5o27	2026-05-14 19:06:41.399	2026-05-14 19:06:41.905	2026-05-14 19:06:41.926	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099083999	tarana bhatiya	\N
1327	ec4jg1u10gcwastve38b8bx3	2026-05-14 19:06:42.085	2026-05-14 19:06:42.529	2026-05-14 19:06:42.545	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426419425	mini	\N
1330	b4t768v52s6x5h1zgef01qq3	2026-05-14 19:06:42.775	2026-05-14 19:06:43.263	2026-05-14 19:06:43.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825069396	Radhika	\N
1347	o7t89v6s0c07euzxw79bnufg	2026-05-14 19:06:47.66	2026-05-14 19:06:48.197	2026-05-14 19:06:48.213	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825645991	KEYUR	\N
1353	nlfxhu3ucrzpswwbs3wmk0sb	2026-05-14 19:06:49.006	2026-05-14 19:06:49.407	2026-05-14 19:06:49.421	\N	\N	\N	\N	\N	\N	\N	\N	\N	9313718597	SNEHA	\N
1356	b12fbo975fgyf1k4uazd0y7n	2026-05-14 19:06:49.57	2026-05-14 19:06:50.005	2026-05-14 19:06:50.022	\N	\N	\N	\N	\N	\N	\N	\N	\N	8128686886	anamika	\N
1366	n0gviz9fcu3za2b4ga6bgzw3	2026-05-14 19:06:52.012	2026-05-14 19:06:52.402	2026-05-14 19:06:52.417	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925228812	pranjali shah	\N
1372	g2kdcel05mxmvny48z9eqjna	2026-05-14 19:06:53.132	2026-05-14 19:06:53.549	2026-05-14 19:06:53.565	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
1378	erkc12bf1itzpajctdfsrfsh	2026-05-14 19:06:54.282	2026-05-14 19:06:54.681	2026-05-14 19:06:54.7	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537165120	mina	\N
1381	xylkxsxjs72dx82vrv7tyrje	2026-05-14 19:06:54.846	2026-05-14 19:06:55.264	2026-05-14 19:06:55.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376144612	SANTOSHKUMAR SACHAN	\N
1817	eax5262vd10lulay53xhn1on	2026-05-14 19:11:08.984	2026-05-14 19:17:06.142	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9001992666	URVI	\N
1115	i38xirywcvyg3dn3ut6jowun	2026-05-14 19:05:53.85	2026-05-14 19:05:54.289	2026-05-14 19:05:54.306	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
1227	dgze139l9fkewqa43mpadsnr	2026-05-14 19:06:19.786	2026-05-14 19:17:07.125	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
1211	qdyo8kfbaalnu1nduuneugfy	2026-05-14 19:06:15.821	2026-05-14 19:17:07.043	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824098895	JAYANTA ROY	\N
1121	had16vagmdsmjg3edmx62c7z	2026-05-14 19:05:55.042	2026-05-14 19:05:55.472	2026-05-14 19:05:55.484	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790755	sunita	\N
1259	js31i5uwxl8jcbn94w53w2yf	2026-05-14 19:06:25.629	2026-05-14 19:06:26.057	2026-05-14 19:06:26.071	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825175191	PIYABEN	\N
1171	hc7c5hhyljn8i851zggdo2r6	2026-05-14 19:06:07.057	2026-05-14 19:06:07.668	2026-05-14 19:06:07.69	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879615794	MAHESH PATEL	\N
1223	q63rggiqyags4k8p8l58vdk4	2026-05-14 19:06:18.457	2026-05-14 19:17:07.097	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
1151	cbs5sauq5de7xof4rbd9zqlh	2026-05-14 19:06:01.333	2026-05-14 19:06:02.285	2026-05-14 19:06:02.299	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586282259	dogs spa	\N
1174	l9grd0br7borwlg3zluws7i3	2026-05-14 19:06:07.86	2026-05-14 19:06:08.309	2026-05-14 19:06:08.326	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824022765	uma singh	\N
1426	zrr1hyj0f65i8pnjapqoc0fw	2026-05-14 19:07:03.75	2026-05-14 19:07:04.263	2026-05-14 19:07:04.282	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727363124	chirag	\N
1239	eyahtgqidcd3tzd21le709cd	2026-05-14 19:06:22.07	2026-05-14 19:17:07.166	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
1180	w6zqfebubqwvk26z8px69e2m	2026-05-14 19:06:09.088	2026-05-14 19:06:09.514	2026-05-14 19:06:09.534	\N	\N	\N	\N	\N	\N	\N	\N	\N	9913999457	ZEEL SONI	\N
1183	otdtw0so8rs7b6qor33kn7ud	2026-05-14 19:06:09.691	2026-05-14 19:06:10.134	2026-05-14 19:06:10.148	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984549810	PAAVAN PANCHAL	\N
1178	w6zqfebubqwvk26z8px69e2m	2026-05-14 19:06:09.088	2026-05-14 19:17:06.928	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9913999457	ZEEL SONI	\N
1169	hc7c5hhyljn8i851zggdo2r6	2026-05-14 19:06:07.057	2026-05-14 19:17:06.896	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879615794	MAHESH PATEL	\N
1813	l1tvgiyuk4l3tmt5zua5twb1	2026-05-14 19:06:10.29	2026-05-14 19:11:08.213	2026-05-14 19:11:08.228	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
1816	e0945wv6rg49b71nrdo9rzvu	2026-05-14 19:11:08.372	2026-05-14 19:11:08.819	2026-05-14 19:11:08.837	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712885845	ASHMITA	\N
1819	eax5262vd10lulay53xhn1on	2026-05-14 19:11:08.984	2026-05-14 19:11:09.418	2026-05-14 19:11:09.435	\N	\N	\N	\N	\N	\N	\N	\N	\N	9001992666	URVI	\N
1205	rno08960fbfiszh2if7otf5q	2026-05-14 19:06:14.597	2026-05-14 19:17:07.013	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879577708	NIRAV CHOLERA	\N
1233	krmgns57ht5ijhlf0xk9gpge	2026-05-14 19:06:20.935	2026-05-14 19:17:07.14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824252956	shradhavi mam	\N
1332	mzai1re80p8ld2qk8jm4l8v3	2026-05-14 19:06:44.2	2026-05-14 19:37:36.608	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712077770	simi makwana	\N
1251	rqu2upxvzw8d8ye53hbreutz	2026-05-14 19:06:24.464	2026-05-14 19:17:07.226	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033742303	nirman shah	\N
1257	js31i5uwxl8jcbn94w53w2yf	2026-05-14 19:06:25.629	2026-05-14 19:17:07.255	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825175191	PIYABEN	\N
1207	rno08960fbfiszh2if7otf5q	2026-05-14 19:06:14.597	2026-05-14 19:06:15.033	2026-05-14 19:06:15.048	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879577708	NIRAV CHOLERA	\N
1270	nbkae3ut5oatk3m4ht96wqnn	2026-05-14 19:06:28.658	2026-05-14 19:17:07.31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328006629	malini	\N
1325	ec4jg1u10gcwastve38b8bx3	2026-05-14 19:06:42.085	2026-05-14 19:17:07.422	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426419425	mini	\N
1213	qdyo8kfbaalnu1nduuneugfy	2026-05-14 19:06:15.821	2026-05-14 19:06:16.329	2026-05-14 19:06:16.353	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824098895	JAYANTA ROY	\N
1216	t1zkme0ss9h908h15y225evv	2026-05-14 19:06:16.558	2026-05-14 19:06:17.091	2026-05-14 19:06:17.106	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173910155	MEET	\N
1219	tbtxaop5ve8dnmlw5sghpat9	2026-05-14 19:06:17.258	2026-05-14 19:06:17.693	2026-05-14 19:06:17.709	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328920659	print vision	\N
1328	b4t768v52s6x5h1zgef01qq3	2026-05-14 19:06:42.775	2026-05-14 19:17:07.436	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825069396	Radhika	\N
1397	vhmgd8vx2bv3x8s4ckbrtwbm	2026-05-14 19:06:58.296	2026-05-14 19:17:07.622	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879275721	jigna	\N
1225	q63rggiqyags4k8p8l58vdk4	2026-05-14 19:06:18.457	2026-05-14 19:06:18.873	2026-05-14 19:06:18.889	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
1403	hsarqn6herrn98h59pikizzm	2026-05-14 19:06:59.436	2026-05-14 19:17:07.636	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998460397	FLORA FOUNTAIN	\N
1406	hfrg8jk2383l4ntud25nontw	2026-05-14 19:07:00.067	2026-05-14 19:17:07.651	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428214275	sanjay	\N
1229	dgze139l9fkewqa43mpadsnr	2026-05-14 19:06:19.786	2026-05-14 19:06:20.199	2026-05-14 19:06:20.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
1285	u7p2sd54p4ujo0cd2m01qn8m	2026-05-14 19:06:32.201	2026-05-14 19:17:07.772	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
1291	ub87ns28bew6o5rvc02ty6xt	2026-05-14 19:06:33.446	2026-05-14 19:17:07.798	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
1235	krmgns57ht5ijhlf0xk9gpge	2026-05-14 19:06:20.935	2026-05-14 19:06:21.339	2026-05-14 19:06:21.353	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824252956	shradhavi mam	\N
1313	q29j5jmbe6xgu0zddukiu3u4	2026-05-14 19:06:39.037	2026-05-14 19:17:07.861	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328889052	tejal patel	\N
1245	tzp3r97h9aq9q1q9awhp3s2y	2026-05-14 19:06:23.298	2026-05-14 19:37:36.507	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9737396831	SINDHU	\N
1241	eyahtgqidcd3tzd21le709cd	2026-05-14 19:06:22.07	2026-05-14 19:06:22.518	2026-05-14 19:06:22.535	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
1400	ve8h30vchnxwthaio4iaj73i	2026-05-14 19:06:58.87	2026-05-14 19:17:08.037	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824254727	nayna dholkiya	\N
1409	kbakpicbfw669d2weqenl4cw	2026-05-14 19:07:00.638	2026-05-14 19:17:08.051	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9227492442	pradip sinde	\N
1247	tzp3r97h9aq9q1q9awhp3s2y	2026-05-14 19:06:23.298	2026-05-14 19:06:23.73	2026-05-14 19:06:23.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9737396831	SINDHU	\N
1424	zrr1hyj0f65i8pnjapqoc0fw	2026-05-14 19:07:03.75	2026-05-14 19:17:08.095	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727363124	chirag	\N
1187	gori2gd19c4hnddrvpxckg0v	2026-05-14 19:06:10.885	2026-05-14 19:17:08.233	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984500853	yash gaur	\N
1253	rqu2upxvzw8d8ye53hbreutz	2026-05-14 19:06:24.464	2026-05-14 19:06:24.883	2026-05-14 19:06:24.898	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033742303	nirman shah	\N
1282	q8f1xv1si1b6z5nz82kq5fy5	2026-05-14 19:06:31.394	2026-05-14 19:37:37.221	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
1262	zhlv7g7p9ut4xiwk2lea5xvc	2026-05-14 19:06:26.212	2026-05-14 19:06:26.618	2026-05-14 19:06:26.634	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
1265	xtzopu5071blpxfp459d8p4d	2026-05-14 19:06:26.788	2026-05-14 19:06:27.226	2026-05-14 19:06:27.242	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879737299	RENUKA MAM	\N
1119	had16vagmdsmjg3edmx62c7z	2026-05-14 19:05:55.042	2026-05-14 19:17:06.715	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790755	sunita	\N
1149	cbs5sauq5de7xof4rbd9zqlh	2026-05-14 19:06:01.333	2026-05-14 19:17:06.813	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586282259	dogs spa	\N
1134	me877vimp0x35rnt23rriwxy	2026-05-14 19:05:58.81	2026-05-14 19:17:06.843	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426384619	pooja mehata	\N
1202	p8vrfxqtpax0u2zvsx4666mw	2026-05-14 19:06:14.013	2026-05-14 19:17:06.999	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558550025	SUHANI	\N
1272	nbkae3ut5oatk3m4ht96wqnn	2026-05-14 19:06:28.658	2026-05-14 19:06:29.071	2026-05-14 19:06:29.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328006629	malini	\N
1275	bytsqz7jiqocsmic8b0zeng0	2026-05-14 19:06:29.232	2026-05-14 19:06:29.708	2026-05-14 19:06:29.758	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824033130	MANISH PATEL	\N
1287	u7p2sd54p4ujo0cd2m01qn8m	2026-05-14 19:06:32.201	2026-05-14 19:06:32.618	2026-05-14 19:06:32.657	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
1293	ub87ns28bew6o5rvc02ty6xt	2026-05-14 19:06:33.446	2026-05-14 19:06:33.92	2026-05-14 19:06:33.935	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
1300	azlo114y1gi2d64up2qxpn5a	2026-05-14 19:06:35.638	2026-05-14 19:06:36.125	2026-05-14 19:06:36.141	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408784223	ami shah	\N
1315	q29j5jmbe6xgu0zddukiu3u4	2026-05-14 19:06:39.037	2026-05-14 19:06:39.489	2026-05-14 19:06:39.504	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328889052	tejal patel	\N
1318	y74esgmok5gw1u9ut9b44kkw	2026-05-14 19:06:39.672	2026-05-14 19:06:40.438	2026-05-14 19:06:40.454	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978799729	rekha nobalnagar	\N
1334	mzai1re80p8ld2qk8jm4l8v3	2026-05-14 19:06:44.2	2026-05-14 19:06:44.771	2026-05-14 19:06:44.792	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712077770	simi makwana	\N
1396	q3nhdt6v8jd0213l8zytj0z2	2026-05-14 19:06:57.72	2026-05-14 19:06:58.139	2026-05-14 19:06:58.154	\N	\N	\N	\N	\N	\N	\N	\N	\N	9104982128	nirav agrawal	\N
1399	vhmgd8vx2bv3x8s4ckbrtwbm	2026-05-14 19:06:58.296	2026-05-14 19:06:58.708	2026-05-14 19:06:58.725	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879275721	jigna	\N
1402	ve8h30vchnxwthaio4iaj73i	2026-05-14 19:06:58.87	2026-05-14 19:06:59.285	2026-05-14 19:06:59.299	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824254727	nayna dholkiya	\N
1405	hsarqn6herrn98h59pikizzm	2026-05-14 19:06:59.436	2026-05-14 19:06:59.862	2026-05-14 19:06:59.882	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998460397	FLORA FOUNTAIN	\N
1408	hfrg8jk2383l4ntud25nontw	2026-05-14 19:07:00.067	2026-05-14 19:07:00.482	2026-05-14 19:07:00.498	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428214275	sanjay	\N
1411	kbakpicbfw669d2weqenl4cw	2026-05-14 19:07:00.638	2026-05-14 19:07:01.068	2026-05-14 19:07:01.084	\N	\N	\N	\N	\N	\N	\N	\N	\N	9227492442	pradip sinde	\N
1467	r1cory02enyq3cztk27zpfnh	2026-05-14 19:07:16.432	2026-05-14 19:17:08.319	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
1454	ix85hw0viaicazwerf9a5w6e	2026-05-14 19:07:13.23	2026-05-14 19:17:08.246	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724888858	ankur	\N
1450	yfjhb1jps1hzkr43jbe0nrhk	2026-05-14 19:07:11.886	2026-05-14 19:17:08.221	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971484348	milii	\N
1417	lx0kotkexwcck4tmgxnv70x1	2026-05-14 19:07:01.809	2026-05-14 19:07:02.231	2026-05-14 19:07:02.247	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825258843	Ayushi Agrawal	\N
1822	e1jpp3uzo7ugzy6b3enec0ov	2026-05-14 19:11:09.586	2026-05-14 19:11:10.095	2026-05-14 19:11:10.11	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825009971	nilesh patel	\N
1461	n4ar43uayht4sxp0b6ewnyb0	2026-05-14 19:07:15.031	2026-05-14 19:17:08.29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376101399	AVANI S CHAUHAN	\N
1432	ksg7mu3m5xkzfhk301sc270x	2026-05-14 19:07:05.164	2026-05-14 19:07:05.625	2026-05-14 19:07:05.642	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
1824	quuz6dpze8egyjawp5cz4wu2	2026-05-14 19:06:08.473	2026-05-14 19:11:11.78	2026-05-14 19:11:11.795	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
1473	o1b4ot51d9ohevzntxpv9qx4	2026-05-14 19:07:17.632	2026-05-14 19:17:08.331	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
1438	xsbcvg0rrvhtpxdq64r5fz9c	2026-05-14 19:07:08.226	2026-05-14 19:37:36.781	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825006715	Anand Devani	\N
1440	xsbcvg0rrvhtpxdq64r5fz9c	2026-05-14 19:07:08.226	2026-05-14 19:07:08.667	2026-05-14 19:07:08.683	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825006715	Anand Devani	\N
1529	l5c8ojron7o29lqwt0isrks2	2026-05-14 19:07:36.344	2026-05-14 19:37:36.883	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
1550	ckphdcaxcpw6jlurgukarsbw	2026-05-14 19:07:45.156	2026-05-14 19:37:36.906	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
1446	puk016efyjn65sw95kles6h8	2026-05-14 19:07:09.998	2026-05-14 19:07:10.55	2026-05-14 19:07:10.568	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408881834	NEHA SHETH	\N
1572	zipmbovjxc3m5dqp1fkyijsu	2026-05-14 19:07:52.961	2026-05-14 19:37:36.925	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016438776	jonshan	\N
1578	kgd97t7yxq8bn3i2jgd6qsoo	2026-05-14 19:07:54.695	2026-05-14 19:17:08.455	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825324802	SAGAR	\N
1452	yfjhb1jps1hzkr43jbe0nrhk	2026-05-14 19:07:11.886	2026-05-14 19:07:12.429	2026-05-14 19:07:12.448	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971484348	milii	\N
1479	elkyst3gzgxq5yc9qkplg26k	2026-05-14 19:07:18.968	2026-05-14 19:17:08.482	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727261575	ROSHAN	\N
1486	il6lxm6we7ho43eerp841p50	2026-05-14 19:07:21.693	2026-05-14 19:17:08.508	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
1457	yttns1hr4dtmfydr4ohobve8	2026-05-14 19:06:00.811	2026-05-14 19:07:14.31	2026-05-14 19:07:14.324	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723814430	BINDU ACHARYA	\N
1508	sjhit8jcqpgo3x8gwjotniy6	2026-05-14 19:07:29.369	2026-05-14 19:17:08.537	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824037807	jay	\N
1514	jmyzhdpmbnif5i1yd2zx17id	2026-05-14 19:07:31.499	2026-05-14 19:17:08.549	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
1463	n4ar43uayht4sxp0b6ewnyb0	2026-05-14 19:07:15.031	2026-05-14 19:07:15.478	2026-05-14 19:07:15.513	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376101399	AVANI S CHAUHAN	\N
1523	vjimyyp6xr3p5ko6oouvx0qs	2026-05-14 19:07:33.671	2026-05-14 19:17:08.561	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099011151	Saket parikh	\N
1532	db6dbg7bywa03vceiv6dju3j	2026-05-14 19:07:37.522	2026-05-14 19:17:08.576	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7490053277	charu patel	\N
1469	r1cory02enyq3cztk27zpfnh	2026-05-14 19:07:16.432	2026-05-14 19:07:16.831	2026-05-14 19:07:16.847	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
1535	w1sway2f4j2m2p5s76ca0u7n	2026-05-14 19:07:38.598	2026-05-14 19:17:08.59	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687496506	yashika	\N
1541	sjpp7dfl75yle8pqkltkh46h	2026-05-14 19:07:41.731	2026-05-14 19:17:08.62	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866141601	SPURGE FOUNDATION	\N
1553	a4qdhkc9obhzndv71nlsk3rn	2026-05-14 19:07:45.897	2026-05-14 19:17:08.646	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426689696	SAMIR JAIN	\N
1556	cxehmy3414tqpicwtmlnw5nx	2026-05-14 19:07:47.025	2026-05-14 19:17:08.662	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016050596	dhrumil	\N
1493	hm74lwbix0t9eceuxe3jbr2b	2026-05-14 19:07:24.965	2026-05-14 19:17:08.771	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898858599	vipul patel	\N
1475	o1b4ot51d9ohevzntxpv9qx4	2026-05-14 19:07:17.632	2026-05-14 19:07:17.991	2026-05-14 19:07:18.004	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
1499	yurfa0or9w17qqntj299dsmc	2026-05-14 19:07:26.429	2026-05-14 19:17:08.784	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879003302	GINNY SHARMA	\N
1502	symry3mr5e1341njt1964v56	2026-05-14 19:07:27.116	2026-05-14 19:17:08.798	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898398983	KARAN JIT	\N
1481	elkyst3gzgxq5yc9qkplg26k	2026-05-14 19:07:18.968	2026-05-14 19:07:19.893	2026-05-14 19:07:19.917	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727261575	ROSHAN	\N
1482	pi27h9ajrnax7nyb2s0ehdjo	2026-05-14 19:05:52.968	2026-05-14 19:07:20.744	2026-05-14 19:07:20.759	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265702121	KAVITA	\N
1511	jerfo4kq5z5trzsoh4dlcltx	2026-05-14 19:07:30.75	2026-05-14 19:17:08.824	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714967878	vipul	\N
1562	m9x6uo5w9a6v6wx53tjkpruf	2026-05-14 19:07:48.94	2026-05-14 19:17:08.851	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825218377	sejuti mam	\N
1488	il6lxm6we7ho43eerp841p50	2026-05-14 19:07:21.693	2026-05-14 19:07:22.413	2026-05-14 19:07:22.429	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
1492	oxblf3vpxj4pa0dqcymna77t	2026-05-14 19:06:02.482	2026-05-14 19:07:24.526	2026-05-14 19:07:24.554	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
1565	zemyy87z9ssdxpwsjci919ic	2026-05-14 19:07:50.069	2026-05-14 19:17:08.864	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9819707470	TOFFEE MEHTA	\N
1575	nh06s8owesfint3agmjhl2h6	2026-05-14 19:07:54.012	2026-05-14 19:17:08.905	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984795662	SAHIL	\N
1495	hm74lwbix0t9eceuxe3jbr2b	2026-05-14 19:07:24.965	2026-05-14 19:07:25.479	2026-05-14 19:07:25.505	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898858599	vipul patel	\N
1470	asb4pxripu7hq5dt3vagg625	2026-05-14 19:07:17.057	2026-05-14 19:17:09.702	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7688272858	enhance family saloon	\N
1820	e1jpp3uzo7ugzy6b3enec0ov	2026-05-14 19:11:09.586	2026-05-14 19:37:37.484	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825009971	nilesh patel	\N
1498	hsaxkcqlumj098aw0k2kr2gf	2026-05-14 19:07:25.709	2026-05-14 19:07:26.242	2026-05-14 19:07:26.26	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909971900	JETI SHAH	\N
1421	iewm1hits5368n9ialx26bop	2026-05-14 19:07:02.994	2026-05-14 19:17:08.081	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925472679	varsha acharya	\N
1501	yurfa0or9w17qqntj299dsmc	2026-05-14 19:07:26.429	2026-05-14 19:07:26.907	2026-05-14 19:07:26.927	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879003302	GINNY SHARMA	\N
1430	ksg7mu3m5xkzfhk301sc270x	2026-05-14 19:07:05.164	2026-05-14 19:17:08.122	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
1496	hsaxkcqlumj098aw0k2kr2gf	2026-05-14 19:07:25.709	2026-05-14 19:37:36.862	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909971900	JETI SHAH	\N
1504	symry3mr5e1341njt1964v56	2026-05-14 19:07:27.116	2026-05-14 19:07:27.924	2026-05-14 19:07:27.962	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898398983	KARAN JIT	\N
1444	puk016efyjn65sw95kles6h8	2026-05-14 19:07:09.998	2026-05-14 19:17:08.192	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408881834	NEHA SHETH	\N
1510	sjhit8jcqpgo3x8gwjotniy6	2026-05-14 19:07:29.369	2026-05-14 19:07:30.454	2026-05-14 19:07:30.478	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824037807	jay	\N
1516	jmyzhdpmbnif5i1yd2zx17id	2026-05-14 19:07:31.499	2026-05-14 19:07:31.996	2026-05-14 19:07:32.014	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
1525	vjimyyp6xr3p5ko6oouvx0qs	2026-05-14 19:07:33.671	2026-05-14 19:07:34.239	2026-05-14 19:07:34.262	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099011151	Saket parikh	\N
1534	db6dbg7bywa03vceiv6dju3j	2026-05-14 19:07:37.522	2026-05-14 19:07:38.292	2026-05-14 19:07:38.327	\N	\N	\N	\N	\N	\N	\N	\N	\N	7490053277	charu patel	\N
1537	w1sway2f4j2m2p5s76ca0u7n	2026-05-14 19:07:38.598	2026-05-14 19:07:39.42	2026-05-14 19:07:39.453	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687496506	yashika	\N
1540	y3k7nq9qw8cq14be47zxb1qv	2026-05-14 19:07:39.745	2026-05-14 19:07:41.138	2026-05-14 19:07:41.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990980688	aji	\N
1543	sjpp7dfl75yle8pqkltkh46h	2026-05-14 19:07:41.731	2026-05-14 19:07:42.611	2026-05-14 19:07:42.647	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866141601	SPURGE FOUNDATION	\N
1546	eiif6dgbn4y2tkws255x0o4v	2026-05-14 19:07:42.99	2026-05-14 19:07:43.855	2026-05-14 19:07:43.901	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824262434	gaurang	\N
1555	a4qdhkc9obhzndv71nlsk3rn	2026-05-14 19:07:45.897	2026-05-14 19:07:46.604	2026-05-14 19:07:46.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426689696	SAMIR JAIN	\N
1558	cxehmy3414tqpicwtmlnw5nx	2026-05-14 19:07:47.025	2026-05-14 19:07:47.686	2026-05-14 19:07:47.717	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016050596	dhrumil	\N
1564	m9x6uo5w9a6v6wx53tjkpruf	2026-05-14 19:07:48.94	2026-05-14 19:07:49.731	2026-05-14 19:07:49.77	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825218377	sejuti mam	\N
1567	zemyy87z9ssdxpwsjci919ic	2026-05-14 19:07:50.069	2026-05-14 19:07:50.713	2026-05-14 19:07:50.737	\N	\N	\N	\N	\N	\N	\N	\N	\N	9819707470	TOFFEE MEHTA	\N
1571	xb6b1vvdbzzwp5m2so6p5m39	2026-05-14 19:05:54.446	2026-05-14 19:07:52.704	2026-05-14 19:07:52.722	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828431	simba parikh	\N
1574	zipmbovjxc3m5dqp1fkyijsu	2026-05-14 19:07:52.961	2026-05-14 19:07:53.811	2026-05-14 19:07:53.83	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016438776	jonshan	\N
1577	nh06s8owesfint3agmjhl2h6	2026-05-14 19:07:54.012	2026-05-14 19:07:54.495	2026-05-14 19:07:54.513	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984795662	SAHIL	\N
1414	xjkkdz3fkrbpm3rnwxs6tf0d	2026-05-14 19:07:01.233	2026-05-14 19:07:01.633	2026-05-14 19:07:01.663	\N	\N	\N	\N	\N	\N	\N	\N	\N	9838917895	ANSHUL	\N
1420	rabcpwe6kndcxct0df1hbdm4	2026-05-14 19:07:02.394	2026-05-14 19:07:02.83	2026-05-14 19:07:02.845	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824041191	pinky modi	\N
1606	r8rdjl11ar7ox18kgmxs2khr	2026-05-14 19:08:01.994	2026-05-14 19:37:37.184	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687686467	ANERI SHAH	\N
1538	y3k7nq9qw8cq14be47zxb1qv	2026-05-14 19:07:39.745	2026-05-14 19:37:36.983	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990980688	aji	\N
1437	dj51rsostk8e12woxcgdcfxh	2026-05-14 19:07:07.574	2026-05-14 19:07:08.04	2026-05-14 19:07:08.057	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879007060	RADHIKA NANDA	\N
1447	vkkpt36kjop1knzw9o8xpb09	2026-05-14 19:07:10.865	2026-05-14 19:17:08.207	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909011008	abhishek mehta	\N
1443	snlmow7fuccxifrubc92vkcc	2026-05-14 19:07:08.871	2026-05-14 19:07:09.621	2026-05-14 19:07:09.655	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979381287	kajal thakkar	\N
1464	jwml0l75cc2s1b0c8iwkwqn9	2026-05-14 19:07:15.716	2026-05-14 19:17:08.304	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904149382	TEJAS BORISA	\N
1517	w8fq592ujog4qfw58zuuepfq	2026-05-14 19:07:32.187	2026-05-14 19:17:08.361	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428103716	pinal mam	\N
1449	vkkpt36kjop1knzw9o8xpb09	2026-05-14 19:07:10.865	2026-05-14 19:07:11.657	2026-05-14 19:07:11.685	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909011008	abhishek mehta	\N
1453	gori2gd19c4hnddrvpxckg0v	2026-05-14 19:06:10.885	2026-05-14 19:07:13.089	2026-05-14 19:07:13.101	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984500853	yash gaur	\N
1456	ix85hw0viaicazwerf9a5w6e	2026-05-14 19:07:13.23	2026-05-14 19:07:13.579	2026-05-14 19:07:13.59	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724888858	ankur	\N
1828	noow09mleb0liemukchzyi04	2026-05-14 19:11:12.789	2026-05-14 19:17:06.213	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687623200	vaishanvi bharkar	\N
1526	cnusqj2f89lmkl4cf5c0ts3q	2026-05-14 19:07:35.234	2026-05-14 19:17:08.375	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8105757555	.madhukar	\N
1460	ianizq4jfa3aurretf9vg9y6	2026-05-14 19:07:14.475	2026-05-14 19:07:14.882	2026-05-14 19:07:14.895	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
1547	ctcptdv7dwa4wq9c9rk3mqo7	2026-05-14 19:07:44.147	2026-05-14 19:17:08.403	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979320012	parul patel	\N
1466	jwml0l75cc2s1b0c8iwkwqn9	2026-05-14 19:07:15.716	2026-05-14 19:07:16.209	2026-05-14 19:07:16.223	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904149382	TEJAS BORISA	\N
1559	xoocom4lez2pgwymheyuauuy	2026-05-14 19:07:47.951	2026-05-14 19:17:08.428	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724939424	boby	\N
1581	fofgmhx808h9wxvgwrgdq79w	2026-05-14 19:07:55.344	2026-05-14 19:37:37.002	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898888898	Aman Patel	\N
1831	bnjpb6vggpu9arfk5dcr40nu	2026-05-14 19:11:13.439	2026-05-14 19:17:06.227	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925031672	rachna	\N
1412	xjkkdz3fkrbpm3rnwxs6tf0d	2026-05-14 19:07:01.233	2026-05-14 19:17:07.684	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9838917895	ANSHUL	\N
1415	lx0kotkexwcck4tmgxnv70x1	2026-05-14 19:07:01.809	2026-05-14 19:37:36.741	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825258843	Ayushi Agrawal	\N
1485	sg2n0nddguhdmmntdce1fjbp	2026-05-14 19:07:20.962	2026-05-14 19:07:21.485	2026-05-14 19:07:21.504	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725025000	bagga	\N
1418	rabcpwe6kndcxct0df1hbdm4	2026-05-14 19:07:02.394	2026-05-14 19:17:07.72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824041191	pinky modi	\N
1505	lxwukelm9b1oggnlbf2loptp	2026-05-14 19:07:28.299	2026-05-14 19:17:08.811	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460863785	PURVIBEN PRAJAPATI	\N
1491	ek31nm1rsoz8iw0kuvyzjlta	2026-05-14 19:07:22.665	2026-05-14 19:07:23.399	2026-05-14 19:07:23.424	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099924735	Pooja Srivastava	\N
1435	dj51rsostk8e12woxcgdcfxh	2026-05-14 19:07:07.574	2026-05-14 19:17:08.152	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879007060	RADHIKA NANDA	\N
1520	cu3brbr83ugfzwg4hqblnymt	2026-05-14 19:07:32.88	2026-05-14 19:17:08.838	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825008286	brjesh panchal	\N
1507	lxwukelm9b1oggnlbf2loptp	2026-05-14 19:07:28.299	2026-05-14 19:07:29.03	2026-05-14 19:07:29.061	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460863785	PURVIBEN PRAJAPATI	\N
1513	jerfo4kq5z5trzsoh4dlcltx	2026-05-14 19:07:30.75	2026-05-14 19:07:31.289	2026-05-14 19:07:31.308	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714967878	vipul	\N
1600	uto4ehxsvpnid0p0ktda881e	2026-05-14 19:08:00.648	2026-05-14 19:17:08.47	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638225166	chandu bhojwani	\N
1476	ue55pc4n9olre019nkvfp95x	2026-05-14 19:07:18.248	2026-05-14 19:37:37.35	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
1519	w8fq592ujog4qfw58zuuepfq	2026-05-14 19:07:32.187	2026-05-14 19:07:32.689	2026-05-14 19:07:32.707	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428103716	pinal mam	\N
1544	eiif6dgbn4y2tkws255x0o4v	2026-05-14 19:07:42.99	2026-05-14 19:17:08.633	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824262434	gaurang	\N
1568	a7hfztuygja0xpjc6iursx06	2026-05-14 19:07:51.041	2026-05-14 19:17:08.877	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998438045	c.b mehta	\N
1522	cu3brbr83ugfzwg4hqblnymt	2026-05-14 19:07:32.88	2026-05-14 19:07:33.477	2026-05-14 19:07:33.497	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825008286	brjesh panchal	\N
1587	wymfydagcrgkzmrv2ugv4tbg	2026-05-14 19:07:56.727	2026-05-14 19:17:08.691	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
1528	cnusqj2f89lmkl4cf5c0ts3q	2026-05-14 19:07:35.234	2026-05-14 19:07:36.029	2026-05-14 19:07:36.055	\N	\N	\N	\N	\N	\N	\N	\N	\N	8105757555	.madhukar	\N
1531	l5c8ojron7o29lqwt0isrks2	2026-05-14 19:07:36.344	2026-05-14 19:07:37.152	2026-05-14 19:07:37.186	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
1594	ud0dx2wdb2l1w3wgbakm0khe	2026-05-14 19:07:59.188	2026-05-14 19:17:08.705	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007282	SEEMA MEHTA	\N
1597	fzhgbbxn4hycuhfpm663vid2	2026-05-14 19:07:59.951	2026-05-14 19:17:08.718	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
1603	mqzlsr5xfl9l7yh6alo4y3sr	2026-05-14 19:08:01.327	2026-05-14 19:17:08.73	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924126036	MEGHNA SHUKLA	\N
1483	sg2n0nddguhdmmntdce1fjbp	2026-05-14 19:07:20.962	2026-05-14 19:17:08.744	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725025000	bagga	\N
1441	snlmow7fuccxifrubc92vkcc	2026-05-14 19:07:08.871	2026-05-14 19:37:36.801	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979381287	kajal thakkar	\N
1591	jmi4muqhvxxbplvd58qlaafx	2026-05-14 19:07:58.514	2026-05-14 19:17:08.937	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9769946369	chandni kapadiya	\N
1549	ctcptdv7dwa4wq9c9rk3mqo7	2026-05-14 19:07:44.147	2026-05-14 19:07:44.722	2026-05-14 19:07:44.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979320012	parul patel	\N
1552	ckphdcaxcpw6jlurgukarsbw	2026-05-14 19:07:45.156	2026-05-14 19:07:45.704	2026-05-14 19:07:45.718	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
1610	gc0kig8yi4ktb86itxb6oaje	2026-05-14 19:08:04.077	2026-05-14 19:17:08.949	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355076524	DEVASH RAVAL	\N
1613	epink18ff2v0vwvnxz4e3hzm	2026-05-14 19:08:04.822	2026-05-14 19:17:08.962	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979911315	CHINTAN PATEL	\N
1561	xoocom4lez2pgwymheyuauuy	2026-05-14 19:07:47.951	2026-05-14 19:07:48.679	2026-05-14 19:07:48.699	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724939424	boby	\N
1616	zmmhr3rj5wgp8q9r7gjekx0a	2026-05-14 19:08:05.577	2026-05-14 19:17:08.977	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043222087	krutika	\N
1014	r3ms05pnbrruhvpm6rj64bj1	2026-05-14 19:05:30.869	2026-05-14 19:17:09.239	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841668	rahul shah	\N
1570	a7hfztuygja0xpjc6iursx06	2026-05-14 19:07:51.041	2026-05-14 19:07:51.722	2026-05-14 19:07:51.746	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998438045	c.b mehta	\N
1580	kgd97t7yxq8bn3i2jgd6qsoo	2026-05-14 19:07:54.695	2026-05-14 19:07:55.167	2026-05-14 19:07:55.181	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825324802	SAGAR	\N
1583	fofgmhx808h9wxvgwrgdq79w	2026-05-14 19:07:55.344	2026-05-14 19:07:55.839	2026-05-14 19:07:55.854	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898888898	Aman Patel	\N
1458	ianizq4jfa3aurretf9vg9y6	2026-05-14 19:07:14.475	2026-05-14 19:37:36.843	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
1489	ek31nm1rsoz8iw0kuvyzjlta	2026-05-14 19:07:22.665	2026-05-14 19:37:37.028	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099924735	Pooja Srivastava	\N
1586	wxbw2rxp3op8qnfmhbhc3jdp	2026-05-14 19:07:56.056	2026-05-14 19:07:56.527	2026-05-14 19:07:56.543	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200168908	anshi	\N
1584	wxbw2rxp3op8qnfmhbhc3jdp	2026-05-14 19:07:56.056	2026-05-14 19:37:37.047	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200168908	anshi	\N
1589	wymfydagcrgkzmrv2ugv4tbg	2026-05-14 19:07:56.727	2026-05-14 19:07:57.389	2026-05-14 19:07:57.408	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
1593	jmi4muqhvxxbplvd58qlaafx	2026-05-14 19:07:58.514	2026-05-14 19:07:58.989	2026-05-14 19:07:59.009	\N	\N	\N	\N	\N	\N	\N	\N	\N	9769946369	chandni kapadiya	\N
1596	ud0dx2wdb2l1w3wgbakm0khe	2026-05-14 19:07:59.188	2026-05-14 19:07:59.726	2026-05-14 19:07:59.747	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007282	SEEMA MEHTA	\N
1599	fzhgbbxn4hycuhfpm663vid2	2026-05-14 19:07:59.951	2026-05-14 19:08:00.446	2026-05-14 19:08:00.467	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
1602	uto4ehxsvpnid0p0ktda881e	2026-05-14 19:08:00.648	2026-05-14 19:08:01.137	2026-05-14 19:08:01.161	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638225166	chandu bhojwani	\N
1605	mqzlsr5xfl9l7yh6alo4y3sr	2026-05-14 19:08:01.327	2026-05-14 19:08:01.8	2026-05-14 19:08:01.817	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924126036	MEGHNA SHUKLA	\N
1612	gc0kig8yi4ktb86itxb6oaje	2026-05-14 19:08:04.077	2026-05-14 19:08:04.57	2026-05-14 19:08:04.59	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355076524	DEVASH RAVAL	\N
1615	epink18ff2v0vwvnxz4e3hzm	2026-05-14 19:08:04.822	2026-05-14 19:08:05.298	2026-05-14 19:08:05.318	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979911315	CHINTAN PATEL	\N
1618	zmmhr3rj5wgp8q9r7gjekx0a	2026-05-14 19:08:05.577	2026-05-14 19:08:06.204	2026-05-14 19:08:06.224	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043222087	krutika	\N
1621	cpjso8mxlbu4mf90r78o1m6f	2026-05-14 19:08:06.423	2026-05-14 19:08:07.104	2026-05-14 19:08:07.153	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000882020	raja panchal	\N
1053	jdb7pyghy5hmrcr4vqe1lqjl	2026-05-14 19:05:38.894	2026-05-14 19:17:06.44	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779005950	ARJUN HARIBHAI PARMAR	\N
1827	jo16mwmziwxdq8tprytmwvb2	2026-05-14 19:11:11.958	2026-05-14 19:11:12.582	2026-05-14 19:11:12.604	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428373827	tejshvee gupta	\N
1113	i38xirywcvyg3dn3ut6jowun	2026-05-14 19:05:53.85	2026-05-14 19:37:36.055	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
1636	dr0155oqllgq3x7vvn1f0wdr	2026-05-14 19:08:10.097	2026-05-14 19:08:10.684	2026-05-14 19:08:10.704	\N	\N	\N	\N	\N	\N	\N	\N	\N	8401128002	MOKASH	\N
1830	noow09mleb0liemukchzyi04	2026-05-14 19:11:12.789	2026-05-14 19:11:13.287	2026-05-14 19:11:13.304	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687623200	vaishanvi bharkar	\N
1619	cpjso8mxlbu4mf90r78o1m6f	2026-05-14 19:08:06.423	2026-05-14 19:17:08.991	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000882020	raja panchal	\N
1649	sltczg7a3drz1to52yhtd4au	2026-05-14 19:08:15.612	2026-05-14 19:08:16.293	2026-05-14 19:08:16.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879560679	REEMA	\N
1833	bnjpb6vggpu9arfk5dcr40nu	2026-05-14 19:11:13.439	2026-05-14 19:11:13.91	2026-05-14 19:11:13.925	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925031672	rachna	\N
1625	atcpyvjs3t6eaw5bj85so3i1	2026-05-14 19:08:08.127	2026-05-14 19:17:09.022	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998467868	NIRALI	\N
1631	ybln8on06z5bgdfl1ju0mk7d	2026-05-14 19:08:09.44	2026-05-14 19:17:09.048	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574886038	harsh	\N
1634	dr0155oqllgq3x7vvn1f0wdr	2026-05-14 19:08:10.097	2026-05-14 19:37:37.091	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8401128002	MOKASH	\N
1647	sltczg7a3drz1to52yhtd4au	2026-05-14 19:08:15.612	2026-05-14 19:17:09.128	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879560679	REEMA	\N
1825	jo16mwmziwxdq8tprytmwvb2	2026-05-14 19:11:11.958	2026-05-14 19:37:37.507	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428373827	tejshvee gupta	\N
1624	sxk4vc06mu7p69rzctbml5gy	2026-05-14 19:08:07.361	2026-05-14 19:08:07.932	2026-05-14 19:08:07.952	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429756316	Mohit Sir advocate - Adani	\N
1622	sxk4vc06mu7p69rzctbml5gy	2026-05-14 19:08:07.361	2026-05-14 19:37:37.07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429756316	Mohit Sir advocate - Adani	\N
1643	gkbe35ikb5valu7e5iyx23yr	2026-05-14 19:08:12.76	2026-05-14 19:08:13.679	2026-05-14 19:08:13.724	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
1646	ijeowgph9ho43yd7yjz1ed7w	2026-05-14 19:08:14.141	2026-05-14 19:08:15.398	2026-05-14 19:08:15.417	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567992860	shreya	\N
1628	wu7oyjoaudkzwsi4e30frubi	2026-05-14 19:08:08.751	2026-05-14 19:17:09.036	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909927685	GOPI	\N
1641	gkbe35ikb5valu7e5iyx23yr	2026-05-14 19:08:12.76	2026-05-14 19:17:09.102	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
1668	a7qmg8un8pdg4bdw0u3h4410	2026-05-14 19:10:30.457	2026-05-14 19:37:37.126	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879006789	YASH VASANT SIR	\N
1627	atcpyvjs3t6eaw5bj85so3i1	2026-05-14 19:08:08.127	2026-05-14 19:08:08.583	2026-05-14 19:08:08.599	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998467868	NIRALI	\N
1630	wu7oyjoaudkzwsi4e30frubi	2026-05-14 19:08:08.751	2026-05-14 19:08:09.189	2026-05-14 19:08:09.205	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909927685	GOPI	\N
1633	ybln8on06z5bgdfl1ju0mk7d	2026-05-14 19:08:09.44	2026-05-14 19:08:09.917	2026-05-14 19:08:09.932	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574886038	harsh	\N
1690	rgcuhp3soye9npbz7ufm27c9	2026-05-14 19:10:35.944	2026-05-14 19:17:09.354	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512568891	PIYUSHKUMAR MAKWANA	\N
1696	z4teh23wkfy6hz79ax0zmp25	2026-05-14 19:10:37.263	2026-05-14 19:17:09.368	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974600045	LEENA MAM	\N
1639	nvqftf26ig7r16atrembrrsb	2026-05-14 19:08:10.897	2026-05-14 19:08:11.474	2026-05-14 19:08:11.495	\N	\N	\N	\N	\N	\N	\N	\N	\N	8757170894	PAVAN	\N
1640	rolq763h9cjtbzpihwhj4g06	2026-05-14 19:05:38.428	2026-05-14 19:08:12.418	2026-05-14 19:08:12.446	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825884867	hina shah	\N
1699	jpjoy44fu9gw4kk9s7mca73h	2026-05-14 19:10:37.746	2026-05-14 19:17:09.38	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824548060	ruju desai	\N
1702	nr0ua69w34fhskqa3r2jexr2	2026-05-14 19:10:38.316	2026-05-14 19:17:09.393	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879741312	HIMANSHU PATEL	\N
1705	o5ndmuk2ucs83rzpffcvtcho	2026-05-14 19:10:39.019	2026-05-14 19:17:09.407	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662847480	VINAY KHEMANI	\N
1731	n4q0s5q9q4qdyfvosjzkvgbv	2026-05-14 19:10:45.727	2026-05-14 19:17:09.42	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7486976958	HEER	\N
1652	pkct23ikid62mmhfe2e32diq	2026-05-14 19:08:16.541	2026-05-14 19:08:17.173	2026-05-14 19:08:17.2	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077905	jp pandya	\N
1734	dcp63dlc5s3sbs63fz64s8y5	2026-05-14 19:10:46.621	2026-05-14 19:17:09.434	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8488007876	jeel patel	\N
1687	yn6sugryqcgcj56bwfy2muh6	2026-05-14 19:10:35.322	2026-05-14 19:17:09.474	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879514480	BHVNA PATEL	\N
1655	ss5h8wc8clijw2ztxm27vh29	2026-05-14 19:10:24.272	2026-05-14 19:10:24.992	2026-05-14 19:10:25.015	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898189296	RAMESH BHAi	\N
1693	p8e007shpf1b33749s5kvryj	2026-05-14 19:10:36.692	2026-05-14 19:37:37.204	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925554558	kena joshi	\N
1709	fu1mkcxfqjw5s37e2u03sj0u	2026-05-14 19:10:40.122	2026-05-14 19:17:09.501	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712745736	prashant udani	\N
1658	wjirzz3nzxbacvmolsy6hvzq	2026-05-14 19:10:25.189	2026-05-14 19:10:26.185	2026-05-14 19:10:26.213	\N	\N	\N	\N	\N	\N	\N	\N	\N	7862009449	HANI JOSHI	\N
1713	c4beh65r1qz88j38hgopj0qx	2026-05-14 19:10:41.246	2026-05-14 19:17:09.527	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558647177	SAVAN BAROT	\N
1716	jw3b3o229qi746ahtthm00b7	2026-05-14 19:10:41.84	2026-05-14 19:17:09.54	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327596928	DIPAK L KADIA	\N
1661	ykod39frqt42af5e5aukjwc0	2026-05-14 19:10:26.437	2026-05-14 19:10:27.078	2026-05-14 19:10:27.101	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979884421	Kapil Parekh	\N
1662	icf53ufhxdekoqwkuxxjopzg	2026-05-14 19:06:20.358	2026-05-14 19:10:28.142	2026-05-14 19:10:28.159	\N	\N	\N	\N	\N	\N	\N	\N	\N	9632222155	bhavna	\N
1663	pukbyr6dx80esb5vbymf69o3	2026-05-14 19:05:32.598	2026-05-14 19:10:28.853	2026-05-14 19:10:28.869	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904099897	MAHESH HIRAGAR	\N
1719	igqlkzjcdbr7djcaiflztftw	2026-05-14 19:10:42.69	2026-05-14 19:37:37.242	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849834399	ASHA AND PETS FOUNDATION	\N
1722	crlcl3hwezt8nva1bxc9ya6l	2026-05-14 19:10:43.402	2026-05-14 19:17:09.567	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033465636	DIMPLE APRO	\N
1666	sxm1x1skx6phons6qy2zc0pt	2026-05-14 19:10:29.009	2026-05-14 19:10:29.42	2026-05-14 19:10:29.438	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173930722	aditi	\N
1667	r3ms05pnbrruhvpm6rj64bj1	2026-05-14 19:05:30.869	2026-05-14 19:10:30.29	2026-05-14 19:10:30.304	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841668	rahul shah	\N
1725	t3p2d3uefjsjiqnt8v5jisbs	2026-05-14 19:10:44.063	2026-05-14 19:17:09.579	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537512123	RAVI PATEL	\N
1728	it13vhrgqb7ctlz65bmheul5	2026-05-14 19:10:44.729	2026-05-14 19:17:09.593	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427674500	NEHA	\N
1670	a7qmg8un8pdg4bdw0u3h4410	2026-05-14 19:10:30.457	2026-05-14 19:10:30.928	2026-05-14 19:10:30.949	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879006789	YASH VASANT SIR	\N
1671	cn2lcfdmiuxlhdc5ddyr4vkb	2026-05-14 19:05:56.469	2026-05-14 19:10:31.841	2026-05-14 19:10:31.854	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662194423	dr.kapil ahuja	\N
1637	nvqftf26ig7r16atrembrrsb	2026-05-14 19:08:10.897	2026-05-14 19:17:09.075	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8757170894	PAVAN	\N
1674	veryorbo35f4hs2htpa7wb2n	2026-05-14 19:10:32.031	2026-05-14 19:10:32.49	2026-05-14 19:10:32.505	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909009752	shiana shah	\N
1644	ijeowgph9ho43yd7yjz1ed7w	2026-05-14 19:08:14.141	2026-05-14 19:17:09.113	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567992860	shreya	\N
1650	pkct23ikid62mmhfe2e32diq	2026-05-14 19:08:16.541	2026-05-14 19:17:09.142	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077905	jp pandya	\N
1677	b1z6snwbxqkn8gc2l52wjbdd	2026-05-14 19:10:32.671	2026-05-14 19:10:33.236	2026-05-14 19:10:33.251	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238004983	deepak	\N
1653	ss5h8wc8clijw2ztxm27vh29	2026-05-14 19:10:24.272	2026-05-14 19:17:09.155	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898189296	RAMESH BHAi	\N
1656	wjirzz3nzxbacvmolsy6hvzq	2026-05-14 19:10:25.189	2026-05-14 19:17:09.17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7862009449	HANI JOSHI	\N
1659	ykod39frqt42af5e5aukjwc0	2026-05-14 19:10:26.437	2026-05-14 19:17:09.183	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979884421	Kapil Parekh	\N
1680	o99pwtt8zhikq3bes3zw017r	2026-05-14 19:10:33.432	2026-05-14 19:10:33.931	2026-05-14 19:10:33.944	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924454194	jagdish bhai	\N
1664	sxm1x1skx6phons6qy2zc0pt	2026-05-14 19:10:29.009	2026-05-14 19:17:09.225	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173930722	aditi	\N
1672	veryorbo35f4hs2htpa7wb2n	2026-05-14 19:10:32.031	2026-05-14 19:17:09.285	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909009752	shiana shah	\N
1683	jr2sthv6wv0gd83h8m04d2ym	2026-05-14 19:10:34.101	2026-05-14 19:10:34.536	2026-05-14 19:10:34.548	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016235634	aditya	\N
1675	b1z6snwbxqkn8gc2l52wjbdd	2026-05-14 19:10:32.671	2026-05-14 19:17:09.298	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238004983	deepak	\N
1681	jr2sthv6wv0gd83h8m04d2ym	2026-05-14 19:10:34.101	2026-05-14 19:17:09.325	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016235634	aditya	\N
1686	x6luom8uku1cwhfuf3jkj8m1	2026-05-14 19:10:34.705	2026-05-14 19:10:35.146	2026-05-14 19:10:35.158	\N	\N	\N	\N	\N	\N	\N	\N	\N	8859098669	somya mam	\N
1684	x6luom8uku1cwhfuf3jkj8m1	2026-05-14 19:10:34.705	2026-05-14 19:37:37.163	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8859098669	somya mam	\N
1689	yn6sugryqcgcj56bwfy2muh6	2026-05-14 19:10:35.322	2026-05-14 19:10:35.768	2026-05-14 19:10:35.779	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879514480	BHVNA PATEL	\N
1692	rgcuhp3soye9npbz7ufm27c9	2026-05-14 19:10:35.944	2026-05-14 19:10:36.461	2026-05-14 19:10:36.481	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512568891	PIYUSHKUMAR MAKWANA	\N
1695	p8e007shpf1b33749s5kvryj	2026-05-14 19:10:36.692	2026-05-14 19:10:37.141	2026-05-14 19:10:37.151	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925554558	kena joshi	\N
1698	z4teh23wkfy6hz79ax0zmp25	2026-05-14 19:10:37.263	2026-05-14 19:10:37.608	2026-05-14 19:10:37.618	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974600045	LEENA MAM	\N
1701	jpjoy44fu9gw4kk9s7mca73h	2026-05-14 19:10:37.746	2026-05-14 19:10:38.09	2026-05-14 19:10:38.1	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824548060	ruju desai	\N
1704	nr0ua69w34fhskqa3r2jexr2	2026-05-14 19:10:38.316	2026-05-14 19:10:38.864	2026-05-14 19:10:38.876	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879741312	HIMANSHU PATEL	\N
1707	o5ndmuk2ucs83rzpffcvtcho	2026-05-14 19:10:39.019	2026-05-14 19:10:39.395	2026-05-14 19:10:39.407	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662847480	VINAY KHEMANI	\N
1711	fu1mkcxfqjw5s37e2u03sj0u	2026-05-14 19:10:40.122	2026-05-14 19:10:40.492	2026-05-14 19:10:40.504	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712745736	prashant udani	\N
1712	q8f1xv1si1b6z5nz82kq5fy5	2026-05-14 19:06:31.394	2026-05-14 19:10:41.113	2026-05-14 19:10:41.126	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
1715	c4beh65r1qz88j38hgopj0qx	2026-05-14 19:10:41.246	2026-05-14 19:10:41.637	2026-05-14 19:10:41.662	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558647177	SAVAN BAROT	\N
1718	jw3b3o229qi746ahtthm00b7	2026-05-14 19:10:41.84	2026-05-14 19:10:42.487	2026-05-14 19:10:42.507	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327596928	DIPAK L KADIA	\N
1721	igqlkzjcdbr7djcaiflztftw	2026-05-14 19:10:42.69	2026-05-14 19:10:43.219	2026-05-14 19:10:43.235	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849834399	ASHA AND PETS FOUNDATION	\N
1724	crlcl3hwezt8nva1bxc9ya6l	2026-05-14 19:10:43.402	2026-05-14 19:10:43.886	2026-05-14 19:10:43.903	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033465636	DIMPLE APRO	\N
1727	t3p2d3uefjsjiqnt8v5jisbs	2026-05-14 19:10:44.063	2026-05-14 19:10:44.536	2026-05-14 19:10:44.551	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537512123	RAVI PATEL	\N
1730	it13vhrgqb7ctlz65bmheul5	2026-05-14 19:10:44.729	2026-05-14 19:10:45.498	2026-05-14 19:10:45.527	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427674500	NEHA	\N
1733	n4q0s5q9q4qdyfvosjzkvgbv	2026-05-14 19:10:45.727	2026-05-14 19:10:46.381	2026-05-14 19:10:46.407	\N	\N	\N	\N	\N	\N	\N	\N	\N	7486976958	HEER	\N
1764	asb4pxripu7hq5dt3vagg625	2026-05-14 19:07:17.057	2026-05-14 19:10:55.967	2026-05-14 19:10:55.979	\N	\N	\N	\N	\N	\N	\N	\N	\N	7688272858	enhance family saloon	\N
1767	slp8fj1my8kdwc8w6i4qct75	2026-05-14 19:10:56.095	2026-05-14 19:10:56.446	2026-05-14 19:10:56.457	\N	\N	\N	\N	\N	\N	\N	\N	\N	9228231604	vishal	\N
1770	rjwzr5rjmg92ulunxxmonw57	2026-05-14 19:10:56.578	2026-05-14 19:10:56.961	2026-05-14 19:10:56.983	\N	\N	\N	\N	\N	\N	\N	\N	\N	9106765256	sherry	\N
1736	dcp63dlc5s3sbs63fz64s8y5	2026-05-14 19:10:46.621	2026-05-14 19:10:47.592	2026-05-14 19:10:47.609	\N	\N	\N	\N	\N	\N	\N	\N	\N	8488007876	jeel patel	\N
1742	ji2qm6azocnb28nyty1mdrzu	2026-05-14 19:10:48.526	2026-05-14 19:10:49.027	2026-05-14 19:10:49.042	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898001888	jaymin	\N
1745	puxjcagupjgg9zqzsapczrun	2026-05-14 19:10:49.227	2026-05-14 19:10:49.72	2026-05-14 19:10:49.74	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824051514	Girish	\N
1747	codagj56yi577erduz22rn2p	2026-05-14 19:06:37.741	2026-05-14 19:10:51.249	2026-05-14 19:10:51.265	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825539995	mansi	\N
1750	jgjdpvx7ir5bm7c5oyip2txg	2026-05-14 19:10:51.44	2026-05-14 19:10:52.053	2026-05-14 19:10:52.08	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726984858	Aashay Shah	\N
1753	uh3k2o30ogutsjdtl3k4ikvj	2026-05-14 19:10:52.331	2026-05-14 19:10:53.175	2026-05-14 19:10:53.194	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790181	jaskaur	\N
1756	okxq5aofy6luh0vvqr455zo2	2026-05-14 19:10:53.369	2026-05-14 19:10:53.814	2026-05-14 19:10:53.827	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824654656	ROSHANI JOSHI	\N
1759	rp8d720zqpatotq5yzecw1ws	2026-05-14 19:10:53.959	2026-05-14 19:10:54.305	2026-05-14 19:10:54.316	\N	\N	\N	\N	\N	\N	\N	\N	\N	9886779284	SHASHANT	\N
1740	ji2qm6azocnb28nyty1mdrzu	2026-05-14 19:10:48.526	2026-05-14 19:17:09.607	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898001888	jaymin	\N
1739	aucltv41u1lqzb7586ytrsmj	2026-05-14 19:10:47.81	2026-05-14 19:10:48.305	2026-05-14 19:10:48.329	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160362028	vanraj bhai	\N
1748	jgjdpvx7ir5bm7c5oyip2txg	2026-05-14 19:10:51.44	2026-05-14 19:37:37.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726984858	Aashay Shah	\N
1765	slp8fj1my8kdwc8w6i4qct75	2026-05-14 19:10:56.095	2026-05-14 19:17:09.717	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9228231604	vishal	\N
1746	r8rdjl11ar7ox18kgmxs2khr	2026-05-14 19:08:01.994	2026-05-14 19:10:50.49	2026-05-14 19:10:50.504	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687686467	ANERI SHAH	\N
1768	rjwzr5rjmg92ulunxxmonw57	2026-05-14 19:10:56.578	2026-05-14 19:17:09.729	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9106765256	sherry	\N
1771	rjmjobzcrn9ajfa9dvv0111m	2026-05-14 19:10:57.156	2026-05-14 19:17:09.743	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099550744	ANIL KARYA	\N
1760	a10b6j67mmuybts0c84ntq94	2026-05-14 19:10:54.438	2026-05-14 19:17:09.792	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7575051410	aashi	\N
1757	rp8d720zqpatotq5yzecw1ws	2026-05-14 19:10:53.959	2026-05-14 19:37:37.297	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9886779284	SHASHANT	\N
1787	y98s79m3jxtne20hd0j0bdla	2026-05-14 19:11:00.655	2026-05-14 19:17:09.867	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429905509	seema	\N
1775	i2c4imot2bj3tb9dxeoq8xlo	2026-05-14 19:10:58.68	2026-05-14 19:37:37.38	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000129129	DR.RUPIN TRIVEDI	\N
1762	a10b6j67mmuybts0c84ntq94	2026-05-14 19:10:54.438	2026-05-14 19:10:54.795	2026-05-14 19:10:54.806	\N	\N	\N	\N	\N	\N	\N	\N	\N	7575051410	aashi	\N
1763	ue55pc4n9olre019nkvfp95x	2026-05-14 19:07:18.248	2026-05-14 19:10:55.396	2026-05-14 19:10:55.41	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
1777	i2c4imot2bj3tb9dxeoq8xlo	2026-05-14 19:10:58.68	2026-05-14 19:10:59.122	2026-05-14 19:10:59.133	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000129129	DR.RUPIN TRIVEDI	\N
1780	amf8zc52v7975c41k88gnki1	2026-05-14 19:10:59.258	2026-05-14 19:10:59.587	2026-05-14 19:10:59.598	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428807176	SHITAL	\N
1783	hezwwqzp6ywkkpvjkgxmof5n	2026-05-14 19:10:59.724	2026-05-14 19:11:00.066	2026-05-14 19:11:00.077	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898163901	mahi rajput	\N
1789	y98s79m3jxtne20hd0j0bdla	2026-05-14 19:11:00.655	2026-05-14 19:11:01.227	2026-05-14 19:11:01.242	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429905509	seema	\N
1792	mtcasox1vvvkx0dgj8mfkqq9	2026-05-14 19:11:01.393	2026-05-14 19:11:01.869	2026-05-14 19:11:01.885	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160500054	pinky parikh	\N
1795	hpdqv1zyem3jreq0blr8431v	2026-05-14 19:11:02.051	2026-05-14 19:11:02.508	2026-05-14 19:11:02.523	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904501850	MAMTA PANCHAL	\N
1737	aucltv41u1lqzb7586ytrsmj	2026-05-14 19:10:47.81	2026-05-14 19:17:09.445	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160362028	vanraj bhai	\N
1743	puxjcagupjgg9zqzsapczrun	2026-05-14 19:10:49.227	2026-05-14 19:17:09.62	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824051514	Girish	\N
1751	uh3k2o30ogutsjdtl3k4ikvj	2026-05-14 19:10:52.331	2026-05-14 19:17:09.661	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790181	jaskaur	\N
1754	okxq5aofy6luh0vvqr455zo2	2026-05-14 19:10:53.369	2026-05-14 19:17:09.674	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824654656	ROSHANI JOSHI	\N
1784	vcfwkxj3nqbiwcnwzy96xvwj	2026-05-14 19:11:00.195	2026-05-14 19:37:37.323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328243341	arpita	\N
1774	rjmjobzcrn9ajfa9dvv0111m	2026-05-14 19:10:57.156	2026-05-14 19:10:58.493	2026-05-14 19:10:58.51	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099550744	ANIL KARYA	\N
1778	amf8zc52v7975c41k88gnki1	2026-05-14 19:10:59.258	2026-05-14 19:37:37.406	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428807176	SHITAL	\N
1781	hezwwqzp6ywkkpvjkgxmof5n	2026-05-14 19:10:59.724	2026-05-14 19:37:37.427	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898163901	mahi rajput	\N
1786	vcfwkxj3nqbiwcnwzy96xvwj	2026-05-14 19:11:00.195	2026-05-14 19:11:00.517	2026-05-14 19:11:00.527	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328243341	arpita	\N
1790	mtcasox1vvvkx0dgj8mfkqq9	2026-05-14 19:11:01.393	2026-05-14 19:17:09.881	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160500054	pinky parikh	\N
1793	hpdqv1zyem3jreq0blr8431v	2026-05-14 19:11:02.051	2026-05-14 19:17:09.895	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904501850	MAMTA PANCHAL	\N
\.


--
-- Data for Name: customers_customet_status_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customet_status_lnk (id, customer_id, customet_status_id) FROM stdin;
638	1002	11
639	1004	25
640	1005	11
641	1007	25
642	1008	11
643	1010	25
644	1011	11
646	1014	11
648	1017	11
649	1019	25
650	1020	11
652	1023	11
654	1026	11
655	1028	25
656	1029	11
657	1031	25
658	1032	11
659	1034	25
660	1035	11
662	1038	11
663	1040	25
664	1041	11
665	1043	25
666	1044	11
667	1046	25
668	1047	11
669	1049	25
670	1050	11
672	1053	11
673	1055	25
674	1056	11
675	1058	25
676	1059	11
677	1061	25
678	1062	11
679	1064	25
680	1065	11
681	1067	25
682	1068	11
683	1070	25
684	1071	11
685	1073	25
686	1074	11
687	1076	25
688	1077	11
689	1079	25
690	1080	11
691	1082	25
692	1083	11
693	1085	25
694	1086	11
695	1088	25
696	1089	11
697	1091	25
698	1092	11
700	1095	11
701	1097	25
702	1098	11
703	1100	25
704	1101	11
705	1103	25
706	1104	11
707	1106	25
708	1107	11
709	1109	25
710	1110	11
712	1113	11
713	1115	25
714	1116	11
716	1119	11
717	1121	25
718	1122	11
719	1124	25
720	1125	11
722	1128	11
723	1130	25
724	1131	11
726	1134	11
728	1137	11
729	1139	25
730	1140	11
731	1142	25
732	1143	11
733	1145	25
734	1146	11
736	1149	11
737	1151	25
738	1152	11
740	1155	11
741	1157	25
742	1158	11
743	1160	25
745	1161	25
746	1162	11
747	1164	25
749	1165	25
750	1166	11
751	1168	25
752	1169	11
753	1171	25
754	1172	11
755	1174	25
756	1175	11
758	1178	11
759	1180	25
760	1181	11
761	1183	25
762	1184	11
764	1187	11
766	1190	11
767	1192	25
768	1193	11
770	1196	11
771	1198	25
772	1199	11
773	1201	25
774	1202	11
775	1204	25
776	1205	11
777	1207	25
778	1208	11
779	1210	25
780	1211	11
781	1213	25
782	1214	11
783	1216	25
784	1217	11
785	1219	25
786	1220	11
787	1222	25
788	1223	11
789	1225	25
791	1226	25
792	1227	11
793	1229	25
794	1230	11
796	1233	11
797	1235	25
798	1236	11
799	1238	25
800	1239	11
801	1241	25
802	1242	11
803	1244	25
804	1245	11
805	1247	25
806	1248	11
807	1250	25
808	1251	11
809	1253	25
810	1254	11
811	1256	25
812	1257	11
813	1259	25
814	1260	11
815	1262	25
816	1263	11
817	1265	25
819	1266	25
820	1267	11
821	1269	25
822	1270	11
823	1272	25
824	1273	11
825	1275	25
826	1276	11
827	1278	25
828	1279	11
829	1281	25
846	1304	11
830	1282	11
834	1288	11
835	1290	25
838	1294	11
844	1301	11
845	1303	25
848	1307	11
856	1319	11
857	1321	25
868	1335	11
869	1337	25
870	1338	11
871	1340	25
874	1342	11
875	1344	25
878	1348	11
879	1350	25
884	1357	11
885	1359	25
888	1361	11
889	1363	25
892	1367	11
893	1369	25
896	1373	11
897	1375	25
902	1382	11
903	1384	25
906	1388	11
907	1390	25
910	1394	11
911	1396	25
912	1397	11
913	1399	25
916	1403	11
917	1405	25
918	1406	11
919	1408	25
922	1412	11
923	1414	25
926	1418	11
927	1420	25
832	1285	11
833	1287	25
836	1291	11
837	1293	25
842	1298	11
843	1300	25
852	1313	11
853	1315	25
854	1316	11
855	1318	25
866	1332	11
867	1334	25
847	1306	25
850	1310	11
851	1312	25
858	1322	11
859	1324	25
860	1325	11
861	1327	25
862	1328	11
863	1330	25
876	1345	11
877	1347	25
880	1351	11
881	1353	25
882	1354	11
883	1356	25
890	1364	11
891	1366	25
894	1370	11
895	1372	25
898	1376	11
899	1378	25
900	1379	11
901	1381	25
904	1385	11
905	1387	25
908	1391	11
909	1393	25
914	1400	11
915	1402	25
920	1409	11
921	1411	25
924	1415	11
925	1417	25
928	1421	11
929	1423	25
930	1424	11
931	1426	25
932	1427	11
933	1429	25
934	1430	11
935	1432	25
937	1433	25
940	1435	11
941	1437	25
942	1438	11
943	1440	25
944	1441	11
945	1443	25
946	1444	11
947	1446	25
948	1447	11
949	1449	25
950	1450	11
951	1452	25
953	1453	25
954	1454	11
955	1456	25
957	1457	25
958	1458	11
959	1460	25
960	1461	11
961	1463	25
962	1464	11
963	1466	25
964	1467	11
965	1469	25
966	1470	11
968	1473	11
969	1475	25
970	1476	11
972	1479	11
973	1481	25
975	1482	25
976	1483	11
977	1485	25
978	1486	11
979	1488	25
980	1489	11
981	1491	25
983	1492	25
984	1493	11
985	1495	25
986	1496	11
987	1498	25
988	1499	11
989	1501	25
990	1502	11
991	1504	25
992	1505	11
993	1507	25
994	1508	11
995	1510	25
996	1511	11
997	1513	25
998	1514	11
999	1516	25
1000	1517	11
1001	1519	25
1002	1520	11
1003	1522	25
1004	1523	11
1005	1525	25
1006	1526	11
1007	1528	25
1008	1529	11
1009	1531	25
1010	1532	11
1011	1534	25
1012	1535	11
1013	1537	25
1014	1538	11
1015	1540	25
1016	1541	11
1017	1543	25
1018	1544	11
1019	1546	25
1020	1547	11
1021	1549	25
1022	1550	11
1023	1552	25
1024	1553	11
1025	1555	25
1026	1556	11
1027	1558	25
1028	1559	11
1029	1561	25
1030	1562	11
1031	1564	25
1032	1565	11
1033	1567	25
1034	1568	11
1035	1570	25
1037	1571	25
1038	1572	11
1039	1574	25
1040	1575	11
1041	1577	25
1042	1578	11
1043	1580	25
1044	1581	11
1045	1583	25
1046	1584	11
1047	1586	25
1048	1587	11
1049	1589	25
1052	1591	11
1053	1593	25
1054	1594	11
1055	1596	25
1056	1597	11
1057	1599	25
1058	1600	11
1059	1602	25
1060	1603	11
1061	1605	25
1062	1606	11
1066	1610	11
1067	1612	25
1068	1613	11
1069	1615	25
1070	1616	11
1071	1618	25
1072	1619	11
1073	1621	25
1074	1622	11
1075	1624	25
1076	1625	11
1077	1627	25
1078	1628	11
1079	1630	25
1080	1631	11
1081	1633	25
1082	1634	11
1083	1636	25
1084	1637	11
1085	1639	25
1087	1640	25
1088	1641	11
1089	1643	25
1090	1644	11
1091	1646	25
1092	1647	11
1093	1649	25
1094	1650	11
1095	1652	25
1096	1653	11
1097	1655	25
1098	1656	11
1099	1658	25
1100	1659	11
1101	1661	25
1103	1662	25
1105	1663	25
1106	1664	11
1107	1666	25
1109	1667	25
1110	1668	11
1111	1670	25
1113	1671	25
1114	1672	11
1115	1674	25
1116	1675	11
1117	1677	25
1118	1678	11
1119	1680	25
1120	1681	11
1121	1683	25
1122	1684	11
1123	1686	25
1124	1687	11
1125	1689	25
1126	1690	11
1127	1692	25
1128	1693	11
1129	1695	25
1130	1696	11
1131	1698	25
1132	1699	11
1133	1701	25
1134	1702	11
1135	1704	25
1136	1705	11
1137	1707	25
1140	1709	11
1141	1711	25
1143	1712	25
1144	1713	11
1145	1715	25
1146	1716	11
1147	1718	25
1148	1719	11
1149	1721	25
1150	1722	11
1151	1724	25
1152	1725	11
1153	1727	25
1154	1728	11
1155	1730	25
1156	1731	11
1157	1733	25
1158	1734	11
1159	1736	25
1160	1737	11
1161	1739	25
1162	1740	11
1163	1742	25
1164	1743	11
1165	1745	25
1167	1746	25
1169	1747	25
1170	1748	11
1171	1750	25
1172	1751	11
1173	1753	25
1174	1754	11
1175	1756	25
1176	1757	11
1177	1759	25
1178	1760	11
1179	1762	25
1181	1763	25
1183	1764	25
1184	1765	11
1185	1767	25
1186	1768	11
1187	1770	25
1188	1771	11
1191	1774	25
1192	1775	11
1193	1777	25
1194	1778	11
1195	1780	25
1196	1781	11
1197	1783	25
1198	1784	11
1199	1786	25
1200	1787	11
1201	1789	25
1202	1790	11
1203	1792	25
1204	1793	11
1205	1795	25
1207	1796	25
1208	1797	11
1209	1799	25
1211	1800	25
1212	1801	11
1213	1803	25
1214	1804	11
1215	1806	25
1216	1807	11
1217	1809	25
1218	1810	11
1219	1812	25
1221	1813	25
1222	1814	11
1223	1816	25
1224	1817	11
1225	1819	25
1226	1820	11
1227	1822	25
1229	1823	25
1231	1824	25
1232	1825	11
1233	1827	25
1234	1828	11
1235	1830	25
1236	1831	11
1237	1833	25
\.


--
-- Data for Name: customers_pets_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_pets_lnk (id, customer_id, pet_id, pet_ord) FROM stdin;
\.


--
-- Data for Name: customers_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_store_lnk (id, customer_id, store_id) FROM stdin;
1219	1157	10
1220	1158	9
1485	1423	10
1222	1160	10
1223	1161	10
1224	1162	9
1489	1427	9
1226	1164	10
1064	1002	9
1227	1165	10
1066	1004	10
1067	1005	9
1228	1166	9
1069	1007	10
1070	1008	9
1861	1799	10
1072	1010	10
1073	1011	9
1230	1168	10
1491	1429	10
1076	1014	9
1231	1169	9
1495	1433	10
1079	1017	9
1497	1435	9
1081	1019	10
1082	1020	9
1233	1171	10
1863	1801	9
1085	1023	9
1234	1172	9
1088	1026	9
1866	1804	9
1090	1028	10
1091	1029	9
1236	1174	10
1093	1031	10
1094	1032	9
1237	1175	9
1096	1034	10
1097	1035	9
1869	1807	9
1100	1038	9
1102	1040	10
1103	1041	9
1240	1178	9
1105	1043	10
1106	1044	9
1872	1810	9
1108	1046	10
1109	1047	9
1242	1180	10
1111	1049	10
1112	1050	9
1243	1181	9
1115	1053	9
1875	1813	10
1117	1055	10
1118	1056	9
1245	1183	10
1120	1058	10
1121	1059	9
1246	1184	9
1123	1061	10
1124	1062	9
1878	1816	10
1126	1064	10
1127	1065	9
1129	1067	10
1130	1068	9
1249	1187	9
1132	1070	10
1133	1071	9
1881	1819	10
1135	1073	10
1136	1074	9
1884	1822	10
1138	1076	10
1139	1077	9
1252	1190	9
1141	1079	10
1142	1080	9
1886	1824	10
1144	1082	10
1145	1083	9
1254	1192	10
1147	1085	10
1148	1086	9
1255	1193	9
1150	1088	10
1151	1089	9
1153	1091	10
1154	1092	9
1157	1095	9
1258	1196	9
1159	1097	10
1160	1098	9
1162	1100	10
1163	1101	9
1260	1198	10
1165	1103	10
1166	1104	9
1261	1199	9
1168	1106	10
1169	1107	9
1171	1109	10
1172	1110	9
1263	1201	10
1175	1113	9
1264	1202	9
1177	1115	10
1178	1116	9
1181	1119	9
1266	1204	10
1183	1121	10
1184	1122	9
1267	1205	9
1186	1124	10
1187	1125	9
1190	1128	9
1269	1207	10
1192	1130	10
1193	1131	9
1270	1208	9
1196	1134	9
1199	1137	9
1272	1210	10
1201	1139	10
1202	1140	9
1273	1211	9
1204	1142	10
1205	1143	9
1207	1145	10
1208	1146	9
1275	1213	10
1211	1149	9
1276	1214	9
1213	1151	10
1214	1152	9
1217	1155	9
1278	1216	10
1279	1217	9
1281	1219	10
1282	1220	9
1284	1222	10
1285	1223	9
1287	1225	10
1288	1226	10
1289	1227	9
1291	1229	10
1292	1230	9
1295	1233	9
1297	1235	10
1298	1236	9
1300	1238	10
1301	1239	9
1303	1241	10
1304	1242	9
1306	1244	10
1307	1245	9
1309	1247	10
1310	1248	9
1312	1250	10
1313	1251	9
1315	1253	10
1316	1254	9
1318	1256	10
1319	1257	9
1321	1259	10
1322	1260	9
1324	1262	10
1325	1263	9
1327	1265	10
1328	1266	10
1329	1267	9
1331	1269	10
1332	1270	9
1334	1272	10
1335	1273	9
1337	1275	10
1338	1276	9
1486	1424	9
1340	1278	10
1366	1304	9
1862	1800	10
1368	1306	10
1372	1310	9
1488	1426	10
1374	1312	10
1384	1322	9
1492	1430	9
1386	1324	10
1389	1327	10
1392	1330	10
1400	1338	9
1865	1803	10
1868	1806	10
1407	1345	9
1494	1432	10
1409	1347	10
1413	1351	9
1871	1809	10
1415	1353	10
1418	1356	10
1874	1812	10
1426	1364	9
1500	1438	9
1428	1366	10
1432	1370	9
1876	1814	9
1434	1372	10
1438	1376	9
1502	1440	10
1440	1378	10
1443	1381	10
1447	1385	9
1506	1444	9
1449	1387	10
1453	1391	9
1455	1393	10
1459	1397	9
1508	1446	10
1462	1400	9
1512	1450	9
1464	1402	10
1468	1406	9
1879	1817	9
1471	1409	9
1514	1452	10
1473	1411	10
1477	1415	9
1516	1454	9
1479	1417	10
1483	1421	9
1882	1820	9
1519	1457	10
1523	1461	9
1525	1463	10
1532	1470	9
1885	1823	10
1887	1825	9
1541	1479	9
1543	1481	10
1555	1493	9
1890	1828	9
1557	1495	10
1561	1499	9
1563	1501	10
1566	1504	10
1570	1508	9
1893	1831	9
1573	1511	9
1576	1514	9
1578	1516	10
1594	1532	9
1596	1534	10
1602	1540	10
1603	1541	9
1605	1543	10
1608	1546	10
1612	1550	9
1615	1553	9
1617	1555	10
1618	1556	9
1620	1558	10
1624	1562	9
1626	1564	10
1627	1565	9
1629	1567	10
1633	1571	10
1637	1575	9
1639	1577	10
1643	1581	9
1645	1583	10
1659	1597	9
1661	1599	10
1665	1603	9
1667	1605	10
1675	1613	9
1677	1615	10
1687	1625	9
1689	1627	10
1692	1630	10
1695	1633	10
1699	1637	9
1701	1639	10
1702	1640	10
1706	1644	9
1712	1650	9
1714	1652	10
1715	1653	9
1720	1658	10
1723	1661	10
1724	1662	10
1725	1663	10
1728	1666	10
1730	1668	9
1733	1671	10
1736	1674	10
1740	1678	9
1742	1680	10
1745	1683	10
1748	1686	10
1752	1690	9
1754	1692	10
1826	1764	10
1829	1767	10
1832	1770	10
1836	1774	10
1840	1778	9
1843	1781	9
1846	1784	9
1848	1786	10
1852	1790	9
1855	1793	9
1858	1796	10
1341	1279	9
1499	1437	10
1343	1281	10
1889	1827	10
1350	1288	9
1503	1441	9
1352	1290	10
1356	1294	9
1892	1830	10
1360	1298	9
1505	1443	10
1363	1301	9
1509	1447	9
1365	1303	10
1369	1307	9
1895	1833	10
1378	1316	9
1511	1449	10
1381	1319	9
1515	1453	10
1383	1321	10
1397	1335	9
1518	1456	10
1399	1337	10
1402	1340	10
1404	1342	9
1520	1458	9
1406	1344	10
1410	1348	9
1412	1350	10
1416	1354	9
1522	1460	10
1419	1357	9
1526	1464	9
1421	1359	10
1423	1361	9
1425	1363	10
1429	1367	9
1528	1466	10
1431	1369	10
1435	1373	9
1538	1476	9
1437	1375	10
1441	1379	9
1444	1382	9
1446	1384	10
1450	1388	9
1545	1483	9
1452	1390	10
1456	1394	9
1458	1396	10
1461	1399	10
1465	1403	9
1547	1485	10
1467	1405	10
1470	1408	10
1474	1412	9
1551	1489	9
1476	1414	10
1480	1418	9
1482	1420	10
1553	1491	10
1567	1505	9
1569	1507	10
1575	1513	10
1579	1517	9
1581	1519	10
1582	1520	9
1584	1522	10
1588	1526	9
1590	1528	10
1593	1531	10
1600	1538	9
1606	1544	9
1609	1547	9
1611	1549	10
1614	1552	10
1621	1559	9
1623	1561	10
1630	1568	9
1632	1570	10
1646	1584	9
1648	1586	10
1653	1591	9
1655	1593	10
1662	1600	9
1664	1602	10
1668	1606	9
1672	1610	9
1674	1612	10
1680	1618	10
1683	1621	10
1693	1631	9
1696	1634	9
1698	1636	10
1709	1647	9
1711	1649	10
1717	1655	10
1726	1664	9
1729	1667	10
1732	1670	10
1734	1672	9
1737	1675	9
1739	1677	10
1743	1681	9
1746	1684	9
1749	1687	9
1751	1689	10
1755	1693	9
1757	1695	10
1761	1699	9
1764	1702	9
1767	1705	9
1773	1711	10
1774	1712	10
1777	1715	10
1780	1718	10
1783	1721	10
1786	1724	10
1789	1727	10
1792	1730	10
1796	1734	9
1798	1736	10
1802	1740	9
1804	1742	10
1807	1745	10
1809	1747	10
1812	1750	10
1815	1753	10
1818	1756	10
1821	1759	10
1344	1282	9
1529	1467	9
1347	1285	9
1349	1287	10
1353	1291	9
1531	1469	10
1355	1293	10
1362	1300	10
1375	1313	9
1535	1473	9
1377	1315	10
1380	1318	10
1387	1325	9
1390	1328	9
1537	1475	10
1394	1332	9
1544	1482	10
1396	1334	10
1548	1486	9
1550	1488	10
1554	1492	10
1558	1496	9
1560	1498	10
1564	1502	9
1572	1510	10
1585	1523	9
1587	1525	10
1591	1529	9
1597	1535	9
1599	1537	10
1634	1572	9
1636	1574	10
1640	1578	9
1642	1580	10
1649	1587	9
1651	1589	10
1656	1594	9
1658	1596	10
1678	1616	9
1681	1619	9
1684	1622	9
1686	1624	10
1690	1628	9
1703	1641	9
1705	1643	10
1708	1646	10
1718	1656	9
1721	1659	9
1758	1696	9
1760	1698	10
1763	1701	10
1766	1704	10
1769	1707	10
1771	1709	9
1775	1713	9
1778	1716	9
1781	1719	9
1784	1722	9
1787	1725	9
1790	1728	9
1793	1731	9
1795	1733	10
1799	1737	9
1801	1739	10
1805	1743	9
1808	1746	10
1810	1748	9
1813	1751	9
1816	1754	9
1819	1757	9
1822	1760	9
1824	1762	10
1825	1763	10
1827	1765	9
1830	1768	9
1833	1771	9
1837	1775	9
1839	1777	10
1842	1780	10
1845	1783	10
1849	1787	9
1851	1789	10
1854	1792	10
1857	1795	10
1859	1797	9
\.


--
-- Data for Name: customet_follow_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, count, follow_up_date, is_followed, note) FROM stdin;
1238	vcngw3rch6njjl5vn9xlrxfl	2026-05-14 19:11:12.168	2026-05-14 20:41:36.038	2026-05-14 20:41:36.067	\N	\N	\N	0	2026-05-14	f	nn
638	uti3gmzck8o8p8h6vib4b7ir	2026-05-14 19:05:27.912	2026-05-14 19:05:27.912	\N	\N	\N	\N	0	\N	f	\N
639	uti3gmzck8o8p8h6vib4b7ir	2026-05-14 19:05:27.912	2026-05-14 19:05:27.912	2026-05-14 19:05:27.932	\N	\N	\N	0	\N	f	\N
648	w55v49syrsggixtm71aqeyqa	2026-05-14 19:05:31.54	2026-05-14 19:05:31.54	\N	\N	\N	\N	0	\N	f	\N
649	w55v49syrsggixtm71aqeyqa	2026-05-14 19:05:31.54	2026-05-14 19:05:31.54	2026-05-14 19:05:31.55	\N	\N	\N	0	\N	f	\N
654	wdhmjuykbyoco331h707xuv5	2026-05-14 19:05:33.285	2026-05-14 19:05:33.285	\N	\N	\N	\N	0	\N	f	\N
655	wdhmjuykbyoco331h707xuv5	2026-05-14 19:05:33.285	2026-05-14 19:05:33.285	2026-05-14 19:05:33.296	\N	\N	\N	0	\N	f	\N
658	v4eqtmzsws4nz8p6v7x332c8	2026-05-14 19:05:34.522	2026-05-14 19:05:34.522	\N	\N	\N	\N	0	\N	f	\N
659	v4eqtmzsws4nz8p6v7x332c8	2026-05-14 19:05:34.522	2026-05-14 19:05:34.522	2026-05-14 19:05:34.547	\N	\N	\N	0	\N	f	\N
676	urkbamxvvf0agex3112a63r2	2026-05-14 19:05:40.151	2026-05-14 19:05:40.151	\N	\N	\N	\N	0	\N	f	\N
677	urkbamxvvf0agex3112a63r2	2026-05-14 19:05:40.151	2026-05-14 19:05:40.151	2026-05-14 19:05:40.162	\N	\N	\N	0	\N	f	\N
680	zc6c30i5105f55fctvwzjs5p	2026-05-14 19:05:41.196	2026-05-14 19:05:41.196	\N	\N	\N	\N	0	\N	f	\N
681	zc6c30i5105f55fctvwzjs5p	2026-05-14 19:05:41.196	2026-05-14 19:05:41.196	2026-05-14 19:05:41.207	\N	\N	\N	0	\N	f	\N
682	umm4be63vdocbxgp12plpo0z	2026-05-14 19:05:41.712	2026-05-14 19:05:41.712	\N	\N	\N	\N	0	\N	f	\N
683	umm4be63vdocbxgp12plpo0z	2026-05-14 19:05:41.712	2026-05-14 19:05:41.712	2026-05-14 19:05:41.724	\N	\N	\N	0	\N	f	\N
702	yi14cd8twxlfs4brrrxatgmq	2026-05-14 19:05:49.336	2026-05-14 19:05:49.336	\N	\N	\N	\N	0	\N	f	\N
703	yi14cd8twxlfs4brrrxatgmq	2026-05-14 19:05:49.336	2026-05-14 19:05:49.336	2026-05-14 19:05:49.36	\N	\N	\N	0	\N	f	\N
704	vxeltt3jzl1xx0ka05kb86yb	2026-05-14 19:05:50.388	2026-05-14 19:05:50.388	\N	\N	\N	\N	0	\N	f	\N
705	vxeltt3jzl1xx0ka05kb86yb	2026-05-14 19:05:50.388	2026-05-14 19:05:50.388	2026-05-14 19:05:50.41	\N	\N	\N	0	\N	f	\N
706	u6nwlm3g027s1j1o300drd66	2026-05-14 19:05:51.475	2026-05-14 19:05:51.475	\N	\N	\N	\N	0	\N	f	\N
707	u6nwlm3g027s1j1o300drd66	2026-05-14 19:05:51.475	2026-05-14 19:05:51.475	2026-05-14 19:05:51.509	\N	\N	\N	0	\N	f	\N
712	ussgn5mstgp7c44brk8s4ldq	2026-05-14 19:05:54.016	2026-05-14 19:05:54.016	\N	\N	\N	\N	0	\N	f	\N
713	ussgn5mstgp7c44brk8s4ldq	2026-05-14 19:05:54.016	2026-05-14 19:05:54.016	2026-05-14 19:05:54.03	\N	\N	\N	0	\N	f	\N
728	uy0hjzabpm4bhdgllil0174c	2026-05-14 19:05:59.397	2026-05-14 19:05:59.397	\N	\N	\N	\N	0	\N	f	\N
729	uy0hjzabpm4bhdgllil0174c	2026-05-14 19:05:59.397	2026-05-14 19:05:59.397	2026-05-14 19:05:59.405	\N	\N	\N	0	\N	f	\N
732	un1dwfdlnbi35z9htdzp9pv4	2026-05-14 19:06:00.445	2026-05-14 19:06:00.445	\N	\N	\N	\N	0	\N	f	\N
733	un1dwfdlnbi35z9htdzp9pv4	2026-05-14 19:06:00.445	2026-05-14 19:06:00.445	2026-05-14 19:06:00.456	\N	\N	\N	0	\N	f	\N
740	y4d2mdf07g710w34bkdemk9f	2026-05-14 19:06:03.57	2026-05-14 19:06:03.57	\N	\N	\N	\N	0	\N	f	\N
741	y4d2mdf07g710w34bkdemk9f	2026-05-14 19:06:03.57	2026-05-14 19:06:03.57	2026-05-14 19:06:03.618	\N	\N	\N	0	\N	f	\N
746	wcguydiclkrw7wega9u0t6o6	2026-05-14 19:06:05.506	2026-05-14 19:06:05.506	\N	\N	\N	\N	0	\N	f	\N
747	wcguydiclkrw7wega9u0t6o6	2026-05-14 19:06:05.506	2026-05-14 19:06:05.506	2026-05-14 19:06:05.522	\N	\N	\N	0	\N	f	\N
760	z5d1gra0xnhids411wb9q4dl	2026-05-14 19:06:09.867	2026-05-14 19:06:09.867	\N	\N	\N	\N	0	\N	f	\N
761	z5d1gra0xnhids411wb9q4dl	2026-05-14 19:06:09.867	2026-05-14 19:06:09.867	2026-05-14 19:06:09.878	\N	\N	\N	0	\N	f	\N
782	u2722wr7n4tdcgg1takbi4mo	2026-05-14 19:06:16.74	2026-05-14 19:06:16.74	\N	\N	\N	\N	0	\N	f	\N
783	u2722wr7n4tdcgg1takbi4mo	2026-05-14 19:06:16.74	2026-05-14 19:06:16.74	2026-05-14 19:06:16.759	\N	\N	\N	0	\N	f	\N
786	vr1q3e9t7mwzv4y83o8i3jya	2026-05-14 19:06:18.009	2026-05-14 19:06:18.009	\N	\N	\N	\N	0	\N	f	\N
787	vr1q3e9t7mwzv4y83o8i3jya	2026-05-14 19:06:18.009	2026-05-14 19:06:18.009	2026-05-14 19:06:18.025	\N	\N	\N	0	\N	f	\N
798	yux6p9ezrj5xdboon5hn5rj0	2026-05-14 19:06:21.66	2026-05-14 19:06:21.66	\N	\N	\N	\N	0	\N	f	\N
799	yux6p9ezrj5xdboon5hn5rj0	2026-05-14 19:06:21.66	2026-05-14 19:06:21.66	2026-05-14 19:06:21.671	\N	\N	\N	0	\N	f	\N
804	umk31judqlcygl0hbvxakpot	2026-05-14 19:06:23.458	2026-05-14 19:06:23.458	\N	\N	\N	\N	0	\N	f	\N
805	umk31judqlcygl0hbvxakpot	2026-05-14 19:06:23.458	2026-05-14 19:06:23.458	2026-05-14 19:06:23.468	\N	\N	\N	0	\N	f	\N
816	wl9476cb5km6n92na926r9mb	2026-05-14 19:06:26.954	2026-05-14 19:06:26.954	\N	\N	\N	\N	0	\N	f	\N
817	wl9476cb5km6n92na926r9mb	2026-05-14 19:06:26.954	2026-05-14 19:06:26.954	2026-05-14 19:06:26.963	\N	\N	\N	0	\N	f	\N
820	y799jskp9p4o9p7pjfzbvxhx	2026-05-14 19:06:28.235	2026-05-14 19:06:28.235	\N	\N	\N	\N	0	\N	f	\N
821	y799jskp9p4o9p7pjfzbvxhx	2026-05-14 19:06:28.235	2026-05-14 19:06:28.235	2026-05-14 19:06:28.244	\N	\N	\N	0	\N	f	\N
902	y2dh0g3hkqqozd820y2tfezz	2026-05-14 19:06:55.577	2026-05-14 19:06:55.577	\N	\N	\N	\N	0	\N	f	\N
903	y2dh0g3hkqqozd820y2tfezz	2026-05-14 19:06:55.577	2026-05-14 19:06:55.577	2026-05-14 19:06:55.59	\N	\N	\N	0	\N	f	\N
854	u0regwpq6qwc49kfjt067v00	2026-05-14 19:06:39.989	2026-05-14 19:06:39.989	\N	\N	\N	\N	0	\N	f	\N
855	u0regwpq6qwc49kfjt067v00	2026-05-14 19:06:39.989	2026-05-14 19:06:39.989	2026-05-14 19:06:40.023	\N	\N	\N	0	\N	f	\N
866	uri9ghl1gfanczf0zbltb3av	2026-05-14 19:06:44.383	2026-05-14 19:06:44.383	\N	\N	\N	\N	0	\N	f	\N
867	uri9ghl1gfanczf0zbltb3av	2026-05-14 19:06:44.383	2026-05-14 19:06:44.383	2026-05-14 19:06:44.397	\N	\N	\N	0	\N	f	\N
876	zygs9kugty5pw3gviwdmuuyz	2026-05-14 19:06:47.817	2026-05-14 19:06:47.817	\N	\N	\N	\N	0	\N	f	\N
877	zygs9kugty5pw3gviwdmuuyz	2026-05-14 19:06:47.817	2026-05-14 19:06:47.817	2026-05-14 19:06:47.827	\N	\N	\N	0	\N	f	\N
882	yd4d5hawdk4s73fpgviig459	2026-05-14 19:06:49.729	2026-05-14 19:06:49.729	\N	\N	\N	\N	0	\N	f	\N
883	yd4d5hawdk4s73fpgviig459	2026-05-14 19:06:49.729	2026-05-14 19:06:49.729	2026-05-14 19:06:49.741	\N	\N	\N	0	\N	f	\N
890	vts94qxu7rsgzucexz0ta36x	2026-05-14 19:06:52.146	2026-05-14 19:06:52.146	\N	\N	\N	\N	0	\N	f	\N
891	vts94qxu7rsgzucexz0ta36x	2026-05-14 19:06:52.146	2026-05-14 19:06:52.146	2026-05-14 19:06:52.158	\N	\N	\N	0	\N	f	\N
898	vw9fy5il4hv4b5achqxoibj9	2026-05-14 19:06:54.426	2026-05-14 19:06:54.426	\N	\N	\N	\N	0	\N	f	\N
899	vw9fy5il4hv4b5achqxoibj9	2026-05-14 19:06:54.426	2026-05-14 19:06:54.426	2026-05-14 19:06:54.436	\N	\N	\N	0	\N	f	\N
900	u6sxfth1fhwrxhv9e4jqr7vi	2026-05-14 19:06:55.011	2026-05-14 19:06:55.011	\N	\N	\N	\N	0	\N	f	\N
901	u6sxfth1fhwrxhv9e4jqr7vi	2026-05-14 19:06:55.011	2026-05-14 19:06:55.011	2026-05-14 19:06:55.026	\N	\N	\N	0	\N	f	\N
924	tk6l3bnfontj49264xez82zg	2026-05-14 19:07:01.966	2026-05-14 19:07:01.966	\N	\N	\N	\N	0	\N	f	\N
925	tk6l3bnfontj49264xez82zg	2026-05-14 19:07:01.966	2026-05-14 19:07:01.966	2026-05-14 19:07:01.979	\N	\N	\N	0	\N	f	\N
936	xmfws7aty4yc63swmbx83kgf	2026-05-14 19:07:06.104	2026-05-14 19:07:06.104	\N	\N	\N	\N	0	\N	f	\N
937	xmfws7aty4yc63swmbx83kgf	2026-05-14 19:07:06.104	2026-05-14 19:07:06.104	2026-05-14 19:07:06.12	\N	\N	\N	0	\N	f	\N
942	tyu8pilono09812btsfbujyo	2026-05-14 19:07:08.384	2026-05-14 19:07:08.384	\N	\N	\N	\N	0	\N	f	\N
943	tyu8pilono09812btsfbujyo	2026-05-14 19:07:08.384	2026-05-14 19:07:08.384	2026-05-14 19:07:08.395	\N	\N	\N	0	\N	f	\N
944	yu6rubexs77b2x33t2a9fdhp	2026-05-14 19:07:09.156	2026-05-14 19:07:09.156	\N	\N	\N	\N	0	\N	f	\N
945	yu6rubexs77b2x33t2a9fdhp	2026-05-14 19:07:09.156	2026-05-14 19:07:09.156	2026-05-14 19:07:09.182	\N	\N	\N	0	\N	f	\N
956	y8elbvm4ato1tqflofs4ill0	2026-05-14 19:07:13.938	2026-05-14 19:07:13.938	\N	\N	\N	\N	0	\N	f	\N
957	y8elbvm4ato1tqflofs4ill0	2026-05-14 19:07:13.938	2026-05-14 19:07:13.938	2026-05-14 19:07:13.965	\N	\N	\N	0	\N	f	\N
958	y990zgd4e4zqibcnl59jghew	2026-05-14 19:07:14.618	2026-05-14 19:07:14.618	\N	\N	\N	\N	0	\N	f	\N
959	y990zgd4e4zqibcnl59jghew	2026-05-14 19:07:14.618	2026-05-14 19:07:14.618	2026-05-14 19:07:14.629	\N	\N	\N	0	\N	f	\N
986	v6ghpsl0wow5zpsf6l79occr	2026-05-14 19:07:25.905	2026-05-14 19:07:25.905	\N	\N	\N	\N	0	\N	f	\N
987	v6ghpsl0wow5zpsf6l79occr	2026-05-14 19:07:25.905	2026-05-14 19:07:25.905	2026-05-14 19:07:25.923	\N	\N	\N	0	\N	f	\N
1008	whafbubz8ofm59erjdgcu129	2026-05-14 19:07:36.551	2026-05-14 19:07:36.551	\N	\N	\N	\N	0	\N	f	\N
1009	whafbubz8ofm59erjdgcu129	2026-05-14 19:07:36.551	2026-05-14 19:07:36.551	2026-05-14 19:07:36.567	\N	\N	\N	0	\N	f	\N
1022	zh8lja0shou5gw3u830tj486	2026-05-14 19:07:45.352	2026-05-14 19:07:45.352	\N	\N	\N	\N	0	\N	f	\N
1023	zh8lja0shou5gw3u830tj486	2026-05-14 19:07:45.352	2026-05-14 19:07:45.352	2026-05-14 19:07:45.367	\N	\N	\N	0	\N	f	\N
1038	xbk3hrkmetu5d09c0fvakg5y	2026-05-14 19:07:53.275	2026-05-14 19:07:53.275	\N	\N	\N	\N	0	\N	f	\N
1039	xbk3hrkmetu5d09c0fvakg5y	2026-05-14 19:07:53.275	2026-05-14 19:07:53.275	2026-05-14 19:07:53.305	\N	\N	\N	0	\N	f	\N
974	za2nbu77rtbnwpkddq1d9eyq	2026-05-14 19:07:20.474	2026-05-14 19:07:20.474	\N	\N	\N	\N	0	\N	f	\N
975	za2nbu77rtbnwpkddq1d9eyq	2026-05-14 19:07:20.474	2026-05-14 19:07:20.474	2026-05-14 19:07:20.49	\N	\N	\N	0	\N	f	\N
982	wi6m5nlkfipkakndkkz1tc2p	2026-05-14 19:07:24.044	2026-05-14 19:07:24.044	\N	\N	\N	\N	0	\N	f	\N
983	wi6m5nlkfipkakndkkz1tc2p	2026-05-14 19:07:24.044	2026-05-14 19:07:24.044	2026-05-14 19:07:24.068	\N	\N	\N	0	\N	f	\N
1014	y72l3ngkri5zx872ywsakujr	2026-05-14 19:07:40.137	2026-05-14 19:07:40.137	\N	\N	\N	\N	0	\N	f	\N
1015	y72l3ngkri5zx872ywsakujr	2026-05-14 19:07:40.137	2026-05-14 19:07:40.137	2026-05-14 19:07:40.169	\N	\N	\N	0	\N	f	\N
1044	ub74nsbnniya6e9fu0u9b2oh	2026-05-14 19:07:55.524	2026-05-14 19:07:55.524	\N	\N	\N	\N	0	\N	f	\N
1045	ub74nsbnniya6e9fu0u9b2oh	2026-05-14 19:07:55.524	2026-05-14 19:07:55.524	2026-05-14 19:07:55.541	\N	\N	\N	0	\N	f	\N
980	x8gwc26u1z5w8qcbgo6qft42	2026-05-14 19:07:22.923	2026-05-14 19:07:22.923	\N	\N	\N	\N	0	\N	f	\N
981	x8gwc26u1z5w8qcbgo6qft42	2026-05-14 19:07:22.923	2026-05-14 19:07:22.923	2026-05-14 19:07:22.954	\N	\N	\N	0	\N	f	\N
1046	zod68mxjrwg0hxzy7fyvouhm	2026-05-14 19:07:56.233	2026-05-14 19:07:56.233	\N	\N	\N	\N	0	\N	f	\N
1047	zod68mxjrwg0hxzy7fyvouhm	2026-05-14 19:07:56.233	2026-05-14 19:07:56.233	2026-05-14 19:07:56.246	\N	\N	\N	0	\N	f	\N
1074	w4oei16gpowj69dpo23ysquu	2026-05-14 19:08:07.517	2026-05-14 19:08:07.517	\N	\N	\N	\N	0	\N	f	\N
1075	w4oei16gpowj69dpo23ysquu	2026-05-14 19:08:07.517	2026-05-14 19:08:07.517	2026-05-14 19:08:07.53	\N	\N	\N	0	\N	f	\N
1082	xy34u7gyoo7v505e84gz8jq4	2026-05-14 19:08:10.238	2026-05-14 19:08:10.238	\N	\N	\N	\N	0	\N	f	\N
1083	xy34u7gyoo7v505e84gz8jq4	2026-05-14 19:08:10.238	2026-05-14 19:08:10.238	2026-05-14 19:08:10.251	\N	\N	\N	0	\N	f	\N
1102	u5w3ij6y17k5ee805drewsz9	2026-05-14 19:10:27.639	2026-05-14 19:10:27.639	\N	\N	\N	\N	0	\N	f	\N
1103	u5w3ij6y17k5ee805drewsz9	2026-05-14 19:10:27.639	2026-05-14 19:10:27.639	2026-05-14 19:10:27.659	\N	\N	\N	0	\N	f	\N
1110	xb3fu62u4bi0dcc3fsc5e755	2026-05-14 19:10:30.607	2026-05-14 19:10:30.607	\N	\N	\N	\N	0	\N	f	\N
1111	xb3fu62u4bi0dcc3fsc5e755	2026-05-14 19:10:30.607	2026-05-14 19:10:30.607	2026-05-14 19:10:30.621	\N	\N	\N	0	\N	f	\N
1112	w7cq64fsrnnch6aabln5k72c	2026-05-14 19:10:31.529	2026-05-14 19:10:31.529	\N	\N	\N	\N	0	\N	f	\N
1113	w7cq64fsrnnch6aabln5k72c	2026-05-14 19:10:31.529	2026-05-14 19:10:31.529	2026-05-14 19:10:31.541	\N	\N	\N	0	\N	f	\N
1122	wnxr3qve364lvhjh65uyc2a4	2026-05-14 19:10:34.907	2026-05-14 19:10:34.907	\N	\N	\N	\N	0	\N	f	\N
1123	wnxr3qve364lvhjh65uyc2a4	2026-05-14 19:10:34.907	2026-05-14 19:10:34.907	2026-05-14 19:10:34.917	\N	\N	\N	0	\N	f	\N
1166	wlbgofi0yivxmg65uup9vip0	2026-05-14 19:10:50.168	2026-05-14 19:10:50.168	\N	\N	\N	\N	0	\N	f	\N
1167	wlbgofi0yivxmg65uup9vip0	2026-05-14 19:10:50.168	2026-05-14 19:10:50.168	2026-05-14 19:10:50.182	\N	\N	\N	0	\N	f	\N
1128	zmzuoa6kxvzzjceczc5o1n3e	2026-05-14 19:10:36.922	2026-05-14 19:10:36.922	\N	\N	\N	\N	0	\N	f	\N
1129	zmzuoa6kxvzzjceczc5o1n3e	2026-05-14 19:10:36.922	2026-05-14 19:10:36.922	2026-05-14 19:10:36.932	\N	\N	\N	0	\N	f	\N
1142	vd900rru856stxqaz335y5sh	2026-05-14 19:10:40.872	2026-05-14 19:10:40.872	\N	\N	\N	\N	0	\N	f	\N
1143	vd900rru856stxqaz335y5sh	2026-05-14 19:10:40.872	2026-05-14 19:10:40.872	2026-05-14 19:10:40.881	\N	\N	\N	0	\N	f	\N
1148	u12m5th53m6vl933mcrah0is	2026-05-14 19:10:42.913	2026-05-14 19:10:42.913	\N	\N	\N	\N	0	\N	f	\N
1149	u12m5th53m6vl933mcrah0is	2026-05-14 19:10:42.913	2026-05-14 19:10:42.913	2026-05-14 19:10:42.925	\N	\N	\N	0	\N	f	\N
1170	zo85z3dekw36h6l8zrhbc49h	2026-05-14 19:10:51.61	2026-05-14 19:10:51.61	\N	\N	\N	\N	0	\N	f	\N
1171	zo85z3dekw36h6l8zrhbc49h	2026-05-14 19:10:51.61	2026-05-14 19:10:51.61	2026-05-14 19:10:51.625	\N	\N	\N	0	\N	f	\N
1176	v0xrqbxg8pyqu491yndsxkp6	2026-05-14 19:10:54.087	2026-05-14 19:10:54.087	\N	\N	\N	\N	0	\N	f	\N
1177	v0xrqbxg8pyqu491yndsxkp6	2026-05-14 19:10:54.087	2026-05-14 19:10:54.087	2026-05-14 19:10:54.097	\N	\N	\N	0	\N	f	\N
1198	xgn5kjtobcluywyo9p6l7knu	2026-05-14 19:11:00.312	2026-05-14 19:11:00.312	\N	\N	\N	\N	0	\N	f	\N
1199	xgn5kjtobcluywyo9p6l7knu	2026-05-14 19:11:00.312	2026-05-14 19:11:00.312	2026-05-14 19:11:00.321	\N	\N	\N	0	\N	f	\N
1232	vcngw3rch6njjl5vn9xlrxfl	2026-05-14 19:11:12.168	2026-05-14 20:41:36.038	\N	\N	\N	\N	0	2026-05-14	f	nn
1180	vm85n0ajxcidf0dshncisbto	2026-05-14 19:10:55.15	2026-05-14 19:10:55.15	\N	\N	\N	\N	0	\N	f	\N
1181	vm85n0ajxcidf0dshncisbto	2026-05-14 19:10:55.15	2026-05-14 19:10:55.15	2026-05-14 19:10:55.161	\N	\N	\N	0	\N	f	\N
1192	ua469h8o3o6dh4bmkpq0akpk	2026-05-14 19:10:58.837	2026-05-14 19:10:58.837	\N	\N	\N	\N	0	\N	f	\N
1193	ua469h8o3o6dh4bmkpq0akpk	2026-05-14 19:10:58.837	2026-05-14 19:10:58.837	2026-05-14 19:10:58.853	\N	\N	\N	0	\N	f	\N
1194	ytivq0f44kc7rb1bdtykktng	2026-05-14 19:10:59.378	2026-05-14 19:10:59.378	\N	\N	\N	\N	0	\N	f	\N
1195	ytivq0f44kc7rb1bdtykktng	2026-05-14 19:10:59.378	2026-05-14 19:10:59.378	2026-05-14 19:10:59.388	\N	\N	\N	0	\N	f	\N
1196	ztnouzyyoryrlsxymngxrfka	2026-05-14 19:10:59.837	2026-05-14 19:10:59.837	\N	\N	\N	\N	0	\N	f	\N
1197	ztnouzyyoryrlsxymngxrfka	2026-05-14 19:10:59.837	2026-05-14 19:10:59.837	2026-05-14 19:10:59.846	\N	\N	\N	0	\N	f	\N
1218	ziv0t7xx9cb30jz7dwzmn419	2026-05-14 19:11:07.281	2026-05-14 19:11:07.281	\N	\N	\N	\N	0	\N	f	\N
1219	ziv0t7xx9cb30jz7dwzmn419	2026-05-14 19:11:07.281	2026-05-14 19:11:07.281	2026-05-14 19:11:07.294	\N	\N	\N	0	\N	f	\N
1226	xkpc3rsqxv39vj5kd4mha331	2026-05-14 19:11:09.754	2026-05-14 19:11:09.754	\N	\N	\N	\N	0	\N	f	\N
1227	xkpc3rsqxv39vj5kd4mha331	2026-05-14 19:11:09.754	2026-05-14 19:11:09.754	2026-05-14 19:11:09.765	\N	\N	\N	0	\N	f	\N
\.


--
-- Data for Name: customet_follow_ups_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_customer_lnk (id, customet_follow_up_id, customer_id) FROM stdin;
1847	1238	1827
1102	741	1157
947	638	1002
1109	746	1162
949	639	1004
1111	747	1164
1396	937	1433
962	648	1017
964	649	1019
1403	942	1438
1819	1219	1812
971	654	1026
973	655	1028
977	658	1032
1408	945	1443
979	659	1034
1004	676	1059
1829	1226	1820
1006	677	1061
1010	680	1065
1130	760	1181
1012	681	1067
1013	682	1068
1015	683	1070
1132	761	1183
1838	1232	1825
1043	702	1098
1045	703	1100
1046	704	1101
1048	705	1103
1049	706	1104
1051	707	1106
1058	712	1113
1060	713	1115
1082	728	1137
1084	729	1139
1088	732	1143
1090	733	1145
1100	740	1155
1163	782	1214
1165	783	1216
1169	786	1220
1171	787	1222
1187	798	1236
1189	799	1238
1196	804	1245
1198	805	1247
1214	816	1263
1216	817	1265
1220	820	1267
1222	821	1269
1394	936	1193
1273	855	1318
1405	943	1440
1406	944	1441
1291	867	1334
1817	1218	1810
1426	957	1457
1427	958	1458
1831	1227	1822
1469	986	1496
1502	1008	1529
1513	1015	1540
1523	1022	1550
1547	1038	1572
1558	1045	1583
1615	1083	1636
1645	1103	1662
1655	1110	1668
1660	1113	1671
1675	1123	1686
1760	1180	1476
1778	1192	1775
1781	1194	1778
1784	1196	1781
1789	1199	1786
1306	877	1347
1424	956	1146
1315	883	1356
1429	959	1460
1327	891	1366
1339	899	1378
1342	901	1381
1343	902	1382
1451	974	1110
1378	925	1417
1462	981	1491
1463	982	1152
1504	1009	1531
1511	1014	1538
1525	1023	1552
1556	1044	1581
1561	1047	1586
1601	1074	1622
1613	1082	1634
1643	1102	1230
1657	1111	1670
1658	1112	1125
1673	1122	1684
1684	1129	1695
1705	1143	1712
1714	1149	1721
1739	1166	1606
1747	1171	1750
1756	1177	1759
1453	975	1482
1271	854	1316
1289	866	1332
1304	876	1345
1460	980	1489
1313	882	1354
1465	983	1492
1325	890	1364
1471	987	1498
1337	898	1376
1340	900	1379
1345	903	1384
1376	924	1415
1549	1039	1574
1559	1046	1584
1603	1075	1624
1682	1128	1693
1703	1142	1282
1712	1148	1719
1741	1167	1746
1745	1170	1748
1754	1176	1757
1762	1181	1763
1780	1193	1777
1783	1195	1780
1786	1197	1783
1787	1198	1784
\.


--
-- Data for Name: customet_follow_ups_follow_ups_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_follow_ups_lnk (id, customet_follow_up_id, follow_up_list_id, follow_up_list_ord, customet_follow_up_ord) FROM stdin;
1467	1238	1179	1	1
781	638	584	0	1
782	639	585	1	1
791	648	594	0	1
792	649	595	1	1
797	654	600	0	1
798	655	601	1	1
801	658	604	0	1
802	659	605	1	1
819	676	622	0	1
820	677	623	1	1
823	680	626	0	1
824	681	627	1	1
825	682	628	0	1
826	683	629	1	1
845	702	648	0	1
846	703	649	1	1
847	704	650	0	1
848	705	651	1	1
849	706	652	0	1
850	707	653	1	1
855	712	658	0	1
856	713	659	1	1
871	728	674	0	1
872	729	675	1	1
875	732	678	0	1
876	733	679	1	1
883	740	686	0	1
884	741	687	1	1
891	746	692	0	1
892	747	693	1	1
907	760	706	0	1
908	761	707	1	1
933	786	732	0	1
934	787	733	1	1
947	798	744	0	1
948	799	745	1	1
971	820	766	0	1
972	821	767	1	1
929	782	728	0	1
930	783	729	1	1
953	804	750	0	1
954	805	751	1	1
965	816	762	0	1
966	817	763	1	1
1061	902	848	0	1
1062	903	849	1	1
1007	854	800	0	1
1008	855	801	1	1
1021	866	812	0	1
1022	867	813	1	1
1033	876	822	0	1
1034	877	823	1	1
1039	882	828	0	1
1040	883	829	1	1
1049	890	836	0	1
1050	891	837	1	1
1057	898	844	0	1
1058	899	845	1	1
1059	900	846	0	1
1060	901	847	1	1
1083	924	870	0	1
1084	925	871	1	1
1095	936	714	0	1
1096	936	882	1	1
1097	937	715	1	1
1098	937	883	2	1
1105	942	888	0	1
1106	943	889	1	1
1107	944	890	0	1
1108	945	891	1	1
1123	956	680	0	1
1124	956	818	1	1
1125	956	902	2	1
1126	957	681	1	1
1127	957	819	2	1
1128	957	903	3	1
1129	958	904	0	1
1130	959	905	1	1
1145	974	656	0	1
1146	974	920	1	1
1147	975	657	1	1
1148	975	921	2	1
1153	980	926	0	1
1154	981	927	1	1
1155	982	684	0	1
1156	982	928	1	1
1157	983	685	1	1
1158	983	929	2	1
1161	986	932	0	1
1162	987	933	1	1
1183	1008	954	0	1
1184	1009	955	1	1
1197	1022	968	0	1
1198	1023	969	1	1
1215	1038	984	0	1
1216	1039	985	1	1
1189	1014	960	0	1
1190	1015	961	1	1
1221	1044	990	0	1
1222	1045	991	1	1
1223	1046	992	0	1
1224	1047	993	1	1
1257	1074	1020	0	1
1258	1075	1021	1	1
1265	1082	1028	0	1
1266	1083	1029	1	1
1287	1102	740	0	1
1288	1102	832	1	1
1289	1102	1048	2	1
1290	1103	741	1	1
1291	1103	833	2	1
1292	1103	1049	3	1
1307	1110	1056	0	1
1308	1111	1057	1	1
1309	1112	666	0	1
1310	1112	1058	1	1
1311	1113	667	1	1
1312	1113	1059	2	1
1321	1122	1068	0	1
1322	1123	1069	1	1
1327	1128	1074	0	1
1328	1129	1075	1	1
1343	1142	776	0	1
1344	1142	1088	1	1
1345	1143	777	1	1
1346	1143	1089	2	1
1351	1148	1094	0	1
1352	1149	1095	1	1
1369	1166	1008	0	1
1370	1166	1010	1	1
1371	1166	1112	2	1
1379	1170	1116	0	1
1380	1171	1117	1	1
1385	1176	1122	0	1
1386	1177	1123	1	1
1415	1198	1144	0	1
1416	1199	1145	1	1
1372	1167	1009	1	1
1373	1167	1011	2	1
1374	1167	1113	3	1
1389	1180	916	0	1
1390	1180	1084	1	1
1391	1180	1126	2	1
1392	1181	917	1	1
1393	1181	1085	2	1
1394	1181	1127	3	1
1409	1192	1138	0	1
1410	1193	1139	1	1
1411	1194	1140	0	1
1412	1195	1141	1	1
1413	1196	1142	0	1
1414	1197	1143	1	1
1439	1218	1164	0	1
1440	1219	1165	1	1
1449	1226	1172	0	1
1450	1227	1173	1	1
1461	1232	1178	0	1
\.


--
-- Data for Name: customet_follow_ups_staff_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_staff_lnk (id, customet_follow_up_id, staff_id) FROM stdin;
110	1232	1
111	1238	29
\.


--
-- Data for Name: customet_follow_ups_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_store_lnk (id, customet_follow_up_id, store_id) FROM stdin;
1177	1238	10
577	638	9
578	639	10
587	648	9
588	649	10
593	654	9
594	655	10
597	658	9
598	659	10
615	676	9
616	677	10
619	680	9
620	681	10
621	682	9
622	683	10
641	702	9
642	703	10
643	704	9
644	705	10
645	706	9
646	707	10
651	712	9
652	713	10
667	728	9
668	729	10
671	732	9
672	733	10
679	740	9
680	741	10
685	746	9
686	747	10
699	760	9
700	761	10
721	782	9
722	783	10
725	786	9
726	787	10
737	798	9
738	799	10
743	804	9
744	805	10
755	816	9
756	817	10
759	820	9
760	821	10
793	854	9
794	855	10
805	866	9
806	867	10
815	876	9
816	877	10
821	882	9
822	883	10
829	890	9
830	891	10
837	898	9
838	899	10
839	900	9
840	901	10
863	924	9
864	925	10
841	902	9
842	903	10
875	936	9
876	937	10
881	942	9
882	943	10
883	944	9
884	945	10
895	956	9
896	957	10
897	958	9
898	959	10
913	974	9
914	975	10
919	980	9
920	981	10
921	982	9
922	983	10
925	986	9
926	987	10
947	1008	9
948	1009	10
953	1014	9
954	1015	10
961	1022	9
962	1023	10
977	1038	9
978	1039	10
983	1044	9
984	1045	10
985	1046	9
986	1047	10
1013	1074	9
1014	1075	10
1021	1082	9
1022	1083	10
1041	1102	9
1042	1103	10
1049	1110	9
1050	1111	10
1051	1112	9
1052	1113	10
1061	1122	9
1062	1123	10
1067	1128	9
1068	1129	10
1081	1142	9
1082	1143	10
1087	1148	9
1088	1149	10
1105	1166	9
1106	1167	10
1109	1170	9
1110	1171	10
1115	1176	9
1116	1177	10
1119	1180	9
1120	1181	10
1131	1192	9
1132	1193	10
1133	1194	9
1134	1195	10
1135	1196	9
1136	1197	10
1137	1198	9
1138	1199	10
1157	1218	9
1158	1219	10
1165	1226	9
1166	1227	10
1171	1232	9
\.


--
-- Data for Name: customet_statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_statuses (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, name, value, color, text_color, border_color) FROM stdin;
11	fltfd2nvhyr1cp6hynv7hkn1	2026-04-18 13:26:54.318	2026-04-26 02:11:49.902	\N	1	1	\N	Bronz (0-1500 RS)	bronz	#FDF2E9	#B45309	#FCD9BD
25	fltfd2nvhyr1cp6hynv7hkn1	2026-04-18 13:26:54.318	2026-04-26 02:11:49.902	2026-04-26 02:11:49.956	1	1	\N	Bronz (0-1500 RS)	bronz	#FDF2E9	#B45309	#FCD9BD
9	ottraxglqtkfe6lvz93e3lsr	2026-04-18 13:26:41.927	2026-04-26 02:14:46.8	\N	1	1	\N	Silver (1501-3000 RS)	silver	#F3F4F6	#4B5563	#D1D5DB
32	ottraxglqtkfe6lvz93e3lsr	2026-04-18 13:26:41.927	2026-04-26 02:14:46.8	2026-04-26 02:14:46.826	1	1	\N	Silver (1501-3000 RS)	silver	#F3F4F6	#4B5563	#D1D5DB
7	ydgwvsoqo0ivccq46kaijwei	2026-04-18 13:26:29.518	2026-04-26 02:15:07.176	\N	1	1	\N	Gold (3001-5000 RS)	gold	#FFFBEB	#B45309	#FDE68A
33	ydgwvsoqo0ivccq46kaijwei	2026-04-18 13:26:29.518	2026-04-26 02:15:07.176	2026-04-26 02:15:07.215	1	1	\N	Gold (3001-5000 RS)	gold	#FFFBEB	#B45309	#FDE68A
5	v8g8cqm29woztys2v7xc2vp6	2026-04-18 13:26:15.586	2026-04-26 02:15:29.302	\N	1	1	\N	Diamond (5001-10000 RS)	diamond	#ECFEFF	#0E7490	#67E8F9
34	v8g8cqm29woztys2v7xc2vp6	2026-04-18 13:26:15.586	2026-04-26 02:15:29.302	2026-04-26 02:15:29.323	1	1	\N	Diamond (5001-10000 RS)	diamond	#ECFEFF	#0E7490	#67E8F9
1	v84axt1f540rvu7g27hnamkz	2026-03-26 18:23:55.683	2026-04-26 02:15:35.109	\N	1	1	\N	Platinum (>10001 RS)	platinum	#EEF2FF	#4338CA	#C7D2FE
35	v84axt1f540rvu7g27hnamkz	2026-03-26 18:23:55.683	2026-04-26 02:15:35.109	2026-04-26 02:15:35.165	1	1	\N	Platinum (>10001 RS)	platinum	#EEF2FF	#4338CA	#C7D2FE
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, document_id, name, alternative_text, caption, focal_point, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	plr7nfm8h8jg17hd7iqphi08	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	\N	1200	1345	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_27d9ecf615.jpeg", "hash": "large_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 76.95, "width": 892, "height": 1000, "sizeInBytes": 76951}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_27d9ecf615.jpeg", "hash": "small_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 23.36, "width": 446, "height": 500, "sizeInBytes": 23361}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_27d9ecf615.jpeg", "hash": "medium_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 46.85, "width": 669, "height": 750, "sizeInBytes": 46854}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_27d9ecf615.jpeg", "hash": "thumbnail_daviddoe_strapi_27d9ecf615", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.21, "width": 139, "height": 156, "sizeInBytes": 4210}}	daviddoe_strapi_27d9ecf615	.jpeg	image/jpeg	106.75	/uploads/daviddoe_strapi_27d9ecf615.jpeg	\N	local	\N	/	2026-02-22 10:52:19.974	2026-02-22 10:52:19.974	2026-02-22 10:52:19.974	\N	\N	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: follow_up_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists (id, document_id, till_sequence, customer_name, bill_amount, notes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, bill_date) FROM stdin;
584	jmif44i4eo04sbyijzdk76hu	CO-225-30706	anushree	1275	\N	2026-05-14 19:05:27.737	2026-05-14 19:05:27.737	\N	\N	\N	\N	2026-03-05
585	jmif44i4eo04sbyijzdk76hu	CO-225-30706	anushree	1275	\N	2026-05-14 19:05:27.737	2026-05-14 19:05:27.737	2026-05-14 19:05:27.804	\N	\N	\N	2026-03-05
586	m0blkuduvhmcq65bgbj0axmd	CO-225-30707	manthan chauhan	109	\N	2026-05-14 19:05:28.589	2026-05-14 19:05:28.589	\N	\N	\N	\N	2026-03-05
587	m0blkuduvhmcq65bgbj0axmd	CO-225-30707	manthan chauhan	109	\N	2026-05-14 19:05:28.589	2026-05-14 19:05:28.589	2026-05-14 19:05:28.598	\N	\N	\N	2026-03-05
588	lk301gdodtfrrcnve0uijufc	CO-225-30708	VILAKSHI MODI	194	\N	2026-05-14 19:05:29.368	2026-05-14 19:05:29.368	\N	\N	\N	\N	2026-03-05
589	lk301gdodtfrrcnve0uijufc	CO-225-30708	VILAKSHI MODI	194	\N	2026-05-14 19:05:29.368	2026-05-14 19:05:29.368	2026-05-14 19:05:29.379	\N	\N	\N	2026-03-05
590	d0446yj8orwnimjxzfeqga1s	CO-225-30709	DIPAK	1018	\N	2026-05-14 19:05:30.212	2026-05-14 19:05:30.212	\N	\N	\N	\N	2026-03-05
591	d0446yj8orwnimjxzfeqga1s	CO-225-30709	DIPAK	1018	\N	2026-05-14 19:05:30.212	2026-05-14 19:05:30.212	2026-05-14 19:05:30.221	\N	\N	\N	2026-03-05
592	nrcvw1ntjnt8mkxc8znrrwuq	CO-225-30710	rahul shah	40	\N	2026-05-14 19:05:30.955	2026-05-14 19:05:30.955	\N	\N	\N	\N	2026-03-05
593	nrcvw1ntjnt8mkxc8znrrwuq	CO-225-30710	rahul shah	40	\N	2026-05-14 19:05:30.955	2026-05-14 19:05:30.955	2026-05-14 19:05:30.964	\N	\N	\N	2026-03-05
594	j67okuv0jz7k423r0s105hml	CO-225-30711	APURVA BHAI	2155	\N	2026-05-14 19:05:31.457	2026-05-14 19:05:31.457	\N	\N	\N	\N	2026-03-05
595	j67okuv0jz7k423r0s105hml	CO-225-30711	APURVA BHAI	2155	\N	2026-05-14 19:05:31.457	2026-05-14 19:05:31.457	2026-05-14 19:05:31.468	\N	\N	\N	2026-03-05
596	rzh6si576v8wewzbos5b4p3q	CO-225-30712	deval	11129	\N	2026-05-14 19:05:32.093	2026-05-14 19:05:32.093	\N	\N	\N	\N	2026-03-05
597	rzh6si576v8wewzbos5b4p3q	CO-225-30712	deval	11129	\N	2026-05-14 19:05:32.093	2026-05-14 19:05:32.093	2026-05-14 19:05:32.105	\N	\N	\N	2026-03-05
598	guih7lvnelpay9721ootkmd2	CO-225-30713	MAHESH HIRAGAR	22000	\N	2026-05-14 19:05:32.654	2026-05-14 19:05:32.654	\N	\N	\N	\N	2026-03-05
599	guih7lvnelpay9721ootkmd2	CO-225-30713	MAHESH HIRAGAR	22000	\N	2026-05-14 19:05:32.654	2026-05-14 19:05:32.654	2026-05-14 19:05:32.663	\N	\N	\N	2026-03-05
600	mx0r0o2glzvkpcx9359qa3x2	CO-225-30714	RAJAN PANDYA	2099	\N	2026-05-14 19:05:33.201	2026-05-14 19:05:33.201	\N	\N	\N	\N	2026-03-05
601	mx0r0o2glzvkpcx9359qa3x2	CO-225-30714	RAJAN PANDYA	2099	\N	2026-05-14 19:05:33.201	2026-05-14 19:05:33.201	2026-05-14 19:05:33.208	\N	\N	\N	2026-03-05
602	zgg5wcavisyi8sh6o9apu5jj	CO-225-30715	DINA BEN	1576	\N	2026-05-14 19:05:33.85	2026-05-14 19:05:33.85	\N	\N	\N	\N	2026-03-05
603	zgg5wcavisyi8sh6o9apu5jj	CO-225-30715	DINA BEN	1576	\N	2026-05-14 19:05:33.85	2026-05-14 19:05:33.85	2026-05-14 19:05:33.861	\N	\N	\N	2026-03-05
604	f2frp397ekfjb97wv8jwyi3y	CO-225-30716	Surekha Pillai	1950	\N	2026-05-14 19:05:34.414	2026-05-14 19:05:34.414	\N	\N	\N	\N	2026-03-05
605	f2frp397ekfjb97wv8jwyi3y	CO-225-30716	Surekha Pillai	1950	\N	2026-05-14 19:05:34.414	2026-05-14 19:05:34.414	2026-05-14 19:05:34.421	\N	\N	\N	2026-03-05
606	rvbybratdafierfs7iidvy4q	CO-225-30717	Pruthvi Foundation	450	\N	2026-05-14 19:05:35.138	2026-05-14 19:05:35.138	\N	\N	\N	\N	2026-03-05
607	rvbybratdafierfs7iidvy4q	CO-225-30717	Pruthvi Foundation	450	\N	2026-05-14 19:05:35.138	2026-05-14 19:05:35.138	2026-05-14 19:05:35.152	\N	\N	\N	2026-03-05
608	nn9ptzel4dn8et1coavvlenq	CO-225-30718	SANI Vaghela	927	\N	2026-05-14 19:05:35.84	2026-05-14 19:05:35.84	\N	\N	\N	\N	2026-03-05
609	nn9ptzel4dn8et1coavvlenq	CO-225-30718	SANI Vaghela	927	\N	2026-05-14 19:05:35.84	2026-05-14 19:05:35.84	2026-05-14 19:05:35.852	\N	\N	\N	2026-03-05
610	gmu2643srjh6g9o3di5psxfx	CO-225-30719	shilp roy	50	\N	2026-05-14 19:05:36.502	2026-05-14 19:05:36.502	\N	\N	\N	\N	2026-03-05
611	gmu2643srjh6g9o3di5psxfx	CO-225-30719	shilp roy	50	\N	2026-05-14 19:05:36.502	2026-05-14 19:05:36.502	2026-05-14 19:05:36.518	\N	\N	\N	2026-03-05
612	hjt8um4zdr5y86r16p21o9il	CO-225-30720	VISHU VYAS	657	\N	2026-05-14 19:05:37.21	2026-05-14 19:05:37.21	\N	\N	\N	\N	2026-03-05
613	hjt8um4zdr5y86r16p21o9il	CO-225-30720	VISHU VYAS	657	\N	2026-05-14 19:05:37.21	2026-05-14 19:05:37.21	2026-05-14 19:05:37.217	\N	\N	\N	2026-03-05
614	hjan8qse8treijg0c4hnz5pq	CO-225-30721	G KHIMPI-CAT	320	\N	2026-05-14 19:05:37.934	2026-05-14 19:05:37.934	\N	\N	\N	\N	2026-03-05
615	hjan8qse8treijg0c4hnz5pq	CO-225-30721	G KHIMPI-CAT	320	\N	2026-05-14 19:05:37.934	2026-05-14 19:05:37.934	2026-05-14 19:05:37.942	\N	\N	\N	2026-03-05
616	nv7rkrk22eowwwbmmfdnvbqn	CO-225-30722	hina shah	2322	\N	2026-05-14 19:05:38.476	2026-05-14 19:05:38.476	\N	\N	\N	\N	2026-03-06
617	nv7rkrk22eowwwbmmfdnvbqn	CO-225-30722	hina shah	2322	\N	2026-05-14 19:05:38.476	2026-05-14 19:05:38.476	2026-05-14 19:05:38.484	\N	\N	\N	2026-03-06
618	vk73naq99h8syd0hfz98qcuv	CO-225-30723	ARJUN HARIBHAI PARMAR	5600	\N	2026-05-14 19:05:38.943	2026-05-14 19:05:38.943	\N	\N	\N	\N	2026-03-06
619	vk73naq99h8syd0hfz98qcuv	CO-225-30723	ARJUN HARIBHAI PARMAR	5600	\N	2026-05-14 19:05:38.943	2026-05-14 19:05:38.943	2026-05-14 19:05:38.951	\N	\N	\N	2026-03-06
620	t06buno10ths55hr0oheshqu	CO-225-30724	KAVYA	4259	\N	2026-05-14 19:05:39.532	2026-05-14 19:05:39.532	\N	\N	\N	\N	2026-03-06
621	t06buno10ths55hr0oheshqu	CO-225-30724	KAVYA	4259	\N	2026-05-14 19:05:39.532	2026-05-14 19:05:39.532	2026-05-14 19:05:39.539	\N	\N	\N	2026-03-06
622	pj9whx82qkwf9eh9c4sya9ic	CO-225-30725	ravina madan	652	\N	2026-05-14 19:05:40.073	2026-05-14 19:05:40.073	\N	\N	\N	\N	2026-03-06
623	pj9whx82qkwf9eh9c4sya9ic	CO-225-30725	ravina madan	652	\N	2026-05-14 19:05:40.073	2026-05-14 19:05:40.073	2026-05-14 19:05:40.08	\N	\N	\N	2026-03-06
624	u7trc90kpneggkxkln9dh83h	CO-225-30726	prabhu bhai	300	\N	2026-05-14 19:05:40.561	2026-05-14 19:05:40.561	\N	\N	\N	\N	2026-03-06
625	u7trc90kpneggkxkln9dh83h	CO-225-30726	prabhu bhai	300	\N	2026-05-14 19:05:40.561	2026-05-14 19:05:40.561	2026-05-14 19:05:40.572	\N	\N	\N	2026-03-06
626	et6n34ytwqvfya140nudwacs	CO-225-30727	RUSHIKESH BHAI	2200	\N	2026-05-14 19:05:41.111	2026-05-14 19:05:41.111	\N	\N	\N	\N	2026-03-06
627	et6n34ytwqvfya140nudwacs	CO-225-30727	RUSHIKESH BHAI	2200	\N	2026-05-14 19:05:41.111	2026-05-14 19:05:41.111	2026-05-14 19:05:41.12	\N	\N	\N	2026-03-06
628	fg8qsn6198gvn9rpc9slosr9	CO-225-30728	VAMA	888	\N	2026-05-14 19:05:41.634	2026-05-14 19:05:41.634	\N	\N	\N	\N	2026-03-06
629	fg8qsn6198gvn9rpc9slosr9	CO-225-30728	VAMA	888	\N	2026-05-14 19:05:41.634	2026-05-14 19:05:41.634	2026-05-14 19:05:41.643	\N	\N	\N	2026-03-06
630	nfbaqgplm2n48mih94m08f2r	CO-225-30729	kamlesh patel	480	\N	2026-05-14 19:05:42.112	2026-05-14 19:05:42.112	\N	\N	\N	\N	2026-03-06
631	nfbaqgplm2n48mih94m08f2r	CO-225-30729	kamlesh patel	480	\N	2026-05-14 19:05:42.112	2026-05-14 19:05:42.112	2026-05-14 19:05:42.119	\N	\N	\N	2026-03-06
632	ohmfqwhtzbwcfkdbe4z4hr7k	CO-225-30730	Satish Hosiery Mart	3233	\N	2026-05-14 19:05:42.729	2026-05-14 19:05:42.729	\N	\N	\N	\N	2026-03-06
633	ohmfqwhtzbwcfkdbe4z4hr7k	CO-225-30730	Satish Hosiery Mart	3233	\N	2026-05-14 19:05:42.729	2026-05-14 19:05:42.729	2026-05-14 19:05:42.739	\N	\N	\N	2026-03-06
634	zkarch7lmi8ac2fuho9krhpm	CO-225-30731	naveen kumar	2100	\N	2026-05-14 19:05:43.273	2026-05-14 19:05:43.273	\N	\N	\N	\N	2026-03-06
635	zkarch7lmi8ac2fuho9krhpm	CO-225-30731	naveen kumar	2100	\N	2026-05-14 19:05:43.273	2026-05-14 19:05:43.273	2026-05-14 19:05:43.285	\N	\N	\N	2026-03-06
636	zy3lj7hmk6ydk6265xikbs0l	CO-225-30732	himmatsingh	500	\N	2026-05-14 19:05:44.069	2026-05-14 19:05:44.069	\N	\N	\N	\N	2026-03-06
637	zy3lj7hmk6ydk6265xikbs0l	CO-225-30732	himmatsingh	500	\N	2026-05-14 19:05:44.069	2026-05-14 19:05:44.069	2026-05-14 19:05:44.083	\N	\N	\N	2026-03-06
638	myj6r54u305j3ow345vbyou5	CO-225-30733	CHETANBHAI	565	\N	2026-05-14 19:05:44.986	2026-05-14 19:05:44.986	\N	\N	\N	\N	2026-03-06
639	myj6r54u305j3ow345vbyou5	CO-225-30733	CHETANBHAI	565	\N	2026-05-14 19:05:44.986	2026-05-14 19:05:44.986	2026-05-14 19:05:45	\N	\N	\N	2026-03-06
640	wlozh10ira333j1d4sslbqr3	CO-225-30734	SUHANI MAM	2100	\N	2026-05-14 19:05:45.947	2026-05-14 19:05:45.947	\N	\N	\N	\N	2026-03-06
641	wlozh10ira333j1d4sslbqr3	CO-225-30734	SUHANI MAM	2100	\N	2026-05-14 19:05:45.947	2026-05-14 19:05:45.947	2026-05-14 19:05:45.962	\N	\N	\N	2026-03-06
642	e1qdgjj07zavbkvdpz912ii0	CO-225-30735	HITESHBHAI	1693	\N	2026-05-14 19:05:46.71	2026-05-14 19:05:46.71	\N	\N	\N	\N	2026-03-06
643	e1qdgjj07zavbkvdpz912ii0	CO-225-30735	HITESHBHAI	1693	\N	2026-05-14 19:05:46.71	2026-05-14 19:05:46.71	2026-05-14 19:05:46.719	\N	\N	\N	2026-03-06
644	vpmkjdtx0rlc3m13unyervao	CO-225-30736	yash oberoi	2099	\N	2026-05-14 19:05:47.463	2026-05-14 19:05:47.463	\N	\N	\N	\N	2026-03-06
645	vpmkjdtx0rlc3m13unyervao	CO-225-30736	yash oberoi	2099	\N	2026-05-14 19:05:47.463	2026-05-14 19:05:47.463	2026-05-14 19:05:47.478	\N	\N	\N	2026-03-06
646	xabhxd8oz4klxhp74d10o4su	CO-225-30737	SHUBHRA	2100	\N	2026-05-14 19:05:48.325	2026-05-14 19:05:48.325	\N	\N	\N	\N	2026-03-06
647	xabhxd8oz4klxhp74d10o4su	CO-225-30737	SHUBHRA	2100	\N	2026-05-14 19:05:48.325	2026-05-14 19:05:48.325	2026-05-14 19:05:48.34	\N	\N	\N	2026-03-06
652	hqbb70f1a2ebtix3i7m03tqi	CO-225-30740	PALAK	3324	\N	2026-05-14 19:05:51.253	2026-05-14 19:05:51.253	\N	\N	\N	\N	2026-03-06
653	hqbb70f1a2ebtix3i7m03tqi	CO-225-30740	PALAK	3324	\N	2026-05-14 19:05:51.253	2026-05-14 19:05:51.253	2026-05-14 19:05:51.277	\N	\N	\N	2026-03-06
656	ce03xbu32bc8d9dcnmdgjcfz	CO-225-30742	KAVITA	588	\N	2026-05-14 19:05:53.028	2026-05-14 19:05:53.028	\N	\N	\N	\N	2026-03-06
657	ce03xbu32bc8d9dcnmdgjcfz	CO-225-30742	KAVITA	588	\N	2026-05-14 19:05:53.028	2026-05-14 19:05:53.028	2026-05-14 19:05:53.041	\N	\N	\N	2026-03-06
672	t7on1p1ntmjz695qby6y24u8	CO-225-30750	pooja mehata	2099	\N	2026-05-14 19:05:58.853	2026-05-14 19:05:58.853	\N	\N	\N	\N	2026-03-06
673	t7on1p1ntmjz695qby6y24u8	CO-225-30750	pooja mehata	2099	\N	2026-05-14 19:05:58.853	2026-05-14 19:05:58.853	2026-05-14 19:05:58.861	\N	\N	\N	2026-03-06
678	o4pqtwymeqy2cuwe51q0br1q	CO-225-30753	paul sir	2113	\N	2026-05-14 19:06:00.369	2026-05-14 19:06:00.369	\N	\N	\N	\N	2026-03-06
679	o4pqtwymeqy2cuwe51q0br1q	CO-225-30753	paul sir	2113	\N	2026-05-14 19:06:00.369	2026-05-14 19:06:00.369	2026-05-14 19:06:00.377	\N	\N	\N	2026-03-06
648	avplhsov6j04gzo2d1ssxff1	CO-225-30738	shweta gulati	14350	\N	2026-05-14 19:05:49.173	2026-05-14 19:05:49.173	\N	\N	\N	\N	2026-03-06
649	avplhsov6j04gzo2d1ssxff1	CO-225-30738	shweta gulati	14350	\N	2026-05-14 19:05:49.173	2026-05-14 19:05:49.173	2026-05-14 19:05:49.209	\N	\N	\N	2026-03-06
650	sqkmcn23okxv8x0en7nx339q	CO-225-30739	Vandana Mohta	2257	\N	2026-05-14 19:05:50.208	2026-05-14 19:05:50.208	\N	\N	\N	\N	2026-03-06
651	sqkmcn23okxv8x0en7nx339q	CO-225-30739	Vandana Mohta	2257	\N	2026-05-14 19:05:50.208	2026-05-14 19:05:50.208	2026-05-14 19:05:50.227	\N	\N	\N	2026-03-06
660	myzjtzz8e3ijp8j8h6hq915k	CO-225-30744	simba parikh	9139	\N	2026-05-14 19:05:54.504	2026-05-14 19:05:54.504	\N	\N	\N	\N	2026-03-06
661	myzjtzz8e3ijp8j8h6hq915k	CO-225-30744	simba parikh	9139	\N	2026-05-14 19:05:54.504	2026-05-14 19:05:54.504	2026-05-14 19:05:54.514	\N	\N	\N	2026-03-06
664	szey9baqzeufqa3vmft0ve88	CO-225-30746	Essence Productions	1980	\N	2026-05-14 19:05:55.804	2026-05-14 19:05:55.804	\N	\N	\N	\N	2026-03-06
665	szey9baqzeufqa3vmft0ve88	CO-225-30746	Essence Productions	1980	\N	2026-05-14 19:05:55.804	2026-05-14 19:05:55.804	2026-05-14 19:05:55.814	\N	\N	\N	2026-03-06
674	d9iduo5kpnqzjkpyfe6ci81t	CO-225-30751	JATIN GANDHI	2150	\N	2026-05-14 19:05:59.328	2026-05-14 19:05:59.328	\N	\N	\N	\N	2026-03-06
675	d9iduo5kpnqzjkpyfe6ci81t	CO-225-30751	JATIN GANDHI	2150	\N	2026-05-14 19:05:59.328	2026-05-14 19:05:59.328	2026-05-14 19:05:59.336	\N	\N	\N	2026-03-06
684	m9azb0sczwqm9ozxlj6fvdn7	CO-225-30756	MAYRA DEGINER	1950	\N	2026-05-14 19:06:02.537	2026-05-14 19:06:02.537	\N	\N	\N	\N	2026-03-06
685	m9azb0sczwqm9ozxlj6fvdn7	CO-225-30756	MAYRA DEGINER	1950	\N	2026-05-14 19:06:02.537	2026-05-14 19:06:02.537	2026-05-14 19:06:02.546	\N	\N	\N	2026-03-06
654	v1swz4nw29svs40z063o2b54	CO-225-30741	irfan saikh	40	\N	2026-05-14 19:05:52.349	2026-05-14 19:05:52.349	\N	\N	\N	\N	2026-03-06
655	v1swz4nw29svs40z063o2b54	CO-225-30741	irfan saikh	40	\N	2026-05-14 19:05:52.349	2026-05-14 19:05:52.349	2026-05-14 19:05:52.36	\N	\N	\N	2026-03-06
658	qvvydky6e4jshoyxqplomn9g	CO-225-30743	Maulika Hely	10452	\N	2026-05-14 19:05:53.92	2026-05-14 19:05:53.92	\N	\N	\N	\N	2026-03-06
659	qvvydky6e4jshoyxqplomn9g	CO-225-30743	Maulika Hely	10452	\N	2026-05-14 19:05:53.92	2026-05-14 19:05:53.92	2026-05-14 19:05:53.933	\N	\N	\N	2026-03-06
662	cutt02w6xahjlg7krfjsd5ym	CO-225-30745	sunita	370	\N	2026-05-14 19:05:55.104	2026-05-14 19:05:55.104	\N	\N	\N	\N	2026-03-06
663	cutt02w6xahjlg7krfjsd5ym	CO-225-30745	sunita	370	\N	2026-05-14 19:05:55.104	2026-05-14 19:05:55.104	2026-05-14 19:05:55.113	\N	\N	\N	2026-03-06
666	umbwycaoqwikdact8q5fszl9	CO-225-30747	dr.kapil ahuja	2200	\N	2026-05-14 19:05:56.554	2026-05-14 19:05:56.554	\N	\N	\N	\N	2026-03-06
667	umbwycaoqwikdact8q5fszl9	CO-225-30747	dr.kapil ahuja	2200	\N	2026-05-14 19:05:56.554	2026-05-14 19:05:56.554	2026-05-14 19:05:56.578	\N	\N	\N	2026-03-06
668	ydtr4z9lwzhcgz14hf415b9t	CO-225-30748	shefali	2116	\N	2026-05-14 19:05:57.661	2026-05-14 19:05:57.661	\N	\N	\N	\N	2026-03-06
669	ydtr4z9lwzhcgz14hf415b9t	CO-225-30748	shefali	2116	\N	2026-05-14 19:05:57.661	2026-05-14 19:05:57.661	2026-05-14 19:05:57.675	\N	\N	\N	2026-03-06
670	p2detigtx2pwgnk0ceqfdsmw	CO-225-30749	mayur bhai	1332	\N	2026-05-14 19:05:58.37	2026-05-14 19:05:58.37	\N	\N	\N	\N	2026-03-06
671	p2detigtx2pwgnk0ceqfdsmw	CO-225-30749	mayur bhai	1332	\N	2026-05-14 19:05:58.37	2026-05-14 19:05:58.37	2026-05-14 19:05:58.378	\N	\N	\N	2026-03-06
676	d8j706ue5s8p3qgzhwzom4k6	CO-225-30752	KALPANA PATEL	2099	\N	2026-05-14 19:05:59.855	2026-05-14 19:05:59.855	\N	\N	\N	\N	2026-03-06
677	d8j706ue5s8p3qgzhwzom4k6	CO-225-30752	KALPANA PATEL	2099	\N	2026-05-14 19:05:59.855	2026-05-14 19:05:59.855	2026-05-14 19:05:59.864	\N	\N	\N	2026-03-06
680	g6opxflgra7i3cqx7wdkkwom	CO-225-30754	BINDU ACHARYA	2730	\N	2026-05-14 19:06:00.858	2026-05-14 19:06:00.858	\N	\N	\N	\N	2026-03-06
681	g6opxflgra7i3cqx7wdkkwom	CO-225-30754	BINDU ACHARYA	2730	\N	2026-05-14 19:06:00.858	2026-05-14 19:06:00.858	2026-05-14 19:06:00.866	\N	\N	\N	2026-03-06
682	ovqwj6g6uxksq1i8zinsk288	CO-225-30755	dogs spa	6700	\N	2026-05-14 19:06:01.608	2026-05-14 19:06:01.608	\N	\N	\N	\N	2026-03-06
683	ovqwj6g6uxksq1i8zinsk288	CO-225-30755	dogs spa	6700	\N	2026-05-14 19:06:01.608	2026-05-14 19:06:01.608	2026-05-14 19:06:01.633	\N	\N	\N	2026-03-06
686	lu9c0r79155cprb0gums15cr	CO-225-30757	NIKITA DESAI	2730	\N	2026-05-14 19:06:03.314	2026-05-14 19:06:03.314	\N	\N	\N	\N	2026-03-06
687	lu9c0r79155cprb0gums15cr	CO-225-30757	NIKITA DESAI	2730	\N	2026-05-14 19:06:03.314	2026-05-14 19:06:03.314	2026-05-14 19:06:03.358	\N	\N	\N	2026-03-06
688	ets0bmowjv07lwaixn91f9i2	CO-225-30758	devansh	1380	\N	2026-05-14 19:06:04.262	2026-05-14 19:06:04.262	\N	\N	\N	\N	2026-03-06
689	ets0bmowjv07lwaixn91f9i2	CO-225-30758	devansh	1380	\N	2026-05-14 19:06:04.262	2026-05-14 19:06:04.262	2026-05-14 19:06:04.271	\N	\N	\N	2026-03-06
690	cu4d855ltb4bl3ahgw8boyo6	CO-225-30759	pooja mehata	1950	\N	2026-05-14 19:06:04.778	2026-05-14 19:06:04.778	\N	\N	\N	\N	2026-03-06
691	cu4d855ltb4bl3ahgw8boyo6	CO-225-30759	pooja mehata	1950	\N	2026-05-14 19:06:04.778	2026-05-14 19:06:04.778	2026-05-14 19:06:04.792	\N	\N	\N	2026-03-06
692	kvb40w0hss64skb8kizi2wmq	CO-225-30760	shilly shah	195	\N	2026-05-14 19:06:05.428	2026-05-14 19:06:05.428	\N	\N	\N	\N	2026-03-06
693	kvb40w0hss64skb8kizi2wmq	CO-225-30760	shilly shah	195	\N	2026-05-14 19:06:05.428	2026-05-14 19:06:05.428	2026-05-14 19:06:05.437	\N	\N	\N	2026-03-06
694	onytyvlnt9mnsobs66tsk07n	CO-225-30761	DIPAK	110	\N	2026-05-14 19:06:05.886	2026-05-14 19:06:05.886	\N	\N	\N	\N	2026-03-06
695	onytyvlnt9mnsobs66tsk07n	CO-225-30761	DIPAK	110	\N	2026-05-14 19:06:05.886	2026-05-14 19:06:05.886	2026-05-14 19:06:05.898	\N	\N	\N	2026-03-06
696	tigcuggvkzlznxyue8p70ile	CO-225-30762	ankish	32	\N	2026-05-14 19:06:06.501	2026-05-14 19:06:06.501	\N	\N	\N	\N	2026-03-06
697	tigcuggvkzlznxyue8p70ile	CO-225-30762	ankish	32	\N	2026-05-14 19:06:06.501	2026-05-14 19:06:06.501	2026-05-14 19:06:06.509	\N	\N	\N	2026-03-06
698	v28fas0qmy2xr9n94sedoe8n	CO-225-30763	MAHESH PATEL	117	\N	2026-05-14 19:06:07.129	2026-05-14 19:06:07.129	\N	\N	\N	\N	2026-03-06
699	v28fas0qmy2xr9n94sedoe8n	CO-225-30763	MAHESH PATEL	117	\N	2026-05-14 19:06:07.129	2026-05-14 19:06:07.129	2026-05-14 19:06:07.141	\N	\N	\N	2026-03-06
700	mbz03ouuslhtu1ua5me1ufjt	CO-225-30764	uma singh	1619	\N	2026-05-14 19:06:07.932	2026-05-14 19:06:07.932	\N	\N	\N	\N	2026-03-06
701	mbz03ouuslhtu1ua5me1ufjt	CO-225-30764	uma singh	1619	\N	2026-05-14 19:06:07.932	2026-05-14 19:06:07.932	2026-05-14 19:06:07.943	\N	\N	\N	2026-03-06
702	njdgiffcd2qvzy8nkcuz13c4	CO-225-30765	kusum parmar	1450	\N	2026-05-14 19:06:08.534	2026-05-14 19:06:08.534	\N	\N	\N	\N	2026-03-06
703	njdgiffcd2qvzy8nkcuz13c4	CO-225-30765	kusum parmar	1450	\N	2026-05-14 19:06:08.534	2026-05-14 19:06:08.534	2026-05-14 19:06:08.542	\N	\N	\N	2026-03-06
704	fdcqyxbmq8bkyx3dxm9h8j9t	CO-225-30766	ZEEL SONI	75	\N	2026-05-14 19:06:09.145	2026-05-14 19:06:09.145	\N	\N	\N	\N	2026-03-06
705	fdcqyxbmq8bkyx3dxm9h8j9t	CO-225-30766	ZEEL SONI	75	\N	2026-05-14 19:06:09.145	2026-05-14 19:06:09.145	2026-05-14 19:06:09.155	\N	\N	\N	2026-03-06
706	itx0b2hgzgp9ee5tuiayccns	CO-225-30767	PAAVAN PANCHAL	2730	\N	2026-05-14 19:06:09.759	2026-05-14 19:06:09.759	\N	\N	\N	\N	2026-03-06
707	itx0b2hgzgp9ee5tuiayccns	CO-225-30767	PAAVAN PANCHAL	2730	\N	2026-05-14 19:06:09.759	2026-05-14 19:06:09.759	2026-05-14 19:06:09.771	\N	\N	\N	2026-03-06
708	hu5vqi9ph057wpcbjyi49rzp	CO-225-30768	harshad patel	1950	\N	2026-05-14 19:06:10.352	2026-05-14 19:06:10.352	\N	\N	\N	\N	2026-03-06
709	hu5vqi9ph057wpcbjyi49rzp	CO-225-30768	harshad patel	1950	\N	2026-05-14 19:06:10.352	2026-05-14 19:06:10.352	2026-05-14 19:06:10.361	\N	\N	\N	2026-03-06
710	pgp5bszjftssghofzcohezdz	CO-225-30769	yash gaur	131	\N	2026-05-14 19:06:10.943	2026-05-14 19:06:10.943	\N	\N	\N	\N	2026-03-06
711	pgp5bszjftssghofzcohezdz	CO-225-30769	yash gaur	131	\N	2026-05-14 19:06:10.943	2026-05-14 19:06:10.943	2026-05-14 19:06:10.952	\N	\N	\N	2026-03-06
712	nxb8ijh8y6sl7h4t6s4qgdww	CO-225-30770	BHAVNA PUROHIT	195	\N	2026-05-14 19:06:11.52	2026-05-14 19:06:11.52	\N	\N	\N	\N	2026-03-06
713	nxb8ijh8y6sl7h4t6s4qgdww	CO-225-30770	BHAVNA PUROHIT	195	\N	2026-05-14 19:06:11.52	2026-05-14 19:06:11.52	2026-05-14 19:06:11.531	\N	\N	\N	2026-03-06
714	wjylldnzq2i2ujmydd6dmky0	CO-225-30771	JINAY	1901	\N	2026-05-14 19:06:12.101	2026-05-14 19:06:12.101	\N	\N	\N	\N	2026-03-06
715	wjylldnzq2i2ujmydd6dmky0	CO-225-30771	JINAY	1901	\N	2026-05-14 19:06:12.101	2026-05-14 19:06:12.101	2026-05-14 19:06:12.112	\N	\N	\N	2026-03-06
716	hwt9oclt4291e7o8lysxj7mx	CO-225-30772	VIDHI MAM	9151	\N	2026-05-14 19:06:12.704	2026-05-14 19:06:12.704	\N	\N	\N	\N	2026-03-06
717	hwt9oclt4291e7o8lysxj7mx	CO-225-30772	VIDHI MAM	9151	\N	2026-05-14 19:06:12.704	2026-05-14 19:06:12.704	2026-05-14 19:06:12.715	\N	\N	\N	2026-03-06
718	r1dfham16rlrdejnoybrsi0f	CO-225-30773	KAMRAJ MODI	1950	\N	2026-05-14 19:06:13.492	2026-05-14 19:06:13.492	\N	\N	\N	\N	2026-03-06
719	r1dfham16rlrdejnoybrsi0f	CO-225-30773	KAMRAJ MODI	1950	\N	2026-05-14 19:06:13.492	2026-05-14 19:06:13.492	2026-05-14 19:06:13.5	\N	\N	\N	2026-03-06
720	bfet9q5dlf8pmqcd13ihh50p	CO-225-30774	SUHANI	2870	\N	2026-05-14 19:06:14.065	2026-05-14 19:06:14.065	\N	\N	\N	\N	2026-03-06
721	bfet9q5dlf8pmqcd13ihh50p	CO-225-30774	SUHANI	2870	\N	2026-05-14 19:06:14.065	2026-05-14 19:06:14.065	2026-05-14 19:06:14.075	\N	\N	\N	2026-03-06
722	fcac3rjzvfvekl1wbyizuez5	CO-225-30775	NIRAV CHOLERA	190	\N	2026-05-14 19:06:14.657	2026-05-14 19:06:14.657	\N	\N	\N	\N	2026-03-06
723	fcac3rjzvfvekl1wbyizuez5	CO-225-30775	NIRAV CHOLERA	190	\N	2026-05-14 19:06:14.657	2026-05-14 19:06:14.657	2026-05-14 19:06:14.664	\N	\N	\N	2026-03-06
724	u80n4k4t5iqm8lmoqfi9u2w2	CO-225-30776	BHAVNA	1100	\N	2026-05-14 19:06:15.243	2026-05-14 19:06:15.243	\N	\N	\N	\N	2026-03-06
725	u80n4k4t5iqm8lmoqfi9u2w2	CO-225-30776	BHAVNA	1100	\N	2026-05-14 19:06:15.243	2026-05-14 19:06:15.243	2026-05-14 19:06:15.252	\N	\N	\N	2026-03-06
726	bch6k7afm8nkm624s1fykf3f	CO-225-30777	JAYANTA ROY	590	\N	2026-05-14 19:06:15.875	2026-05-14 19:06:15.875	\N	\N	\N	\N	2026-03-06
727	bch6k7afm8nkm624s1fykf3f	CO-225-30777	JAYANTA ROY	590	\N	2026-05-14 19:06:15.875	2026-05-14 19:06:15.875	2026-05-14 19:06:15.884	\N	\N	\N	2026-03-06
728	uzrrxhaxy5v0d74ted4bcga6	CO-225-30778	MEET	2210	\N	2026-05-14 19:06:16.622	2026-05-14 19:06:16.622	\N	\N	\N	\N	2026-03-07
729	uzrrxhaxy5v0d74ted4bcga6	CO-225-30778	MEET	2210	\N	2026-05-14 19:06:16.622	2026-05-14 19:06:16.622	2026-05-14 19:06:16.631	\N	\N	\N	2026-03-07
730	n7hxfstf0gl05af6512pys3h	CO-225-30779	print vision	1962	\N	2026-05-14 19:06:17.313	2026-05-14 19:06:17.313	\N	\N	\N	\N	2026-03-07
731	n7hxfstf0gl05af6512pys3h	CO-225-30779	print vision	1962	\N	2026-05-14 19:06:17.313	2026-05-14 19:06:17.313	2026-05-14 19:06:17.325	\N	\N	\N	2026-03-07
732	r3l1fjje5o9tf9wy3wo5yemv	CO-225-30780	niti dave	9833	\N	2026-05-14 19:06:17.909	2026-05-14 19:06:17.909	\N	\N	\N	\N	2026-03-07
733	r3l1fjje5o9tf9wy3wo5yemv	CO-225-30780	niti dave	9833	\N	2026-05-14 19:06:17.909	2026-05-14 19:06:17.909	2026-05-14 19:06:17.92	\N	\N	\N	2026-03-07
740	nsula69f96vxfes02a0o3qi2	CO-225-30784	bhavna	8368	\N	2026-05-14 19:06:20.413	2026-05-14 19:06:20.413	\N	\N	\N	\N	2026-03-07
741	nsula69f96vxfes02a0o3qi2	CO-225-30784	bhavna	8368	\N	2026-05-14 19:06:20.413	2026-05-14 19:06:20.413	2026-05-14 19:06:20.421	\N	\N	\N	2026-03-07
744	cjczdk3d0f55w4bmp6mbu3j1	CO-225-30786	nainash	1100	\N	2026-05-14 19:06:21.559	2026-05-14 19:06:21.559	\N	\N	\N	\N	2026-03-07
745	cjczdk3d0f55w4bmp6mbu3j1	CO-225-30786	nainash	1100	\N	2026-05-14 19:06:21.559	2026-05-14 19:06:21.559	2026-05-14 19:06:21.569	\N	\N	\N	2026-03-07
748	h9sgnfp0c7gfev4dxfni38s4	CO-225-30788	nimisha	4656	\N	2026-05-14 19:06:22.748	2026-05-14 19:06:22.748	\N	\N	\N	\N	2026-03-07
749	h9sgnfp0c7gfev4dxfni38s4	CO-225-30788	nimisha	4656	\N	2026-05-14 19:06:22.748	2026-05-14 19:06:22.748	2026-05-14 19:06:22.758	\N	\N	\N	2026-03-07
752	flezognwr2d237c34cbvm1fx	CO-225-30790	JYOTI RAJGOR	4200	\N	2026-05-14 19:06:23.95	2026-05-14 19:06:23.95	\N	\N	\N	\N	2026-03-07
753	flezognwr2d237c34cbvm1fx	CO-225-30790	JYOTI RAJGOR	4200	\N	2026-05-14 19:06:23.95	2026-05-14 19:06:23.95	2026-05-14 19:06:23.961	\N	\N	\N	2026-03-07
756	ykvki9ceokm17u4k3jrww0ml	CO-225-30792	mamta agrawal	4200	\N	2026-05-14 19:06:25.105	2026-05-14 19:06:25.105	\N	\N	\N	\N	2026-03-07
757	ykvki9ceokm17u4k3jrww0ml	CO-225-30792	mamta agrawal	4200	\N	2026-05-14 19:06:25.105	2026-05-14 19:06:25.105	2026-05-14 19:06:25.113	\N	\N	\N	2026-03-07
760	ng5thk1vfg4bzrbe5ttve7t5	CO-225-30794	DINESH SAXENA	2939	\N	2026-05-14 19:06:26.273	2026-05-14 19:06:26.273	\N	\N	\N	\N	2026-03-07
761	ng5thk1vfg4bzrbe5ttve7t5	CO-225-30794	DINESH SAXENA	2939	\N	2026-05-14 19:06:26.273	2026-05-14 19:06:26.273	2026-05-14 19:06:26.28	\N	\N	\N	2026-03-07
762	xp46cua1iq095ffumq2r8caw	CO-225-30795	RENUKA MAM	2099	\N	2026-05-14 19:06:26.854	2026-05-14 19:06:26.854	\N	\N	\N	\N	2026-03-07
763	xp46cua1iq095ffumq2r8caw	CO-225-30795	RENUKA MAM	2099	\N	2026-05-14 19:06:26.854	2026-05-14 19:06:26.854	2026-05-14 19:06:26.861	\N	\N	\N	2026-03-07
770	a88xjheznx2dw2awhtap8w5p	CO-225-30799	MANISH PATEL	7034	\N	2026-05-14 19:06:29.288	2026-05-14 19:06:29.288	\N	\N	\N	\N	2026-03-07
771	a88xjheznx2dw2awhtap8w5p	CO-225-30799	MANISH PATEL	7034	\N	2026-05-14 19:06:29.288	2026-05-14 19:06:29.288	2026-05-14 19:06:29.309	\N	\N	\N	2026-03-07
772	rrqy9fezogevcszue177wv94	CO-225-30800	AKASH K SHAH	1700	\N	2026-05-14 19:06:30.092	2026-05-14 19:06:30.092	\N	\N	\N	\N	2026-03-07
773	rrqy9fezogevcszue177wv94	CO-225-30800	AKASH K SHAH	1700	\N	2026-05-14 19:06:30.092	2026-05-14 19:06:30.092	2026-05-14 19:06:30.108	\N	\N	\N	2026-03-07
774	u38cz98rhmwm2mvhvxejk526	CO-225-30801	TANIYA CHOITHANI	2099	\N	2026-05-14 19:06:30.849	2026-05-14 19:06:30.849	\N	\N	\N	\N	2026-03-07
775	u38cz98rhmwm2mvhvxejk526	CO-225-30801	TANIYA CHOITHANI	2099	\N	2026-05-14 19:06:30.849	2026-05-14 19:06:30.849	2026-05-14 19:06:30.858	\N	\N	\N	2026-03-07
780	veuawt0go08zz095eauhaj2e	CO-225-30804	AARTI	560	\N	2026-05-14 19:06:32.874	2026-05-14 19:06:32.874	\N	\N	\N	\N	2026-03-07
781	veuawt0go08zz095eauhaj2e	CO-225-30804	AARTI	560	\N	2026-05-14 19:06:32.874	2026-05-14 19:06:32.874	2026-05-14 19:06:32.883	\N	\N	\N	2026-03-07
784	thrgpvlb8hhr93tyoomf2wad	CO-225-30806	AMIT LAB WIFE	2367	\N	2026-05-14 19:06:34.137	2026-05-14 19:06:34.137	\N	\N	\N	\N	2026-03-07
785	thrgpvlb8hhr93tyoomf2wad	CO-225-30806	AMIT LAB WIFE	2367	\N	2026-05-14 19:06:34.137	2026-05-14 19:06:34.137	2026-05-14 19:06:34.148	\N	\N	\N	2026-03-07
786	o5dehci1ngy3vuke35tenudu	CO-225-30807	rahul shah	40	\N	2026-05-14 19:06:34.85	2026-05-14 19:06:34.85	\N	\N	\N	\N	2026-03-07
787	o5dehci1ngy3vuke35tenudu	CO-225-30807	rahul shah	40	\N	2026-05-14 19:06:34.85	2026-05-14 19:06:34.85	2026-05-14 19:06:34.863	\N	\N	\N	2026-03-07
788	u4ojwacw5ktge6sr7p4mrnvj	CO-225-30808	ami shah	6600	\N	2026-05-14 19:06:35.713	2026-05-14 19:06:35.713	\N	\N	\N	\N	2026-03-07
789	u4ojwacw5ktge6sr7p4mrnvj	CO-225-30808	ami shah	6600	\N	2026-05-14 19:06:35.713	2026-05-14 19:06:35.713	2026-05-14 19:06:35.725	\N	\N	\N	2026-03-07
790	abovhceknq6d7ie4vodvo6ee	CO-225-30809	sanjeev sir	3370	\N	2026-05-14 19:06:36.36	2026-05-14 19:06:36.36	\N	\N	\N	\N	2026-03-07
791	abovhceknq6d7ie4vodvo6ee	CO-225-30809	sanjeev sir	3370	\N	2026-05-14 19:06:36.36	2026-05-14 19:06:36.36	2026-05-14 19:06:36.371	\N	\N	\N	2026-03-07
792	fhvx1oms8z960jty9itro09o	CO-225-30810	JIGNESHBHAI	2939	\N	2026-05-14 19:06:37.163	2026-05-14 19:06:37.163	\N	\N	\N	\N	2026-03-07
793	fhvx1oms8z960jty9itro09o	CO-225-30810	JIGNESHBHAI	2939	\N	2026-05-14 19:06:37.163	2026-05-14 19:06:37.163	2026-05-14 19:06:37.177	\N	\N	\N	2026-03-07
798	awdcxokbmyqfrtqam2t0iidr	CO-225-30813	tejal patel	731	\N	2026-05-14 19:06:39.101	2026-05-14 19:06:39.101	\N	\N	\N	\N	2026-03-07
799	awdcxokbmyqfrtqam2t0iidr	CO-225-30813	tejal patel	731	\N	2026-05-14 19:06:39.101	2026-05-14 19:06:39.101	2026-05-14 19:06:39.108	\N	\N	\N	2026-03-07
800	g4oxhw0lmet0d447maagwbbz	CO-225-30814	rekha nobalnagar	1310	\N	2026-05-14 19:06:39.797	2026-05-14 19:06:39.797	\N	\N	\N	\N	2026-03-07
801	g4oxhw0lmet0d447maagwbbz	CO-225-30814	rekha nobalnagar	1310	\N	2026-05-14 19:06:39.797	2026-05-14 19:06:39.797	2026-05-14 19:06:39.813	\N	\N	\N	2026-03-07
802	tjn4etirlqgj1bcg7ktkz57i	CO-225-30815	DHRUVA	335	\N	2026-05-14 19:06:40.736	2026-05-14 19:06:40.736	\N	\N	\N	\N	2026-03-07
803	tjn4etirlqgj1bcg7ktkz57i	CO-225-30815	DHRUVA	335	\N	2026-05-14 19:06:40.736	2026-05-14 19:06:40.736	2026-05-14 19:06:40.748	\N	\N	\N	2026-03-07
804	x5clbkfhgjjm5899q8imbhoo	CO-225-30816	tarana bhatiya	1625	\N	2026-05-14 19:06:41.468	2026-05-14 19:06:41.468	\N	\N	\N	\N	2026-03-07
805	x5clbkfhgjjm5899q8imbhoo	CO-225-30816	tarana bhatiya	1625	\N	2026-05-14 19:06:41.468	2026-05-14 19:06:41.468	2026-05-14 19:06:41.48	\N	\N	\N	2026-03-07
814	w6rsi6k5q70buprmx4yxkqj5	CO-225-30821	yagnish	450	\N	2026-05-14 19:06:45.024	2026-05-14 19:06:45.024	\N	\N	\N	\N	2026-03-07
815	w6rsi6k5q70buprmx4yxkqj5	CO-225-30821	yagnish	450	\N	2026-05-14 19:06:45.024	2026-05-14 19:06:45.024	2026-05-14 19:06:45.032	\N	\N	\N	2026-03-07
734	y2mhaytsn1njbt11b59p5o1m	CO-225-30781	KALINDI SHAH	2260	\N	2026-05-14 19:06:18.519	2026-05-14 19:06:18.519	\N	\N	\N	\N	2026-03-07
735	y2mhaytsn1njbt11b59p5o1m	CO-225-30781	KALINDI SHAH	2260	\N	2026-05-14 19:06:18.519	2026-05-14 19:06:18.519	2026-05-14 19:06:18.527	\N	\N	\N	2026-03-07
736	u5tid8k7sf9lng6tey2reaof	CO-225-30782	Pruthvi Foundation	5340	\N	2026-05-14 19:06:19.034	2026-05-14 19:06:19.034	\N	\N	\N	\N	2026-03-07
737	u5tid8k7sf9lng6tey2reaof	CO-225-30782	Pruthvi Foundation	5340	\N	2026-05-14 19:06:19.034	2026-05-14 19:06:19.034	2026-05-14 19:06:19.041	\N	\N	\N	2026-03-07
738	d31f9v21kaimpwssliwdjqp6	CO-225-30783	D.P SHARMA	2222	\N	2026-05-14 19:06:19.845	2026-05-14 19:06:19.845	\N	\N	\N	\N	2026-03-07
739	d31f9v21kaimpwssliwdjqp6	CO-225-30783	D.P SHARMA	2222	\N	2026-05-14 19:06:19.845	2026-05-14 19:06:19.845	2026-05-14 19:06:19.855	\N	\N	\N	2026-03-07
742	q7stha2b17qk3m8lshdffjwq	CO-225-30785	shradhavi mam	855	\N	2026-05-14 19:06:20.99	2026-05-14 19:06:20.99	\N	\N	\N	\N	2026-03-07
743	q7stha2b17qk3m8lshdffjwq	CO-225-30785	shradhavi mam	855	\N	2026-05-14 19:06:20.99	2026-05-14 19:06:20.99	2026-05-14 19:06:21	\N	\N	\N	2026-03-07
746	vf62d6bc08buah1tsauw7pp5	CO-225-30787	krishna	10042	\N	2026-05-14 19:06:22.126	2026-05-14 19:06:22.126	\N	\N	\N	\N	2026-03-07
747	vf62d6bc08buah1tsauw7pp5	CO-225-30787	krishna	10042	\N	2026-05-14 19:06:22.126	2026-05-14 19:06:22.126	2026-05-14 19:06:22.134	\N	\N	\N	2026-03-07
750	qh22he7023lm7203ny8i75sa	CO-225-30789	SINDHU	1850	\N	2026-05-14 19:06:23.359	2026-05-14 19:06:23.359	\N	\N	\N	\N	2026-03-07
751	qh22he7023lm7203ny8i75sa	CO-225-30789	SINDHU	1850	\N	2026-05-14 19:06:23.359	2026-05-14 19:06:23.359	2026-05-14 19:06:23.368	\N	\N	\N	2026-03-07
754	ui53fhpn1bgb66aw1kpx8eho	CO-225-30791	nirman shah	2320	\N	2026-05-14 19:06:24.526	2026-05-14 19:06:24.526	\N	\N	\N	\N	2026-03-07
755	ui53fhpn1bgb66aw1kpx8eho	CO-225-30791	nirman shah	2320	\N	2026-05-14 19:06:24.526	2026-05-14 19:06:24.526	2026-05-14 19:06:24.533	\N	\N	\N	2026-03-07
758	kkls9ct2t925ejh263owqsxi	CO-225-30793	PIYABEN	4262	\N	2026-05-14 19:06:25.696	2026-05-14 19:06:25.696	\N	\N	\N	\N	2026-03-07
759	kkls9ct2t925ejh263owqsxi	CO-225-30793	PIYABEN	4262	\N	2026-05-14 19:06:25.696	2026-05-14 19:06:25.696	2026-05-14 19:06:25.707	\N	\N	\N	2026-03-07
764	v6e2w309cyi7yhcuzcbnow4e	CO-225-30796	deval	8200	\N	2026-05-14 19:06:27.385	2026-05-14 19:06:27.385	\N	\N	\N	\N	2026-03-07
765	v6e2w309cyi7yhcuzcbnow4e	CO-225-30796	deval	8200	\N	2026-05-14 19:06:27.385	2026-05-14 19:06:27.385	2026-05-14 19:06:27.393	\N	\N	\N	2026-03-07
766	i7zlpp9eh2rhn39jf4q9rzcz	CO-225-30797	shivani	2100	\N	2026-05-14 19:06:28.128	2026-05-14 19:06:28.128	\N	\N	\N	\N	2026-03-07
767	i7zlpp9eh2rhn39jf4q9rzcz	CO-225-30797	shivani	2100	\N	2026-05-14 19:06:28.128	2026-05-14 19:06:28.128	2026-05-14 19:06:28.139	\N	\N	\N	2026-03-07
768	wmevfggogje264i9e8teho61	CO-225-30798	malini	799	\N	2026-05-14 19:06:28.719	2026-05-14 19:06:28.719	\N	\N	\N	\N	2026-03-07
769	wmevfggogje264i9e8teho61	CO-225-30798	malini	799	\N	2026-05-14 19:06:28.719	2026-05-14 19:06:28.719	2026-05-14 19:06:28.727	\N	\N	\N	2026-03-07
794	z6h4gvj1em1lg9wi2kg80rdz	CO-225-30811	mansi	990	\N	2026-05-14 19:06:37.825	2026-05-14 19:06:37.825	\N	\N	\N	\N	2026-03-07
795	z6h4gvj1em1lg9wi2kg80rdz	CO-225-30811	mansi	990	\N	2026-05-14 19:06:37.825	2026-05-14 19:06:37.825	2026-05-14 19:06:37.84	\N	\N	\N	2026-03-07
806	yt4ks233842c3kzgh7a856ux	CO-225-30817	mini	1188	\N	2026-05-14 19:06:42.145	2026-05-14 19:06:42.145	\N	\N	\N	\N	2026-03-07
807	yt4ks233842c3kzgh7a856ux	CO-225-30817	mini	1188	\N	2026-05-14 19:06:42.145	2026-05-14 19:06:42.145	2026-05-14 19:06:42.155	\N	\N	\N	2026-03-07
808	jll5ib87t32uixhh3qnmapeu	CO-225-30818	Radhika	1010	\N	2026-05-14 19:06:42.847	2026-05-14 19:06:42.847	\N	\N	\N	\N	2026-03-07
809	jll5ib87t32uixhh3qnmapeu	CO-225-30818	Radhika	1010	\N	2026-05-14 19:06:42.847	2026-05-14 19:06:42.847	2026-05-14 19:06:42.858	\N	\N	\N	2026-03-07
818	uk0sg2gzsvz604m3t3vux3by	CO-225-30823	BINDU ACHARYA	2730	\N	2026-05-14 19:06:46.254	2026-05-14 19:06:46.254	\N	\N	\N	\N	2026-03-07
819	uk0sg2gzsvz604m3t3vux3by	CO-225-30823	BINDU ACHARYA	2730	\N	2026-05-14 19:06:46.254	2026-05-14 19:06:46.254	2026-05-14 19:06:46.262	\N	\N	\N	2026-03-07
820	wl470wburmru0kcevtd06ubs	CO-225-30824	rajani sanyal	11100	\N	2026-05-14 19:06:47.02	2026-05-14 19:06:47.02	\N	\N	\N	\N	2026-03-07
821	wl470wburmru0kcevtd06ubs	CO-225-30824	rajani sanyal	11100	\N	2026-05-14 19:06:47.02	2026-05-14 19:06:47.02	2026-05-14 19:06:47.039	\N	\N	\N	2026-03-07
824	hu1e97442m9dnwydopc3985a	CO-225-30826	VATSALA	1573	\N	2026-05-14 19:06:48.439	2026-05-14 19:06:48.439	\N	\N	\N	\N	2026-03-07
825	hu1e97442m9dnwydopc3985a	CO-225-30826	VATSALA	1573	\N	2026-05-14 19:06:48.439	2026-05-14 19:06:48.439	2026-05-14 19:06:48.451	\N	\N	\N	2026-03-07
828	q69kxqv6zdrbbgounzb7diyc	CO-225-30828	anamika	1167	\N	2026-05-14 19:06:49.627	2026-05-14 19:06:49.627	\N	\N	\N	\N	2026-03-07
829	q69kxqv6zdrbbgounzb7diyc	CO-225-30828	anamika	1167	\N	2026-05-14 19:06:49.627	2026-05-14 19:06:49.627	2026-05-14 19:06:49.636	\N	\N	\N	2026-03-07
830	n8m3lyul12s34hmkr6g75yqx	CO-225-30829	vishal	924	\N	2026-05-14 19:06:50.221	2026-05-14 19:06:50.221	\N	\N	\N	\N	2026-03-07
831	n8m3lyul12s34hmkr6g75yqx	CO-225-30829	vishal	924	\N	2026-05-14 19:06:50.221	2026-05-14 19:06:50.221	2026-05-14 19:06:50.232	\N	\N	\N	2026-03-07
832	gp505a2pa8po34gxwmfjrwew	CO-225-30830	bhavna	1606	\N	2026-05-14 19:06:50.735	2026-05-14 19:06:50.735	\N	\N	\N	\N	2026-03-09
833	gp505a2pa8po34gxwmfjrwew	CO-225-30830	bhavna	1606	\N	2026-05-14 19:06:50.735	2026-05-14 19:06:50.735	2026-05-14 19:06:50.745	\N	\N	\N	2026-03-09
834	vxrshmv2o2d5n6ga8r3unfkt	CO-225-30831	JAYA MEM	8497	\N	2026-05-14 19:06:51.468	2026-05-14 19:06:51.468	\N	\N	\N	\N	2026-03-09
835	vxrshmv2o2d5n6ga8r3unfkt	CO-225-30831	JAYA MEM	8497	\N	2026-05-14 19:06:51.468	2026-05-14 19:06:51.468	2026-05-14 19:06:51.479	\N	\N	\N	2026-03-09
838	pu40zchzmew31clhv9fgt8g8	CO-225-30833	rajvee	1700	\N	2026-05-14 19:06:52.617	2026-05-14 19:06:52.617	\N	\N	\N	\N	2026-03-09
839	pu40zchzmew31clhv9fgt8g8	CO-225-30833	rajvee	1700	\N	2026-05-14 19:06:52.617	2026-05-14 19:06:52.617	2026-05-14 19:06:52.628	\N	\N	\N	2026-03-09
842	hpt59zk9937utv5ey3yd7m2z	CO-225-30835	NILESH SHAH	5189	\N	2026-05-14 19:06:53.765	2026-05-14 19:06:53.765	\N	\N	\N	\N	2026-03-09
843	hpt59zk9937utv5ey3yd7m2z	CO-225-30835	NILESH SHAH	5189	\N	2026-05-14 19:06:53.765	2026-05-14 19:06:53.765	2026-05-14 19:06:53.776	\N	\N	\N	2026-03-09
846	ft6u4pohya3ps1sp2gvkfaqt	CO-225-30837	SANTOSHKUMAR SACHAN	105	\N	2026-05-14 19:06:54.91	2026-05-14 19:06:54.91	\N	\N	\N	\N	2026-03-09
847	ft6u4pohya3ps1sp2gvkfaqt	CO-225-30837	SANTOSHKUMAR SACHAN	105	\N	2026-05-14 19:06:54.91	2026-05-14 19:06:54.91	2026-05-14 19:06:54.92	\N	\N	\N	2026-03-09
848	zmrz0hrkxinw7253zigxlzpp	CO-225-30838	DEVANG	918	\N	2026-05-14 19:06:55.478	2026-05-14 19:06:55.478	\N	\N	\N	\N	2026-03-09
849	zmrz0hrkxinw7253zigxlzpp	CO-225-30838	DEVANG	918	\N	2026-05-14 19:06:55.478	2026-05-14 19:06:55.478	2026-05-14 19:06:55.489	\N	\N	\N	2026-03-09
852	a808igfdmptpae5amfvhhynl	CO-225-30840	BHAVESH	1840	\N	2026-05-14 19:06:56.631	2026-05-14 19:06:56.631	\N	\N	\N	\N	2026-03-09
853	a808igfdmptpae5amfvhhynl	CO-225-30840	BHAVESH	1840	\N	2026-05-14 19:06:56.631	2026-05-14 19:06:56.631	2026-05-14 19:06:56.64	\N	\N	\N	2026-03-09
856	zl2tr7hncvdld6d35hi9q66p	CO-225-30842	nirav agrawal	8670	\N	2026-05-14 19:06:57.772	2026-05-14 19:06:57.772	\N	\N	\N	\N	2026-03-09
857	zl2tr7hncvdld6d35hi9q66p	CO-225-30842	nirav agrawal	8670	\N	2026-05-14 19:06:57.772	2026-05-14 19:06:57.772	2026-05-14 19:06:57.783	\N	\N	\N	2026-03-09
862	dqmbi3higgnlze6hi6ur6cw8	CO-225-30845	FLORA FOUNTAIN	6390	\N	2026-05-14 19:06:59.494	2026-05-14 19:06:59.494	\N	\N	\N	\N	2026-03-09
863	dqmbi3higgnlze6hi6ur6cw8	CO-225-30845	FLORA FOUNTAIN	6390	\N	2026-05-14 19:06:59.494	2026-05-14 19:06:59.494	2026-05-14 19:06:59.502	\N	\N	\N	2026-03-09
868	h6tzq0b05s1hcv7o48d7l6mo	CO-225-30848	ANSHUL	370	\N	2026-05-14 19:07:01.287	2026-05-14 19:07:01.287	\N	\N	\N	\N	2026-03-09
869	h6tzq0b05s1hcv7o48d7l6mo	CO-225-30848	ANSHUL	370	\N	2026-05-14 19:07:01.287	2026-05-14 19:07:01.287	2026-05-14 19:07:01.298	\N	\N	\N	2026-03-09
872	u2m5tkx76bj6i1v42zp1cnh1	CO-225-30850	pinky modi	2911	\N	2026-05-14 19:07:02.451	2026-05-14 19:07:02.451	\N	\N	\N	\N	2026-03-09
873	u2m5tkx76bj6i1v42zp1cnh1	CO-225-30850	pinky modi	2911	\N	2026-05-14 19:07:02.451	2026-05-14 19:07:02.451	2026-05-14 19:07:02.462	\N	\N	\N	2026-03-09
776	y3mn1mt5tb9lkaaousd22ee2	CO-225-30802	rekha ben	174	\N	2026-05-14 19:06:31.449	2026-05-14 19:06:31.449	\N	\N	\N	\N	2026-03-07
777	y3mn1mt5tb9lkaaousd22ee2	CO-225-30802	rekha ben	174	\N	2026-05-14 19:06:31.449	2026-05-14 19:06:31.449	2026-05-14 19:06:31.462	\N	\N	\N	2026-03-07
778	paw0ue55ggfg75zcni0l250f	CO-225-30803	HIMANI	1550	\N	2026-05-14 19:06:32.257	2026-05-14 19:06:32.257	\N	\N	\N	\N	2026-03-07
779	paw0ue55ggfg75zcni0l250f	CO-225-30803	HIMANI	1550	\N	2026-05-14 19:06:32.257	2026-05-14 19:06:32.257	2026-05-14 19:06:32.267	\N	\N	\N	2026-03-07
782	iwvchk9ov5yje6qd619f56xm	CO-225-30805	MONIKA PANCHOLI	2116	\N	2026-05-14 19:06:33.512	2026-05-14 19:06:33.512	\N	\N	\N	\N	2026-03-07
783	iwvchk9ov5yje6qd619f56xm	CO-225-30805	MONIKA PANCHOLI	2116	\N	2026-05-14 19:06:33.512	2026-05-14 19:06:33.512	2026-05-14 19:06:33.522	\N	\N	\N	2026-03-07
796	yzthmmwq0gp815jhlperdti0	CO-225-30812	MARGESH	1090	\N	2026-05-14 19:06:38.457	2026-05-14 19:06:38.457	\N	\N	\N	\N	2026-03-07
797	yzthmmwq0gp815jhlperdti0	CO-225-30812	MARGESH	1090	\N	2026-05-14 19:06:38.457	2026-05-14 19:06:38.457	2026-05-14 19:06:38.468	\N	\N	\N	2026-03-07
810	m199u1jg3t7k19jjcvxgk48h	CO-225-30819	kusum parmar	350	\N	2026-05-14 19:06:43.512	2026-05-14 19:06:43.512	\N	\N	\N	\N	2026-03-07
811	m199u1jg3t7k19jjcvxgk48h	CO-225-30819	kusum parmar	350	\N	2026-05-14 19:06:43.512	2026-05-14 19:06:43.512	2026-05-14 19:06:43.523	\N	\N	\N	2026-03-07
812	l6k0hv8ukg51foja5ooi4610	CO-225-30820	simi makwana	2200	\N	2026-05-14 19:06:44.263	2026-05-14 19:06:44.263	\N	\N	\N	\N	2026-03-07
813	l6k0hv8ukg51foja5ooi4610	CO-225-30820	simi makwana	2200	\N	2026-05-14 19:06:44.263	2026-05-14 19:06:44.263	2026-05-14 19:06:44.274	\N	\N	\N	2026-03-07
816	si45np0e5kbg063p52h5ris2	CO-225-30822	kavita gupta	8598	\N	2026-05-14 19:06:45.711	2026-05-14 19:06:45.711	\N	\N	\N	\N	2026-03-07
817	si45np0e5kbg063p52h5ris2	CO-225-30822	kavita gupta	8598	\N	2026-05-14 19:06:45.711	2026-05-14 19:06:45.711	2026-05-14 19:06:45.723	\N	\N	\N	2026-03-07
822	yw3oc0ne3p5yis0cn4ve4m3z	CO-225-30825	KEYUR	1333	\N	2026-05-14 19:06:47.72	2026-05-14 19:06:47.72	\N	\N	\N	\N	2026-03-07
823	yw3oc0ne3p5yis0cn4ve4m3z	CO-225-30825	KEYUR	1333	\N	2026-05-14 19:06:47.72	2026-05-14 19:06:47.72	2026-05-14 19:06:47.728	\N	\N	\N	2026-03-07
826	ff3m73ioplcq8j23cu3w661t	CO-225-30827	SNEHA	5806	\N	2026-05-14 19:06:49.062	2026-05-14 19:06:49.062	\N	\N	\N	\N	2026-03-07
827	ff3m73ioplcq8j23cu3w661t	CO-225-30827	SNEHA	5806	\N	2026-05-14 19:06:49.062	2026-05-14 19:06:49.062	2026-05-14 19:06:49.071	\N	\N	\N	2026-03-07
836	dmml5cqt81y3w6g3k5na7sgm	CO-225-30832	pranjali shah	200	\N	2026-05-14 19:06:52.063	2026-05-14 19:06:52.063	\N	\N	\N	\N	2026-03-09
837	dmml5cqt81y3w6g3k5na7sgm	CO-225-30832	pranjali shah	200	\N	2026-05-14 19:06:52.063	2026-05-14 19:06:52.063	2026-05-14 19:06:52.07	\N	\N	\N	2026-03-09
840	b0unvkscgjr6tt0x8blc37x2	CO-225-30834	electronic junction	5600	\N	2026-05-14 19:06:53.199	2026-05-14 19:06:53.199	\N	\N	\N	\N	2026-03-09
841	b0unvkscgjr6tt0x8blc37x2	CO-225-30834	electronic junction	5600	\N	2026-05-14 19:06:53.199	2026-05-14 19:06:53.199	2026-05-14 19:06:53.21	\N	\N	\N	2026-03-09
844	zm51ukgvetxv6ozjruhoocz1	CO-225-30836	mina	4820	\N	2026-05-14 19:06:54.338	2026-05-14 19:06:54.338	\N	\N	\N	\N	2026-03-09
845	zm51ukgvetxv6ozjruhoocz1	CO-225-30836	mina	4820	\N	2026-05-14 19:06:54.338	2026-05-14 19:06:54.338	2026-05-14 19:06:54.345	\N	\N	\N	2026-03-09
850	m8odcqgsdu7d8npkcodyxbs1	CO-225-30839	vishal parmar	1754	\N	2026-05-14 19:06:56.064	2026-05-14 19:06:56.064	\N	\N	\N	\N	2026-03-09
851	m8odcqgsdu7d8npkcodyxbs1	CO-225-30839	vishal parmar	1754	\N	2026-05-14 19:06:56.064	2026-05-14 19:06:56.064	2026-05-14 19:06:56.074	\N	\N	\N	2026-03-09
854	c8a7p62adp605cr2njkyksxd	CO-225-30841	ankita	2300	\N	2026-05-14 19:06:57.204	2026-05-14 19:06:57.204	\N	\N	\N	\N	2026-03-09
855	c8a7p62adp605cr2njkyksxd	CO-225-30841	ankita	2300	\N	2026-05-14 19:06:57.204	2026-05-14 19:06:57.204	2026-05-14 19:06:57.213	\N	\N	\N	2026-03-09
858	e620ryq7pd559s2l6uctp5p3	CO-225-30843	jigna	5789	\N	2026-05-14 19:06:58.349	2026-05-14 19:06:58.349	\N	\N	\N	\N	2026-03-09
859	e620ryq7pd559s2l6uctp5p3	CO-225-30843	jigna	5789	\N	2026-05-14 19:06:58.349	2026-05-14 19:06:58.349	2026-05-14 19:06:58.358	\N	\N	\N	2026-03-09
860	za13mxebzqo0iz271a5eusma	CO-225-30844	nayna dholkiya	1081	\N	2026-05-14 19:06:58.923	2026-05-14 19:06:58.923	\N	\N	\N	\N	2026-03-09
861	za13mxebzqo0iz271a5eusma	CO-225-30844	nayna dholkiya	1081	\N	2026-05-14 19:06:58.923	2026-05-14 19:06:58.923	2026-05-14 19:06:58.936	\N	\N	\N	2026-03-09
864	b6y4paztnmpa4jgdzdjb9p1z	CO-225-30846	sanjay	232	\N	2026-05-14 19:07:00.125	2026-05-14 19:07:00.125	\N	\N	\N	\N	2026-03-09
865	b6y4paztnmpa4jgdzdjb9p1z	CO-225-30846	sanjay	232	\N	2026-05-14 19:07:00.125	2026-05-14 19:07:00.125	2026-05-14 19:07:00.134	\N	\N	\N	2026-03-09
866	k5y7ijywevuh5rq8vtcdindw	CO-225-30847	pradip sinde	1908	\N	2026-05-14 19:07:00.704	2026-05-14 19:07:00.704	\N	\N	\N	\N	2026-03-09
867	k5y7ijywevuh5rq8vtcdindw	CO-225-30847	pradip sinde	1908	\N	2026-05-14 19:07:00.704	2026-05-14 19:07:00.704	2026-05-14 19:07:00.714	\N	\N	\N	2026-03-09
870	cpyz9gbl0ijlgmclj0pf6ji0	CO-225-30849	Ayushi Agrawal	167	\N	2026-05-14 19:07:01.864	2026-05-14 19:07:01.864	\N	\N	\N	\N	2026-03-09
871	cpyz9gbl0ijlgmclj0pf6ji0	CO-225-30849	Ayushi Agrawal	167	\N	2026-05-14 19:07:01.864	2026-05-14 19:07:01.864	2026-05-14 19:07:01.874	\N	\N	\N	2026-03-09
874	oaqi97ckn7mfooo42lfrbic4	CO-225-30851	varsha acharya	204	\N	2026-05-14 19:07:03.051	2026-05-14 19:07:03.051	\N	\N	\N	\N	2026-03-09
875	oaqi97ckn7mfooo42lfrbic4	CO-225-30851	varsha acharya	204	\N	2026-05-14 19:07:03.051	2026-05-14 19:07:03.051	2026-05-14 19:07:03.062	\N	\N	\N	2026-03-09
876	ryy0rtmnvncccb7ixe9rk955	CO-225-30852	chirag	225	\N	2026-05-14 19:07:03.829	2026-05-14 19:07:03.829	\N	\N	\N	\N	2026-03-09
877	ryy0rtmnvncccb7ixe9rk955	CO-225-30852	chirag	225	\N	2026-05-14 19:07:03.829	2026-05-14 19:07:03.829	2026-05-14 19:07:03.849	\N	\N	\N	2026-03-09
878	ly7wktmtyeyk6sbn0zji2ahg	CO-225-30853	AASHKA	1735	\N	2026-05-14 19:07:04.512	2026-05-14 19:07:04.512	\N	\N	\N	\N	2026-03-09
879	ly7wktmtyeyk6sbn0zji2ahg	CO-225-30853	AASHKA	1735	\N	2026-05-14 19:07:04.512	2026-05-14 19:07:04.512	2026-05-14 19:07:04.527	\N	\N	\N	2026-03-09
880	r2a6kq0rjfk2gvcx2275de6k	CO-225-30854	ANUPAMA	2155	\N	2026-05-14 19:07:05.227	2026-05-14 19:07:05.227	\N	\N	\N	\N	2026-03-09
881	r2a6kq0rjfk2gvcx2275de6k	CO-225-30854	ANUPAMA	2155	\N	2026-05-14 19:07:05.227	2026-05-14 19:07:05.227	2026-05-14 19:07:05.24	\N	\N	\N	2026-03-09
882	a69bne0fbgzt7epv257e11j6	CO-225-30855	JINAY	553	\N	2026-05-14 19:07:05.807	2026-05-14 19:07:05.807	\N	\N	\N	\N	2026-03-09
883	a69bne0fbgzt7epv257e11j6	CO-225-30855	JINAY	553	\N	2026-05-14 19:07:05.807	2026-05-14 19:07:05.807	2026-05-14 19:07:05.821	\N	\N	\N	2026-03-09
884	cbrc263ej9vtq0ej8q9gyecg	CO-225-30856	yash gaur	3041	\N	2026-05-14 19:07:06.604	2026-05-14 19:07:06.604	\N	\N	\N	\N	2026-03-09
885	cbrc263ej9vtq0ej8q9gyecg	CO-225-30856	yash gaur	3041	\N	2026-05-14 19:07:06.604	2026-05-14 19:07:06.604	2026-05-14 19:07:06.617	\N	\N	\N	2026-03-09
886	n4ilbfpldyqdpwbqhgfz0i4r	CO-225-30857	RADHIKA NANDA	645	\N	2026-05-14 19:07:07.636	2026-05-14 19:07:07.636	\N	\N	\N	\N	2026-03-09
887	n4ilbfpldyqdpwbqhgfz0i4r	CO-225-30857	RADHIKA NANDA	645	\N	2026-05-14 19:07:07.636	2026-05-14 19:07:07.636	2026-05-14 19:07:07.649	\N	\N	\N	2026-03-09
888	q74lhx3tdqm0rcnbxrlopldz	CO-225-30858	Anand Devani	3103	\N	2026-05-14 19:07:08.294	2026-05-14 19:07:08.294	\N	\N	\N	\N	2026-03-09
889	q74lhx3tdqm0rcnbxrlopldz	CO-225-30858	Anand Devani	3103	\N	2026-05-14 19:07:08.294	2026-05-14 19:07:08.294	2026-05-14 19:07:08.304	\N	\N	\N	2026-03-09
890	n1jijaw5du7hlsvwv47nfc86	CO-225-30859	kajal thakkar	700	\N	2026-05-14 19:07:08.97	2026-05-14 19:07:08.97	\N	\N	\N	\N	2026-03-09
891	n1jijaw5du7hlsvwv47nfc86	CO-225-30859	kajal thakkar	700	\N	2026-05-14 19:07:08.97	2026-05-14 19:07:08.97	2026-05-14 19:07:08.983	\N	\N	\N	2026-03-09
892	ov056slw1e26qlpi2jnnv9mr	CO-225-30860	NEHA SHETH	1779	\N	2026-05-14 19:07:10.082	2026-05-14 19:07:10.082	\N	\N	\N	\N	2026-03-09
893	ov056slw1e26qlpi2jnnv9mr	CO-225-30860	NEHA SHETH	1779	\N	2026-05-14 19:07:10.082	2026-05-14 19:07:10.082	2026-05-14 19:07:10.097	\N	\N	\N	2026-03-09
894	wvwxxov6zvavyrvcnzn13k8z	CO-225-30861	abhishek mehta	1415	\N	2026-05-14 19:07:10.968	2026-05-14 19:07:10.968	\N	\N	\N	\N	2026-03-09
895	wvwxxov6zvavyrvcnzn13k8z	CO-225-30861	abhishek mehta	1415	\N	2026-05-14 19:07:10.968	2026-05-14 19:07:10.968	2026-05-14 19:07:10.986	\N	\N	\N	2026-03-09
896	sopr62y4v5s5uzztfo86260z	CO-225-30862	milii	941	\N	2026-05-14 19:07:11.976	2026-05-14 19:07:11.976	\N	\N	\N	\N	2026-03-09
897	sopr62y4v5s5uzztfo86260z	CO-225-30862	milii	941	\N	2026-05-14 19:07:11.976	2026-05-14 19:07:11.976	2026-05-14 19:07:11.984	\N	\N	\N	2026-03-09
898	ljvkt34i9s9eamo4fhrw8qb8	CO-225-30863	yash gaur	250	\N	2026-05-14 19:07:12.64	2026-05-14 19:07:12.64	\N	\N	\N	\N	2026-03-09
899	ljvkt34i9s9eamo4fhrw8qb8	CO-225-30863	yash gaur	250	\N	2026-05-14 19:07:12.64	2026-05-14 19:07:12.64	2026-05-14 19:07:12.647	\N	\N	\N	2026-03-09
900	lhp82qe2ar6rjtg85awhoso0	CO-225-30864	ankur	3437	\N	2026-05-14 19:07:13.284	2026-05-14 19:07:13.284	\N	\N	\N	\N	2026-03-09
901	lhp82qe2ar6rjtg85awhoso0	CO-225-30864	ankur	3437	\N	2026-05-14 19:07:13.284	2026-05-14 19:07:13.284	2026-05-14 19:07:13.291	\N	\N	\N	2026-03-09
906	f1qlutposn0z0cn0hjbuat1a	CO-225-30867	AVANI S CHAUHAN	2099	\N	2026-05-14 19:07:15.097	2026-05-14 19:07:15.097	\N	\N	\N	\N	2026-03-09
907	f1qlutposn0z0cn0hjbuat1a	CO-225-30867	AVANI S CHAUHAN	2099	\N	2026-05-14 19:07:15.097	2026-05-14 19:07:15.097	2026-05-14 19:07:15.109	\N	\N	\N	2026-03-09
918	dkb6tr91lkd2ogrjkmpppt1k	CO-225-30873	ROSHAN	388	\N	2026-05-14 19:07:19.035	2026-05-14 19:07:19.035	\N	\N	\N	\N	2026-03-09
919	dkb6tr91lkd2ogrjkmpppt1k	CO-225-30873	ROSHAN	388	\N	2026-05-14 19:07:19.035	2026-05-14 19:07:19.035	2026-05-14 19:07:19.05	\N	\N	\N	2026-03-09
924	op3wuit8jjy54ksfo2uksvgu	CO-225-30876	SCOOBY	4668	\N	2026-05-14 19:07:21.809	2026-05-14 19:07:21.809	\N	\N	\N	\N	2026-03-09
925	op3wuit8jjy54ksfo2uksvgu	CO-225-30876	SCOOBY	4668	\N	2026-05-14 19:07:21.809	2026-05-14 19:07:21.809	2026-05-14 19:07:21.821	\N	\N	\N	2026-03-09
930	ukr8ao9g9ylbpplfrx80byfs	CO-225-30879	vipul patel	2099	\N	2026-05-14 19:07:25.045	2026-05-14 19:07:25.045	\N	\N	\N	\N	2026-03-09
931	ukr8ao9g9ylbpplfrx80byfs	CO-225-30879	vipul patel	2099	\N	2026-05-14 19:07:25.045	2026-05-14 19:07:25.045	2026-05-14 19:07:25.058	\N	\N	\N	2026-03-09
944	kzojdwgxok42b4hexnxcu70t	CO-225-30886	rupal	5744	\N	2026-05-14 19:07:31.559	2026-05-14 19:07:31.559	\N	\N	\N	\N	2026-03-09
945	kzojdwgxok42b4hexnxcu70t	CO-225-30886	rupal	5744	\N	2026-05-14 19:07:31.559	2026-05-14 19:07:31.559	2026-05-14 19:07:31.569	\N	\N	\N	2026-03-09
950	uotu7rabfahytxozsbs3cnb5	CO-225-30889	Saket parikh	6590	\N	2026-05-14 19:07:33.738	2026-05-14 19:07:33.738	\N	\N	\N	\N	2026-03-09
951	uotu7rabfahytxozsbs3cnb5	CO-225-30889	Saket parikh	6590	\N	2026-05-14 19:07:33.738	2026-05-14 19:07:33.738	2026-05-14 19:07:33.752	\N	\N	\N	2026-03-09
958	to43qsa0f8legzwr5qii3sgi	CO-225-30893	yashika	720	\N	2026-05-14 19:07:38.685	2026-05-14 19:07:38.685	\N	\N	\N	\N	2026-03-09
959	to43qsa0f8legzwr5qii3sgi	CO-225-30893	yashika	720	\N	2026-05-14 19:07:38.685	2026-05-14 19:07:38.685	2026-05-14 19:07:38.697	\N	\N	\N	2026-03-09
962	z6313wmvnbx1n1qnpxiolqgc	CO-225-30895	SPURGE FOUNDATION	199	\N	2026-05-14 19:07:41.858	2026-05-14 19:07:41.858	\N	\N	\N	\N	2026-03-09
963	z6313wmvnbx1n1qnpxiolqgc	CO-225-30895	SPURGE FOUNDATION	199	\N	2026-05-14 19:07:41.858	2026-05-14 19:07:41.858	2026-05-14 19:07:41.877	\N	\N	\N	2026-03-09
968	w4rtzdv7l4fszy7v2u4fzj0j	CO-225-30898	dhruv	613	\N	2026-05-14 19:07:45.23	2026-05-14 19:07:45.23	\N	\N	\N	\N	2026-03-09
969	w4rtzdv7l4fszy7v2u4fzj0j	CO-225-30898	dhruv	613	\N	2026-05-14 19:07:45.23	2026-05-14 19:07:45.23	2026-05-14 19:07:45.246	\N	\N	\N	2026-03-09
970	ip0a6njqyin4zeeyxvrvntpz	CO-225-30899	SAMIR JAIN	1900	\N	2026-05-14 19:07:45.969	2026-05-14 19:07:45.969	\N	\N	\N	\N	2026-03-09
971	ip0a6njqyin4zeeyxvrvntpz	CO-225-30899	SAMIR JAIN	1900	\N	2026-05-14 19:07:45.969	2026-05-14 19:07:45.969	2026-05-14 19:07:45.981	\N	\N	\N	2026-03-09
972	wbstlzwojvl5mqbeedxcxt6f	CO-225-30900	dhrumil	214	\N	2026-05-14 19:07:47.107	2026-05-14 19:07:47.107	\N	\N	\N	\N	2026-03-09
973	wbstlzwojvl5mqbeedxcxt6f	CO-225-30900	dhrumil	214	\N	2026-05-14 19:07:47.107	2026-05-14 19:07:47.107	2026-05-14 19:07:47.124	\N	\N	\N	2026-03-09
976	hu5vrrult97a42n13hm8qyx8	CO-225-30902	sejuti mam	2338	\N	2026-05-14 19:07:49.043	2026-05-14 19:07:49.043	\N	\N	\N	\N	2026-03-10
977	hu5vrrult97a42n13hm8qyx8	CO-225-30902	sejuti mam	2338	\N	2026-05-14 19:07:49.043	2026-05-14 19:07:49.043	2026-05-14 19:07:49.06	\N	\N	\N	2026-03-10
994	szuxi4gne88yp2axvb49mmli	CO-225-30911	ruchi gajjar	8533	\N	2026-05-14 19:07:56.798	2026-05-14 19:07:56.798	\N	\N	\N	\N	2026-03-10
995	szuxi4gne88yp2axvb49mmli	CO-225-30911	ruchi gajjar	8533	\N	2026-05-14 19:07:56.798	2026-05-14 19:07:56.798	2026-05-14 19:07:56.808	\N	\N	\N	2026-03-10
996	e3rymck6h8ovlj5p1kerppjw	CO-225-30912	rahul shah	991	\N	2026-05-14 19:07:57.608	2026-05-14 19:07:57.608	\N	\N	\N	\N	2026-03-10
997	e3rymck6h8ovlj5p1kerppjw	CO-225-30912	rahul shah	991	\N	2026-05-14 19:07:57.608	2026-05-14 19:07:57.608	2026-05-14 19:07:57.624	\N	\N	\N	2026-03-10
1000	ksj0k0w9aqr7ja8c5lw7u2g0	CO-225-30914	SEEMA MEHTA	2099	\N	2026-05-14 19:07:59.257	2026-05-14 19:07:59.257	\N	\N	\N	\N	2026-03-10
1001	ksj0k0w9aqr7ja8c5lw7u2g0	CO-225-30914	SEEMA MEHTA	2099	\N	2026-05-14 19:07:59.257	2026-05-14 19:07:59.257	2026-05-14 19:07:59.268	\N	\N	\N	2026-03-10
1002	gx17h7ournm51blx1d2n3frn	CO-225-30915	punit chauhan	1800	\N	2026-05-14 19:08:00.024	2026-05-14 19:08:00.024	\N	\N	\N	\N	2026-03-10
1003	gx17h7ournm51blx1d2n3frn	CO-225-30915	punit chauhan	1800	\N	2026-05-14 19:08:00.024	2026-05-14 19:08:00.024	2026-05-14 19:08:00.036	\N	\N	\N	2026-03-10
1006	d09jenxj6wgnm6p8dekmq6u9	CO-225-30917	MEGHNA SHUKLA	1782	\N	2026-05-14 19:08:01.395	2026-05-14 19:08:01.395	\N	\N	\N	\N	2026-03-10
1007	d09jenxj6wgnm6p8dekmq6u9	CO-225-30917	MEGHNA SHUKLA	1782	\N	2026-05-14 19:08:01.395	2026-05-14 19:08:01.395	2026-05-14 19:08:01.406	\N	\N	\N	2026-03-10
1010	nsbs7c0lj36t3x2ild3m2ax1	CO-225-30919	ANERI SHAH	522	\N	2026-05-14 19:08:02.948	2026-05-14 19:08:02.948	\N	\N	\N	\N	2026-03-10
1011	nsbs7c0lj36t3x2ild3m2ax1	CO-225-30919	ANERI SHAH	522	\N	2026-05-14 19:08:02.948	2026-05-14 19:08:02.948	2026-05-14 19:08:02.962	\N	\N	\N	2026-03-10
902	zk5kqnxq1gf1cjfc6cqs74ls	CO-225-30865	BINDU ACHARYA	2730	\N	2026-05-14 19:07:13.712	2026-05-14 19:07:13.712	\N	\N	\N	\N	2026-03-09
903	zk5kqnxq1gf1cjfc6cqs74ls	CO-225-30865	BINDU ACHARYA	2730	\N	2026-05-14 19:07:13.712	2026-05-14 19:07:13.712	2026-05-14 19:07:13.721	\N	\N	\N	2026-03-09
904	mq63l8bgupuaptc9s57wcyrw	CO-225-30866	swati sharma	1950	\N	2026-05-14 19:07:14.54	2026-05-14 19:07:14.54	\N	\N	\N	\N	2026-03-09
905	mq63l8bgupuaptc9s57wcyrw	CO-225-30866	swati sharma	1950	\N	2026-05-14 19:07:14.54	2026-05-14 19:07:14.54	2026-05-14 19:07:14.548	\N	\N	\N	2026-03-09
908	pl7512t53rlaexp5glis322b	CO-225-30868	TEJAS BORISA	431	\N	2026-05-14 19:07:15.818	2026-05-14 19:07:15.818	\N	\N	\N	\N	2026-03-09
909	pl7512t53rlaexp5glis322b	CO-225-30868	TEJAS BORISA	431	\N	2026-05-14 19:07:15.818	2026-05-14 19:07:15.818	2026-05-14 19:07:15.829	\N	\N	\N	2026-03-09
910	ahlqdi353dsjc6jq9728bc3j	CO-225-30869	PRITI SHAH	1194	\N	2026-05-14 19:07:16.487	2026-05-14 19:07:16.487	\N	\N	\N	\N	2026-03-09
911	ahlqdi353dsjc6jq9728bc3j	CO-225-30869	PRITI SHAH	1194	\N	2026-05-14 19:07:16.487	2026-05-14 19:07:16.487	2026-05-14 19:07:16.496	\N	\N	\N	2026-03-09
912	mnv0brp9j995wg0ogzluntwi	CO-225-30870	enhance family saloon	2000	\N	2026-05-14 19:07:17.123	2026-05-14 19:07:17.123	\N	\N	\N	\N	2026-03-09
913	mnv0brp9j995wg0ogzluntwi	CO-225-30870	enhance family saloon	2000	\N	2026-05-14 19:07:17.123	2026-05-14 19:07:17.123	2026-05-14 19:07:17.134	\N	\N	\N	2026-03-09
914	ijuzliwxbzzm1fmdr281de9p	CO-225-30871	HEENA RANA	723	\N	2026-05-14 19:07:17.683	2026-05-14 19:07:17.683	\N	\N	\N	\N	2026-03-09
915	ijuzliwxbzzm1fmdr281de9p	CO-225-30871	HEENA RANA	723	\N	2026-05-14 19:07:17.683	2026-05-14 19:07:17.683	2026-05-14 19:07:17.69	\N	\N	\N	2026-03-09
916	rjm0qt632kbnv9w51ule38g2	CO-225-30872	VIDHI MAM	2241	\N	2026-05-14 19:07:18.334	2026-05-14 19:07:18.334	\N	\N	\N	\N	2026-03-09
917	rjm0qt632kbnv9w51ule38g2	CO-225-30872	VIDHI MAM	2241	\N	2026-05-14 19:07:18.334	2026-05-14 19:07:18.334	2026-05-14 19:07:18.348	\N	\N	\N	2026-03-09
920	zji08x779au284k6bwxmwg5u	CO-225-30874	KAVITA	319	\N	2026-05-14 19:07:20.133	2026-05-14 19:07:20.133	\N	\N	\N	\N	2026-03-09
921	zji08x779au284k6bwxmwg5u	CO-225-30874	KAVITA	319	\N	2026-05-14 19:07:20.133	2026-05-14 19:07:20.133	2026-05-14 19:07:20.149	\N	\N	\N	2026-03-09
922	ynijt7ilni4sji4et6t95v4u	CO-225-30875	bagga	1571	\N	2026-05-14 19:07:21.048	2026-05-14 19:07:21.048	\N	\N	\N	\N	2026-03-09
923	ynijt7ilni4sji4et6t95v4u	CO-225-30875	bagga	1571	\N	2026-05-14 19:07:21.048	2026-05-14 19:07:21.048	2026-05-14 19:07:21.064	\N	\N	\N	2026-03-09
926	mh2tg76rt35607c0nq896gzs	CO-225-30877	Pooja Srivastava	633	\N	2026-05-14 19:07:22.77	2026-05-14 19:07:22.77	\N	\N	\N	\N	2026-03-09
927	mh2tg76rt35607c0nq896gzs	CO-225-30877	Pooja Srivastava	633	\N	2026-05-14 19:07:22.77	2026-05-14 19:07:22.77	2026-05-14 19:07:22.786	\N	\N	\N	2026-03-09
928	pf487vr71dgn2hicmh3lzymn	CO-225-30878	MAYRA DEGINER	1165	\N	2026-05-14 19:07:23.614	2026-05-14 19:07:23.614	\N	\N	\N	\N	2026-03-09
929	pf487vr71dgn2hicmh3lzymn	CO-225-30878	MAYRA DEGINER	1165	\N	2026-05-14 19:07:23.614	2026-05-14 19:07:23.614	2026-05-14 19:07:23.63	\N	\N	\N	2026-03-09
932	qzwxmg6y7xecvp78dajmmsyw	CO-225-30880	JETI SHAH	2405	\N	2026-05-14 19:07:25.786	2026-05-14 19:07:25.786	\N	\N	\N	\N	2026-03-09
933	qzwxmg6y7xecvp78dajmmsyw	CO-225-30880	JETI SHAH	2405	\N	2026-05-14 19:07:25.786	2026-05-14 19:07:25.786	2026-05-14 19:07:25.799	\N	\N	\N	2026-03-09
934	jsp2zosmh1owd1e07u0459j6	CO-225-30881	GINNY SHARMA	2099	\N	2026-05-14 19:07:26.49	2026-05-14 19:07:26.49	\N	\N	\N	\N	2026-03-09
935	jsp2zosmh1owd1e07u0459j6	CO-225-30881	GINNY SHARMA	2099	\N	2026-05-14 19:07:26.49	2026-05-14 19:07:26.49	2026-05-14 19:07:26.501	\N	\N	\N	2026-03-09
936	r9gugu1s2qb1nww63t78i51a	CO-225-30882	KARAN JIT	119	\N	2026-05-14 19:07:27.18	2026-05-14 19:07:27.18	\N	\N	\N	\N	2026-03-09
937	r9gugu1s2qb1nww63t78i51a	CO-225-30882	KARAN JIT	119	\N	2026-05-14 19:07:27.18	2026-05-14 19:07:27.18	2026-05-14 19:07:27.192	\N	\N	\N	2026-03-09
938	x3itfcybnchbwg8jakicn4g6	CO-225-30883	PURVIBEN PRAJAPATI	4800	\N	2026-05-14 19:07:28.39	2026-05-14 19:07:28.39	\N	\N	\N	\N	2026-03-09
939	x3itfcybnchbwg8jakicn4g6	CO-225-30883	PURVIBEN PRAJAPATI	4800	\N	2026-05-14 19:07:28.39	2026-05-14 19:07:28.39	2026-05-14 19:07:28.407	\N	\N	\N	2026-03-09
940	sse1liwlyc3lf7u2s2zn0efq	CO-225-30884	jay	2282	\N	2026-05-14 19:07:29.474	2026-05-14 19:07:29.474	\N	\N	\N	\N	2026-03-09
941	sse1liwlyc3lf7u2s2zn0efq	CO-225-30884	jay	2282	\N	2026-05-14 19:07:29.474	2026-05-14 19:07:29.474	2026-05-14 19:07:29.496	\N	\N	\N	2026-03-09
942	mrpa6en9xhrywvnmcoobch6i	CO-225-30885	vipul	2000	\N	2026-05-14 19:07:30.821	2026-05-14 19:07:30.821	\N	\N	\N	\N	2026-03-09
943	mrpa6en9xhrywvnmcoobch6i	CO-225-30885	vipul	2000	\N	2026-05-14 19:07:30.821	2026-05-14 19:07:30.821	2026-05-14 19:07:30.835	\N	\N	\N	2026-03-09
946	o8ce2fpvidiqquywhe2za532	CO-225-30887	pinal mam	75	\N	2026-05-14 19:07:32.256	2026-05-14 19:07:32.256	\N	\N	\N	\N	2026-03-09
947	o8ce2fpvidiqquywhe2za532	CO-225-30887	pinal mam	75	\N	2026-05-14 19:07:32.256	2026-05-14 19:07:32.256	2026-05-14 19:07:32.267	\N	\N	\N	2026-03-09
948	o4bksmpn8yl94mhsmx5b69f4	CO-225-30888	brjesh panchal	2100	\N	2026-05-14 19:07:32.977	2026-05-14 19:07:32.977	\N	\N	\N	\N	2026-03-09
949	o4bksmpn8yl94mhsmx5b69f4	CO-225-30888	brjesh panchal	2100	\N	2026-05-14 19:07:32.977	2026-05-14 19:07:32.977	2026-05-14 19:07:32.998	\N	\N	\N	2026-03-09
952	novms1sjs54flkgpjomizz7r	CO-225-30890	.madhukar	3771	\N	2026-05-14 19:07:35.326	2026-05-14 19:07:35.326	\N	\N	\N	\N	2026-03-09
953	novms1sjs54flkgpjomizz7r	CO-225-30890	.madhukar	3771	\N	2026-05-14 19:07:35.326	2026-05-14 19:07:35.326	2026-05-14 19:07:35.34	\N	\N	\N	2026-03-09
954	vfxk59nkft9qooe7xvhocvtw	CO-225-30891	vikram veri	345	\N	2026-05-14 19:07:36.426	2026-05-14 19:07:36.426	\N	\N	\N	\N	2026-03-09
955	vfxk59nkft9qooe7xvhocvtw	CO-225-30891	vikram veri	345	\N	2026-05-14 19:07:36.426	2026-05-14 19:07:36.426	2026-05-14 19:07:36.44	\N	\N	\N	2026-03-09
956	iu3jzdok7xh1zbkw5jjejw0v	CO-225-30892	charu patel	1345	\N	2026-05-14 19:07:37.617	2026-05-14 19:07:37.617	\N	\N	\N	\N	2026-03-09
957	iu3jzdok7xh1zbkw5jjejw0v	CO-225-30892	charu patel	1345	\N	2026-05-14 19:07:37.617	2026-05-14 19:07:37.617	2026-05-14 19:07:37.631	\N	\N	\N	2026-03-09
960	fmdgly97nrqaea88pdim18ou	CO-225-30894	aji	2320	\N	2026-05-14 19:07:39.901	2026-05-14 19:07:39.901	\N	\N	\N	\N	2026-03-09
961	fmdgly97nrqaea88pdim18ou	CO-225-30894	aji	2320	\N	2026-05-14 19:07:39.901	2026-05-14 19:07:39.901	2026-05-14 19:07:39.936	\N	\N	\N	2026-03-09
964	qi0a5t91ak8az3j9kwko4tez	CO-225-30896	gaurang	272	\N	2026-05-14 19:07:43.107	2026-05-14 19:07:43.107	\N	\N	\N	\N	2026-03-09
965	qi0a5t91ak8az3j9kwko4tez	CO-225-30896	gaurang	272	\N	2026-05-14 19:07:43.107	2026-05-14 19:07:43.107	2026-05-14 19:07:43.125	\N	\N	\N	2026-03-09
966	c5s95yp85zqsvav2qs8m5rgy	CO-225-30897	parul patel	463	\N	2026-05-14 19:07:44.222	2026-05-14 19:07:44.222	\N	\N	\N	\N	2026-03-09
967	c5s95yp85zqsvav2qs8m5rgy	CO-225-30897	parul patel	463	\N	2026-05-14 19:07:44.222	2026-05-14 19:07:44.222	2026-05-14 19:07:44.236	\N	\N	\N	2026-03-09
974	zlg6rv8ker6sdp717m1r8c58	CO-225-30901	boby	276	\N	2026-05-14 19:07:48.017	2026-05-14 19:07:48.017	\N	\N	\N	\N	2026-03-09
975	zlg6rv8ker6sdp717m1r8c58	CO-225-30901	boby	276	\N	2026-05-14 19:07:48.017	2026-05-14 19:07:48.017	2026-05-14 19:07:48.028	\N	\N	\N	2026-03-09
978	pr2jqs4aqhbmzrq89x1rjphp	CO-225-30903	TOFFEE MEHTA	1560	\N	2026-05-14 19:07:50.144	2026-05-14 19:07:50.144	\N	\N	\N	\N	2026-03-10
979	pr2jqs4aqhbmzrq89x1rjphp	CO-225-30903	TOFFEE MEHTA	1560	\N	2026-05-14 19:07:50.144	2026-05-14 19:07:50.144	2026-05-14 19:07:50.154	\N	\N	\N	2026-03-10
980	tta1vum8gaq7z2swqkgfypn0	CO-225-30904	c.b mehta	1695	\N	2026-05-14 19:07:51.139	2026-05-14 19:07:51.139	\N	\N	\N	\N	2026-03-10
981	tta1vum8gaq7z2swqkgfypn0	CO-225-30904	c.b mehta	1695	\N	2026-05-14 19:07:51.139	2026-05-14 19:07:51.139	2026-05-14 19:07:51.152	\N	\N	\N	2026-03-10
982	pl8de727l8w405w8d2dl001i	CO-225-30905	simba parikh	1950	\N	2026-05-14 19:07:52.03	2026-05-14 19:07:52.03	\N	\N	\N	\N	2026-03-10
983	pl8de727l8w405w8d2dl001i	CO-225-30905	simba parikh	1950	\N	2026-05-14 19:07:52.03	2026-05-14 19:07:52.03	2026-05-14 19:07:52.043	\N	\N	\N	2026-03-10
984	epeixlf346t4srmaxgbs64ct	CO-225-30906	jonshan	516	\N	2026-05-14 19:07:53.046	2026-05-14 19:07:53.046	\N	\N	\N	\N	2026-03-10
985	epeixlf346t4srmaxgbs64ct	CO-225-30906	jonshan	516	\N	2026-05-14 19:07:53.046	2026-05-14 19:07:53.046	2026-05-14 19:07:53.066	\N	\N	\N	2026-03-10
986	xbm2ootithnu39annruzpqbz	CO-225-30907	SAHIL	846	\N	2026-05-14 19:07:54.086	2026-05-14 19:07:54.086	\N	\N	\N	\N	2026-03-10
987	xbm2ootithnu39annruzpqbz	CO-225-30907	SAHIL	846	\N	2026-05-14 19:07:54.086	2026-05-14 19:07:54.086	2026-05-14 19:07:54.097	\N	\N	\N	2026-03-10
988	eukdojxxc7z04hudkvz4pnbg	CO-225-30908	SAGAR	347	\N	2026-05-14 19:07:54.761	2026-05-14 19:07:54.761	\N	\N	\N	\N	2026-03-10
989	eukdojxxc7z04hudkvz4pnbg	CO-225-30908	SAGAR	347	\N	2026-05-14 19:07:54.761	2026-05-14 19:07:54.761	2026-05-14 19:07:54.772	\N	\N	\N	2026-03-10
990	h6898jryru76uec7bbym0bf4	CO-225-30909	Aman Patel	4147	\N	2026-05-14 19:07:55.402	2026-05-14 19:07:55.402	\N	\N	\N	\N	2026-03-10
991	h6898jryru76uec7bbym0bf4	CO-225-30909	Aman Patel	4147	\N	2026-05-14 19:07:55.402	2026-05-14 19:07:55.402	2026-05-14 19:07:55.413	\N	\N	\N	2026-03-10
998	qtjzna3r59uxwn0w6lt0avy8	CO-225-30913	chandni kapadiya	490	\N	2026-05-14 19:07:58.582	2026-05-14 19:07:58.582	\N	\N	\N	\N	2026-03-10
999	qtjzna3r59uxwn0w6lt0avy8	CO-225-30913	chandni kapadiya	490	\N	2026-05-14 19:07:58.582	2026-05-14 19:07:58.582	2026-05-14 19:07:58.593	\N	\N	\N	2026-03-10
992	hig9xpcksidxt6deo937koz1	CO-225-30910	anshi	770	\N	2026-05-14 19:07:56.127	2026-05-14 19:07:56.127	\N	\N	\N	\N	2026-03-10
993	hig9xpcksidxt6deo937koz1	CO-225-30910	anshi	770	\N	2026-05-14 19:07:56.127	2026-05-14 19:07:56.127	2026-05-14 19:07:56.139	\N	\N	\N	2026-03-10
1004	y2zwo8o8piehyehphf8sujw7	CO-225-30916	chandu bhojwani	2099	\N	2026-05-14 19:08:00.717	2026-05-14 19:08:00.717	\N	\N	\N	\N	2026-03-10
1005	y2zwo8o8piehyehphf8sujw7	CO-225-30916	chandu bhojwani	2099	\N	2026-05-14 19:08:00.717	2026-05-14 19:08:00.717	2026-05-14 19:08:00.726	\N	\N	\N	2026-03-10
1008	fft5aowdpfwcnvl8w1qgo7c6	CO-225-30918	ANERI SHAH	2000	\N	2026-05-14 19:08:02.062	2026-05-14 19:08:02.062	\N	\N	\N	\N	2026-03-10
1009	fft5aowdpfwcnvl8w1qgo7c6	CO-225-30918	ANERI SHAH	2000	\N	2026-05-14 19:08:02.062	2026-05-14 19:08:02.062	2026-05-14 19:08:02.077	\N	\N	\N	2026-03-10
1012	l1ozskxrbj80hpy7i1q94xn0	CO-225-30920	DEVASH RAVAL	2099	\N	2026-05-14 19:08:04.18	2026-05-14 19:08:04.18	\N	\N	\N	\N	2026-03-10
1013	l1ozskxrbj80hpy7i1q94xn0	CO-225-30920	DEVASH RAVAL	2099	\N	2026-05-14 19:08:04.18	2026-05-14 19:08:04.18	2026-05-14 19:08:04.201	\N	\N	\N	2026-03-10
1014	lpl3mgkx0d9234zvegumhf0l	CO-225-30921	CHINTAN PATEL	1625	\N	2026-05-14 19:08:04.892	2026-05-14 19:08:04.892	\N	\N	\N	\N	2026-03-10
1015	lpl3mgkx0d9234zvegumhf0l	CO-225-30921	CHINTAN PATEL	1625	\N	2026-05-14 19:08:04.892	2026-05-14 19:08:04.892	2026-05-14 19:08:04.905	\N	\N	\N	2026-03-10
1016	lrh8257wd1hn1vuf42wkngc9	CO-225-30922	krutika	984	\N	2026-05-14 19:08:05.672	2026-05-14 19:08:05.672	\N	\N	\N	\N	2026-03-10
1017	lrh8257wd1hn1vuf42wkngc9	CO-225-30922	krutika	984	\N	2026-05-14 19:08:05.672	2026-05-14 19:08:05.672	2026-05-14 19:08:05.684	\N	\N	\N	2026-03-10
1018	tn5hwutnaaom6lb1ebsigt6f	CO-225-30923	raja panchal	537	\N	2026-05-14 19:08:06.507	2026-05-14 19:08:06.507	\N	\N	\N	\N	2026-03-10
1019	tn5hwutnaaom6lb1ebsigt6f	CO-225-30923	raja panchal	537	\N	2026-05-14 19:08:06.507	2026-05-14 19:08:06.507	2026-05-14 19:08:06.522	\N	\N	\N	2026-03-10
1020	j0y2mh2ywzrnqj7ip8t3bb39	CO-225-30924	Mohit Sir advocate - Adani	2099	\N	2026-05-14 19:08:07.426	2026-05-14 19:08:07.426	\N	\N	\N	\N	2026-03-10
1021	j0y2mh2ywzrnqj7ip8t3bb39	CO-225-30924	Mohit Sir advocate - Adani	2099	\N	2026-05-14 19:08:07.426	2026-05-14 19:08:07.426	2026-05-14 19:08:07.436	\N	\N	\N	2026-03-10
1022	wcfd1g7qg4yd5r9qzdw2esni	CO-225-30925	NIRALI	1099	\N	2026-05-14 19:08:08.191	2026-05-14 19:08:08.191	\N	\N	\N	\N	2026-03-10
1023	wcfd1g7qg4yd5r9qzdw2esni	CO-225-30925	NIRALI	1099	\N	2026-05-14 19:08:08.191	2026-05-14 19:08:08.191	2026-05-14 19:08:08.201	\N	\N	\N	2026-03-10
1024	cuxg1mpwoxyfwyhk08rbu2zc	CO-225-30926	GOPI	2270	\N	2026-05-14 19:08:08.805	2026-05-14 19:08:08.805	\N	\N	\N	\N	2026-03-10
1025	cuxg1mpwoxyfwyhk08rbu2zc	CO-225-30926	GOPI	2270	\N	2026-05-14 19:08:08.805	2026-05-14 19:08:08.805	2026-05-14 19:08:08.816	\N	\N	\N	2026-03-10
1026	foh1161ukk89jv0tkt4gp445	CO-225-30927	harsh	395	\N	2026-05-14 19:08:09.524	2026-05-14 19:08:09.524	\N	\N	\N	\N	2026-03-10
1027	foh1161ukk89jv0tkt4gp445	CO-225-30927	harsh	395	\N	2026-05-14 19:08:09.524	2026-05-14 19:08:09.524	2026-05-14 19:08:09.534	\N	\N	\N	2026-03-10
1028	uorqx2igab56y5azotefm461	CO-225-30928	MOKASH	109	\N	2026-05-14 19:08:10.151	2026-05-14 19:08:10.151	\N	\N	\N	\N	2026-03-10
1029	uorqx2igab56y5azotefm461	CO-225-30928	MOKASH	109	\N	2026-05-14 19:08:10.151	2026-05-14 19:08:10.151	2026-05-14 19:08:10.163	\N	\N	\N	2026-03-10
1030	kgne2rsiejt67rm599k05jlx	CO-225-30929	PAVAN	890	\N	2026-05-14 19:08:10.961	2026-05-14 19:08:10.961	\N	\N	\N	\N	2026-03-10
1031	kgne2rsiejt67rm599k05jlx	CO-225-30929	PAVAN	890	\N	2026-05-14 19:08:10.961	2026-05-14 19:08:10.961	2026-05-14 19:08:10.969	\N	\N	\N	2026-03-10
1032	j9qzwxujoxy16rihnrixbrg3	CO-225-30930	hina shah	881	\N	2026-05-14 19:08:11.714	2026-05-14 19:08:11.714	\N	\N	\N	\N	2026-03-10
1033	j9qzwxujoxy16rihnrixbrg3	CO-225-30930	hina shah	881	\N	2026-05-14 19:08:11.714	2026-05-14 19:08:11.714	2026-05-14 19:08:11.728	\N	\N	\N	2026-03-10
1034	qx5yztuf9pczh0v6qbbkqgi4	CO-225-30931	bina	92	\N	2026-05-14 19:08:12.983	2026-05-14 19:08:12.983	\N	\N	\N	\N	2026-03-10
1035	qx5yztuf9pczh0v6qbbkqgi4	CO-225-30931	bina	92	\N	2026-05-14 19:08:12.983	2026-05-14 19:08:12.983	2026-05-14 19:08:13.006	\N	\N	\N	2026-03-10
1036	t4mmg2tcl2911tmnaydk3xxj	CO-225-30932	shreya	2070	\N	2026-05-14 19:08:14.575	2026-05-14 19:08:14.575	\N	\N	\N	\N	2026-03-10
1037	t4mmg2tcl2911tmnaydk3xxj	CO-225-30932	shreya	2070	\N	2026-05-14 19:08:14.575	2026-05-14 19:08:14.575	2026-05-14 19:08:14.618	\N	\N	\N	2026-03-10
1038	ws837rv0gz0f18st42qfdcun	CO-225-30933	REEMA	1507	\N	2026-05-14 19:08:15.705	2026-05-14 19:08:15.705	\N	\N	\N	\N	2026-03-10
1039	ws837rv0gz0f18st42qfdcun	CO-225-30933	REEMA	1507	\N	2026-05-14 19:08:15.705	2026-05-14 19:08:15.705	2026-05-14 19:08:15.719	\N	\N	\N	2026-03-10
1040	l9v2natadfuw251kpc1xk4fx	CO-225-30934	jp pandya	633	\N	2026-05-14 19:08:16.614	2026-05-14 19:08:16.614	\N	\N	\N	\N	2026-03-10
1041	l9v2natadfuw251kpc1xk4fx	CO-225-30934	jp pandya	633	\N	2026-05-14 19:08:16.614	2026-05-14 19:08:16.614	2026-05-14 19:08:16.626	\N	\N	\N	2026-03-10
1042	icx43hilblqunwi6oilvk5ym	CO-225-31041	RAMESH BHAi	1218	\N	2026-05-14 19:10:24.479	2026-05-14 19:10:24.479	\N	\N	\N	\N	2026-03-13
1043	icx43hilblqunwi6oilvk5ym	CO-225-31041	RAMESH BHAi	1218	\N	2026-05-14 19:10:24.479	2026-05-14 19:10:24.479	2026-05-14 19:10:24.515	\N	\N	\N	2026-03-13
1044	o7m4u52gl1xtjbgjxhkwm61k	CO-225-31042	HANI JOSHI	55	\N	2026-05-14 19:10:25.292	2026-05-14 19:10:25.292	\N	\N	\N	\N	2026-03-13
1045	o7m4u52gl1xtjbgjxhkwm61k	CO-225-31042	HANI JOSHI	55	\N	2026-05-14 19:10:25.292	2026-05-14 19:10:25.292	2026-05-14 19:10:25.316	\N	\N	\N	2026-03-13
1046	qeh1bxoujt5t0eqb9lm45tbq	CO-225-31043	Kapil Parekh	8923	\N	2026-05-14 19:10:26.535	2026-05-14 19:10:26.535	\N	\N	\N	\N	2026-03-13
1047	qeh1bxoujt5t0eqb9lm45tbq	CO-225-31043	Kapil Parekh	8923	\N	2026-05-14 19:10:26.535	2026-05-14 19:10:26.535	2026-05-14 19:10:26.556	\N	\N	\N	2026-03-13
1048	psp9yd4z6g7er90ysyd0umd5	CO-225-31044	bhavna	891	\N	2026-05-14 19:10:27.283	2026-05-14 19:10:27.283	\N	\N	\N	\N	2026-03-13
1049	psp9yd4z6g7er90ysyd0umd5	CO-225-31044	bhavna	891	\N	2026-05-14 19:10:27.283	2026-05-14 19:10:27.283	2026-05-14 19:10:27.298	\N	\N	\N	2026-03-13
1050	covji9dnih5pz4of3t3iagpl	CO-225-31045	MAHESH HIRAGAR	4728	\N	2026-05-14 19:10:28.325	2026-05-14 19:10:28.325	\N	\N	\N	\N	2026-03-13
1051	covji9dnih5pz4of3t3iagpl	CO-225-31045	MAHESH HIRAGAR	4728	\N	2026-05-14 19:10:28.325	2026-05-14 19:10:28.325	2026-05-14 19:10:28.335	\N	\N	\N	2026-03-13
1052	y5lsu7s49l8q4mbzaxyulj1x	CO-225-31046	aditi	684	\N	2026-05-14 19:10:29.064	2026-05-14 19:10:29.064	\N	\N	\N	\N	2026-03-13
1053	y5lsu7s49l8q4mbzaxyulj1x	CO-225-31046	aditi	684	\N	2026-05-14 19:10:29.064	2026-05-14 19:10:29.064	2026-05-14 19:10:29.074	\N	\N	\N	2026-03-13
1054	ol1lqspyjocktkuq6vuutqhs	CO-225-31047	rahul shah	3135	\N	2026-05-14 19:10:29.568	2026-05-14 19:10:29.568	\N	\N	\N	\N	2026-03-13
1055	ol1lqspyjocktkuq6vuutqhs	CO-225-31047	rahul shah	3135	\N	2026-05-14 19:10:29.568	2026-05-14 19:10:29.568	2026-05-14 19:10:29.577	\N	\N	\N	2026-03-13
1056	k1d12a01juw7z16wzz94j6h5	CO-225-31048	YASH VASANT SIR	5323	\N	2026-05-14 19:10:30.514	2026-05-14 19:10:30.514	\N	\N	\N	\N	2026-03-13
1057	k1d12a01juw7z16wzz94j6h5	CO-225-31048	YASH VASANT SIR	5323	\N	2026-05-14 19:10:30.514	2026-05-14 19:10:30.514	2026-05-14 19:10:30.522	\N	\N	\N	2026-03-13
1058	rz8pbor13xsjw69xvhxk06jt	CO-225-31049	dr.kapil ahuja	2200	\N	2026-05-14 19:10:31.156	2026-05-14 19:10:31.156	\N	\N	\N	\N	2026-03-13
1059	rz8pbor13xsjw69xvhxk06jt	CO-225-31049	dr.kapil ahuja	2200	\N	2026-05-14 19:10:31.156	2026-05-14 19:10:31.156	2026-05-14 19:10:31.172	\N	\N	\N	2026-03-13
1060	knoolq9wle7a47em7xb0er7z	CO-225-31050	shiana shah	9140	\N	2026-05-14 19:10:32.124	2026-05-14 19:10:32.124	\N	\N	\N	\N	2026-03-13
1061	knoolq9wle7a47em7xb0er7z	CO-225-31050	shiana shah	9140	\N	2026-05-14 19:10:32.124	2026-05-14 19:10:32.124	2026-05-14 19:10:32.133	\N	\N	\N	2026-03-13
1062	fwkqhzm0cvr59vbvuovtf9jp	CO-225-31051	deepak	217	\N	2026-05-14 19:10:32.753	2026-05-14 19:10:32.753	\N	\N	\N	\N	2026-03-13
1063	fwkqhzm0cvr59vbvuovtf9jp	CO-225-31051	deepak	217	\N	2026-05-14 19:10:32.753	2026-05-14 19:10:32.753	2026-05-14 19:10:32.762	\N	\N	\N	2026-03-13
1064	kgoa2azgpvarempb9gp5sktw	CO-225-31052	jagdish bhai	300	\N	2026-05-14 19:10:33.522	2026-05-14 19:10:33.522	\N	\N	\N	\N	2026-03-13
1065	kgoa2azgpvarempb9gp5sktw	CO-225-31052	jagdish bhai	300	\N	2026-05-14 19:10:33.522	2026-05-14 19:10:33.522	2026-05-14 19:10:33.532	\N	\N	\N	2026-03-13
1066	zvsfpo7wf6zcihfeg7wdzmok	CO-225-31053	aditya	1614	\N	2026-05-14 19:10:34.197	2026-05-14 19:10:34.197	\N	\N	\N	\N	2026-03-13
1067	zvsfpo7wf6zcihfeg7wdzmok	CO-225-31053	aditya	1614	\N	2026-05-14 19:10:34.197	2026-05-14 19:10:34.197	2026-05-14 19:10:34.205	\N	\N	\N	2026-03-13
1068	ciekbyoe3bvrwzbttk7m3a9b	CO-225-31054	somya mam	4194	\N	2026-05-14 19:10:34.792	2026-05-14 19:10:34.792	\N	\N	\N	\N	2026-03-13
1076	g9x73ybe8jeqdkltnkqybjzf	CO-225-31058	LEENA MAM	680	\N	2026-05-14 19:10:37.311	2026-05-14 19:10:37.311	\N	\N	\N	\N	2026-03-13
1069	ciekbyoe3bvrwzbttk7m3a9b	CO-225-31054	somya mam	4194	\N	2026-05-14 19:10:34.792	2026-05-14 19:10:34.792	2026-05-14 19:10:34.799	\N	\N	\N	2026-03-13
1070	li3eg4v2mlbdlcqk2jp01x50	CO-225-31055	BHVNA PATEL	2271	\N	2026-05-14 19:10:35.399	2026-05-14 19:10:35.399	\N	\N	\N	\N	2026-03-13
1071	li3eg4v2mlbdlcqk2jp01x50	CO-225-31055	BHVNA PATEL	2271	\N	2026-05-14 19:10:35.399	2026-05-14 19:10:35.399	2026-05-14 19:10:35.406	\N	\N	\N	2026-03-13
1074	f74xcq3yvq76naecb5k44f2f	CO-225-31057	kena joshi	711	\N	2026-05-14 19:10:36.794	2026-05-14 19:10:36.794	\N	\N	\N	\N	2026-03-13
1075	f74xcq3yvq76naecb5k44f2f	CO-225-31057	kena joshi	711	\N	2026-05-14 19:10:36.794	2026-05-14 19:10:36.794	2026-05-14 19:10:36.801	\N	\N	\N	2026-03-13
1126	ujhb5s83soxlukqud4lizzr8	CO-225-31083	VIDHI MAM	233	\N	2026-05-14 19:10:54.937	2026-05-14 19:10:54.937	\N	\N	\N	\N	2026-03-14
1127	ujhb5s83soxlukqud4lizzr8	CO-225-31083	VIDHI MAM	233	\N	2026-05-14 19:10:54.937	2026-05-14 19:10:54.937	2026-05-14 19:10:54.948	\N	\N	\N	2026-03-14
1128	sgzoibso9v58fl1zffmzjybw	CO-225-31084	enhance family saloon	2944	\N	2026-05-14 19:10:55.536	2026-05-14 19:10:55.536	\N	\N	\N	\N	2026-03-14
1129	sgzoibso9v58fl1zffmzjybw	CO-225-31084	enhance family saloon	2944	\N	2026-05-14 19:10:55.536	2026-05-14 19:10:55.536	2026-05-14 19:10:55.544	\N	\N	\N	2026-03-14
1130	c3m2amyvopq97geltquv8sxc	CO-225-31085	vishal	2380	\N	2026-05-14 19:10:56.145	2026-05-14 19:10:56.145	\N	\N	\N	\N	2026-03-14
1131	c3m2amyvopq97geltquv8sxc	CO-225-31085	vishal	2380	\N	2026-05-14 19:10:56.145	2026-05-14 19:10:56.145	2026-05-14 19:10:56.152	\N	\N	\N	2026-03-14
1132	mnggv8tvtl6d7aoti1jsuylw	CO-225-31086	sherry	349	\N	2026-05-14 19:10:56.624	2026-05-14 19:10:56.624	\N	\N	\N	\N	2026-03-14
1133	mnggv8tvtl6d7aoti1jsuylw	CO-225-31086	sherry	349	\N	2026-05-14 19:10:56.624	2026-05-14 19:10:56.624	2026-05-14 19:10:56.632	\N	\N	\N	2026-03-14
1134	nd4pqurgfmnsg5kr4zeyyhdz	CO-225-31087	ANIL KARYA	5669	\N	2026-05-14 19:10:57.2	2026-05-14 19:10:57.2	\N	\N	\N	\N	2026-03-14
1135	nd4pqurgfmnsg5kr4zeyyhdz	CO-225-31087	ANIL KARYA	5669	\N	2026-05-14 19:10:57.2	2026-05-14 19:10:57.2	2026-05-14 19:10:57.208	\N	\N	\N	2026-03-14
1138	okl7mws5rrzq91pvkqri4x8h	CO-225-31089	DR.RUPIN TRIVEDI	9032	\N	2026-05-14 19:10:58.742	2026-05-14 19:10:58.742	\N	\N	\N	\N	2026-03-14
1139	okl7mws5rrzq91pvkqri4x8h	CO-225-31089	DR.RUPIN TRIVEDI	9032	\N	2026-05-14 19:10:58.742	2026-05-14 19:10:58.742	2026-05-14 19:10:58.753	\N	\N	\N	2026-03-14
1146	ufqslpoujdwlzjuv4qqypbv9	CO-225-31093	seema	2099	\N	2026-05-14 19:11:00.702	2026-05-14 19:11:00.702	\N	\N	\N	\N	2026-03-14
1147	ufqslpoujdwlzjuv4qqypbv9	CO-225-31093	seema	2099	\N	2026-05-14 19:11:00.702	2026-05-14 19:11:00.702	2026-05-14 19:11:00.719	\N	\N	\N	2026-03-14
1152	gpgw75aaadld006ds2lq60zx	CO-225-31096	yash oberoi	2099	\N	2026-05-14 19:11:02.69	2026-05-14 19:11:02.69	\N	\N	\N	\N	2026-03-14
1153	gpgw75aaadld006ds2lq60zx	CO-225-31096	yash oberoi	2099	\N	2026-05-14 19:11:02.69	2026-05-14 19:11:02.69	2026-05-14 19:11:02.703	\N	\N	\N	2026-03-14
1072	dvqzdy45rd70g5witowtddj0	CO-225-31056	PIYUSHKUMAR MAKWANA	2080	\N	2026-05-14 19:10:36.02	2026-05-14 19:10:36.02	\N	\N	\N	\N	2026-03-13
1073	dvqzdy45rd70g5witowtddj0	CO-225-31056	PIYUSHKUMAR MAKWANA	2080	\N	2026-05-14 19:10:36.02	2026-05-14 19:10:36.02	2026-05-14 19:10:36.028	\N	\N	\N	2026-03-13
1078	utcm9kma6djbw9l4wdxat15k	CO-225-31059	ruju desai	13198	\N	2026-05-14 19:10:37.789	2026-05-14 19:10:37.789	\N	\N	\N	\N	2026-03-13
1079	utcm9kma6djbw9l4wdxat15k	CO-225-31059	ruju desai	13198	\N	2026-05-14 19:10:37.789	2026-05-14 19:10:37.789	2026-05-14 19:10:37.796	\N	\N	\N	2026-03-13
1080	gy0kdq2nzs4uh26k75pze0dx	CO-225-31060	HIMANSHU PATEL	2099	\N	2026-05-14 19:10:38.431	2026-05-14 19:10:38.431	\N	\N	\N	\N	2026-03-13
1081	gy0kdq2nzs4uh26k75pze0dx	CO-225-31060	HIMANSHU PATEL	2099	\N	2026-05-14 19:10:38.431	2026-05-14 19:10:38.431	2026-05-14 19:10:38.448	\N	\N	\N	2026-03-13
1082	ux4g1n53cwdi90wtplrh3f1x	CO-225-31061	VINAY KHEMANI	4100	\N	2026-05-14 19:10:39.068	2026-05-14 19:10:39.068	\N	\N	\N	\N	2026-03-13
1083	ux4g1n53cwdi90wtplrh3f1x	CO-225-31061	VINAY KHEMANI	4100	\N	2026-05-14 19:10:39.068	2026-05-14 19:10:39.068	2026-05-14 19:10:39.076	\N	\N	\N	2026-03-13
1088	v7dmo5cs35s2gcbm1t1idk61	CO-225-31064	rekha ben	2808	\N	2026-05-14 19:10:40.644	2026-05-14 19:10:40.644	\N	\N	\N	\N	2026-03-13
1089	v7dmo5cs35s2gcbm1t1idk61	CO-225-31064	rekha ben	2808	\N	2026-05-14 19:10:40.644	2026-05-14 19:10:40.644	2026-05-14 19:10:40.654	\N	\N	\N	2026-03-13
1104	lm98i9p5awk377q8vd0jj2u1	CO-225-31072	jeel patel	2244	\N	2026-05-14 19:10:46.733	2026-05-14 19:10:46.733	\N	\N	\N	\N	2026-03-13
1105	lm98i9p5awk377q8vd0jj2u1	CO-225-31072	jeel patel	2244	\N	2026-05-14 19:10:46.733	2026-05-14 19:10:46.733	2026-05-14 19:10:46.749	\N	\N	\N	2026-03-13
1108	e5e5znj236ad4tg0fmgjcga5	CO-225-31074	jaymin	2399	\N	2026-05-14 19:10:48.591	2026-05-14 19:10:48.591	\N	\N	\N	\N	2026-03-14
1109	e5e5znj236ad4tg0fmgjcga5	CO-225-31074	jaymin	2399	\N	2026-05-14 19:10:48.591	2026-05-14 19:10:48.591	2026-05-14 19:10:48.603	\N	\N	\N	2026-03-14
1112	kq5ktxx5toao0ufat8k2puku	CO-225-31076	ANERI SHAH	2100	\N	2026-05-14 19:10:49.911	2026-05-14 19:10:49.911	\N	\N	\N	\N	2026-03-14
1113	kq5ktxx5toao0ufat8k2puku	CO-225-31076	ANERI SHAH	2100	\N	2026-05-14 19:10:49.911	2026-05-14 19:10:49.911	2026-05-14 19:10:49.92	\N	\N	\N	2026-03-14
1136	zv16bqnk9jjg6zs5kyt7i9ty	CO-225-31088	ANIL KARYA	302	\N	2026-05-14 19:10:57.849	2026-05-14 19:10:57.849	\N	\N	\N	\N	2026-03-14
1137	zv16bqnk9jjg6zs5kyt7i9ty	CO-225-31088	ANIL KARYA	302	\N	2026-05-14 19:10:57.849	2026-05-14 19:10:57.849	2026-05-14 19:10:57.869	\N	\N	\N	2026-03-14
1140	ykkuggdhblwfd7kw9srumujm	CO-225-31090	SHITAL	5730	\N	2026-05-14 19:10:59.303	2026-05-14 19:10:59.303	\N	\N	\N	\N	2026-03-14
1141	ykkuggdhblwfd7kw9srumujm	CO-225-31090	SHITAL	5730	\N	2026-05-14 19:10:59.303	2026-05-14 19:10:59.303	2026-05-14 19:10:59.311	\N	\N	\N	2026-03-14
1142	wk5eqgwwfjm146tphyrhzsf6	CO-225-31091	mahi rajput	1950	\N	2026-05-14 19:10:59.765	2026-05-14 19:10:59.765	\N	\N	\N	\N	2026-03-14
1143	wk5eqgwwfjm146tphyrhzsf6	CO-225-31091	mahi rajput	1950	\N	2026-05-14 19:10:59.765	2026-05-14 19:10:59.765	2026-05-14 19:10:59.775	\N	\N	\N	2026-03-14
1144	h6rkdt8t7ikzlunbxpif9kh1	CO-225-31092	arpita	10197	\N	2026-05-14 19:11:00.242	2026-05-14 19:11:00.242	\N	\N	\N	\N	2026-03-14
1145	h6rkdt8t7ikzlunbxpif9kh1	CO-225-31092	arpita	10197	\N	2026-05-14 19:11:00.242	2026-05-14 19:11:00.242	2026-05-14 19:11:00.25	\N	\N	\N	2026-03-14
1148	czmezhecz64gzjw47zqnd812	CO-225-31094	pinky parikh	1950	\N	2026-05-14 19:11:01.457	2026-05-14 19:11:01.457	\N	\N	\N	\N	2026-03-14
1149	czmezhecz64gzjw47zqnd812	CO-225-31094	pinky parikh	1950	\N	2026-05-14 19:11:01.457	2026-05-14 19:11:01.457	2026-05-14 19:11:01.467	\N	\N	\N	2026-03-14
1150	oq9ebroe2a5rl4kf8fn5vurb	CO-225-31095	MAMTA PANCHAL	2099	\N	2026-05-14 19:11:02.107	2026-05-14 19:11:02.107	\N	\N	\N	\N	2026-03-14
1151	oq9ebroe2a5rl4kf8fn5vurb	CO-225-31095	MAMTA PANCHAL	2099	\N	2026-05-14 19:11:02.107	2026-05-14 19:11:02.107	2026-05-14 19:11:02.118	\N	\N	\N	2026-03-14
1077	g9x73ybe8jeqdkltnkqybjzf	CO-225-31058	LEENA MAM	680	\N	2026-05-14 19:10:37.311	2026-05-14 19:10:37.311	2026-05-14 19:10:37.319	\N	\N	\N	2026-03-13
1084	o9mpjn2jl529mjv8cj930bgo	CO-225-31062	VIDHI MAM	2240	\N	2026-05-14 19:10:39.53	2026-05-14 19:10:39.53	\N	\N	\N	\N	2026-03-13
1085	o9mpjn2jl529mjv8cj930bgo	CO-225-31062	VIDHI MAM	2240	\N	2026-05-14 19:10:39.53	2026-05-14 19:10:39.53	2026-05-14 19:10:39.539	\N	\N	\N	2026-03-13
1086	izgzavko1zpsal1367pfvdej	CO-225-31063	prashant udani	1625	\N	2026-05-14 19:10:40.172	2026-05-14 19:10:40.172	\N	\N	\N	\N	2026-03-13
1087	izgzavko1zpsal1367pfvdej	CO-225-31063	prashant udani	1625	\N	2026-05-14 19:10:40.172	2026-05-14 19:10:40.172	2026-05-14 19:10:40.18	\N	\N	\N	2026-03-13
1090	bipzal0btj6kcoe10ckoq7dp	CO-225-31065	SAVAN BAROT	2834	\N	2026-05-14 19:10:41.296	2026-05-14 19:10:41.296	\N	\N	\N	\N	2026-03-13
1091	bipzal0btj6kcoe10ckoq7dp	CO-225-31065	SAVAN BAROT	2834	\N	2026-05-14 19:10:41.296	2026-05-14 19:10:41.296	2026-05-14 19:10:41.306	\N	\N	\N	2026-03-13
1092	g6tssknqwry86hc5pyh1wkhn	CO-225-31066	DIPAK L KADIA	2099	\N	2026-05-14 19:10:41.95	2026-05-14 19:10:41.95	\N	\N	\N	\N	2026-03-13
1093	g6tssknqwry86hc5pyh1wkhn	CO-225-31066	DIPAK L KADIA	2099	\N	2026-05-14 19:10:41.95	2026-05-14 19:10:41.95	2026-05-14 19:10:41.988	\N	\N	\N	2026-03-13
1094	lnur7z0az5x3vfufocwt0u7l	CO-225-31067	ASHA AND PETS FOUNDATION	1560	\N	2026-05-14 19:10:42.79	2026-05-14 19:10:42.79	\N	\N	\N	\N	2026-03-13
1095	lnur7z0az5x3vfufocwt0u7l	CO-225-31067	ASHA AND PETS FOUNDATION	1560	\N	2026-05-14 19:10:42.79	2026-05-14 19:10:42.79	2026-05-14 19:10:42.803	\N	\N	\N	2026-03-13
1096	s5yo6mxnxrj4q6tmi9b0483s	CO-225-31068	DIMPLE APRO	1560	\N	2026-05-14 19:10:43.466	2026-05-14 19:10:43.466	\N	\N	\N	\N	2026-03-13
1097	s5yo6mxnxrj4q6tmi9b0483s	CO-225-31068	DIMPLE APRO	1560	\N	2026-05-14 19:10:43.466	2026-05-14 19:10:43.466	2026-05-14 19:10:43.475	\N	\N	\N	2026-03-13
1098	sds5tzwd9qmmje9zuo4b3mc3	CO-225-31069	RAVI PATEL	6169	\N	2026-05-14 19:10:44.131	2026-05-14 19:10:44.131	\N	\N	\N	\N	2026-03-13
1099	sds5tzwd9qmmje9zuo4b3mc3	CO-225-31069	RAVI PATEL	6169	\N	2026-05-14 19:10:44.131	2026-05-14 19:10:44.131	2026-05-14 19:10:44.14	\N	\N	\N	2026-03-13
1100	t2f8lmw212fmudzk627riu1v	CO-225-31070	NEHA	553	\N	2026-05-14 19:10:44.838	2026-05-14 19:10:44.838	\N	\N	\N	\N	2026-03-13
1101	t2f8lmw212fmudzk627riu1v	CO-225-31070	NEHA	553	\N	2026-05-14 19:10:44.838	2026-05-14 19:10:44.838	2026-05-14 19:10:44.861	\N	\N	\N	2026-03-13
1102	safx43nsmqs1bvt4ieineluj	CO-225-31071	HEER	634	\N	2026-05-14 19:10:45.802	2026-05-14 19:10:45.802	\N	\N	\N	\N	2026-03-13
1103	safx43nsmqs1bvt4ieineluj	CO-225-31071	HEER	634	\N	2026-05-14 19:10:45.802	2026-05-14 19:10:45.802	2026-05-14 19:10:45.819	\N	\N	\N	2026-03-13
1106	qtwnlq8m7gsq9dmkh2bcejk3	CO-225-31073	vanraj bhai	199	\N	2026-05-14 19:10:47.883	2026-05-14 19:10:47.883	\N	\N	\N	\N	2026-03-13
1107	qtwnlq8m7gsq9dmkh2bcejk3	CO-225-31073	vanraj bhai	199	\N	2026-05-14 19:10:47.883	2026-05-14 19:10:47.883	2026-05-14 19:10:47.893	\N	\N	\N	2026-03-13
1110	wgdcl2fi0eacildlmvbzaocn	CO-225-31075	Girish	839	\N	2026-05-14 19:10:49.304	2026-05-14 19:10:49.304	\N	\N	\N	\N	2026-03-14
1111	wgdcl2fi0eacildlmvbzaocn	CO-225-31075	Girish	839	\N	2026-05-14 19:10:49.304	2026-05-14 19:10:49.304	2026-05-14 19:10:49.313	\N	\N	\N	2026-03-14
1114	h83tuvpptlasmxz7ra9lbpq0	CO-225-31077	mansi	737	\N	2026-05-14 19:10:50.672	2026-05-14 19:10:50.672	\N	\N	\N	\N	2026-03-14
1115	h83tuvpptlasmxz7ra9lbpq0	CO-225-31077	mansi	737	\N	2026-05-14 19:10:50.672	2026-05-14 19:10:50.672	2026-05-14 19:10:50.685	\N	\N	\N	2026-03-14
1116	tsv0zqocb794hu1rcf1xp45e	CO-225-31078	Aashay Shah	1402	\N	2026-05-14 19:10:51.5	2026-05-14 19:10:51.5	\N	\N	\N	\N	2026-03-14
1117	tsv0zqocb794hu1rcf1xp45e	CO-225-31078	Aashay Shah	1402	\N	2026-05-14 19:10:51.5	2026-05-14 19:10:51.5	2026-05-14 19:10:51.512	\N	\N	\N	2026-03-14
1118	jexjaqen2dv2xvb0ica34etm	CO-225-31079	jaskaur	1834	\N	2026-05-14 19:10:52.481	2026-05-14 19:10:52.481	\N	\N	\N	\N	2026-03-14
1119	jexjaqen2dv2xvb0ica34etm	CO-225-31079	jaskaur	1834	\N	2026-05-14 19:10:52.481	2026-05-14 19:10:52.481	2026-05-14 19:10:52.503	\N	\N	\N	2026-03-14
1120	bs2baj9gxdgs1lwicgwd6yo9	CO-225-31080	ROSHANI JOSHI	11678	\N	2026-05-14 19:10:53.433	2026-05-14 19:10:53.433	\N	\N	\N	\N	2026-03-14
1121	bs2baj9gxdgs1lwicgwd6yo9	CO-225-31080	ROSHANI JOSHI	11678	\N	2026-05-14 19:10:53.433	2026-05-14 19:10:53.433	2026-05-14 19:10:53.442	\N	\N	\N	2026-03-14
1122	lghnubst9t54afh4lznx0lg3	CO-225-31081	SHASHANT	230	\N	2026-05-14 19:10:54.009	2026-05-14 19:10:54.009	\N	\N	\N	\N	2026-03-14
1123	lghnubst9t54afh4lznx0lg3	CO-225-31081	SHASHANT	230	\N	2026-05-14 19:10:54.009	2026-05-14 19:10:54.009	2026-05-14 19:10:54.016	\N	\N	\N	2026-03-14
1124	xe1ahfn2c5erwlsj8x8fab7m	CO-225-31082	aashi	840	\N	2026-05-14 19:10:54.485	2026-05-14 19:10:54.485	\N	\N	\N	\N	2026-03-14
1125	xe1ahfn2c5erwlsj8x8fab7m	CO-225-31082	aashi	840	\N	2026-05-14 19:10:54.485	2026-05-14 19:10:54.485	2026-05-14 19:10:54.492	\N	\N	\N	2026-03-14
1154	i5x5b0sgkexmjcud8ftc6mad	CO-225-31097	amee	515	\N	2026-05-14 19:11:03.747	2026-05-14 19:11:03.747	\N	\N	\N	\N	2026-03-14
1155	i5x5b0sgkexmjcud8ftc6mad	CO-225-31097	amee	515	\N	2026-05-14 19:11:03.747	2026-05-14 19:11:03.747	2026-05-14 19:11:03.784	\N	\N	\N	2026-03-14
1156	ln4q8nq7gqooafj11w6z9g9w	CO-225-31098	mayur bhai	1868	\N	2026-05-14 19:11:04.385	2026-05-14 19:11:04.385	\N	\N	\N	\N	2026-03-14
1157	ln4q8nq7gqooafj11w6z9g9w	CO-225-31098	mayur bhai	1868	\N	2026-05-14 19:11:04.385	2026-05-14 19:11:04.385	2026-05-14 19:11:04.399	\N	\N	\N	2026-03-14
1158	gtkyyy20musyv0pscw47l96k	CO-225-31099	dhananjay raval	2856	\N	2026-05-14 19:11:05.145	2026-05-14 19:11:05.145	\N	\N	\N	\N	2026-03-14
1159	gtkyyy20musyv0pscw47l96k	CO-225-31099	dhananjay raval	2856	\N	2026-05-14 19:11:05.145	2026-05-14 19:11:05.145	2026-05-14 19:11:05.154	\N	\N	\N	2026-03-14
1160	nr2gkl52x367fkwlikg0c2d0	CO-225-31100	NIRAV AGARWAL	1620	\N	2026-05-14 19:11:05.831	2026-05-14 19:11:05.831	\N	\N	\N	\N	2026-03-14
1161	nr2gkl52x367fkwlikg0c2d0	CO-225-31100	NIRAV AGARWAL	1620	\N	2026-05-14 19:11:05.831	2026-05-14 19:11:05.831	2026-05-14 19:11:05.846	\N	\N	\N	2026-03-14
1162	o9x9so084bi2rr6ydva4fo2a	CO-225-31101	DOGDOM TRUST	1487	\N	2026-05-14 19:11:06.516	2026-05-14 19:11:06.516	\N	\N	\N	\N	2026-03-14
1163	o9x9so084bi2rr6ydva4fo2a	CO-225-31101	DOGDOM TRUST	1487	\N	2026-05-14 19:11:06.516	2026-05-14 19:11:06.516	2026-05-14 19:11:06.528	\N	\N	\N	2026-03-14
1164	vvdvum68qjru3eadyu9kaup9	CO-225-31102	mamta	1690	\N	2026-05-14 19:11:07.179	2026-05-14 19:11:07.179	\N	\N	\N	\N	2026-03-14
1165	vvdvum68qjru3eadyu9kaup9	CO-225-31102	mamta	1690	\N	2026-05-14 19:11:07.179	2026-05-14 19:11:07.179	2026-05-14 19:11:07.19	\N	\N	\N	2026-03-14
1166	zafhogjnr2t7j6j2ygtyxcd5	CO-225-31103	harshad patel	2157	\N	2026-05-14 19:11:07.715	2026-05-14 19:11:07.715	\N	\N	\N	\N	2026-03-14
1167	zafhogjnr2t7j6j2ygtyxcd5	CO-225-31103	harshad patel	2157	\N	2026-05-14 19:11:07.715	2026-05-14 19:11:07.715	2026-05-14 19:11:07.727	\N	\N	\N	2026-03-14
1168	qgdbkvc8cd1no6meh6w0rxvm	CO-225-31104	ASHMITA	750	\N	2026-05-14 19:11:08.44	2026-05-14 19:11:08.44	\N	\N	\N	\N	2026-03-14
1169	qgdbkvc8cd1no6meh6w0rxvm	CO-225-31104	ASHMITA	750	\N	2026-05-14 19:11:08.44	2026-05-14 19:11:08.44	2026-05-14 19:11:08.448	\N	\N	\N	2026-03-14
1170	guovktknn01x27emuzgdruan	CO-225-31105	URVI	349	\N	2026-05-14 19:11:09.041	2026-05-14 19:11:09.041	\N	\N	\N	\N	2026-03-14
1171	guovktknn01x27emuzgdruan	CO-225-31105	URVI	349	\N	2026-05-14 19:11:09.041	2026-05-14 19:11:09.041	2026-05-14 19:11:09.049	\N	\N	\N	2026-03-14
1172	xx58o67wvw6z8kichx4jpka9	CO-225-31106	nilesh patel	3100	\N	2026-05-14 19:11:09.644	2026-05-14 19:11:09.644	\N	\N	\N	\N	2026-03-14
1173	xx58o67wvw6z8kichx4jpka9	CO-225-31106	nilesh patel	3100	\N	2026-05-14 19:11:09.644	2026-05-14 19:11:09.644	2026-05-14 19:11:09.657	\N	\N	\N	2026-03-14
1174	eptggncqoj7efyotg6t9748j	CO-225-31107	AMIT LAB WIFE	2532	\N	2026-05-14 19:11:10.295	2026-05-14 19:11:10.295	\N	\N	\N	\N	2026-03-14
1175	eptggncqoj7efyotg6t9748j	CO-225-31107	AMIT LAB WIFE	2532	\N	2026-05-14 19:11:10.295	2026-05-14 19:11:10.295	2026-05-14 19:11:10.309	\N	\N	\N	2026-03-14
1176	u4p9f8v3ag7ya77yyg1lth7r	CO-225-31108	kusum parmar	4232	\N	2026-05-14 19:11:11.054	2026-05-14 19:11:11.054	\N	\N	\N	\N	2026-03-14
1177	u4p9f8v3ag7ya77yyg1lth7r	CO-225-31108	kusum parmar	4232	\N	2026-05-14 19:11:11.054	2026-05-14 19:11:11.054	2026-05-14 19:11:11.064	\N	\N	\N	2026-03-14
1178	mypexqj05voq0l9lqd7yq7qc	CO-225-31109	tejshvee gupta	400	\N	2026-05-14 19:11:12.023	2026-05-14 19:11:12.023	\N	\N	\N	\N	2026-03-14
1179	mypexqj05voq0l9lqd7yq7qc	CO-225-31109	tejshvee gupta	400	\N	2026-05-14 19:11:12.023	2026-05-14 19:11:12.023	2026-05-14 19:11:12.036	\N	\N	\N	2026-03-14
1180	m9uj4b2uhy2xhjdby32vveap	CO-225-31110	vaishanvi bharkar	2099	\N	2026-05-14 19:11:12.868	2026-05-14 19:11:12.868	\N	\N	\N	\N	2026-03-14
1181	m9uj4b2uhy2xhjdby32vveap	CO-225-31110	vaishanvi bharkar	2099	\N	2026-05-14 19:11:12.868	2026-05-14 19:11:12.868	2026-05-14 19:11:12.883	\N	\N	\N	2026-03-14
1182	jpgnauedyzijq7gqu6py8r9n	CO-225-31111	rachna	1495	\N	2026-05-14 19:11:13.499	2026-05-14 19:11:13.499	\N	\N	\N	\N	2026-03-14
1183	jpgnauedyzijq7gqu6py8r9n	CO-225-31111	rachna	1495	\N	2026-05-14 19:11:13.499	2026-05-14 19:11:13.499	2026-05-14 19:11:13.508	\N	\N	\N	2026-03-14
\.


--
-- Data for Name: follow_up_lists_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_customer_lnk (id, follow_up_list_id, customer_id, follow_up_list_ord) FROM stdin;
1097	687	1157	1
1098	688	1158	1
1387	875	1423	1
1100	689	1160	1
1101	690	1134	2
1388	876	1424	1
1103	673	1161	1
1104	691	1161	2
942	584	1002	1
1105	692	1162	1
944	585	1004	1
945	586	1005	1
1835	1154	1797	1
947	587	1007	1
948	588	1008	1
1107	693	1164	1
950	589	1010	1
951	590	1011	1
1108	694	1011	2
1393	879	1429	1
954	592	1014	1
1837	1155	1799	1
957	594	1017	1
1110	591	1165	1
959	595	1019	1
960	596	1020	1
1111	695	1165	2
1854	1166	1184	2
963	598	1023	1
1112	696	1166	1
966	600	1026	1
1856	709	1813	1
968	601	1028	1
969	602	1029	1
1114	697	1168	1
971	603	1031	1
972	604	1032	1
1115	698	1169	1
974	605	1034	1
975	606	1035	1
1857	1167	1813	2
1858	1168	1814	1
978	608	1038	1
1117	699	1171	1
980	609	1040	1
981	610	1041	1
1118	700	1172	1
983	611	1043	1
984	612	1044	1
986	613	1046	1
987	614	1047	1
1120	701	1174	1
989	615	1049	1
990	616	1050	1
1121	702	1175	1
1860	1169	1816	1
993	618	1053	1
1861	1170	1817	1
995	619	1055	1
996	620	1056	1
998	621	1058	1
999	622	1059	1
1124	704	1178	1
1001	623	1061	1
1002	624	1062	1
1863	1171	1819	1
1004	625	1064	1
1005	626	1065	1
1126	705	1180	1
1007	627	1067	1
1008	628	1068	1
1127	706	1181	1
1010	629	1070	1
1011	630	1071	1
1864	1172	1820	1
1013	631	1073	1
1014	632	1074	1
1129	707	1183	1
1016	633	1076	1
1017	634	1077	1
1130	708	1184	1
1019	635	1079	1
1020	636	1080	1
1022	637	1082	1
1023	638	1083	1
1025	639	1085	1
1026	640	1086	1
1133	710	1187	1
1028	641	1088	1
1029	642	1089	1
1031	643	1091	1
1032	644	1092	1
1035	646	1095	1
1136	712	1190	1
1037	647	1097	1
1038	648	1098	1
1040	649	1100	1
1041	650	1101	1
1138	713	1192	1
1043	651	1103	1
1044	652	1104	1
1139	714	1193	1
1046	653	1106	1
1047	654	1107	1
1049	655	1109	1
1050	656	1110	1
1053	658	1113	1
1142	716	1196	1
1055	659	1115	1
1056	660	1116	1
1059	662	1119	1
1144	717	1198	1
1061	663	1121	1
1062	664	1122	1
1145	718	1199	1
1064	665	1124	1
1065	666	1125	1
1068	668	1128	1
1147	719	1201	1
1070	669	1130	1
1071	670	1131	1
1148	720	1202	1
1074	672	1134	1
1077	674	1137	1
1150	721	1204	1
1079	675	1139	1
1080	676	1140	1
1151	722	1205	1
1082	677	1142	1
1083	678	1143	1
1085	679	1145	1
1086	680	1146	1
1153	723	1207	1
1089	682	1149	1
1154	724	1208	1
1091	683	1151	1
1092	684	1152	1
1095	686	1155	1
1156	725	1210	1
1157	726	1211	1
1159	727	1213	1
1160	728	1214	1
1162	729	1216	1
1163	730	1217	1
1165	731	1219	1
1166	732	1220	1
1168	733	1222	1
1169	734	1223	1
1171	735	1225	1
1172	736	1035	2
1174	607	1226	1
1178	739	1229	1
1233	775	1281	1
1175	737	1226	2
1176	738	1227	1
1390	877	1426	1
1391	878	1427	1
1182	742	1233	1
1838	1156	1131	2
1187	745	1238	1
1188	746	1239	1
1396	881	1432	1
1193	749	1244	1
1194	750	1245	1
1401	884	1187	2
1199	753	1250	1
1200	754	1251	1
1205	757	1256	1
1206	758	1257	1
1840	671	1800	1
1215	764	1020	2
1841	1157	1800	2
1217	597	1266	1
1218	765	1266	2
1219	766	1267	1
1405	886	1435	1
1221	767	1269	1
1222	768	1270	1
1842	1158	1801	1
1230	773	1278	1
1261	793	1306	1
1262	794	1307	1
1410	889	1440	1
1267	797	1312	1
1279	805	1324	1
1280	806	1325	1
1411	890	1441	1
1282	807	1327	1
1283	808	1328	1
1285	809	1330	1
1299	818	1146	2
1416	893	1446	1
1303	820	1342	1
1417	894	1447	1
1308	823	1347	1
1309	824	1348	1
1314	827	1353	1
1315	828	1354	1
1422	897	1452	1
1317	829	1356	1
1318	830	1357	1
1431	902	1146	3
1321	832	1230	2
1325	834	1361	1
1433	681	1457	1
1330	837	1366	1
1331	838	1367	1
1434	819	1457	2
1336	841	1372	1
1337	842	1373	1
1435	903	1457	3
1342	845	1378	1
1343	846	1379	1
1436	904	1458	1
1345	847	1381	1
1346	848	1382	1
1351	851	1387	1
1352	852	1388	1
1441	907	1463	1
1357	855	1393	1
1358	856	1394	1
1442	908	1464	1
1366	861	1402	1
1367	862	1403	1
1375	867	1411	1
1376	868	1412	1
1445	910	1467	1
1381	871	1417	1
1382	872	1418	1
1451	914	1473	1
1454	916	1476	1
1459	919	1481	1
1479	931	1495	1
1480	932	1496	1
1485	935	1501	1
1486	936	1502	1
1488	937	1504	1
1500	945	1516	1
1501	946	1517	1
1504	948	1520	1
1513	954	1529	1
1518	957	1534	1
1522	960	1538	1
1524	961	1540	1
1527	963	1543	1
1528	964	1544	1
1530	965	1546	1
1531	966	1547	1
1539	971	1555	1
1542	973	1558	1
1543	974	1559	1
1548	977	1564	1
1551	979	1567	1
1555	982	1116	2
1557	661	1571	1
1558	983	1571	2
1559	984	1572	1
1564	987	1577	1
1565	988	1578	1
1570	991	1583	1
1571	992	1584	1
1590	1003	1599	1
1591	1004	1600	1
1596	1007	1605	1
1597	1008	1606	1
1604	1012	1610	1
1609	1015	1615	1
1621	1023	1627	1
1622	1024	1628	1
1624	1025	1630	1
1627	1027	1633	1
1628	1028	1634	1
1633	1031	1639	1
1636	617	1640	1
1637	1033	1640	2
1641	1036	1644	1
1649	1041	1652	1
1650	1042	1653	1
1652	1043	1655	1
1664	1050	1023	2
1671	1054	1014	4
1673	593	1667	1
1674	787	1667	2
1675	997	1667	3
1676	1055	1667	4
1677	1056	1668	1
1679	1057	1670	1
1689	1063	1677	1
1701	1071	1689	1
1707	1075	1695	1
1708	1076	1696	1
1720	1084	1476	2
1724	1086	1709	1
1726	1087	1711	1
1729	777	1712	1
1730	1089	1712	2
1731	1090	1713	1
1733	1091	1715	1
1734	1092	1716	1
1736	1093	1718	1
1737	1094	1719	1
1739	1095	1721	1
1740	1096	1722	1
1742	1097	1724	1
1743	1098	1725	1
1179	740	1230	1
1394	880	1430	1
1184	743	1235	1
1185	744	1236	1
1844	1159	1803	1
1190	747	1241	1
1191	748	1242	1
1397	882	1193	2
1196	751	1247	1
1197	752	1248	1
1202	755	1253	1
1203	756	1254	1
1399	715	1433	1
1208	759	1259	1
1209	760	1260	1
1400	883	1433	2
1211	761	1262	1
1212	762	1263	1
1407	887	1437	1
1214	763	1265	1
1224	769	1272	1
1225	770	1273	1
1408	888	1438	1
1227	771	1275	1
1228	772	1276	1
1231	774	1279	1
1413	891	1443	1
1239	779	1287	1
1240	780	1288	1
1414	892	1444	1
1245	783	1293	1
1246	784	1294	1
1249	786	1014	2
1419	895	1449	1
1253	788	1298	1
1420	896	1450	1
1255	789	1300	1
1256	790	1301	1
1259	792	1304	1
1423	898	1187	3
1268	798	1313	1
1270	799	1315	1
1271	800	1316	1
1425	711	1453	1
1273	801	1318	1
1274	802	1319	1
1426	885	1453	2
1277	804	1322	1
1427	899	1453	3
1292	813	1334	1
1293	814	1335	1
1428	900	1454	1
1430	901	1456	1
1438	905	1460	1
1439	906	1461	1
1444	909	1466	1
1457	918	1479	1
1466	923	1485	1
1467	924	1486	1
1472	927	1491	1
1477	930	1493	1
1491	939	1507	1
1497	943	1513	1
1498	944	1514	1
1503	947	1519	1
1506	949	1522	1
1507	950	1523	1
1512	953	1528	1
1515	955	1531	1
1519	958	1535	1
1525	962	1541	1
1533	967	1549	1
1534	968	1550	1
1536	969	1552	1
1537	970	1553	1
1540	972	1556	1
1545	975	1561	1
1546	976	1562	1
1554	981	1570	1
1573	993	1586	1
1574	994	1587	1
1577	996	1014	3
1584	999	1593	1
1585	1000	1594	1
1588	1002	1597	1
1593	1005	1602	1
1594	1006	1603	1
1600	1010	1606	2
1606	1013	1612	1
1607	1014	1613	1
1610	1016	1616	1
1612	1017	1618	1
1613	1018	1619	1
1615	1019	1621	1
1616	1020	1622	1
1625	1026	1631	1
1630	1029	1636	1
1631	1030	1637	1
1634	1032	1050	2
1646	1039	1649	1
1653	1044	1656	1
1655	1045	1658	1
1656	1046	1659	1
1658	1047	1661	1
1661	741	1662	1
1662	833	1662	2
1663	1049	1662	3
1666	599	1663	1
1667	1051	1663	2
1668	1052	1664	1
1670	1053	1666	1
1682	667	1671	1
1683	1059	1671	2
1684	1060	1672	1
1686	1061	1674	1
1687	1062	1675	1
1692	1065	1680	1
1693	1066	1681	1
1695	1067	1683	1
1696	1068	1684	1
1698	1069	1686	1
1699	1070	1687	1
1704	1073	1692	1
1705	1074	1693	1
1745	1099	1727	1
1746	1100	1728	1
1748	1101	1730	1
1749	1102	1731	1
1754	1105	1736	1
1755	1106	1737	1
1760	1109	1742	1
1761	1110	1743	1
1763	1111	1745	1
1769	1114	1307	2
1771	795	1747	1
1772	1115	1747	2
1773	1116	1748	1
1775	1117	1750	1
1776	1118	1751	1
1778	1119	1753	1
1779	1120	1754	1
1781	1121	1756	1
1782	1122	1757	1
1784	1123	1759	1
1785	1124	1760	1
1788	1126	1476	3
1793	1128	1470	2
1795	913	1764	1
1796	1129	1764	2
1797	1130	1765	1
1799	1131	1767	1
1800	1132	1768	1
1234	776	1282	1
1447	911	1469	1
1845	1160	1804	1
1237	778	1285	1
1448	912	1470	1
1242	781	1290	1
1243	782	1291	1
1258	791	1303	1
1847	1161	1806	1
1265	796	1310	1
1453	915	1475	1
1276	803	1321	1
1286	810	1175	2
1460	920	1110	2
1290	812	1332	1
1848	1162	1807	1
1295	815	1337	1
1296	816	1338	1
1462	657	1482	1
1298	817	1340	1
1305	821	1344	1
1306	822	1345	1
1463	921	1482	2
1311	825	1350	1
1312	826	1351	1
1464	922	1483	1
1320	831	1359	1
1327	835	1363	1
1328	836	1364	1
1333	839	1369	1
1334	840	1370	1
1469	925	1488	1
1339	843	1375	1
1340	844	1376	1
1470	926	1489	1
1348	849	1384	1
1349	850	1385	1
1850	1163	1809	1
1354	853	1390	1
1355	854	1391	1
1473	928	1152	2
1360	857	1396	1
1361	858	1397	1
1851	1164	1810	1
1363	859	1399	1
1364	860	1400	1
1475	685	1492	1
1369	863	1405	1
1370	864	1406	1
1476	929	1492	2
1372	865	1408	1
1373	866	1409	1
1482	933	1498	1
1378	869	1414	1
1379	870	1415	1
1483	934	1499	1
1384	873	1420	1
1385	874	1421	1
1853	1165	1812	1
1489	938	1505	1
1866	1173	1822	1
1492	940	1508	1
1867	1174	1294	2
1494	941	1510	1
1495	942	1511	1
1509	951	1525	1
1510	952	1526	1
1869	785	1823	1
1516	956	1532	1
1870	1175	1823	2
1521	959	1537	1
1549	978	1565	1
1871	1176	1175	3
1552	980	1568	1
1561	985	1574	1
1562	986	1575	1
1873	703	1824	1
1567	989	1580	1
1568	990	1581	1
1874	811	1824	2
1576	995	1589	1
1875	1177	1824	3
1876	1178	1825	1
1582	998	1591	1
1878	1179	1827	1
1587	1001	1596	1
1618	1021	1624	1
1619	1022	1625	1
1879	1180	1828	1
1638	1034	1641	1
1640	1035	1643	1
1643	1037	1646	1
1644	1038	1647	1
1881	1181	1830	1
1647	1040	1650	1
1882	1182	1831	1
1659	1048	1230	3
1680	1058	1125	2
1884	1183	1833	1
1690	1064	1678	1
1702	1072	1690	1
1710	1077	1698	1
1711	1078	1699	1
1713	1079	1701	1
1714	1080	1702	1
1716	1081	1704	1
1717	1082	1705	1
1719	1083	1707	1
1727	1088	1282	2
1751	1103	1733	1
1752	1104	1734	1
1757	1107	1739	1
1758	1108	1740	1
1764	1112	1606	3
1766	1009	1746	1
1767	1011	1746	2
1768	1113	1746	3
1787	1125	1762	1
1790	917	1763	1
1791	1085	1763	2
1792	1127	1763	3
1802	1133	1770	1
1803	1134	1771	1
1806	1136	1771	2
1808	1135	1774	1
1809	1137	1774	2
1810	1138	1775	1
1812	1139	1777	1
1813	1140	1778	1
1815	1141	1780	1
1816	1142	1781	1
1818	1143	1783	1
1819	1144	1784	1
1821	1145	1786	1
1822	1146	1787	1
1824	1147	1789	1
1825	1148	1790	1
1827	1149	1792	1
1828	1150	1793	1
1830	1151	1795	1
1831	1152	1092	2
1833	645	1796	1
1834	1153	1796	2
\.


--
-- Data for Name: follow_up_lists_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_store_lnk (id, follow_up_list_id, store_id) FROM stdin;
584	584	9
585	585	10
586	586	9
587	587	10
588	588	9
589	589	10
590	590	9
591	591	10
592	592	9
593	593	10
594	594	9
595	595	10
596	596	9
597	597	10
598	598	9
599	599	10
600	600	9
601	601	10
602	602	9
603	603	10
604	604	9
605	605	10
606	606	9
607	607	10
608	608	9
609	609	10
610	610	9
611	611	10
612	612	9
613	613	10
614	614	9
615	615	10
616	616	9
617	617	10
618	618	9
619	619	10
620	620	9
621	621	10
622	622	9
623	623	10
624	624	9
625	625	10
626	626	9
627	627	10
628	628	9
629	629	10
630	630	9
631	631	10
632	632	9
633	633	10
634	634	9
635	635	10
636	636	9
637	637	10
638	638	9
639	639	10
640	640	9
641	641	10
642	642	9
643	643	10
644	644	9
645	645	10
646	646	9
647	647	10
648	648	9
649	649	10
650	650	9
651	651	10
652	652	9
653	653	10
654	654	9
655	655	10
656	656	9
657	657	10
658	658	9
659	659	10
660	660	9
661	661	10
662	662	9
663	663	10
664	664	9
665	665	10
666	666	9
667	667	10
668	668	9
669	669	10
670	670	9
671	671	10
672	672	9
673	673	10
674	674	9
675	675	10
676	676	9
677	677	10
678	678	9
679	679	10
680	680	9
681	681	10
682	682	9
683	683	10
684	684	9
685	685	10
686	686	9
687	687	10
688	688	9
689	689	10
690	690	9
691	691	10
692	692	9
693	693	10
694	694	9
695	695	10
696	696	9
697	697	10
698	698	9
699	699	10
700	700	9
701	701	10
702	702	9
703	703	10
704	704	9
705	705	10
706	706	9
707	707	10
708	708	9
709	709	10
710	710	9
711	711	10
712	712	9
713	713	10
714	714	9
715	715	10
716	716	9
717	717	10
718	718	9
719	719	10
720	720	9
721	721	10
722	722	9
723	723	10
724	724	9
725	725	10
726	726	9
727	727	10
728	728	9
729	729	10
730	730	9
731	731	10
732	732	9
733	733	10
734	734	9
735	735	10
736	736	9
737	737	10
738	738	9
739	739	10
740	740	9
741	741	10
742	742	9
743	743	10
744	744	9
745	745	10
746	746	9
747	747	10
748	748	9
749	749	10
750	750	9
751	751	10
752	752	9
753	753	10
754	754	9
755	755	10
756	756	9
757	757	10
758	758	9
759	759	10
760	760	9
761	761	10
762	762	9
763	763	10
764	764	9
765	765	10
766	766	9
767	767	10
768	768	9
769	769	10
794	794	9
795	795	10
806	806	9
807	807	10
808	808	9
809	809	10
818	818	9
819	819	10
820	820	9
821	821	10
824	824	9
825	825	10
828	828	9
829	829	10
830	830	9
831	831	10
832	832	9
833	833	10
834	834	9
835	835	10
838	838	9
839	839	10
842	842	9
843	843	10
846	846	9
847	847	10
848	848	9
849	849	10
852	852	9
853	853	10
856	856	9
857	857	10
862	862	9
863	863	10
868	868	9
869	869	10
872	872	9
873	873	10
770	770	9
771	771	10
772	772	9
773	773	10
774	774	9
775	775	10
780	780	9
781	781	10
784	784	9
785	785	10
786	786	9
787	787	10
788	788	9
789	789	10
790	790	9
791	791	10
792	792	9
793	793	10
798	798	9
799	799	10
800	800	9
801	801	10
802	802	9
803	803	10
804	804	9
805	805	10
814	814	9
815	815	10
776	776	9
777	777	10
778	778	9
779	779	10
782	782	9
783	783	10
796	796	9
797	797	10
810	810	9
811	811	10
812	812	9
813	813	10
816	816	9
817	817	10
822	822	9
823	823	10
826	826	9
827	827	10
836	836	9
837	837	10
840	840	9
841	841	10
844	844	9
845	845	10
850	850	9
851	851	10
854	854	9
855	855	10
858	858	9
859	859	10
860	860	9
861	861	10
864	864	9
865	865	10
866	866	9
867	867	10
870	870	9
871	871	10
874	874	9
875	875	10
876	876	9
877	877	10
878	878	9
879	879	10
880	880	9
881	881	10
882	882	9
883	883	10
884	884	9
885	885	10
886	886	9
887	887	10
888	888	9
889	889	10
890	890	9
891	891	10
892	892	9
893	893	10
894	894	9
895	895	10
896	896	9
897	897	10
898	898	9
899	899	10
900	900	9
901	901	10
902	902	9
903	903	10
904	904	9
905	905	10
906	906	9
907	907	10
908	908	9
909	909	10
910	910	9
911	911	10
912	912	9
913	913	10
914	914	9
915	915	10
916	916	9
917	917	10
918	918	9
919	919	10
920	920	9
921	921	10
922	922	9
923	923	10
924	924	9
925	925	10
926	926	9
927	927	10
928	928	9
929	929	10
930	930	9
931	931	10
932	932	9
933	933	10
934	934	9
935	935	10
936	936	9
937	937	10
938	938	9
939	939	10
940	940	9
941	941	10
942	942	9
943	943	10
944	944	9
945	945	10
946	946	9
947	947	10
948	948	9
949	949	10
950	950	9
951	951	10
952	952	9
953	953	10
954	954	9
955	955	10
956	956	9
957	957	10
958	958	9
959	959	10
960	960	9
961	961	10
962	962	9
963	963	10
964	964	9
965	965	10
966	966	9
967	967	10
968	968	9
969	969	10
970	970	9
971	971	10
972	972	9
973	973	10
974	974	9
975	975	10
976	976	9
977	977	10
978	978	9
979	979	10
980	980	9
981	981	10
982	982	9
983	983	10
984	984	9
985	985	10
986	986	9
987	987	10
988	988	9
989	989	10
990	990	9
991	991	10
992	992	9
993	993	10
994	994	9
995	995	10
996	996	9
997	997	10
998	998	9
999	999	10
1000	1000	9
1001	1001	10
1002	1002	9
1003	1003	10
1004	1004	9
1005	1005	10
1006	1006	9
1007	1007	10
1008	1008	9
1009	1009	10
1010	1010	9
1011	1011	10
1012	1012	9
1013	1013	10
1014	1014	9
1015	1015	10
1016	1016	9
1017	1017	10
1018	1018	9
1019	1019	10
1020	1020	9
1021	1021	10
1022	1022	9
1023	1023	10
1026	1026	9
1027	1027	10
1030	1030	9
1031	1031	10
1032	1032	9
1033	1033	10
1034	1034	9
1035	1035	10
1038	1038	9
1039	1039	10
1040	1040	9
1041	1041	10
1024	1024	9
1025	1025	10
1028	1028	9
1029	1029	10
1036	1036	9
1037	1037	10
1042	1042	9
1043	1043	10
1044	1044	9
1045	1045	10
1046	1046	9
1047	1047	10
1048	1048	9
1049	1049	10
1050	1050	9
1051	1051	10
1052	1052	9
1053	1053	10
1054	1054	9
1055	1055	10
1056	1056	9
1057	1057	10
1058	1058	9
1059	1059	10
1060	1060	9
1061	1061	10
1062	1062	9
1063	1063	10
1064	1064	9
1065	1065	10
1066	1066	9
1067	1067	10
1068	1068	9
1069	1069	10
1070	1070	9
1071	1071	10
1072	1072	9
1073	1073	10
1074	1074	9
1075	1075	10
1076	1076	9
1077	1077	10
1078	1078	9
1079	1079	10
1080	1080	9
1081	1081	10
1082	1082	9
1083	1083	10
1084	1084	9
1085	1085	10
1086	1086	9
1087	1087	10
1088	1088	9
1089	1089	10
1090	1090	9
1091	1091	10
1092	1092	9
1093	1093	10
1094	1094	9
1095	1095	10
1096	1096	9
1097	1097	10
1098	1098	9
1099	1099	10
1100	1100	9
1101	1101	10
1102	1102	9
1103	1103	10
1104	1104	9
1105	1105	10
1106	1106	9
1107	1107	10
1108	1108	9
1109	1109	10
1110	1110	9
1111	1111	10
1112	1112	9
1113	1113	10
1114	1114	9
1115	1115	10
1116	1116	9
1117	1117	10
1118	1118	9
1119	1119	10
1120	1120	9
1121	1121	10
1122	1122	9
1123	1123	10
1124	1124	9
1125	1125	10
1126	1126	9
1127	1127	10
1128	1128	9
1129	1129	10
1130	1130	9
1131	1131	10
1132	1132	9
1133	1133	10
1134	1134	9
1135	1135	10
1136	1136	9
1137	1137	10
1138	1138	9
1139	1139	10
1140	1140	9
1141	1141	10
1142	1142	9
1143	1143	10
1144	1144	9
1145	1145	10
1146	1146	9
1147	1147	10
1148	1148	9
1149	1149	10
1150	1150	9
1151	1151	10
1152	1152	9
1153	1153	10
1154	1154	9
1155	1155	10
1156	1156	9
1157	1157	10
1158	1158	9
1159	1159	10
1160	1160	9
1161	1161	10
1162	1162	9
1163	1163	10
1164	1164	9
1165	1165	10
1166	1166	9
1167	1167	10
1168	1168	9
1169	1169	10
1170	1170	9
1171	1171	10
1172	1172	9
1173	1173	10
1174	1174	9
1175	1175	10
1176	1176	9
1177	1177	10
1178	1178	9
1179	1179	10
1180	1180	9
1181	1181	10
1182	1182	9
1183	1183	10
\.


--
-- Data for Name: general_diaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.general_diaries (id, document_id, note, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
24	aodoblt2wbvhfx7rj9vpdbpy	aaaa\n**bbbbb**\ncccccc\n**Ddddd**	2026-04-26 00:13:55.509	2026-04-26 00:15:42.536	2026-04-26 00:15:42.548	1	1	\N
1	y5aikeb5jd8tg1v900q7xa3v	An Orthopedic General Diary or Logbook is used by residents and surgeons to track surgical cases, training activities\n**Dog, Cat, Other**\n\n**ABc**	2026-04-23 00:50:00.351	2026-04-26 00:18:17.255	\N	1	1	\N
25	y5aikeb5jd8tg1v900q7xa3v	An Orthopedic General Diary or Logbook is used by residents and surgeons to track surgical cases, training activities\n**Dog, Cat, Other**\n\n**ABc**	2026-04-23 00:50:00.351	2026-04-26 00:18:17.255	2026-04-26 00:18:17.261	1	1	\N
21	aodoblt2wbvhfx7rj9vpdbpy	aaaa\n**bbbbb**\ncccccc\n**Ddddd**	2026-04-26 00:13:55.509	2026-04-26 00:15:42.536	\N	1	1	\N
\.


--
-- Data for Name: general_diaries_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.general_diaries_store_lnk (id, general_diary_id, store_id) FROM stdin;
21	21	3
24	24	4
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	z6kx02flo7cqfu5pwa1re1pq	English (en)	en	2026-02-22 10:52:17.345	2026-02-22 10:52:17.345	2026-02-22 10:52:17.347	\N	\N	\N
\.


--
-- Data for Name: pet_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pet_types (id, document_id, name, value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	entyk4ol1jq2iwjigiunitod	Cat	cat	2026-04-16 18:03:22.666	2026-04-16 18:03:22.666	\N	1	1	\N
4	entyk4ol1jq2iwjigiunitod	Cat	cat	2026-04-16 18:03:22.666	2026-04-16 18:03:22.666	2026-04-16 18:03:22.685	1	1	\N
1	s8ykx4ybcc27jmcip95eeaow	Dog	dog	2026-04-16 18:03:11.66	2026-04-21 05:40:33.546	\N	1	1	\N
8	s8ykx4ybcc27jmcip95eeaow	Dog	dog	2026-04-16 18:03:11.66	2026-04-21 05:40:33.546	2026-04-21 05:40:33.557	1	1	\N
5	zvfem3c5mq4xubx10860p5em	Others	others	2026-04-16 18:03:40.959	2026-04-21 05:41:18.501	\N	1	1	\N
10	zvfem3c5mq4xubx10860p5em	Others	others	2026-04-16 18:03:40.959	2026-04-21 05:41:18.501	2026-04-21 05:41:18.521	1	1	\N
\.


--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets (id, document_id, name, birth_date, gender, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
154	nyt9cp01fctngux69090h1lj	dafsd	2026-03-25	Male	2026-04-25 14:53:16.824	2026-04-29 21:15:05.241	\N	\N	\N	\N
84	y5paf7vq5fnry8ny4naqzx5g	cxxcc	2015-04-21	Female	2026-04-21 09:32:41.924	2026-04-21 09:32:41.924	\N	1	1	\N
85	y5paf7vq5fnry8ny4naqzx5g	cxxcc	2015-04-21	Female	2026-04-21 09:32:41.924	2026-04-21 09:32:41.924	2026-04-21 09:32:41.957	1	1	\N
86	gcakkgchl2b4cq6eysvdzoki	aer	2006-05-05	Male	2026-04-24 00:24:59.711	2026-04-24 00:24:59.711	\N	\N	\N	\N
87	gcakkgchl2b4cq6eysvdzoki	aer	2006-05-05	Male	2026-04-24 00:24:59.711	2026-04-24 00:24:59.711	2026-04-24 00:25:00.189	\N	\N	\N
128	gamdyjgio1yb0hp4vggbm546	Quod atque praesenti	\N	Male	2026-04-25 13:08:25.797	2026-04-25 13:08:25.797	\N	\N	\N	\N
129	gamdyjgio1yb0hp4vggbm546	Quod atque praesenti	\N	Male	2026-04-25 13:08:25.797	2026-04-25 13:08:25.797	2026-04-25 13:08:25.849	\N	\N	\N
130	d2nlzw2mhkyfmjv0j89u38rz	Facilis delectus ut	\N	Female	2026-04-25 13:14:10.305	2026-04-25 13:14:10.305	\N	\N	\N	\N
131	d2nlzw2mhkyfmjv0j89u38rz	Facilis delectus ut	\N	Female	2026-04-25 13:14:10.305	2026-04-25 13:14:10.305	2026-04-25 13:14:10.333	\N	\N	\N
132	xvl2pfw5i6cz1mjui68z30m0	Autem fugiat eos u	\N	Female	2026-04-25 13:14:58.908	2026-04-25 13:14:58.908	\N	\N	\N	\N
133	xvl2pfw5i6cz1mjui68z30m0	Autem fugiat eos u	\N	Female	2026-04-25 13:14:58.908	2026-04-25 13:14:58.908	2026-04-25 13:14:58.932	\N	\N	\N
134	wa75htxhhdkkobvc4e9kusa9	In dolorum eos nobis	\N	Female	2026-04-25 13:17:31.68	2026-04-25 13:17:31.68	\N	\N	\N	\N
135	wa75htxhhdkkobvc4e9kusa9	In dolorum eos nobis	\N	Female	2026-04-25 13:17:31.68	2026-04-25 13:17:31.68	2026-04-25 13:17:31.694	\N	\N	\N
136	p8wwsbuq3ml3jiifyq9hve00	Sit nostrum maiores	\N	Male	2026-04-25 13:26:11.852	2026-04-25 13:26:11.852	\N	\N	\N	\N
137	p8wwsbuq3ml3jiifyq9hve00	Sit nostrum maiores	\N	Male	2026-04-25 13:26:11.852	2026-04-25 13:26:11.852	2026-04-25 13:26:11.874	\N	\N	\N
138	do0qds5490bcf826x4koc4ki	In aliqua Dolorum e	\N	Male	2026-04-25 13:27:18.66	2026-04-25 13:27:18.66	\N	\N	\N	\N
139	do0qds5490bcf826x4koc4ki	In aliqua Dolorum e	\N	Male	2026-04-25 13:27:18.66	2026-04-25 13:27:18.66	2026-04-25 13:27:18.669	\N	\N	\N
140	fc9xw4zbii1eue239thj4lqu	Labore duis beatae d	\N	Female	2026-04-25 13:27:55.098	2026-04-25 13:27:55.098	\N	\N	\N	\N
88	wl8rqvppa81p2z29y9iwu3nu	fdf	2026-01-25	Male	2026-04-24 00:58:54.743	2026-04-24 01:45:59.256	\N	\N	\N	\N
103	wl8rqvppa81p2z29y9iwu3nu	fdf	2026-01-25	Male	2026-04-24 00:58:54.743	2026-04-24 01:45:59.256	2026-04-24 01:45:59.312	\N	\N	\N
141	fc9xw4zbii1eue239thj4lqu	Labore duis beatae d	\N	Female	2026-04-25 13:27:55.098	2026-04-25 13:27:55.098	2026-04-25 13:27:55.172	\N	\N	\N
104	z3t93sd9l0e9872yttcnqsxj	fdasf	2025-02-06	Male	2026-04-24 01:48:59.968	2026-04-24 01:49:45.973	\N	\N	\N	\N
107	z3t93sd9l0e9872yttcnqsxj	fdasf	2025-02-06	Male	2026-04-24 01:48:59.968	2026-04-24 01:49:45.973	2026-04-24 01:49:46.041	\N	\N	\N
142	dmumg7o18bui600ep60tp6ur	Nobis voluptates nis	\N	Female	2026-04-25 13:29:16.673	2026-04-25 13:29:16.673	\N	\N	\N	\N
143	dmumg7o18bui600ep60tp6ur	Nobis voluptates nis	\N	Female	2026-04-25 13:29:16.673	2026-04-25 13:29:16.673	2026-04-25 13:29:16.699	\N	\N	\N
146	d5201wzrsxaqhpuov2c936t4	In nihil ex ducimus	\N	Female	2026-04-25 13:52:00.534	2026-04-25 13:52:00.534	\N	\N	\N	\N
108	uwibyf9e251wtv7wm6kg29cu	sdf	2019-04-25	Male	2026-04-24 01:50:53.921	2026-04-24 02:00:27.135	\N	\N	\N	\N
115	uwibyf9e251wtv7wm6kg29cu	sdf	2019-04-25	Male	2026-04-24 01:50:53.921	2026-04-24 02:00:27.135	2026-04-24 02:00:27.183	\N	\N	\N
116	iesoqa6qgmpaq25xb79emno6	kn kn	2002-04-24	Male	2026-04-24 02:00:56.492	2026-04-24 02:00:56.492	\N	\N	\N	\N
117	iesoqa6qgmpaq25xb79emno6	kn kn	2002-04-24	Male	2026-04-24 02:00:56.492	2026-04-24 02:00:56.492	2026-04-24 02:00:56.524	\N	\N	\N
118	dk5d4nhk04bcmgodp0sx9vja	Non a voluptat	2020-04-25	Male	2026-04-25 12:08:56.407	2026-04-25 12:08:56.407	\N	\N	\N	\N
119	dk5d4nhk04bcmgodp0sx9vja	Non a voluptat	2020-04-25	Male	2026-04-25 12:08:56.407	2026-04-25 12:08:56.407	2026-04-25 12:08:56.672	\N	\N	\N
122	j90y981i366x3ejxg9e4u80y	Reprehenderit enim v	\N	Male	2026-04-25 12:46:56.302	2026-04-25 12:46:56.302	\N	\N	\N	\N
123	j90y981i366x3ejxg9e4u80y	Reprehenderit enim v	\N	Male	2026-04-25 12:46:56.302	2026-04-25 12:46:56.302	2026-04-25 12:46:56.336	\N	\N	\N
124	s7tuveu0z90bm8wj7zpy4rpv	Nisi omnis nulla cil	\N	Female	2026-04-25 12:48:19.88	2026-04-25 12:48:19.88	\N	\N	\N	\N
125	s7tuveu0z90bm8wj7zpy4rpv	Nisi omnis nulla cil	\N	Female	2026-04-25 12:48:19.88	2026-04-25 12:48:19.88	2026-04-25 12:48:19.921	\N	\N	\N
126	q4i8o6sf02q3edgjei1k3rk8	Cupiditate numquam n	\N	Male	2026-04-25 12:50:21.366	2026-04-25 12:50:21.366	\N	\N	\N	\N
127	q4i8o6sf02q3edgjei1k3rk8	Cupiditate numquam n	\N	Male	2026-04-25 12:50:21.366	2026-04-25 12:50:21.366	2026-04-25 12:50:21.393	\N	\N	\N
147	d5201wzrsxaqhpuov2c936t4	In nihil ex ducimus	\N	Female	2026-04-25 13:52:00.534	2026-04-25 13:52:00.534	2026-04-25 13:52:00.614	\N	\N	\N
148	s7dziet07795u6ti74pkk5wx	Quidem cupiditate de	\N	Male	2026-04-25 13:54:56.911	2026-04-25 13:54:56.911	\N	\N	\N	\N
149	s7dziet07795u6ti74pkk5wx	Quidem cupiditate de	\N	Male	2026-04-25 13:54:56.911	2026-04-25 13:54:56.911	2026-04-25 13:54:56.96	\N	\N	\N
150	dcno5sd7sfesk23x5goy7vkc	Qui reprehenderit a	\N	Male	2026-04-25 14:47:43.689	2026-04-25 14:47:43.689	\N	\N	\N	\N
151	dcno5sd7sfesk23x5goy7vkc	Qui reprehenderit a	\N	Male	2026-04-25 14:47:43.689	2026-04-25 14:47:43.689	2026-04-25 14:47:43.726	\N	\N	\N
158	cuourapcqb7mpn9t8c43bljd	jkln	2026-04-30	Male	2026-04-25 15:01:23.005	2026-04-25 15:01:23.005	\N	\N	\N	\N
159	cuourapcqb7mpn9t8c43bljd	jkln	2026-04-30	Male	2026-04-25 15:01:23.005	2026-04-25 15:01:23.005	2026-04-25 15:01:23.014	\N	\N	\N
160	t98vt6uf2oocp503gqkje8nx	Ut excepteur Nam dol	\N	Female	2026-04-25 15:02:04.304	2026-04-25 15:02:04.304	\N	\N	\N	\N
161	t98vt6uf2oocp503gqkje8nx	Ut excepteur Nam dol	\N	Female	2026-04-25 15:02:04.304	2026-04-25 15:02:04.304	2026-04-25 15:02:04.313	\N	\N	\N
162	m86n3ymsor5osli7t1axy1xl	Sunt in irure sit re	\N	Male	2026-04-25 15:03:02.191	2026-04-25 15:03:02.191	\N	\N	\N	\N
163	m86n3ymsor5osli7t1axy1xl	Sunt in irure sit re	\N	Male	2026-04-25 15:03:02.191	2026-04-25 15:03:02.191	2026-04-25 15:03:02.199	\N	\N	\N
169	na1xyq0lakmj2loy7307h381	Remo	2020-04-10	Male	2026-04-25 19:29:33.649	2026-04-25 19:29:57.61	2026-04-25 19:29:57.668	\N	\N	\N
152	okkls5x6i34on51p51t0u30q	Hic voluptas minim a	2002-04-15	Female	2026-04-25 14:49:52.415	2026-04-25 19:29:57.342	\N	\N	\N	\N
168	okkls5x6i34on51p51t0u30q	Hic voluptas minim a	2002-04-15	Female	2026-04-25 14:49:52.415	2026-04-25 19:29:57.342	2026-04-25 19:29:57.402	\N	\N	\N
166	na1xyq0lakmj2loy7307h381	Remo	2020-04-10	Male	2026-04-25 19:29:33.649	2026-04-25 19:29:57.61	\N	\N	\N	\N
144	x3elulns3uti2pvv2y4ugtbx	Laboriosam aut illo	\N	Female	2026-04-25 13:30:15.91	2026-04-25 19:32:08.835	\N	\N	\N	\N
170	x3elulns3uti2pvv2y4ugtbx	Laboriosam aut illo	\N	Female	2026-04-25 13:30:15.91	2026-04-25 19:32:08.835	2026-04-25 19:32:08.923	\N	\N	\N
171	w3vagsd2jau0u482jwidmdy3	aaaa	2001-05-20	Male	2026-04-25 20:53:58.804	2026-04-25 20:53:58.804	\N	\N	\N	\N
172	w3vagsd2jau0u482jwidmdy3	aaaa	2001-05-20	Male	2026-04-25 20:53:58.804	2026-04-25 20:53:58.804	2026-04-25 20:53:58.852	\N	\N	\N
173	xl76c609xc0a767hsnorg1j0	bbbbb	2001-05-21	Male	2026-04-25 20:53:59.029	2026-04-25 20:53:59.029	\N	\N	\N	\N
174	xl76c609xc0a767hsnorg1j0	bbbbb	2001-05-21	Male	2026-04-25 20:53:59.029	2026-04-25 20:53:59.029	2026-04-25 20:53:59.048	\N	\N	\N
175	jiddc8oyo3umo2vzlumr183t	cccc	2001-05-22	Male	2026-04-25 20:53:59.166	2026-04-25 20:53:59.166	\N	\N	\N	\N
176	jiddc8oyo3umo2vzlumr183t	cccc	2001-05-22	Male	2026-04-25 20:53:59.166	2026-04-25 20:53:59.166	2026-04-25 20:53:59.19	\N	\N	\N
177	an9j5s8p1cn6m89bz9i0ym95	aaaa	2001-05-20	Male	2026-04-25 21:14:44.45	2026-04-25 21:14:44.45	\N	\N	\N	\N
178	an9j5s8p1cn6m89bz9i0ym95	aaaa	2001-05-20	Male	2026-04-25 21:14:44.45	2026-04-25 21:14:44.45	2026-04-25 21:14:44.484	\N	\N	\N
179	o5oizrb864y7y6ra22cye6rc	bbbbb	2001-05-21	Male	2026-04-25 21:14:44.624	2026-04-25 21:14:44.624	\N	\N	\N	\N
180	o5oizrb864y7y6ra22cye6rc	bbbbb	2001-05-21	Male	2026-04-25 21:14:44.624	2026-04-25 21:14:44.624	2026-04-25 21:14:44.64	\N	\N	\N
120	lsqrafuw427r1ohkazp9aufg	Sunt facere aute aut	2025-02-13	Male	2026-04-25 12:30:22.336	2026-04-29 21:13:36.043	\N	\N	\N	\N
156	l7t7yu9lcsyuqcjvxkgok23k	fds	2026-05-01	Male	2026-04-25 15:00:35.623	2026-05-01 16:30:44.541	\N	\N	\N	\N
181	knnvz4aiqkyiupqtgb21q4ab	cccc	2001-05-22	Male	2026-04-25 21:14:44.878	2026-04-25 21:14:44.878	\N	\N	\N	\N
182	knnvz4aiqkyiupqtgb21q4ab	cccc	2001-05-22	Male	2026-04-25 21:14:44.878	2026-04-25 21:14:44.878	2026-04-25 21:14:44.904	\N	\N	\N
183	kxoal9suxudl6el8aq76nusv	aaaa	2001-05-20	Male	2026-04-25 21:16:07.464	2026-04-25 21:16:07.464	\N	\N	\N	\N
184	kxoal9suxudl6el8aq76nusv	aaaa	2001-05-20	Male	2026-04-25 21:16:07.464	2026-04-25 21:16:07.464	2026-04-25 21:16:07.504	\N	\N	\N
185	jn62xxqhkkkf6pqcwtszbcls	bbbbb	2001-05-21	Male	2026-04-25 21:16:07.871	2026-04-25 21:16:07.871	\N	\N	\N	\N
186	jn62xxqhkkkf6pqcwtszbcls	bbbbb	2001-05-21	Male	2026-04-25 21:16:07.871	2026-04-25 21:16:07.871	2026-04-25 21:16:07.901	\N	\N	\N
187	nqiql347ee84393fst4dkjcs	cccc	2001-05-22	Male	2026-04-25 21:16:08.07	2026-04-25 21:16:08.07	\N	\N	\N	\N
188	nqiql347ee84393fst4dkjcs	cccc	2001-05-22	Male	2026-04-25 21:16:08.07	2026-04-25 21:16:08.07	2026-04-25 21:16:08.082	\N	\N	\N
189	krsfkmqnw4kul74yvch9fpbf	aaaa	2001-05-20	Male	2026-04-25 21:32:04.806	2026-04-25 21:32:04.806	\N	\N	\N	\N
190	krsfkmqnw4kul74yvch9fpbf	aaaa	2001-05-20	Male	2026-04-25 21:32:04.806	2026-04-25 21:32:04.806	2026-04-25 21:32:04.885	\N	\N	\N
191	znol2056q1ly91lojsye49gq	bbbbb	2001-05-21	Male	2026-04-25 21:32:05.063	2026-04-25 21:32:05.063	\N	\N	\N	\N
192	znol2056q1ly91lojsye49gq	bbbbb	2001-05-21	Male	2026-04-25 21:32:05.063	2026-04-25 21:32:05.063	2026-04-25 21:32:05.096	\N	\N	\N
193	ri4oxoo0fvc4ku5c6e59lxmp	cccc	2001-05-22	Male	2026-04-25 21:32:05.629	2026-04-25 21:32:05.629	\N	\N	\N	\N
194	ri4oxoo0fvc4ku5c6e59lxmp	cccc	2001-05-22	Male	2026-04-25 21:32:05.629	2026-04-25 21:32:05.629	2026-04-25 21:32:05.708	\N	\N	\N
69	ug2t40g3z4yu3t49lr61diow	wer	2020-04-28	Male	2026-04-21 08:01:02.527	2026-04-28 08:17:01.805	\N	\N	1	\N
195	ug2t40g3z4yu3t49lr61diow	wer	2020-04-28	Male	2026-04-21 08:01:02.527	2026-04-28 08:17:01.805	2026-04-28 08:17:01.962	\N	1	\N
197	lsqrafuw427r1ohkazp9aufg	Sunt facere aute aut	2025-02-13	Male	2026-04-25 12:30:22.336	2026-04-29 21:13:36.043	2026-04-29 21:13:36.182	\N	\N	\N
198	nyt9cp01fctngux69090h1lj	dafsd	2026-03-25	Male	2026-04-25 14:53:16.824	2026-04-29 21:15:05.241	2026-04-29 21:15:05.339	\N	\N	\N
200	ccobq0wphudk3m09jer8h0oz	aaa	\N	Male	2026-05-01 14:45:09.354	2026-05-01 14:45:09.354	\N	\N	\N	\N
201	ccobq0wphudk3m09jer8h0oz	aaa	\N	Male	2026-05-01 14:45:09.354	2026-05-01 14:45:09.354	2026-05-01 14:45:09.422	\N	\N	\N
202	pbcs6tmen0nrehkpj006emrd	aer	\N	Male	2026-05-01 14:50:55.909	2026-05-01 14:50:55.909	\N	\N	\N	\N
203	pbcs6tmen0nrehkpj006emrd	aer	\N	Male	2026-05-01 14:50:55.909	2026-05-01 14:50:55.909	2026-05-01 14:50:56.017	\N	\N	\N
204	o1rknf5yvo1qlhds6rsnxbfg		\N	Male	2026-05-01 14:52:20.876	2026-05-01 14:52:20.876	\N	\N	\N	\N
205	o1rknf5yvo1qlhds6rsnxbfg		\N	Male	2026-05-01 14:52:20.876	2026-05-01 14:52:20.876	2026-05-01 14:52:20.885	\N	\N	\N
206	vp5vw9l2v0s33h28jtkul60w	per	\N	Male	2026-05-01 14:52:59.94	2026-05-01 14:52:59.94	\N	\N	\N	\N
207	vp5vw9l2v0s33h28jtkul60w	per	\N	Male	2026-05-01 14:52:59.94	2026-05-01 14:52:59.94	2026-05-01 14:52:59.954	\N	\N	\N
208	dvfjyuvssq1iblxl45gf3cx2	qwe	\N	Female	2026-05-01 14:53:29.231	2026-05-01 14:53:29.231	\N	\N	\N	\N
209	dvfjyuvssq1iblxl45gf3cx2	qwe	\N	Female	2026-05-01 14:53:29.231	2026-05-01 14:53:29.231	2026-05-01 14:53:29.245	\N	\N	\N
210	elfn3bg8mtgd2f7o7wen3pif	qwe	\N	Male	2026-05-01 14:56:20.116	2026-05-01 14:56:20.116	\N	\N	\N	\N
211	elfn3bg8mtgd2f7o7wen3pif	qwe	\N	Male	2026-05-01 14:56:20.116	2026-05-01 14:56:20.116	2026-05-01 14:56:20.123	\N	\N	\N
212	zrsjfw70n7cmlno8yhi5iqv2	qweaaa	2025-05-22	Male	2026-05-01 14:58:07.5	2026-05-01 16:30:24.798	\N	\N	\N	\N
217	zrsjfw70n7cmlno8yhi5iqv2	qweaaa	2025-05-22	Male	2026-05-01 14:58:07.5	2026-05-01 16:30:24.798	2026-05-01 16:30:24.902	\N	\N	\N
218	l7t7yu9lcsyuqcjvxkgok23k	fds	2026-05-01	Male	2026-04-25 15:00:35.623	2026-05-01 16:30:44.541	2026-05-01 16:30:44.611	\N	\N	\N
\.


--
-- Data for Name: pets_breed_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets_breed_lnk (id, pet_id, breed_id) FROM stdin;
116	84	8
117	85	9
118	86	36
119	87	37
120	88	30
149	103	31
150	104	1
155	107	2
156	108	1
169	115	2
170	116	1
171	117	2
172	118	8
173	119	9
174	120	16
176	122	50
177	123	51
178	124	38
179	125	39
180	126	24
181	127	25
182	128	5
183	129	7
184	130	42
185	131	43
186	132	42
187	133	43
188	134	1
189	135	2
190	136	26
98	69	32
191	137	27
192	138	52
193	139	54
194	140	52
195	141	54
196	142	46
197	143	47
198	144	40
200	146	32
201	147	33
202	148	13
203	149	15
204	150	5
205	151	7
206	152	11
208	154	1
210	156	1
212	158	1
213	159	2
214	160	8
215	161	9
216	162	26
217	163	27
222	166	32
225	168	12
227	169	33
229	170	41
230	183	1
231	184	2
232	185	8
233	186	9
234	187	48
235	188	49
236	189	1
237	190	2
238	191	8
239	192	9
240	193	48
241	194	49
243	195	33
247	197	17
249	198	2
252	208	28
253	209	29
255	218	2
\.


--
-- Data for Name: pets_pet_type_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets_pet_type_lnk (id, pet_id, pet_type_id) FROM stdin;
96	84	3
97	85	4
98	86	3
99	87	4
100	88	1
129	103	8
130	104	3
135	107	4
136	108	3
149	115	4
150	116	3
151	117	4
152	118	3
153	119	4
154	120	1
156	122	5
157	123	10
158	124	3
159	125	4
160	126	1
161	127	8
162	128	5
163	129	10
164	130	1
165	131	8
166	132	1
167	133	8
78	69	1
168	134	3
169	135	4
170	136	5
171	137	10
172	138	5
173	139	10
174	140	3
175	141	4
176	142	3
177	143	4
178	144	1
180	146	5
181	147	10
182	148	3
183	149	4
184	150	1
185	151	8
186	152	5
188	154	3
190	156	3
192	158	1
193	159	8
194	160	3
195	161	4
196	162	1
197	163	8
202	166	3
205	168	10
207	169	4
209	170	8
210	183	1
211	184	8
212	185	1
213	186	8
214	187	1
215	188	8
216	189	1
217	190	8
218	191	1
219	192	8
220	193	1
221	194	8
223	195	8
227	197	8
229	198	4
232	206	3
233	207	4
234	208	1
235	209	8
237	218	4
\.


--
-- Data for Name: shopping_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopping_categories (id, document_id, label, value, text_color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hromxvnlek73yb13chaooekq	Green (0 - 30 Days)	green	#166534	2026-05-01 21:10:18.389	2026-05-01 21:10:18.389	\N	1	1	\N
2	hromxvnlek73yb13chaooekq	Green (0 - 30 Days)	green	#166534	2026-05-01 21:10:18.389	2026-05-01 21:10:18.389	2026-05-01 21:10:18.409	1	1	\N
3	whs8p6rf2btsq8ezbphc5rck	Yellow (31 - 45 Days)	yellow	#D0D304	2026-05-01 21:10:49.848	2026-05-02 00:16:24.895	\N	1	1	\N
11	whs8p6rf2btsq8ezbphc5rck	Yellow (31 - 45 Days)	yellow	#D0D304	2026-05-01 21:10:49.848	2026-05-02 00:16:24.895	2026-05-02 00:16:24.91	1	1	\N
5	swp2eutfp2rbpouscwbl2ve4	Orange (46 - 60 Days)	orange	#FF5512	2026-05-01 21:11:12.021	2026-05-02 01:24:23.89	\N	1	1	\N
17	swp2eutfp2rbpouscwbl2ve4	Orange (46 - 60 Days)	orange	#FF5512	2026-05-01 21:11:12.021	2026-05-02 01:24:23.89	2026-05-02 01:24:23.907	1	1	\N
7	nep4khjms225vnyifrele1ou	Red (61 - 75 Days)	red	#9A3412	2026-05-01 21:11:37.956	2026-05-02 01:25:01.124	\N	1	1	\N
18	nep4khjms225vnyifrele1ou	Red (61 - 75 Days)	red	#9A3412	2026-05-01 21:11:37.956	2026-05-02 01:25:01.124	2026-05-02 01:25:01.135	1	1	\N
9	osqbzfdnn3ehsyndioai1834	Black (>76 Days)	black	#111827	2026-05-01 21:11:57.653	2026-05-02 01:25:05.563	\N	1	1	\N
19	osqbzfdnn3ehsyndioai1834	Black (>76 Days)	black	#111827	2026-05-01 21:11:57.653	2026-05-02 01:25:05.563	2026-05-02 01:25:05.577	1	1	\N
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staffs (id, document_id, phone, name, email, password, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
27	ky2ydfdzunsaeumj3589og6x	9876543210	admin	admin@admin.com	$2a$10$/X55RQphUnTdt0OrUZPbpOflrm2QbSalIJG9nHvyN5qKBCAyFuto.	2026-04-26 00:45:41.789	2026-04-26 00:45:41.789	\N	1	1	\N
28	ky2ydfdzunsaeumj3589og6x	9876543210	admin	admin@admin.com	$2a$10$cnd7kExdWXletefIrWNTTeFN9nJFFgRFMcynsYTo68cXyx0S7Wbvm	2026-04-26 00:45:41.789	2026-04-26 00:45:41.789	2026-04-26 00:45:41.899	1	1	\N
1	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Khushi	khushi@mailinator.com	$2a$10$naJXGuYwhdNWhYzVkDMW1eQ/RgXKc2l2gwZ6eQ4ezslL906hEW0F2	2026-03-04 23:31:16.692	2026-05-14 20:38:40.226	\N	1	1	\N
29	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Khushi	khushi@mailinator.com	$2a$10$eeztCwR9OjO7yEbOBnpDaOYE8UCkLnV35V0fe/KVu0jkhzrcGFwBC	2026-03-04 23:31:16.692	2026-05-14 20:38:40.226	2026-05-14 20:38:40.368	1	1	\N
15	v6a6bxfp4cu8nj6nf201b930	9865320147	Hemanshi	hemanshi@mailinator.com	$2a$10$nEKA8BlBUvEeIxAmu07qW.I5weCGpjyYzSHDE2qMqR/T0PFpSDH5a	2026-04-25 22:47:13.865	2026-05-14 20:39:00.78	\N	1	1	\N
30	v6a6bxfp4cu8nj6nf201b930	9865320147	Hemanshi	hemanshi@mailinator.com	$2a$10$M0SDyHNU3akvX40sFqCWIuarlkPqiN7ohXkDTLKUEapw945996K3K	2026-04-25 22:47:13.865	2026-05-14 20:39:00.78	2026-05-14 20:39:00.815	1	1	\N
13	j99vxal8d1axy6bok88nhyp2	8527419630	Pranali	pranali@mailinator.com	$2a$10$79xsqTL5C.WmnxQX.bDDT.CH1beO9246KISfZII3.vaaf.lwdXvai	2026-04-25 22:46:18.723	2026-05-14 20:39:22.52	\N	1	1	\N
31	j99vxal8d1axy6bok88nhyp2	8527419630	Pranali	pranali@mailinator.com	$2a$10$4AcaefGwTyBqSjOZpRYfvO7CwX55lDmoxvTTfvgEwKZi0firNWnG6	2026-04-25 22:46:18.723	2026-05-14 20:39:22.52	2026-05-14 20:39:22.549	1	1	\N
4	c1lo1lc87rqnj50sdnfnmyaw	9865327410	Dhruvi	dhruvi@mailinator.com	$2a$10$2NxBi0F.mtVXqInJsLqPwOu1eNeFCvNlT0ucgD5Yk4zvfenzhMQYe	2026-03-06 00:04:43.571	2026-05-14 20:39:40.836	\N	1	1	\N
32	c1lo1lc87rqnj50sdnfnmyaw	9865327410	Dhruvi	dhruvi@mailinator.com	$2a$10$d3QJxnVVpgmOcPhK8Jq9aeNfji6vy1GiroKcArkuAGx5bCVzEBNuC	2026-03-06 00:04:43.571	2026-05-14 20:39:40.836	2026-05-14 20:39:40.866	1	1	\N
33	lxcqqlmvotk4zuaib8766d94	7353108476	Anchal	anchal@mailinator.com	$2a$10$2PCYZRiZ8kl7DHcNAVVeiOwQDmTFWIlURf9192Nj7ZcAUsQUV0FNS	2026-05-14 20:40:08.468	2026-05-14 20:40:08.468	\N	1	1	\N
34	lxcqqlmvotk4zuaib8766d94	7353108476	Anchal	anchal@mailinator.com	$2a$10$C2gBilh2Cyi57Ay0cyEh/OPNayta0vaoQviiV7XsOvO8omIvP4Hle	2026-05-14 20:40:08.468	2026-05-14 20:40:08.468	2026-05-14 20:40:08.535	1	1	\N
\.


--
-- Data for Name: staffs_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staffs_store_lnk (id, staff_id, store_id) FROM stdin;
21	13	3
27	4	3
33	27	5
34	28	8
35	1	9
36	29	10
37	15	9
38	30	10
39	31	4
40	32	4
41	33	3
42	34	4
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stores (id, document_id, location, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	\N	1	1	\N
4	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	2026-02-26 00:17:00.224	1	1	\N
5	ozrcfanrmei1xscmpzmcgho5	Admin	admin	2026-04-21 22:08:11.651	2026-04-25 22:48:18.888	\N	1	1	\N
8	ozrcfanrmei1xscmpzmcgho5	Admin	admin	2026-04-21 22:08:11.651	2026-04-25 22:48:18.888	2026-04-25 22:48:18.919	1	1	\N
9	ya0vndufk8e5sdk0qzqz2th6	Satellite	Mery Shop_1	2026-05-14 18:40:38.431	2026-05-14 18:40:52.805	\N	1	1	\N
10	ya0vndufk8e5sdk0qzqz2th6	Satellite	Mery Shop_1	2026-05-14 18:40:38.431	2026-05-14 18:40:52.805	2026-05-14 18:40:52.946	1	1	\N
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
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
67	egce3rbhafnszr7u407wh53p	api::pet-type.pet-type.find	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	\N	\N	\N
68	x3aprzozxakbwo7fryraptvj	api::pet-type.pet-type.findOne	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	2026-04-16 18:36:15.322	\N	\N	\N
69	d94rzor42wzzeagy0pb2bebs	api::pet-type.pet-type.create	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	2026-04-16 18:36:15.322	\N	\N	\N
70	hp5l5g04j6atv062558brujv	api::pet-type.pet-type.update	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	2026-04-16 18:36:15.323	\N	\N	\N
71	k9oq618sgu1jtxbt3wqaovfj	api::pet-type.pet-type.delete	2026-04-16 18:36:15.321	2026-04-16 18:36:15.321	2026-04-16 18:36:15.323	\N	\N	\N
72	tgpjmj9jo7wf06sunww4zaje	api::customer.customer.birthdayByDate	2026-04-18 07:13:30.707	2026-04-18 07:13:30.707	2026-04-18 07:13:30.707	\N	\N	\N
76	vfvf204d2bkio65ybx0rq404	api::general-diary.general-diary.findOne	2026-04-23 00:51:19.494	2026-04-23 00:51:19.494	2026-04-23 00:51:19.495	\N	\N	\N
77	v6fitwikwwcg2ktjqczrv8fh	api::general-diary.general-diary.find	2026-04-23 00:51:19.494	2026-04-23 00:51:19.494	2026-04-23 00:51:19.495	\N	\N	\N
78	khw82iykv42lnf8q1d8a2mgu	api::general-diary.general-diary.create	2026-04-23 00:51:19.494	2026-04-23 00:51:19.494	2026-04-23 00:51:19.496	\N	\N	\N
79	pve1h7z6fes08ntfh4bnr611	api::general-diary.general-diary.update	2026-04-23 00:51:19.494	2026-04-23 00:51:19.494	2026-04-23 00:51:19.497	\N	\N	\N
83	u4ji9s9ycp3dl2b6w63wsulx	api::working-hr.working-hr.find	2026-04-29 22:36:28.579	2026-04-29 22:36:28.579	2026-04-29 22:36:28.58	\N	\N	\N
84	nnn2wu76sgbnnwr61qmjdaio	api::working-hr.working-hr.update	2026-04-29 22:36:28.579	2026-04-29 22:36:28.579	2026-04-29 22:36:28.584	\N	\N	\N
85	br46j126i0w3zrvkz1se8z7b	api::working-hr.working-hr.delete	2026-04-29 22:36:28.579	2026-04-29 22:36:28.579	2026-04-29 22:36:28.586	\N	\N	\N
90	j3cr66b67qpboaaf8x38zt4s	api::city.city.delete	2026-05-01 15:37:44.587	2026-05-01 15:37:44.587	2026-05-01 15:37:44.589	\N	\N	\N
93	ml4hwrtiznhtmdeyjhhx1qbe	api::city.city.find	2026-05-01 15:37:44.587	2026-05-01 15:37:44.587	2026-05-01 15:37:44.588	\N	\N	\N
89	ysi89rf6wtedv9sn554a0phf	api::city.city.create	2026-05-01 15:37:44.587	2026-05-01 15:37:44.587	2026-05-01 15:37:44.589	\N	\N	\N
91	r41csu3alvkw60ck8cjd11jr	api::city.city.update	2026-05-01 15:37:44.587	2026-05-01 15:37:44.587	2026-05-01 15:37:44.589	\N	\N	\N
92	w75rd2gzj1ss0lv9m1nwl932	api::city.city.findOne	2026-05-01 15:37:44.587	2026-05-01 15:37:44.587	2026-05-01 15:37:44.588	\N	\N	\N
94	b49ix9aumpvbv14zay96o0vn	api::shopping-category.shopping-category.find	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	\N	\N	\N
95	yoyllqoveq1wycr0yv9n3yzi	api::shopping-category.shopping-category.findOne	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	2026-05-01 21:17:00.974	\N	\N	\N
96	qcz07j2iraba7m8zuw301uat	api::shopping-category.shopping-category.create	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	2026-05-01 21:17:00.974	\N	\N	\N
97	kfmxkt4hn6i32puk4edz2e40	api::shopping-category.shopping-category.update	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	2026-05-01 21:17:00.974	\N	\N	\N
98	sxqh0l6w5mlsrrzdx1o5506v	api::shopping-category.shopping-category.delete	2026-05-01 21:17:00.973	2026-05-01 21:17:00.973	2026-05-01 21:17:00.974	\N	\N	\N
99	lff6es92qngt69598tfiiv8r	api::area.area.find	2026-05-04 23:18:16.881	2026-05-04 23:18:16.881	2026-05-04 23:18:16.889	\N	\N	\N
100	a8imrg5vo1ao3jgu22gftfbs	api::area.area.findOne	2026-05-04 23:18:16.882	2026-05-04 23:18:16.882	2026-05-04 23:18:16.889	\N	\N	\N
101	nx2394ch68snibs4j82ztdf3	api::area.area.create	2026-05-04 23:18:16.882	2026-05-04 23:18:16.882	2026-05-04 23:18:16.89	\N	\N	\N
102	cqrmpwv4pugskjka3lrjqvle	api::area.area.update	2026-05-04 23:18:16.882	2026-05-04 23:18:16.882	2026-05-04 23:18:16.89	\N	\N	\N
103	yd6j8brqfh345yvjmbanywaj	api::area.area.delete	2026-05-04 23:18:16.882	2026-05-04 23:18:16.882	2026-05-04 23:18:16.89	\N	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
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
67	69	3	18
68	68	3	18
69	70	3	18
70	71	3	18
71	67	3	18
72	72	3	19
76	76	3	20
77	77	3	20
78	78	3	20
79	79	3	21
83	84	3	22
84	83	3	23
85	85	3	23
89	90	3	24
91	89	3	24
90	93	3	24
92	92	3	24
93	91	3	24
94	95	3	25
95	94	3	25
96	96	3	26
97	98	3	27
98	97	3	27
99	99	3	28
100	102	3	28
101	101	3	28
102	100	3	29
103	103	3	29
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vexl7tsbxhbul6wcsgzihz77	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	270697f0b8070b6e11c1e5fb510f6045e28a055244bf286aa4c63883fe54592ad2eb29e7fb0f6dd2af9b3bbbccfdfc1e734d4c1cc429171d9ebae68fa6ea3013	v1:04175fd068048820ee72f3b4fa1d990d:128984bf1494fa13705ed9395f4bf184d42a6f9d3531cedf43b60c678eb88820bcf8f820b284dbaa837831bad75402b9d6a16e83af0a8a44bdad480b9e5e0e3731732113f0f49bcee6bb8abd660a85e8687e2bddfa7df784f8d2c015a9e67217673034bd77890e8c113cb3029b3dcf65c9c38c4dbd3b10c22c9396c23d1d5d975507c2d913cce960a3fcc6551153628a7d5231aeaead7638651f0dfdac1fbd861ddecd39ef3703597192c8426bc1fe06beac24bd01fbace953f134a4295821573b02671060ab7d0cf7ada87fe8a5b0e3018830aad00d5cd95fd19264cf37ca114e5e268fd33aed1678f7d9ee12ac7f7dccc1b5fe507c9cf24e2c7c205c0c5ea6:513843890c18bfe3fdd762398de5c8af	\N	\N	\N	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	\N	\N	\N
2	du8k956jtmflnwkimdxp1neb	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	ca1091a8da7c9f4c65f3566a2690aba1356fe0beefedd03e86c5dfcc4fd41abd8c291c25c56c015ad47eeb0c249601982ed0622e6d41767e5a47dfaa359c26b5	v1:1a587af3b902fdb323167a10b08ad1e5:46cd52581cf2f50fe659afb82aa1362f9946815460cc8ef8baaf035ebda5ffd218c6658b587b49b3068a274fcf22a7be426e00fb76ac1c0c059b0a8ee88e5c71109ed5e60ea2f2e63a2096dda1bed483c17efcde04da5767de7746603f678d9bfe4575f410a83a7bfa27679d4b2a2c2aa3cbb8b2ca09a289b21aa9bd9869a2fb915fbccb0a74757d2bf1e4bc7c944ecdafe7d1161f168d3c2b76dd55d6c9bc2764c2aa3097468e2549485ca5d5907b9ce51c322cd8ae1e783066669b60032b464a4f68ef14b447375ded05aa74a728ecc1c8f377448d9aefb3bd05a570f110f6c171fd12c2f36e75067c639d98e701dccc0db072760017cca7b0a2ef68db3bc1:8f66226084b82464cefd1b852bcabc95	\N	\N	\N	2026-02-22 10:52:18.938	2026-02-22 10:52:18.938	2026-02-22 10:52:18.939	\N	\N	\N
3	hu4w0irlefv6ywk5i7xihs7l	pet-shop		custom	033008267c902af428d843ca64bd8e9af1cdf9c4e6febfef67995c6cc02d31acc7542cf9126a9fac6b4d803318ac2a2659e5a5cc9a1c7c76015e8b23b53dccdb	v1:8ea1075f905b281fc5ab1062e17ec737:b8451661e386ce1adce54edf07bd0c2847192fdb6f5ff19e656f32b6f0093b2213c5cd12a00a0f7f8a5fc6cd5ea534311c681c5df45cf20dd27dd2384e398a7e77eea4a673ae44b45a1c8433c02172e7c44d4b496f57c9d1781296814312d8b7fe3da4e556c61a6f8637904d3c446ac8cd0f067d2e2aa9a1d9056d835e703bd15581678b74adb7a974806a437b2171cf3f66c79c41138d7df8be5aeb50d95c06c13cea27b460ee474278391010833386402167294bbe43ed3933ec1ca00ab22481ce2af0f7ee006de27bc0ab9cbdbc19ff1bda31e9abc1461f8653bf9c33a24753f8372c06cc22f0b55d91bc5a8213ae096972adec0878d47bfaa2a777a25772:4754e4f317be3869558e3ddbab552d06	2026-05-14 20:17:02.314	\N	\N	2026-02-22 11:10:29.251	2026-05-14 20:17:02.315	2026-02-22 11:10:29.251	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
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
3	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::area.area":{"kind":"collectionType","collectionName":"areas","info":{"singularName":"area","pluralName":"areas","displayName":"area"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"city":{"type":"relation","relation":"oneToOne","target":"api::city.city"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::area.area","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"areas"}}},"apiName":"area","globalId":"Area","uid":"api::area.area","modelType":"contentType","__schema__":{"collectionName":"areas","info":{"singularName":"area","pluralName":"areas","displayName":"area"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"city":{"type":"relation","relation":"oneToOne","target":"api::city.city"}},"kind":"collectionType"},"modelName":"area","actions":{},"lifecycles":{}},"api::breed.breed":{"kind":"collectionType","collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::breed.breed","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"breeds"}}},"apiName":"breed","globalId":"Breed","uid":"api::breed.breed","modelType":"contentType","__schema__":{"collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"breed","actions":{},"lifecycles":{}},"api::city.city":{"kind":"collectionType","collectionName":"cities","info":{"singularName":"city","pluralName":"cities","displayName":"city"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::city.city","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"cities"}}},"apiName":"city","globalId":"City","uid":"api::city.city","modelType":"contentType","__schema__":{"collectionName":"cities","info":{"singularName":"city","pluralName":"cities","displayName":"city"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"city","actions":{},"lifecycles":{}},"api::customer.customer":{"kind":"collectionType","collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customer.customer","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customers"}}},"apiName":"customer","globalId":"Customer","uid":"api::customer.customer","modelType":"contentType","__schema__":{"collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"}},"kind":"collectionType"},"modelName":"customer","actions":{},"lifecycles":{}},"api::customet-follow-up.customet-follow-up":{"kind":"collectionType","collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-follow-up.customet-follow-up","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_follow_ups"}}},"apiName":"customet-follow-up","globalId":"CustometFollowUp","uid":"api::customet-follow-up.customet-follow-up","modelType":"contentType","__schema__":{"collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"}},"kind":"collectionType"},"modelName":"customet-follow-up","actions":{},"lifecycles":{}},"api::customet-status.customet-status":{"kind":"collectionType","collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-status.customet-status","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_statuses"}}},"apiName":"customet-status","globalId":"CustometStatus","uid":"api::customet-status.customet-status","modelType":"contentType","__schema__":{"collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"}},"kind":"collectionType"},"modelName":"customet-status","actions":{},"lifecycles":{}},"api::follow-up-list.follow-up-list":{"kind":"collectionType","collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"follow_up_lists"}}},"apiName":"follow-up-list","globalId":"FollowUpList","uid":"api::follow-up-list.follow-up-list","modelType":"contentType","__schema__":{"collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"}},"kind":"collectionType"},"modelName":"follow-up-list","actions":{},"lifecycles":{}},"api::general-diary.general-diary":{"kind":"collectionType","collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::general-diary.general-diary","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"general_diaries"}}},"apiName":"general-diary","globalId":"GeneralDiary","uid":"api::general-diary.general-diary","modelType":"contentType","__schema__":{"collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"}},"kind":"collectionType"},"modelName":"general-diary","actions":{},"lifecycles":{}},"api::pet.pet":{"kind":"collectionType","collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","default":"Male","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pets"}}},"apiName":"pet","globalId":"Pet","uid":"api::pet.pet","modelType":"contentType","__schema__":{"collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","default":"Male","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"}},"kind":"collectionType"},"modelName":"pet","actions":{},"lifecycles":{}},"api::pet-type.pet-type":{"kind":"collectionType","collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet-type.pet-type","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pet_types"}}},"apiName":"pet-type","globalId":"PetType","uid":"api::pet-type.pet-type","modelType":"contentType","__schema__":{"collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"pet-type","actions":{},"lifecycles":{}},"api::shopping-category.shopping-category":{"kind":"collectionType","collectionName":"shopping_categories","info":{"singularName":"shopping-category","pluralName":"shopping-categories","displayName":"shoppingCategory"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"textColor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::shopping-category.shopping-category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"shopping_categories"}}},"apiName":"shopping-category","globalId":"ShoppingCategory","uid":"api::shopping-category.shopping-category","modelType":"contentType","__schema__":{"collectionName":"shopping_categories","info":{"singularName":"shopping-category","pluralName":"shopping-categories","displayName":"shoppingCategory"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"textColor":{"type":"string"}},"kind":"collectionType"},"modelName":"shopping-category","actions":{},"lifecycles":{}},"api::staff.staff":{"kind":"collectionType","collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::staff.staff","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"staffs"}}},"apiName":"staff","globalId":"Staff","uid":"api::staff.staff","modelType":"contentType","__schema__":{"collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"}},"kind":"collectionType"},"modelName":"staff","actions":{},"lifecycles":{}},"api::store.store":{"kind":"collectionType","collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::store.store","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stores"}}},"apiName":"store","globalId":"Store","uid":"api::store.store","modelType":"contentType","__schema__":{"collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"}},"kind":"collectionType"},"modelName":"store","actions":{},"lifecycles":{}},"api::working-hr.working-hr":{"kind":"singleType","collectionName":"working_hrs","info":{"singularName":"working-hr","pluralName":"working-hrs","displayName":"WorkingHr"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"inTime":{"type":"time","default":"08:00:00.000"},"outTime":{"type":"time","default":"19:00:00.000"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::working-hr.working-hr","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"working_hrs"}}},"apiName":"working-hr","globalId":"WorkingHr","uid":"api::working-hr.working-hr","modelType":"contentType","__schema__":{"collectionName":"working_hrs","info":{"singularName":"working-hr","pluralName":"working-hrs","displayName":"WorkingHr"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"inTime":{"type":"time","default":"08:00:00.000"},"outTime":{"type":"time","default":"19:00:00.000"}},"kind":"singleType"},"modelName":"working-hr","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
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
48	plugin_content_manager_configuration_content_types::api::staff.staff	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"phone","size":6},{"name":"name","size":6}],[{"name":"email","size":6},{"name":"password","size":6}],[{"name":"store","size":6}]],"list":["id","phone","name","email"]},"uid":"api::staff.staff"}	object	\N	\N
36	plugin_upload_metrics	{"weeklySchedule":"51 13 14 * * 4","lastWeeklyUpdate":1778748231291}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::customet-status.customet-status	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"borderColor":{"edit":{"label":"borderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"borderColor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","name","value"],"edit":[[{"name":"name","size":6},{"name":"value","size":6}],[{"name":"color","size":6},{"name":"textColor","size":6}],[{"name":"borderColor","size":6}]]},"uid":"api::customet-status.customet-status"}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::breed.breed	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}]]},"uid":"api::breed.breed"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::pet-type.pet-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","value","createdAt"],"edit":[[{"name":"Name","size":6},{"name":"value","size":6}]]},"uid":"api::pet-type.pet-type"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::pet.pet	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"birthDate":{"edit":{"label":"birthDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birthDate","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"pet_type":{"edit":{"label":"pet_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"pet_type","searchable":true,"sortable":true}},"breed":{"edit":{"label":"breed","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"breed","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","birthDate","gender"],"edit":[[{"name":"name","size":4},{"name":"birthDate","size":4},{"name":"gender","size":4}],[{"name":"breed","size":4},{"name":"pet_type","size":4}]]},"uid":"api::pet.pet"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::customer.customer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortOrder":"ASC","defaultSortBy":"mobileNumber"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mobileNumber":{"edit":{"label":"mobileNumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobileNumber","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"instagramId":{"edit":{"label":"instagramId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instagramId","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"area":{"edit":{"label":"area","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"area","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"zip":{"edit":{"label":"zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"Note":{"edit":{"label":"Note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Note","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"pets":{"edit":{"label":"pets","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"pets","searchable":false,"sortable":false}},"follow_up_lists":{"edit":{"label":"follow_up_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_up_lists","searchable":false,"sortable":false}},"customet_follow_up":{"edit":{"label":"customet_follow_up","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_up","searchable":true,"sortable":true}},"customet_status":{"edit":{"label":"customet_status","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"customet_status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"mobileNumber","size":4},{"name":"name","size":4},{"name":"email","size":4}],[{"name":"instagramId","size":4},{"name":"store","size":4}],[{"name":"area","size":4},{"name":"zip","size":4},{"name":"city","size":4}],[{"name":"address","size":6},{"name":"Note","size":6}],[{"name":"customet_status","size":4},{"name":"follow_up_lists","size":4},{"name":"customet_follow_up","size":4}],[{"name":"pets","size":6}]],"list":["createdBy","mobileNumber","name","email"]},"uid":"api::customer.customer"}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::follow-up-list.follow-up-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tillSequence","defaultSortBy":"tillSequence","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tillSequence":{"edit":{"label":"tillSequence","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tillSequence","searchable":true,"sortable":true}},"CustomerName":{"edit":{"label":"CustomerName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CustomerName","searchable":true,"sortable":true}},"billAmount":{"edit":{"label":"billAmount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billAmount","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"Notes":{"edit":{"label":"Notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Notes","searchable":true,"sortable":true}},"customet_follow_ups":{"edit":{"label":"customet_follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_ups","searchable":false,"sortable":false}},"billDate":{"edit":{"label":"billDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billDate","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"tillSequence","size":4},{"name":"CustomerName","size":4},{"name":"billAmount","size":4}],[{"name":"store","size":4},{"name":"customer","size":4},{"name":"billDate","size":4}],[{"name":"Notes","size":6},{"name":"customet_follow_ups","size":6}]],"list":["id","tillSequence","CustomerName","billAmount"]},"uid":"api::follow-up-list.follow-up-list"}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::general-diary.general-diary	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"Note":{"edit":{"label":"Note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Note","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","store","createdAt","updatedAt"],"edit":[[{"name":"store","size":6}],[{"name":"Note","size":12}]]},"uid":"api::general-diary.general-diary"}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::customet-follow-up.customet-follow-up	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"follow_ups":{"edit":{"label":"follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_ups","searchable":false,"sortable":false}},"staff":{"edit":{"label":"staff","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"staff","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"Count":{"edit":{"label":"Count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Count","searchable":true,"sortable":true}},"FollowUpDate":{"edit":{"label":"FollowUpDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FollowUpDate","searchable":true,"sortable":true}},"isFollowed":{"edit":{"label":"isFollowed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFollowed","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"customer","size":6},{"name":"follow_ups","size":6}],[{"name":"staff","size":6},{"name":"store","size":6},{"name":"Count","size":4},{"name":"isFollowed","size":4},{"name":"FollowUpDate","size":4}],[{"name":"note","size":12}]],"list":["id","customer","createdAt","follow_ups"]},"uid":"api::customet-follow-up.customet-follow-up"}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::store.store	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Location","defaultSortBy":"Location","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Location","Name","createdAt"],"edit":[[{"name":"Location","size":6},{"name":"Name","size":6}]]},"uid":"api::store.store"}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::working-hr.working-hr	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"inTime":{"edit":{"label":"inTime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inTime","searchable":true,"sortable":true}},"outTime":{"edit":{"label":"outTime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"outTime","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","inTime","outTime","createdAt"],"edit":[[{"name":"inTime","size":4},{"name":"outTime","size":4}]]},"uid":"api::working-hr.working-hr"}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::city.city	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}]]},"uid":"api::city.city"}	object	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::shopping-category.shopping-category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","textColor"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}],[{"name":"textColor","size":6}]]},"uid":"api::shopping-category.shopping-category"}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::area.area	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"city","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}],[{"name":"city","size":6}]]},"uid":"api::area.area"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
88	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"areas","indexes":[{"name":"areas_documents_idx","columns":["document_id","locale","published_at"]},{"name":"areas_created_by_id_fk","columns":["created_by_id"]},{"name":"areas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"areas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"areas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"breeds","indexes":[{"name":"breeds_documents_idx","columns":["document_id","locale","published_at"]},{"name":"breeds_created_by_id_fk","columns":["created_by_id"]},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"breeds_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"cities","indexes":[{"name":"cities_documents_idx","columns":["document_id","locale","published_at"]},{"name":"cities_created_by_id_fk","columns":["created_by_id"]},{"name":"cities_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"cities_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"cities_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customers","indexes":[{"name":"customers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customers_created_by_id_fk","columns":["created_by_id"]},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_follow_ups","indexes":[{"name":"customet_follow_ups_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"follow_up_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_followed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_statuses","indexes":[{"name":"customet_statuses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"follow_up_lists","indexes":[{"name":"follow_up_lists_documents_idx","columns":["document_id","locale","published_at"]},{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"till_sequence","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_amount","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"general_diaries","indexes":[{"name":"general_diaries_documents_idx","columns":["document_id","locale","published_at"]},{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"]},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pets","indexes":[{"name":"pets_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pets_created_by_id_fk","columns":["created_by_id"]},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pet_types","indexes":[{"name":"pet_types_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pet_types_created_by_id_fk","columns":["created_by_id"]},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pet_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"shopping_categories","indexes":[{"name":"shopping_categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"shopping_categories_created_by_id_fk","columns":["created_by_id"]},{"name":"shopping_categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"shopping_categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"shopping_categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"staffs","indexes":[{"name":"staffs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"staffs_created_by_id_fk","columns":["created_by_id"]},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"staffs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stores","indexes":[{"name":"stores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stores_created_by_id_fk","columns":["created_by_id"]},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"working_hrs","indexes":[{"name":"working_hrs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"working_hrs_created_by_id_fk","columns":["created_by_id"]},{"name":"working_hrs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"working_hrs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"working_hrs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"in_time","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"out_time","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"areas_city_lnk","indexes":[{"name":"areas_city_lnk_fk","columns":["area_id"]},{"name":"areas_city_lnk_ifk","columns":["city_id"]},{"name":"areas_city_lnk_uq","columns":["area_id","city_id"],"type":"unique"}],"foreignKeys":[{"name":"areas_city_lnk_fk","columns":["area_id"],"referencedColumns":["id"],"referencedTable":"areas","onDelete":"CASCADE"},{"name":"areas_city_lnk_ifk","columns":["city_id"],"referencedColumns":["id"],"referencedTable":"cities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"area_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"city_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_store_lnk","indexes":[{"name":"customers_store_lnk_fk","columns":["customer_id"]},{"name":"customers_store_lnk_ifk","columns":["store_id"]},{"name":"customers_store_lnk_uq","columns":["customer_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_store_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_pets_lnk","indexes":[{"name":"customers_pets_lnk_fk","columns":["customer_id"]},{"name":"customers_pets_lnk_ifk","columns":["pet_id"]},{"name":"customers_pets_lnk_uq","columns":["customer_id","pet_id"],"type":"unique"},{"name":"customers_pets_lnk_ofk","columns":["pet_ord"]}],"foreignKeys":[{"name":"customers_pets_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_pets_lnk_ifk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_customet_status_lnk","indexes":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"]},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"]},{"name":"customers_customet_status_lnk_uq","columns":["customer_id","customet_status_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"],"referencedColumns":["id"],"referencedTable":"customet_statuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_status_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_customer_lnk","indexes":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"]},{"name":"customet_follow_ups_customer_lnk_uq","columns":["customet_follow_up_id","customer_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_follow_ups_lnk","indexes":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"]},{"name":"customet_follow_ups_follow_ups_lnk_uq","columns":["customet_follow_up_id","follow_up_list_id"],"type":"unique"},{"name":"customet_follow_ups_follow_ups_lnk_ofk","columns":["follow_up_list_ord"]},{"name":"customet_follow_ups_follow_ups_lnk_oifk","columns":["customet_follow_up_ord"]}],"foreignKeys":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_follow_up_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_staff_lnk","indexes":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"]},{"name":"customet_follow_ups_staff_lnk_uq","columns":["customet_follow_up_id","staff_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_store_lnk","indexes":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"]},{"name":"customet_follow_ups_store_lnk_uq","columns":["customet_follow_up_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_store_lnk","indexes":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"]},{"name":"follow_up_lists_store_lnk_uq","columns":["follow_up_list_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_customer_lnk","indexes":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"]},{"name":"follow_up_lists_customer_lnk_uq","columns":["follow_up_list_id","customer_id"],"type":"unique"},{"name":"follow_up_lists_customer_lnk_oifk","columns":["follow_up_list_ord"]}],"foreignKeys":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"general_diaries_store_lnk","indexes":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"]},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"]},{"name":"general_diaries_store_lnk_uq","columns":["general_diary_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"],"referencedColumns":["id"],"referencedTable":"general_diaries","onDelete":"CASCADE"},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"general_diary_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_pet_type_lnk","indexes":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"]},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"]},{"name":"pets_pet_type_lnk_uq","columns":["pet_id","pet_type_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"],"referencedColumns":["id"],"referencedTable":"pet_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_breed_lnk","indexes":[{"name":"pets_breed_lnk_fk","columns":["pet_id"]},{"name":"pets_breed_lnk_ifk","columns":["breed_id"]},{"name":"pets_breed_lnk_uq","columns":["pet_id","breed_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_breed_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_breed_lnk_ifk","columns":["breed_id"],"referencedColumns":["id"],"referencedTable":"breeds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"breed_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"staffs_store_lnk","indexes":[{"name":"staffs_store_lnk_fk","columns":["staff_id"]},{"name":"staffs_store_lnk_ifk","columns":["store_id"]},{"name":"staffs_store_lnk_uq","columns":["staff_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"staffs_store_lnk_fk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"},{"name":"staffs_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-05-04 22:52:55.018	3fc3730105caf9e9d04b623ceea8a70c371cde4116d7db51649dd470477c5aea
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: postgres
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
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: postgres
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
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
84	p5ogybucf5uuwvfi2pqqvzaa	1	3dbd77aeb1da65933af2ca17fe5133bd	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-09 22:37:45.539	2026-05-09 19:55:10.169	active	session	2026-04-09 20:37:45.54	2026-04-09 20:37:45.54	2026-04-09 20:37:45.541	\N	\N	\N
86	i6a5h4pd1e4krkd00iye92o5	1	36befec82492e777564e8a6ca3100cbc	f63c4daad2beae62797623f44ee67e1d	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-14 19:33:19.007	2026-05-14 17:33:19.007	rotated	session	2026-04-14 17:33:19.007	2026-04-14 19:01:38.835	2026-04-14 17:33:19.009	\N	\N	\N
88	ozv5rra1gsyty56dpzhrdv5m	1	289049fa398487437b0720bfd1ad861c	59be283fe4354f93511e4faa9fba77e4	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 17:42:59.908	2026-05-15 15:42:59.908	rotated	session	2026-04-15 15:42:59.908	2026-04-15 16:13:19.725	2026-04-15 15:42:59.908	\N	\N	\N
90	kjgfom0spm28dicw4k7ojuhm	1	8c2044a2fae12adac6e3fdbd670b0123	08a0435e45f873c734e85b775465f692	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 18:47:31.151	2026-05-15 15:42:59.908	rotated	session	2026-04-15 16:47:31.151	2026-04-15 17:17:45.601	2026-04-15 16:47:31.156	\N	\N	\N
92	xtqwj5qo7il41kxjh96xz76y	1	5dac7c258dbef0fc0af8301909ed82ed	7c53c0c85ac2318f22a9834d6ef459a0	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 19:51:08.772	2026-05-15 15:42:59.908	rotated	session	2026-04-15 17:51:08.772	2026-04-15 18:27:15.9	2026-04-15 17:51:08.772	\N	\N	\N
94	a9fsnld1lvn23exlsd2tptim	1	1b3eeefe93c8ee2c32454e48b19a108b	f6976a77dfb98bded5f1f37504aedd43	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 17:46:48.469	2026-05-16 15:46:48.469	rotated	session	2026-04-16 15:46:48.469	2026-04-16 16:31:33.76	2026-04-16 15:46:48.473	\N	\N	\N
97	g9eapyrsh6ddi2xsfqlbf17x	1	d07ef8b95c5bf9bae3250ada31989a4b	e1c3bf9c7d15d265a287cdfffac473ba	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 19:59:49.516	2026-05-16 15:46:48.469	rotated	session	2026-04-16 17:59:49.516	2026-04-16 18:35:45.346	2026-04-16 17:59:49.519	\N	\N	\N
99	n8zhdyrahryd1xaqmsww7z07	1	4903c54827180d60e4dbca81c4b33c29	6c96901e81d3ee46dbb3f463aa7fa875	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 21:08:38.247	2026-05-16 15:46:48.469	rotated	session	2026-04-16 19:08:38.248	2026-04-16 19:42:02.964	2026-04-16 19:08:38.248	\N	\N	\N
101	f386fse7y2mps0uittn5np6r	1	5de9e4cfc8ddd635a3f47412780f3366	8d3850a8058cb01e743f241e66af5b2d	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 22:40:17.57	2026-05-16 15:46:48.469	rotated	session	2026-04-16 20:40:17.57	2026-04-16 22:18:47.812	2026-04-16 20:40:17.571	\N	\N	\N
103	bv8xrmpcp05ovowisndo24c2	1	4bf621a25a6a8abe6da26461d77aa846	4187566d92186dcbb8b9f5acded45e40	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 08:43:48.528	2026-05-18 06:43:48.528	rotated	session	2026-04-18 06:43:48.528	2026-04-18 08:34:06.678	2026-04-18 06:43:48.533	\N	\N	\N
25	f7sd0drpsnn0egxcn4j9c9s0	2	2519ccf383685ac1763e2050881e21c9	\N	cb873acd-1a97-49f6-b9ce-3428f042ed93	admin	2026-03-18 23:06:44.445	2026-04-17 21:06:44.445	active	session	2026-03-18 21:06:44.445	2026-03-18 21:06:44.445	2026-03-18 21:06:44.445	\N	\N	\N
105	wwtkke226n72ypvexuo79w3j	1	e07f73ffd6f8c8980986dbc008158bf9	43a5ec10781de43b4af78e725e8489d4	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 11:04:46.171	2026-05-18 06:43:48.528	rotated	session	2026-04-18 09:04:46.172	2026-04-18 09:40:12.014	2026-04-18 09:04:46.172	\N	\N	\N
107	dw74zwld2jftfv5t5tuy5c7h	1	e1835f70dec077091eaae063ae3a69ae	6a692191c6feebf2773066d11013bc20	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 12:11:00.748	2026-05-18 06:43:48.528	rotated	session	2026-04-18 10:11:00.748	2026-04-18 10:48:34.528	2026-04-18 10:11:00.748	\N	\N	\N
109	yljsla9ukku3l0sk79jsmyd8	1	1ff025e5ce6712f57462f0ddae29b040	afdb4cc61504e91a5010d14042ef0b75	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 14:43:05.031	2026-05-18 06:43:48.528	rotated	session	2026-04-18 12:43:05.031	2026-04-18 13:18:43.913	2026-04-18 12:43:05.033	\N	\N	\N
111	c0juqlv355w713neh4vgvwcv	1	9635e017011fe7f55ae3b8d41bf9908d	781949311e742ec659d7ed71cffbf7fa	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 15:51:41.017	2026-05-18 06:43:48.528	rotated	session	2026-04-18 13:51:41.017	2026-04-18 14:23:41.755	2026-04-18 13:51:41.018	\N	\N	\N
113	cyqqxnxckyezjwu8353ndh76	1	63ef93182c20aa517f68b7d4b40165b5	6c68890cadb04f9cb33b87b69e647e05	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 16:55:19.96	2026-05-18 06:43:48.528	rotated	session	2026-04-18 14:55:19.961	2026-04-18 14:55:20.382	2026-04-18 14:55:19.962	\N	\N	\N
114	xo68ak1j3hqcpteltz1qeq4r	1	6c68890cadb04f9cb33b87b69e647e05	4f8cc030023509d566d92d1c70471ca5	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 16:55:20.373	2026-05-18 06:43:48.528	rotated	session	2026-04-18 14:55:20.373	2026-04-18 15:27:34.114	2026-04-18 14:55:20.373	\N	\N	\N
116	at5n4hzipoiwu0c377ll9v8x	1	801f1bebe82620fca454c193f8f135f2	63a931e64905db9bf330ac3d6e7d6ab6	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 18:05:32.049	2026-05-18 06:43:48.528	rotated	session	2026-04-18 16:05:32.049	2026-04-18 16:47:00.199	2026-04-18 16:05:32.051	\N	\N	\N
83	x967g7x0ux0bkz3kpnl6kxzv	1	07e29c05578e39a921a47214c3c568b0	3dbd77aeb1da65933af2ca17fe5133bd	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-09 21:55:10.169	2026-05-09 19:55:10.169	rotated	session	2026-04-09 19:55:10.169	2026-04-09 20:37:45.546	2026-04-09 19:55:10.169	\N	\N	\N
85	och2686imhbilrfq5jz5j0j4	1	aa6c2e5538e0842e37f95c4420b8a45a	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-12 16:11:11.323	2026-05-12 14:11:11.323	active	session	2026-04-12 14:11:11.323	2026-04-12 14:11:11.323	2026-04-12 14:11:11.326	\N	\N	\N
87	zvjn647gsxlg6m21hegpkday	1	f63c4daad2beae62797623f44ee67e1d	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-14 21:01:38.83	2026-05-14 17:33:19.007	active	session	2026-04-14 19:01:38.83	2026-04-14 19:01:38.83	2026-04-14 19:01:38.831	\N	\N	\N
89	mu65a8uwk95toigrf0131ev3	1	59be283fe4354f93511e4faa9fba77e4	8c2044a2fae12adac6e3fdbd670b0123	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 18:13:19.704	2026-05-15 15:42:59.908	rotated	session	2026-04-15 16:13:19.705	2026-04-15 16:47:31.171	2026-04-15 16:13:19.711	\N	\N	\N
91	nc2kmlx08s3htpdjpn6f98ac	1	08a0435e45f873c734e85b775465f692	5dac7c258dbef0fc0af8301909ed82ed	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 19:17:45.595	2026-05-15 15:42:59.908	rotated	session	2026-04-15 17:17:45.595	2026-04-15 17:51:08.778	2026-04-15 17:17:45.596	\N	\N	\N
93	ec4koyl2o3fg2m56kpvdb2r9	1	7c53c0c85ac2318f22a9834d6ef459a0	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-15 20:27:15.895	2026-05-15 15:42:59.908	active	session	2026-04-15 18:27:15.895	2026-04-15 18:27:15.895	2026-04-15 18:27:15.895	\N	\N	\N
95	keso9jckldkupbsxkj93wes0	1	f6976a77dfb98bded5f1f37504aedd43	df9a4826c6614f2f7cd4626d6e0b3e36	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 18:31:33.736	2026-05-16 15:46:48.469	rotated	session	2026-04-16 16:31:33.736	2026-04-16 16:31:34.006	2026-04-16 16:31:33.741	\N	\N	\N
96	rpsgdboqyf8rh63qniipvi52	1	df9a4826c6614f2f7cd4626d6e0b3e36	d07ef8b95c5bf9bae3250ada31989a4b	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 18:31:34	2026-05-16 15:46:48.469	rotated	session	2026-04-16 16:31:34	2026-04-16 17:59:49.531	2026-04-16 16:31:34.001	\N	\N	\N
98	cz4scyieqppuwv3mkjbttj7k	1	e1c3bf9c7d15d265a287cdfffac473ba	4903c54827180d60e4dbca81c4b33c29	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 20:35:45.341	2026-05-16 15:46:48.469	rotated	session	2026-04-16 18:35:45.341	2026-04-16 19:08:38.251	2026-04-16 18:35:45.342	\N	\N	\N
100	he7u0spiu573k6eoiqlkcyo2	1	6c96901e81d3ee46dbb3f463aa7fa875	5de9e4cfc8ddd635a3f47412780f3366	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-16 21:42:02.958	2026-05-16 15:46:48.469	rotated	session	2026-04-16 19:42:02.958	2026-04-16 20:40:17.575	2026-04-16 19:42:02.958	\N	\N	\N
102	vio7ctryvon2wh2svtibr533	1	8d3850a8058cb01e743f241e66af5b2d	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-17 00:18:47.806	2026-05-16 15:46:48.469	active	session	2026-04-16 22:18:47.806	2026-04-16 22:18:47.806	2026-04-16 22:18:47.806	\N	\N	\N
104	k4o2crgunmyf0hu3rhairfsz	1	4187566d92186dcbb8b9f5acded45e40	e07f73ffd6f8c8980986dbc008158bf9	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 10:34:06.669	2026-05-18 06:43:48.528	rotated	session	2026-04-18 08:34:06.669	2026-04-18 09:04:46.176	2026-04-18 08:34:06.669	\N	\N	\N
106	zqunm6ukise2oxgcavnimm56	1	43a5ec10781de43b4af78e725e8489d4	e1835f70dec077091eaae063ae3a69ae	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 11:40:12.005	2026-05-18 06:43:48.528	rotated	session	2026-04-18 09:40:12.005	2026-04-18 10:11:00.76	2026-04-18 09:40:12.006	\N	\N	\N
108	uzhgbbr0um9r0tvrp8s3m6rz	1	6a692191c6feebf2773066d11013bc20	1ff025e5ce6712f57462f0ddae29b040	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 12:48:34.518	2026-05-18 06:43:48.528	rotated	session	2026-04-18 10:48:34.518	2026-04-18 12:43:05.039	2026-04-18 10:48:34.52	\N	\N	\N
110	stxtrjq9v34bot465pkvulw0	1	afdb4cc61504e91a5010d14042ef0b75	9635e017011fe7f55ae3b8d41bf9908d	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 15:18:43.906	2026-05-18 06:43:48.528	rotated	session	2026-04-18 13:18:43.906	2026-04-18 13:51:41.025	2026-04-18 13:18:43.906	\N	\N	\N
112	p6occn3ocanxj5a3fpd2hofz	1	781949311e742ec659d7ed71cffbf7fa	63ef93182c20aa517f68b7d4b40165b5	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 16:23:41.749	2026-05-18 06:43:48.528	rotated	session	2026-04-18 14:23:41.749	2026-04-18 14:55:19.966	2026-04-18 14:23:41.749	\N	\N	\N
115	bqpikrnem0a33j5zb85ph8i0	1	4f8cc030023509d566d92d1c70471ca5	801f1bebe82620fca454c193f8f135f2	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 17:27:34.096	2026-05-18 06:43:48.528	rotated	session	2026-04-18 15:27:34.096	2026-04-18 16:05:32.059	2026-04-18 15:27:34.1	\N	\N	\N
117	obtj88mv8io55jof4ibsk1rs	1	63a931e64905db9bf330ac3d6e7d6ab6	\N	38d2f7a5-edf3-4a28-8848-9e16d09b274e	admin	2026-04-18 18:47:00.187	2026-05-18 06:43:48.528	active	session	2026-04-18 16:47:00.188	2026-04-18 16:47:00.188	2026-04-18 16:47:00.188	\N	\N	\N
150	wegr82ftqipdjy7xxpnaikqc	1	2172b7dd6cdcfdfcb2c43bd8ed5071d0	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-19 12:28:29.041	2026-05-19 10:28:29.041	active	session	2026-04-19 10:28:29.041	2026-04-19 10:28:29.041	2026-04-19 10:28:29.042	\N	\N	\N
152	paqbp1tbjijn7m320gwgvg94	1	b002ad1aa0d6450d3324055ea37e0417	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-20 23:53:51.681	2026-05-20 21:22:32.478	active	session	2026-04-20 21:53:51.686	2026-04-20 21:53:51.686	2026-04-20 21:53:51.714	\N	\N	\N
151	ioue8obpy1vg5ottmkk1cp3z	1	c1dac5dfe6bb46769e6762964e958671	b002ad1aa0d6450d3324055ea37e0417	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-20 23:22:32.478	2026-05-20 21:22:32.478	rotated	session	2026-04-20 21:22:32.479	2026-04-20 21:53:51.834	2026-04-20 21:22:32.483	\N	\N	\N
153	c9oz9dj5fxc9id2bna1bm6hb	1	75853578d245c96c0875dc3c888d6374	22509f743dc56e7c4888a1627bea32d2	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 07:39:38.49	2026-05-21 05:39:38.49	rotated	session	2026-04-21 05:39:38.49	2026-04-21 06:09:39.764	2026-04-21 05:39:38.496	\N	\N	\N
154	hqbmb0nach2s5plsj6jp3cyw	1	22509f743dc56e7c4888a1627bea32d2	13fa94c49ac334d54d4260e7f75fbfed	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 08:09:39.754	2026-05-21 05:39:38.49	rotated	session	2026-04-21 06:09:39.756	2026-04-21 06:43:33.82	2026-04-21 06:09:39.757	\N	\N	\N
155	urqd17xqbfoilpdywh2o6aea	1	13fa94c49ac334d54d4260e7f75fbfed	1702d8ed209f803eb0cf84f6dcaae341	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 08:43:33.803	2026-05-21 05:39:38.49	rotated	session	2026-04-21 06:43:33.804	2026-04-21 07:14:12.678	2026-04-21 06:43:33.809	\N	\N	\N
156	m78gd9hqmsbm0f953kbe2804	1	1702d8ed209f803eb0cf84f6dcaae341	0988db70cc3168da85fa119c5d58dd3d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 09:14:12.663	2026-05-21 05:39:38.49	rotated	session	2026-04-21 07:14:12.664	2026-04-21 07:45:10.34	2026-04-21 07:14:12.664	\N	\N	\N
157	xbvkvw24u3hrgzo1qzrvujpw	1	0988db70cc3168da85fa119c5d58dd3d	5f64763284cd1434418bd8b1446c9c66	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 09:45:10.163	2026-05-21 05:39:38.49	rotated	session	2026-04-21 07:45:10.177	2026-04-21 08:41:23.82	2026-04-21 07:45:10.209	\N	\N	\N
159	fygq4n9rs87ldq7lz7ugutuh	1	bfcd4f1e85696babc2ed1a8196f02f02	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 11:23:20.778	2026-05-21 05:39:38.49	active	session	2026-04-21 09:23:20.781	2026-04-21 09:23:20.781	2026-04-21 09:23:20.789	\N	\N	\N
158	fwhnzss9riol38v0sdwqn3tx	1	5f64763284cd1434418bd8b1446c9c66	bfcd4f1e85696babc2ed1a8196f02f02	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 10:41:23.79	2026-05-21 05:39:38.49	rotated	session	2026-04-21 08:41:23.79	2026-04-21 09:23:20.835	2026-04-21 08:41:23.796	\N	\N	\N
160	jbxmz0uyt6395svv7t5a7nc0	1	966b2e7e5abb61287c8113bdaad4c440	c8625f67c2d29eb7c66a1cd2e19c097e	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 19:59:28.636	2026-05-21 17:59:28.636	rotated	session	2026-04-21 17:59:28.644	2026-04-21 18:47:11.8	2026-04-21 17:59:28.684	\N	\N	\N
161	jeig9i6zq4ar17myfx6w8tg2	1	c8625f67c2d29eb7c66a1cd2e19c097e	2bf225cf734918d1240dfc6a9a985d7e	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 20:47:11.582	2026-05-21 17:59:28.636	rotated	session	2026-04-21 18:47:11.594	2026-04-21 19:20:49.606	2026-04-21 18:47:11.628	\N	\N	\N
162	eregy08uvkwdg350uxk5yq8a	1	2bf225cf734918d1240dfc6a9a985d7e	80b504aaf87acd030a4f6288778b8532	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 21:20:49.56	2026-05-21 17:59:28.636	rotated	session	2026-04-21 19:20:49.562	2026-04-21 19:52:00.147	2026-04-21 19:20:49.566	\N	\N	\N
163	t62n1xs3rtbk1gooxlzj742l	1	80b504aaf87acd030a4f6288778b8532	9514c69acf6118d2ace67f4dc69b345a	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 21:52:00.099	2026-05-21 17:59:28.636	rotated	session	2026-04-21 19:52:00.1	2026-04-21 21:30:20.191	2026-04-21 19:52:00.101	\N	\N	\N
164	kk078qecv5vob8y81kwqz44e	1	9514c69acf6118d2ace67f4dc69b345a	c2ad930cc466a9649f51a9b05adae011	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-21 23:30:19.718	2026-05-21 17:59:28.636	rotated	session	2026-04-21 21:30:19.744	2026-04-21 22:06:51.361	2026-04-21 21:30:19.776	\N	\N	\N
166	u0unegi2oirxkbx02yiq3ejc	1	112a8bdd2d0d1c63fee39341e3a21a11	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-22 00:37:48.118	2026-05-21 17:59:28.636	active	session	2026-04-21 22:37:48.123	2026-04-21 22:37:48.123	2026-04-21 22:37:48.128	\N	\N	\N
165	yx2h73i9h31r7huoncrpmiif	1	c2ad930cc466a9649f51a9b05adae011	112a8bdd2d0d1c63fee39341e3a21a11	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-22 00:06:51.281	2026-05-21 17:59:28.636	rotated	session	2026-04-21 22:06:51.284	2026-04-21 22:37:48.19	2026-04-21 22:06:51.301	\N	\N	\N
167	txuho26vpt6c21ai4ba8u52o	1	5158ac2e2d7ce36c9e0f537ff9b9f7ef	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-23 00:14:52.733	2026-05-22 22:14:52.733	active	session	2026-04-22 22:14:52.734	2026-04-22 22:14:52.734	2026-04-22 22:14:52.736	\N	\N	\N
168	iiluej1n17sa0di2yl2jhuhy	1	cef60111a1bd516c483bd3d23fdb06ef	b4b6c233df97dc8d6996615e5a80df04	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-23 02:39:27.029	2026-05-23 00:39:27.029	rotated	session	2026-04-23 00:39:27.029	2026-04-23 01:27:17.533	2026-04-23 00:39:27.033	\N	\N	\N
170	szg7qix36echnz5ic90ayg89	1	6448816486795dd220132c1dfec6135e	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-23 03:58:13.08	2026-05-23 00:39:27.029	active	session	2026-04-23 01:58:13.08	2026-04-23 01:58:13.08	2026-04-23 01:58:13.085	\N	\N	\N
169	m6dkuoeywx0p196ldnzdx7cb	1	b4b6c233df97dc8d6996615e5a80df04	6448816486795dd220132c1dfec6135e	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-23 03:27:17.465	2026-05-23 00:39:27.029	rotated	session	2026-04-23 01:27:17.467	2026-04-23 01:58:13.124	2026-04-23 01:27:17.473	\N	\N	\N
171	ge53me58qdmoarpc0hfuz27a	1	a88204aee0b201349c8d0d1dda3a1d26	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-24 00:45:03.75	2026-05-23 22:45:03.75	active	session	2026-04-23 22:45:03.75	2026-04-23 22:45:03.75	2026-04-23 22:45:03.752	\N	\N	\N
173	oz20451puchlo77j3hxurgh8	1	82a797b14f3a4a93299fa59d1a5b69fb	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-25 20:44:53.825	2026-05-25 18:13:57.436	active	session	2026-04-25 18:44:53.826	2026-04-25 18:44:53.826	2026-04-25 18:44:53.827	\N	\N	\N
172	gnvejyrg4oe8648xni7teipf	1	1b4b4b17afd6cdee600923e32b2e748d	82a797b14f3a4a93299fa59d1a5b69fb	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-25 20:13:57.436	2026-05-25 18:13:57.436	rotated	session	2026-04-25 18:13:57.437	2026-04-25 18:44:53.839	2026-04-25 18:13:57.444	\N	\N	\N
174	qosr4gw911joyuujilbe8c5j	1	f302bc736252f768d98d2b6600df6d79	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-25 22:43:27.885	2026-05-25 20:43:27.885	active	session	2026-04-25 20:43:27.89	2026-04-25 20:43:27.89	2026-04-25 20:43:27.904	\N	\N	\N
175	pr7z2dcj03tgc7g7m81c0641	1	f8077a5ef2021e6927b6f8d64cc53a9b	81f45ebe0269609c7c1a9311a5edb699	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-25 22:43:28.149	2026-05-25 20:43:28.149	rotated	session	2026-04-25 20:43:28.149	2026-04-25 22:34:09.496	2026-04-25 20:43:28.15	\N	\N	\N
176	mxnlp0v0wvojtly9v498bz0s	1	81f45ebe0269609c7c1a9311a5edb699	93a784b55383106e744dc14b035917c3	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 00:34:09.364	2026-05-25 20:43:28.149	rotated	session	2026-04-25 22:34:09.372	2026-04-25 23:12:13.872	2026-04-25 22:34:09.397	\N	\N	\N
177	lhn2m2q27pg5lqhkpmx8mrf1	1	93a784b55383106e744dc14b035917c3	d98dcb46faf8fdf61f11540705f0c492	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 01:12:13.834	2026-05-25 20:43:28.149	rotated	session	2026-04-25 23:12:13.834	2026-04-25 23:45:28.642	2026-04-25 23:12:13.838	\N	\N	\N
178	svdyv6lwv4w0v4hnqxm2bfpn	1	d98dcb46faf8fdf61f11540705f0c492	882f99e8381fb8bd28831004bfb7567c	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 01:45:28.628	2026-05-25 20:43:28.149	rotated	session	2026-04-25 23:45:28.629	2026-04-26 00:15:46.145	2026-04-25 23:45:28.63	\N	\N	\N
179	zmsknlq984yqnnh1fwkaxi24	1	882f99e8381fb8bd28831004bfb7567c	9df8de56970f8815cd629e83b0381045	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 02:15:46.131	2026-05-25 20:43:28.149	rotated	session	2026-04-26 00:15:46.132	2026-04-26 01:03:40.849	2026-04-26 00:15:46.135	\N	\N	\N
180	gjtez43qixvjaoovse4oxp1b	1	9df8de56970f8815cd629e83b0381045	d50a2673a98b87c19007f9ffe15b3c3a	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 03:03:40.773	2026-05-25 20:43:28.149	rotated	session	2026-04-26 01:03:40.775	2026-04-26 01:39:14.255	2026-04-26 01:03:40.783	\N	\N	\N
181	ikvq91sr2kxxua3kliyhcxqj	1	d50a2673a98b87c19007f9ffe15b3c3a	002cbc2a8558e248927d02c8070a0ad4	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 03:39:14.147	2026-05-25 20:43:28.149	rotated	session	2026-04-26 01:39:14.158	2026-04-26 01:39:14.709	2026-04-26 01:39:14.179	\N	\N	\N
183	ol2ey050zzp2ag8fmjiwlf3o	1	e8c205b55d589c3e82f19c0a45597431	b8850b35d5e5411aa875c159a735b968	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 04:09:56.245	2026-05-25 20:43:28.149	rotated	session	2026-04-26 02:09:56.248	2026-04-26 03:07:27.581	2026-04-26 02:09:56.281	\N	\N	\N
182	dyzawlckw6oixx8phithd4o4	1	002cbc2a8558e248927d02c8070a0ad4	e8c205b55d589c3e82f19c0a45597431	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 03:39:14.544	2026-05-25 20:43:28.149	rotated	session	2026-04-26 01:39:14.544	2026-04-26 02:09:56.506	2026-04-26 01:39:14.546	\N	\N	\N
184	dsmzoghl1841olrra4oou7f1	1	b8850b35d5e5411aa875c159a735b968	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 05:07:27.509	2026-05-25 20:43:28.149	active	session	2026-04-26 03:07:27.51	2026-04-26 03:07:27.51	2026-04-26 03:07:27.517	\N	\N	\N
185	may0mb61y2bmsuyfzd5x1vv9	1	c376a50621f7350fcc587f3f563dfaf9	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 12:23:37.311	2026-05-26 10:23:37.311	active	session	2026-04-26 10:23:37.312	2026-04-26 10:23:37.312	2026-04-26 10:23:37.315	\N	\N	\N
186	j14voykyojwd07gwcocw93yu	1	ab0b56c6230b372564752b496a0c16c6	1f79f1cef80b8f5d0713c5460dfadd18	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 16:02:46.638	2026-05-26 14:02:46.638	rotated	session	2026-04-26 14:02:46.638	2026-04-26 14:32:50.196	2026-04-26 14:02:46.647	\N	\N	\N
188	i4g726qz9r85dne6odnbzqj0	1	90f7a2aa89453f12c85beb92f38754d7	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 17:15:10.292	2026-05-26 14:02:46.638	active	session	2026-04-26 15:15:10.296	2026-04-26 15:15:10.296	2026-04-26 15:15:10.306	\N	\N	\N
187	am59l7v50b5o5dzctn235ztx	1	1f79f1cef80b8f5d0713c5460dfadd18	90f7a2aa89453f12c85beb92f38754d7	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-26 16:32:50.152	2026-05-26 14:02:46.638	rotated	session	2026-04-26 14:32:50.152	2026-04-26 15:15:10.352	2026-04-26 14:32:50.173	\N	\N	\N
189	kvcvtwzu93vv62m6j94f7zeg	1	f761f4cffc8ac77a12fc6f17ac1282e4	d854e36377a288fb62f799b8d6e88f0d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-27 01:57:50.388	2026-05-26 23:57:50.388	rotated	session	2026-04-26 23:57:50.392	2026-04-27 00:47:55.715	2026-04-26 23:57:50.419	\N	\N	\N
190	dld34qnhxesvtjskjup147eg	1	d854e36377a288fb62f799b8d6e88f0d	a92617f30fce8c142ff3ab8fa3d65cd4	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-27 02:47:55.539	2026-05-26 23:57:50.388	rotated	session	2026-04-27 00:47:55.559	2026-04-27 01:37:24.303	2026-04-27 00:47:55.613	\N	\N	\N
191	x36mo5w11fbrut35pv36y8fy	1	a92617f30fce8c142ff3ab8fa3d65cd4	2f8874632b6a64e3091f3d57228f8c69	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-27 03:37:24.294	2026-05-26 23:57:50.388	rotated	session	2026-04-27 01:37:24.295	2026-04-27 02:07:24.551	2026-04-27 01:37:24.295	\N	\N	\N
193	msqkt2lkh9qp529xasfksbkp	1	e8cf312580152129ace136b7de4b8f21	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-27 05:02:56.657	2026-05-26 23:57:50.388	active	session	2026-04-27 03:02:56.661	2026-04-27 03:02:56.661	2026-04-27 03:02:56.67	\N	\N	\N
192	xuztem97utmtuh8g8ws9pjey	1	2f8874632b6a64e3091f3d57228f8c69	e8cf312580152129ace136b7de4b8f21	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-27 04:07:24.538	2026-05-26 23:57:50.388	rotated	session	2026-04-27 02:07:24.539	2026-04-27 03:02:56.714	2026-04-27 02:07:24.54	\N	\N	\N
194	fb6s794lujn1m6b184mbodx8	1	5a5fdc721165c02c17b374a6c1a33592	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-28 10:01:46.399	2026-05-28 08:01:46.399	active	session	2026-04-28 08:01:46.4	2026-04-28 08:01:46.4	2026-04-28 08:01:46.404	\N	\N	\N
195	iop36drf2rakwixthh7mw1pf	1	67f3d7a46844f01d52d190837f0e83a6	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-28 11:24:58.794	2026-05-28 09:24:58.794	active	session	2026-04-28 09:24:58.796	2026-04-28 09:24:58.796	2026-04-28 09:24:58.802	\N	\N	\N
196	kx633f4gctz8ormrb8ybpr2k	1	8fbff5ba8aed7cb2036ed6bd272c5b12	48a8dabc486d7972f9e348bde5afc2b2	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 00:20:48.942	2026-05-29 22:20:48.942	rotated	session	2026-04-29 22:20:48.942	2026-04-29 22:51:41.961	2026-04-29 22:20:48.948	\N	\N	\N
197	ijmre0uzq5zrdbd00h1nhpzz	1	48a8dabc486d7972f9e348bde5afc2b2	3b75a1380f8365aba5f9e7ea566d64da	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 00:51:41.937	2026-05-29 22:20:48.942	rotated	session	2026-04-29 22:51:41.938	2026-04-30 00:08:11.768	2026-04-29 22:51:41.939	\N	\N	\N
199	zctg8ppvyqvpapn7s12ddfrm	1	c6c697fad24ffe9258cce5080e8ebecd	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 02:48:43.157	2026-05-29 22:20:48.942	active	session	2026-04-30 00:48:43.16	2026-04-30 00:48:43.16	2026-04-30 00:48:43.17	\N	\N	\N
198	dvldzromnl5zkeopo1utxp4b	1	3b75a1380f8365aba5f9e7ea566d64da	c6c697fad24ffe9258cce5080e8ebecd	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 02:08:11.698	2026-05-29 22:20:48.942	rotated	session	2026-04-30 00:08:11.7	2026-04-30 00:48:43.192	2026-04-30 00:08:11.713	\N	\N	\N
200	kpz6b79ulr085u9fnomxaeja	1	c8fb0f5aa6b3b5777db6b3b7fdea04e3	b49b474e758556c383c4ef0aa002cc1f	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 09:44:27.784	2026-05-30 07:44:27.784	rotated	session	2026-04-30 07:44:27.784	2026-04-30 08:39:16.698	2026-04-30 07:44:27.787	\N	\N	\N
202	nahvfeh9r9ysphxgfe0a60c2	1	9e10051c6f5fed069355e293e7063857	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 11:39:59.137	2026-05-30 07:44:27.784	active	session	2026-04-30 09:39:59.138	2026-04-30 09:39:59.138	2026-04-30 09:39:59.143	\N	\N	\N
201	savao79zkdidou9n656yd8jw	1	b49b474e758556c383c4ef0aa002cc1f	9e10051c6f5fed069355e293e7063857	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-04-30 10:39:16.615	2026-05-30 07:44:27.784	rotated	session	2026-04-30 08:39:16.617	2026-04-30 09:39:59.162	2026-04-30 08:39:16.625	\N	\N	\N
203	uxeq690ev7w8zaim2swqli8d	1	2c61c41e057e72f4ce48bf69aa8a93ab	f7dc41ea7fda202df3ba68e1037dfb33	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 14:49:20.697	2026-05-31 12:49:20.697	rotated	session	2026-05-01 12:49:20.697	2026-05-01 14:45:22.34	2026-05-01 12:49:20.708	\N	\N	\N
204	qxz8ycy2hpud09cz1v1iv4mx	1	f7dc41ea7fda202df3ba68e1037dfb33	db9cf38ba2ab3aa6d2eeb3427a69013b	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 16:45:22.283	2026-05-31 12:49:20.697	rotated	session	2026-05-01 14:45:22.289	2026-05-01 15:17:09.548	2026-05-01 14:45:22.292	\N	\N	\N
205	dful37aklfvckl9arjse8k1m	1	db9cf38ba2ab3aa6d2eeb3427a69013b	9c391f182255f0c361583b45bcbd3fad	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 17:17:09.519	2026-05-31 12:49:20.697	rotated	session	2026-05-01 15:17:09.52	2026-05-01 16:22:52.035	2026-05-01 15:17:09.525	\N	\N	\N
206	wl6h2ji6bndb3am6v1bgibo3	1	9c391f182255f0c361583b45bcbd3fad	51c742b530cff20d5f0ab44d9e3dc181	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 18:22:51.916	2026-05-31 12:49:20.697	rotated	session	2026-05-01 16:22:51.921	2026-05-01 16:56:32.419	2026-05-01 16:22:51.963	\N	\N	\N
207	rumwiilyyzd6vj1nz8wqf6c0	1	51c742b530cff20d5f0ab44d9e3dc181	7eab8ec904c0663ff3a9fb31df74289f	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 18:56:32.371	2026-05-31 12:49:20.697	rotated	session	2026-05-01 16:56:32.373	2026-05-01 17:49:30.716	2026-05-01 16:56:32.385	\N	\N	\N
208	o1gqepvor480lsxpw7uwk6s7	1	7eab8ec904c0663ff3a9fb31df74289f	3e5a707928d46b2f9abceb6fca4b2622	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 19:49:30.65	2026-05-31 12:49:20.697	rotated	session	2026-05-01 17:49:30.651	2026-05-01 18:49:53.477	2026-05-01 17:49:30.654	\N	\N	\N
209	y5viduf6zrpfwdtku8zayl9i	1	3e5a707928d46b2f9abceb6fca4b2622	e3e748ea16bf9ef3421b02bdbdf37ecf	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 20:49:53.227	2026-05-31 12:49:20.697	rotated	session	2026-05-01 18:49:53.255	2026-05-01 19:39:16.733	2026-05-01 18:49:53.318	\N	\N	\N
211	oq65hmdetm8z2gn6ys44r5cz	1	d63a6dfa9501f6f6510bfc50df3477da	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 22:58:26.503	2026-05-31 12:49:20.697	active	session	2026-05-01 20:58:26.513	2026-05-01 20:58:26.513	2026-05-01 20:58:26.518	\N	\N	\N
210	l0ilfa1z0hho0osbzdic6qah	1	e3e748ea16bf9ef3421b02bdbdf37ecf	d63a6dfa9501f6f6510bfc50df3477da	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-01 21:39:16.624	2026-05-31 12:49:20.697	rotated	session	2026-05-01 19:39:16.628	2026-05-01 20:58:26.57	2026-05-01 19:39:16.663	\N	\N	\N
212	myfnnv1y98v5iqc1jdzry8jf	1	9609b7b9326da9b4fc28ed8241f17882	aa0e3653d00753eb92945e7a02adaa34	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-02 01:29:27.156	2026-05-31 23:29:27.156	rotated	session	2026-05-01 23:29:27.157	2026-05-02 00:02:09.127	2026-05-01 23:29:27.166	\N	\N	\N
213	xn6rhs2i7sm7c13z7ho41jrn	1	aa0e3653d00753eb92945e7a02adaa34	fe22c975e5343d479695cf59298ba3b6	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-02 02:02:09	2026-05-31 23:29:27.156	rotated	session	2026-05-02 00:02:09.011	2026-05-02 01:02:41.118	2026-05-02 00:02:09.041	\N	\N	\N
215	xl6w3tet7soxxddhv0cdi9sv	1	8014d9d4f453c8ef060332c8de506935	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-02 03:33:26.853	2026-05-31 23:29:27.156	active	session	2026-05-02 01:33:26.854	2026-05-02 01:33:26.854	2026-05-02 01:33:26.857	\N	\N	\N
214	i15etaim66h06tg49gm50phl	1	fe22c975e5343d479695cf59298ba3b6	8014d9d4f453c8ef060332c8de506935	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-02 03:02:41.054	2026-05-31 23:29:27.156	rotated	session	2026-05-02 01:02:41.057	2026-05-02 01:33:26.891	2026-05-02 01:02:41.067	\N	\N	\N
217	mldailvwyd6qgag44o5q4qhp	1	b301ae7fab90d90daa0a6d84a17a4f4c	1a40890bd2d49f11dd019f901a84f00f	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-05 00:56:12.924	2026-06-03 22:26:11.956	rotated	session	2026-05-04 22:56:12.924	2026-05-05 00:04:03.9	2026-05-04 22:56:12.925	\N	\N	\N
216	ezonhfsdxeioqujtghcg20ih	1	e9058c969021a5ef5df7b539227cc5b5	b301ae7fab90d90daa0a6d84a17a4f4c	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-05 00:26:11.956	2026-06-03 22:26:11.956	rotated	session	2026-05-04 22:26:11.958	2026-05-04 22:56:12.938	2026-05-04 22:26:11.974	\N	\N	\N
219	dy23pta6r2rch7sjdrzq3rpo	1	5639f9329a550beefdcfa63b53f12d73	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-05 02:39:04.709	2026-06-03 22:26:11.956	active	session	2026-05-05 00:39:04.71	2026-05-05 00:39:04.71	2026-05-05 00:39:04.713	\N	\N	\N
218	oy82sc0c8oz4m6ae8bjryps2	1	1a40890bd2d49f11dd019f901a84f00f	5639f9329a550beefdcfa63b53f12d73	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-05 02:04:03.837	2026-06-03 22:26:11.956	rotated	session	2026-05-05 00:04:03.84	2026-05-05 00:39:04.747	2026-05-05 00:04:03.852	\N	\N	\N
220	xbu462mawu9xx9e7fa7ff5jj	1	2e83464776515520f7d87cd277fb7d73	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-06 14:56:22.162	2026-06-05 12:56:22.162	active	session	2026-05-06 12:56:22.163	2026-05-06 12:56:22.163	2026-05-06 12:56:22.167	\N	\N	\N
221	drjaluiv8te2t957spzskoxe	1	afefc5cda8e7f28bf0143605c1ab6e8d	621621412ddb65ba47aeb91b095f8e11	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 16:14:30.048	2026-06-13 14:14:30.048	rotated	session	2026-05-14 14:14:30.049	2026-05-14 15:24:21.633	2026-05-14 14:14:30.051	\N	\N	\N
222	lxlobrlvdw6aowui72g90888	1	621621412ddb65ba47aeb91b095f8e11	1fa38f32f5f422056f777c15872ed0a7	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 17:24:21.474	2026-06-13 14:14:30.048	rotated	session	2026-05-14 15:24:21.487	2026-05-14 15:57:15.837	2026-05-14 15:24:21.518	\N	\N	\N
223	dhsm4spewwx6i9zqz16h0y87	1	1fa38f32f5f422056f777c15872ed0a7	30269f34952171ef86f7fa4f34ed69f2	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 17:57:15.508	2026-06-13 14:14:30.048	rotated	session	2026-05-14 15:57:15.523	2026-05-14 16:45:29.728	2026-05-14 15:57:15.633	\N	\N	\N
224	apxmve5bmxwp3rtlax0q26zi	1	30269f34952171ef86f7fa4f34ed69f2	6d7b5345bc80aacd1a4c1f536b425b7c	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 18:45:29.584	2026-06-13 14:14:30.048	rotated	session	2026-05-14 16:45:29.588	2026-05-14 18:40:28.836	2026-05-14 16:45:29.604	\N	\N	\N
225	coizgakpst82xte51w1yfts6	1	6d7b5345bc80aacd1a4c1f536b425b7c	15b756daf8539cab9e3111e45463c39b	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 20:40:28.587	2026-06-13 14:14:30.048	rotated	session	2026-05-14 18:40:28.604	2026-05-14 19:18:10.357	2026-05-14 18:40:28.666	\N	\N	\N
227	b7ya5oqnv2cuuekozhderbfl	1	744b827d0752dc5262ad5542065f1805	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 22:16:34.295	2026-06-13 14:14:30.048	active	session	2026-05-14 20:16:34.305	2026-05-14 20:16:34.305	2026-05-14 20:16:34.324	\N	\N	\N
226	kd3hc4h3wq694dkv11ox6eg8	1	15b756daf8539cab9e3111e45463c39b	744b827d0752dc5262ad5542065f1805	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 21:18:10.335	2026-06-13 14:14:30.048	rotated	session	2026-05-14 19:18:10.336	2026-05-14 20:16:34.37	2026-05-14 19:18:10.34	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
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
46	yxcodjut4el2hnugynyscrjc	api::pet-type.pet-type.find	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	\N	\N	\N
47	ihfz6dk3b3o2uwyrdfhlbn2f	api::pet-type.pet-type.create	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	\N	\N	\N
48	im35fzptpxoso8j4fnl0pxho	api::pet-type.pet-type.findOne	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	\N	\N	\N
49	j7vzj8vu45mozx3p8zpo7yts	api::pet-type.pet-type.update	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	\N	\N	\N
50	m76idj2tpc9by9ym5q1jirdv	api::pet-type.pet-type.delete	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	2026-04-16 18:36:02.694	\N	\N	\N
51	d2vvy3n2jn0vxz8d3ig7bin8	api::customer.customer.birthdayByDate	2026-04-18 07:12:42.074	2026-04-18 07:12:42.074	2026-04-18 07:12:42.074	\N	\N	\N
52	nuib36wcw4wryl1tcshdm85j	api::customer.customer.update	2026-04-18 07:12:42.074	2026-04-18 07:12:42.074	2026-04-18 07:12:42.075	\N	\N	\N
53	qxob68xohmlzmtn2hc4vzwjf	api::customer.customer.delete	2026-04-18 07:12:42.074	2026-04-18 07:12:42.074	2026-04-18 07:12:42.075	\N	\N	\N
54	x6n9u54gc80yehyiot8bwxbe	api::working-hr.working-hr.find	2026-04-29 22:35:49.442	2026-04-29 22:35:49.442	2026-04-29 22:35:49.443	\N	\N	\N
55	w4bqw3oost7uya216i6ufjq8	api::working-hr.working-hr.find	2026-04-29 22:45:03.136	2026-04-29 22:45:03.136	2026-04-29 22:45:03.137	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
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
46	47	2	10
47	49	2	10
48	46	2	10
49	48	2	10
50	50	2	10
51	51	2	11
52	52	2	11
53	53	2	11
54	54	2	12
55	55	1	3
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	ox2fvqcncsu876dpwsmp5p5x	Public	Default role given to unauthenticated user.	public	2026-02-22 10:52:17.411	2026-04-29 22:35:49.427	2026-02-22 10:52:17.411	\N	\N	\N
1	ffxgos932gjemyhi1l3b2kfd	Authenticated	Default role given to authenticated user.	authenticated	2026-02-22 10:52:17.407	2026-04-29 22:45:03.128	2026-02-22 10:52:17.407	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Data for Name: working_hrs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.working_hrs (id, document_id, in_time, out_time, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zt3ymo9kvwli074ia9lkicjr	12:00:00	19:00:00	2026-04-29 23:10:48.593	2026-05-06 12:56:55.367	\N	1	1	\N
36	zt3ymo9kvwli074ia9lkicjr	12:00:00	19:00:00	2026-04-29 23:10:48.593	2026-05-06 12:56:55.367	2026-05-06 12:56:55.391	1	1	\N
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 509, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 509, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 4, true);


--
-- Name: areas_city_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_city_lnk_id_seq', 14, true);


--
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_id_seq', 15, true);


--
-- Name: breeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.breeds_id_seq', 56, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 10, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: customers_customet_status_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customet_status_lnk_id_seq', 24331, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1833, true);


--
-- Name: customers_pets_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_pets_lnk_id_seq', 280, true);


--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_store_lnk_id_seq', 1895, true);


--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_customer_lnk_id_seq', 1847, true);


--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_follow_ups_lnk_id_seq', 1467, true);


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_id_seq', 1238, true);


--
-- Name: customet_follow_ups_staff_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_staff_lnk_id_seq', 111, true);


--
-- Name: customet_follow_ups_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_store_lnk_id_seq', 1177, true);


--
-- Name: customet_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_statuses_id_seq', 35, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 1, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_customer_lnk_id_seq', 1884, true);


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_id_seq', 1183, true);


--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_store_lnk_id_seq', 1183, true);


--
-- Name: general_diaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.general_diaries_id_seq', 25, true);


--
-- Name: general_diaries_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.general_diaries_store_lnk_id_seq', 25, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: pet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pet_types_id_seq', 10, true);


--
-- Name: pets_breed_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_breed_lnk_id_seq', 255, true);


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_id_seq', 218, true);


--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_pet_type_lnk_id_seq', 237, true);


--
-- Name: shopping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopping_categories_id_seq', 19, true);


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_id_seq', 34, true);


--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_store_lnk_id_seq', 42, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_id_seq', 10, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 103, true);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 103, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 3, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 65, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 88, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 8, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 8, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 227, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 55, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 55, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: working_hrs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.working_hrs_id_seq', 36, true);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: areas_city_lnk areas_city_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas_city_lnk
    ADD CONSTRAINT areas_city_lnk_pkey PRIMARY KEY (id);


--
-- Name: areas_city_lnk areas_city_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas_city_lnk
    ADD CONSTRAINT areas_city_lnk_uq UNIQUE (area_id, city_id);


--
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);


--
-- Name: breeds breeds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: customers_customet_status_lnk customers_customet_status_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customet_status_lnk
    ADD CONSTRAINT customers_customet_status_lnk_pkey PRIMARY KEY (id);


--
-- Name: customers_customet_status_lnk customers_customet_status_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customet_status_lnk
    ADD CONSTRAINT customers_customet_status_lnk_uq UNIQUE (customer_id, customet_status_id);


--
-- Name: customers_pets_lnk customers_pets_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_pets_lnk
    ADD CONSTRAINT customers_pets_lnk_pkey PRIMARY KEY (id);


--
-- Name: customers_pets_lnk customers_pets_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_pets_lnk
    ADD CONSTRAINT customers_pets_lnk_uq UNIQUE (customer_id, pet_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: customers_store_lnk customers_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: customers_store_lnk customers_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_uq UNIQUE (customer_id, store_id);


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_uq UNIQUE (customet_follow_up_id, customer_id);


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_uq UNIQUE (customet_follow_up_id, follow_up_list_id);


--
-- Name: customet_follow_ups customet_follow_ups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_staff_lnk customet_follow_ups_staff_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_staff_lnk
    ADD CONSTRAINT customet_follow_ups_staff_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_staff_lnk customet_follow_ups_staff_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_staff_lnk
    ADD CONSTRAINT customet_follow_ups_staff_lnk_uq UNIQUE (customet_follow_up_id, staff_id);


--
-- Name: customet_follow_ups_store_lnk customet_follow_ups_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_store_lnk
    ADD CONSTRAINT customet_follow_ups_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_store_lnk customet_follow_ups_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_store_lnk
    ADD CONSTRAINT customet_follow_ups_store_lnk_uq UNIQUE (customet_follow_up_id, store_id);


--
-- Name: customet_statuses customet_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_uq UNIQUE (follow_up_list_id, customer_id);


--
-- Name: follow_up_lists follow_up_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_uq UNIQUE (follow_up_list_id, store_id);


--
-- Name: general_diaries general_diaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries
    ADD CONSTRAINT general_diaries_pkey PRIMARY KEY (id);


--
-- Name: general_diaries_store_lnk general_diaries_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries_store_lnk
    ADD CONSTRAINT general_diaries_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: general_diaries_store_lnk general_diaries_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries_store_lnk
    ADD CONSTRAINT general_diaries_store_lnk_uq UNIQUE (general_diary_id, store_id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: pet_types pet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_pkey PRIMARY KEY (id);


--
-- Name: pets_breed_lnk pets_breed_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_pkey PRIMARY KEY (id);


--
-- Name: pets_breed_lnk pets_breed_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_uq UNIQUE (pet_id, breed_id);


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_pkey PRIMARY KEY (id);


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_uq UNIQUE (pet_id, pet_type_id);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- Name: shopping_categories shopping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_categories
    ADD CONSTRAINT shopping_categories_pkey PRIMARY KEY (id);


--
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: staffs_store_lnk staffs_store_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_pkey PRIMARY KEY (id);


--
-- Name: staffs_store_lnk staffs_store_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_uq UNIQUE (staff_id, store_id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: working_hrs working_hrs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.working_hrs
    ADD CONSTRAINT working_hrs_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: areas_city_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX areas_city_lnk_fk ON public.areas_city_lnk USING btree (area_id);


--
-- Name: areas_city_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX areas_city_lnk_ifk ON public.areas_city_lnk USING btree (city_id);


--
-- Name: areas_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX areas_created_by_id_fk ON public.areas USING btree (created_by_id);


--
-- Name: areas_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX areas_documents_idx ON public.areas USING btree (document_id, locale, published_at);


--
-- Name: areas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX areas_updated_by_id_fk ON public.areas USING btree (updated_by_id);


--
-- Name: breeds_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX breeds_created_by_id_fk ON public.breeds USING btree (created_by_id);


--
-- Name: breeds_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX breeds_documents_idx ON public.breeds USING btree (document_id, locale, published_at);


--
-- Name: breeds_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX breeds_updated_by_id_fk ON public.breeds USING btree (updated_by_id);


--
-- Name: cities_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cities_created_by_id_fk ON public.cities USING btree (created_by_id);


--
-- Name: cities_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cities_documents_idx ON public.cities USING btree (document_id, locale, published_at);


--
-- Name: cities_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cities_updated_by_id_fk ON public.cities USING btree (updated_by_id);


--
-- Name: customers_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_created_by_id_fk ON public.customers USING btree (created_by_id);


--
-- Name: customers_customet_status_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customet_status_lnk_fk ON public.customers_customet_status_lnk USING btree (customer_id);


--
-- Name: customers_customet_status_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_customet_status_lnk_ifk ON public.customers_customet_status_lnk USING btree (customet_status_id);


--
-- Name: customers_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_documents_idx ON public.customers USING btree (document_id, locale, published_at);


--
-- Name: customers_pets_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_pets_lnk_fk ON public.customers_pets_lnk USING btree (customer_id);


--
-- Name: customers_pets_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_pets_lnk_ifk ON public.customers_pets_lnk USING btree (pet_id);


--
-- Name: customers_pets_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_pets_lnk_ofk ON public.customers_pets_lnk USING btree (pet_ord);


--
-- Name: customers_store_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_store_lnk_fk ON public.customers_store_lnk USING btree (customer_id);


--
-- Name: customers_store_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_store_lnk_ifk ON public.customers_store_lnk USING btree (store_id);


--
-- Name: customers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customers_updated_by_id_fk ON public.customers USING btree (updated_by_id);


--
-- Name: customet_follow_ups_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_created_by_id_fk ON public.customet_follow_ups USING btree (created_by_id);


--
-- Name: customet_follow_ups_customer_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_customer_lnk_fk ON public.customet_follow_ups_customer_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_customer_lnk_ifk ON public.customet_follow_ups_customer_lnk USING btree (customer_id);


--
-- Name: customet_follow_ups_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_documents_idx ON public.customet_follow_ups USING btree (document_id, locale, published_at);


--
-- Name: customet_follow_ups_follow_ups_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_fk ON public.customet_follow_ups_follow_ups_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_follow_ups_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_ifk ON public.customet_follow_ups_follow_ups_lnk USING btree (follow_up_list_id);


--
-- Name: customet_follow_ups_follow_ups_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_ofk ON public.customet_follow_ups_follow_ups_lnk USING btree (follow_up_list_ord);


--
-- Name: customet_follow_ups_follow_ups_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_ups_lnk_oifk ON public.customet_follow_ups_follow_ups_lnk USING btree (customet_follow_up_ord);


--
-- Name: customet_follow_ups_staff_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_staff_lnk_fk ON public.customet_follow_ups_staff_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_staff_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_staff_lnk_ifk ON public.customet_follow_ups_staff_lnk USING btree (staff_id);


--
-- Name: customet_follow_ups_store_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_store_lnk_fk ON public.customet_follow_ups_store_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_store_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_store_lnk_ifk ON public.customet_follow_ups_store_lnk USING btree (store_id);


--
-- Name: customet_follow_ups_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_updated_by_id_fk ON public.customet_follow_ups USING btree (updated_by_id);


--
-- Name: customet_statuses_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_statuses_created_by_id_fk ON public.customet_statuses USING btree (created_by_id);


--
-- Name: customet_statuses_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_statuses_documents_idx ON public.customet_statuses USING btree (document_id, locale, published_at);


--
-- Name: customet_statuses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_statuses_updated_by_id_fk ON public.customet_statuses USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: follow_up_lists_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_created_by_id_fk ON public.follow_up_lists USING btree (created_by_id);


--
-- Name: follow_up_lists_customer_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_customer_lnk_fk ON public.follow_up_lists_customer_lnk USING btree (follow_up_list_id);


--
-- Name: follow_up_lists_customer_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_customer_lnk_ifk ON public.follow_up_lists_customer_lnk USING btree (customer_id);


--
-- Name: follow_up_lists_customer_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_customer_lnk_oifk ON public.follow_up_lists_customer_lnk USING btree (follow_up_list_ord);


--
-- Name: follow_up_lists_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_documents_idx ON public.follow_up_lists USING btree (document_id, locale, published_at);


--
-- Name: follow_up_lists_store_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_store_lnk_fk ON public.follow_up_lists_store_lnk USING btree (follow_up_list_id);


--
-- Name: follow_up_lists_store_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_store_lnk_ifk ON public.follow_up_lists_store_lnk USING btree (store_id);


--
-- Name: follow_up_lists_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_up_lists_updated_by_id_fk ON public.follow_up_lists USING btree (updated_by_id);


--
-- Name: general_diaries_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX general_diaries_created_by_id_fk ON public.general_diaries USING btree (created_by_id);


--
-- Name: general_diaries_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX general_diaries_documents_idx ON public.general_diaries USING btree (document_id, locale, published_at);


--
-- Name: general_diaries_store_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX general_diaries_store_lnk_fk ON public.general_diaries_store_lnk USING btree (general_diary_id);


--
-- Name: general_diaries_store_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX general_diaries_store_lnk_ifk ON public.general_diaries_store_lnk USING btree (store_id);


--
-- Name: general_diaries_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX general_diaries_updated_by_id_fk ON public.general_diaries USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: pet_types_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pet_types_created_by_id_fk ON public.pet_types USING btree (created_by_id);


--
-- Name: pet_types_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pet_types_documents_idx ON public.pet_types USING btree (document_id, locale, published_at);


--
-- Name: pet_types_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pet_types_updated_by_id_fk ON public.pet_types USING btree (updated_by_id);


--
-- Name: pets_breed_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_breed_lnk_fk ON public.pets_breed_lnk USING btree (pet_id);


--
-- Name: pets_breed_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_breed_lnk_ifk ON public.pets_breed_lnk USING btree (breed_id);


--
-- Name: pets_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_created_by_id_fk ON public.pets USING btree (created_by_id);


--
-- Name: pets_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_documents_idx ON public.pets USING btree (document_id, locale, published_at);


--
-- Name: pets_pet_type_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_pet_type_lnk_fk ON public.pets_pet_type_lnk USING btree (pet_id);


--
-- Name: pets_pet_type_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_pet_type_lnk_ifk ON public.pets_pet_type_lnk USING btree (pet_type_id);


--
-- Name: pets_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pets_updated_by_id_fk ON public.pets USING btree (updated_by_id);


--
-- Name: shopping_categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopping_categories_created_by_id_fk ON public.shopping_categories USING btree (created_by_id);


--
-- Name: shopping_categories_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopping_categories_documents_idx ON public.shopping_categories USING btree (document_id, locale, published_at);


--
-- Name: shopping_categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopping_categories_updated_by_id_fk ON public.shopping_categories USING btree (updated_by_id);


--
-- Name: staffs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX staffs_created_by_id_fk ON public.staffs USING btree (created_by_id);


--
-- Name: staffs_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX staffs_documents_idx ON public.staffs USING btree (document_id, locale, published_at);


--
-- Name: staffs_store_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX staffs_store_lnk_fk ON public.staffs_store_lnk USING btree (staff_id);


--
-- Name: staffs_store_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX staffs_store_lnk_ifk ON public.staffs_store_lnk USING btree (store_id);


--
-- Name: staffs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX staffs_updated_by_id_fk ON public.staffs USING btree (updated_by_id);


--
-- Name: stores_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stores_created_by_id_fk ON public.stores USING btree (created_by_id);


--
-- Name: stores_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stores_documents_idx ON public.stores USING btree (document_id, locale, published_at);


--
-- Name: stores_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stores_updated_by_id_fk ON public.stores USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: working_hrs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX working_hrs_created_by_id_fk ON public.working_hrs USING btree (created_by_id);


--
-- Name: working_hrs_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX working_hrs_documents_idx ON public.working_hrs USING btree (document_id, locale, published_at);


--
-- Name: working_hrs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX working_hrs_updated_by_id_fk ON public.working_hrs USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: areas_city_lnk areas_city_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas_city_lnk
    ADD CONSTRAINT areas_city_lnk_fk FOREIGN KEY (area_id) REFERENCES public.areas(id) ON DELETE CASCADE;


--
-- Name: areas_city_lnk areas_city_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas_city_lnk
    ADD CONSTRAINT areas_city_lnk_ifk FOREIGN KEY (city_id) REFERENCES public.cities(id) ON DELETE CASCADE;


--
-- Name: areas areas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: areas areas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: breeds breeds_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: breeds breeds_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: cities cities_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: cities cities_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customers customers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customers_customet_status_lnk customers_customet_status_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customet_status_lnk
    ADD CONSTRAINT customers_customet_status_lnk_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customers_customet_status_lnk customers_customet_status_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_customet_status_lnk
    ADD CONSTRAINT customers_customet_status_lnk_ifk FOREIGN KEY (customet_status_id) REFERENCES public.customet_statuses(id) ON DELETE CASCADE;


--
-- Name: customers_pets_lnk customers_pets_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_pets_lnk
    ADD CONSTRAINT customers_pets_lnk_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customers_pets_lnk customers_pets_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_pets_lnk
    ADD CONSTRAINT customers_pets_lnk_ifk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: customers_store_lnk customers_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customers_store_lnk customers_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers_store_lnk
    ADD CONSTRAINT customers_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: customers customers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_follow_ups customet_follow_ups_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_customer_lnk customet_follow_ups_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_customer_lnk
    ADD CONSTRAINT customet_follow_ups_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_follow_ups_lnk customet_follow_ups_follow_ups_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk
    ADD CONSTRAINT customet_follow_ups_follow_ups_lnk_ifk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_staff_lnk customet_follow_ups_staff_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_staff_lnk
    ADD CONSTRAINT customet_follow_ups_staff_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_staff_lnk customet_follow_ups_staff_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_staff_lnk
    ADD CONSTRAINT customet_follow_ups_staff_lnk_ifk FOREIGN KEY (staff_id) REFERENCES public.staffs(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_store_lnk customet_follow_ups_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_store_lnk
    ADD CONSTRAINT customet_follow_ups_store_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_store_lnk customet_follow_ups_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_store_lnk
    ADD CONSTRAINT customet_follow_ups_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups customet_follow_ups_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups
    ADD CONSTRAINT customet_follow_ups_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_statuses customet_statuses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: customet_statuses customet_statuses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_statuses
    ADD CONSTRAINT customet_statuses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: follow_up_lists follow_up_lists_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_fk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_customer_lnk follow_up_lists_customer_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_customer_lnk
    ADD CONSTRAINT follow_up_lists_customer_lnk_ifk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_fk FOREIGN KEY (follow_up_list_id) REFERENCES public.follow_up_lists(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists_store_lnk follow_up_lists_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists_store_lnk
    ADD CONSTRAINT follow_up_lists_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: follow_up_lists follow_up_lists_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_up_lists
    ADD CONSTRAINT follow_up_lists_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: general_diaries general_diaries_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries
    ADD CONSTRAINT general_diaries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: general_diaries_store_lnk general_diaries_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries_store_lnk
    ADD CONSTRAINT general_diaries_store_lnk_fk FOREIGN KEY (general_diary_id) REFERENCES public.general_diaries(id) ON DELETE CASCADE;


--
-- Name: general_diaries_store_lnk general_diaries_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries_store_lnk
    ADD CONSTRAINT general_diaries_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: general_diaries general_diaries_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.general_diaries
    ADD CONSTRAINT general_diaries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pet_types pet_types_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pet_types pet_types_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_types
    ADD CONSTRAINT pet_types_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pets_breed_lnk pets_breed_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_fk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pets_breed_lnk pets_breed_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_breed_lnk
    ADD CONSTRAINT pets_breed_lnk_ifk FOREIGN KEY (breed_id) REFERENCES public.breeds(id) ON DELETE CASCADE;


--
-- Name: pets pets_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_fk FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pets_pet_type_lnk pets_pet_type_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets_pet_type_lnk
    ADD CONSTRAINT pets_pet_type_lnk_ifk FOREIGN KEY (pet_type_id) REFERENCES public.pet_types(id) ON DELETE CASCADE;


--
-- Name: pets pets_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shopping_categories shopping_categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_categories
    ADD CONSTRAINT shopping_categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: shopping_categories shopping_categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopping_categories
    ADD CONSTRAINT shopping_categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: staffs staffs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: staffs_store_lnk staffs_store_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_fk FOREIGN KEY (staff_id) REFERENCES public.staffs(id) ON DELETE CASCADE;


--
-- Name: staffs_store_lnk staffs_store_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs_store_lnk
    ADD CONSTRAINT staffs_store_lnk_ifk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON DELETE CASCADE;


--
-- Name: staffs staffs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores stores_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stores stores_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: working_hrs working_hrs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.working_hrs
    ADD CONSTRAINT working_hrs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: working_hrs working_hrs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.working_hrs
    ADD CONSTRAINT working_hrs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict XGsCcYbg7y2DgAtmdWoCEBJBahVQuRpYNy4bv9w7rCJP3aBKKGtp8wSNKZHyVEL

