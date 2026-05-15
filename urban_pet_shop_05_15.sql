--
-- PostgreSQL database dump
--

\restrict Moa8yLPI9rfs9piIs5wqseoWeoPFg4HhHGrn36esJ3wee7ufmlk7Oyv4GtCEyKK

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
-- Name: customet_follow_ups_follow_status_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_follow_status_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    follow_status_id integer
);


ALTER TABLE public.customet_follow_ups_follow_status_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_follow_status_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_follow_status_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_follow_status_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_follow_status_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_follow_status_lnk_id_seq OWNED BY public.customet_follow_ups_follow_status_lnk.id;


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
-- Name: customet_follow_ups_shopping_category_lnk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customet_follow_ups_shopping_category_lnk (
    id integer NOT NULL,
    customet_follow_up_id integer,
    shopping_category_id integer
);


ALTER TABLE public.customet_follow_ups_shopping_category_lnk OWNER TO postgres;

--
-- Name: customet_follow_ups_shopping_category_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customet_follow_ups_shopping_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customet_follow_ups_shopping_category_lnk_id_seq OWNER TO postgres;

--
-- Name: customet_follow_ups_shopping_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customet_follow_ups_shopping_category_lnk_id_seq OWNED BY public.customet_follow_ups_shopping_category_lnk.id;


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
-- Name: follow_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow_statuses (
    id integer NOT NULL,
    document_id character varying(255),
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.follow_statuses OWNER TO postgres;

--
-- Name: follow_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.follow_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.follow_statuses_id_seq OWNER TO postgres;

--
-- Name: follow_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.follow_statuses_id_seq OWNED BY public.follow_statuses.id;


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
-- Name: customet_follow_ups_follow_status_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_status_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_follow_status_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_follow_ups_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_ups_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_follow_ups_lnk_id_seq'::regclass);


--
-- Name: customet_follow_ups_shopping_category_lnk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_shopping_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.customet_follow_ups_shopping_category_lnk_id_seq'::regclass);


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
-- Name: follow_statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_statuses ALTER COLUMN id SET DEFAULT nextval('public.follow_statuses_id_seq'::regclass);


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
510	cl4bf6pi1iirxhoi2j34up6k	plugin::content-manager.explorer.create	{}	api::follow-status.follow-status	{"fields": ["label"]}	[]	2026-05-15 13:33:44.865	2026-05-15 13:33:44.865	2026-05-15 13:33:44.867	\N	\N	\N
511	hop5ifrconsko5epyls8ylmm	plugin::content-manager.explorer.read	{}	api::follow-status.follow-status	{"fields": ["label"]}	[]	2026-05-15 13:33:44.915	2026-05-15 13:33:44.915	2026-05-15 13:33:44.916	\N	\N	\N
512	l0fmryei91z9ncnol0488rcy	plugin::content-manager.explorer.update	{}	api::follow-status.follow-status	{"fields": ["label"]}	[]	2026-05-15 13:33:44.923	2026-05-15 13:33:44.923	2026-05-15 13:33:44.923	\N	\N	\N
513	ulfbh2a3bzqkwxq7ttyt0h3h	plugin::content-manager.explorer.delete	{}	api::follow-status.follow-status	{}	[]	2026-05-15 13:33:44.93	2026-05-15 13:33:44.93	2026-05-15 13:33:44.93	\N	\N	\N
514	t1dedqusbwtyd9ccjqhp5ccv	plugin::content-manager.explorer.publish	{}	api::follow-status.follow-status	{}	[]	2026-05-15 13:33:44.939	2026-05-15 13:33:44.939	2026-05-15 13:33:44.939	\N	\N	\N
518	wl0eq1auaylnfr1lw6ll8ixv	plugin::content-manager.explorer.create	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "follow_status", "shopping_category", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-05-15 16:21:28.926	2026-05-15 16:21:28.926	2026-05-15 16:21:28.928	\N	\N	\N
519	er9inz4ljhrqtfgbw7lo0xat	plugin::content-manager.explorer.read	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "follow_status", "shopping_category", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-05-15 16:21:28.957	2026-05-15 16:21:28.957	2026-05-15 16:21:28.957	\N	\N	\N
520	dg5m43ikgsyd23sjqm8scx9z	plugin::content-manager.explorer.update	{}	api::customet-follow-up.customet-follow-up	{"fields": ["customer", "follow_ups", "staff", "store", "follow_status", "shopping_category", "Count", "FollowUpDate", "isFollowed", "note"]}	[]	2026-05-15 16:21:28.962	2026-05-15 16:21:28.962	2026-05-15 16:21:28.962	\N	\N	\N
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
510	510	1	277
511	511	1	278
512	512	1	279
513	513	1	280
514	514	1	281
518	518	1	282
519	519	1	283
520	520	1	284
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
2530	iugzfs7tt58k9rbu9nvafqsu	2026-05-15 17:19:35.914	2026-05-15 17:22:08.65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428017371	manthan chauhan	\N
2529	s5l7wizbldorjavzr1ovp6o8	2026-05-15 17:19:35.031	2026-05-15 17:19:35.734	2026-05-15 17:19:35.763	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924248582	anushree	\N
2533	h5ft7ni8ase4go4yctud5ad6	2026-05-15 17:19:36.631	2026-05-15 17:22:08.668	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8469033477	VILAKSHI MODI	\N
2532	iugzfs7tt58k9rbu9nvafqsu	2026-05-15 17:19:35.914	2026-05-15 17:19:36.454	2026-05-15 17:19:36.47	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428017371	manthan chauhan	\N
2542	op021vlnx92hp7rdxk6kl02b	2026-05-15 17:19:38.581	2026-05-15 17:22:08.689	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824023455	APURVA BHAI	\N
2535	h5ft7ni8ase4go4yctud5ad6	2026-05-15 17:19:36.631	2026-05-15 17:19:37.109	2026-05-15 17:19:37.124	\N	\N	\N	\N	\N	\N	\N	\N	\N	8469033477	VILAKSHI MODI	\N
3095	lnlynshsv00c3iwv0dg3tsp1	2026-05-15 17:21:41.222	2026-05-15 17:21:41.713	2026-05-15 17:21:41.728	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998438045	c.b mehta	\N
2545	ggi93rk8szms0yhmvcxgi7z2	2026-05-15 17:19:39.199	2026-05-15 17:22:10.532	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724919595	deval	\N
2635	dlxd65pd383050cg4c81fnqq	2026-05-15 17:19:57.96	2026-05-15 17:22:12.483	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265702121	KAVITA	\N
2828	fmcq9ujws01vofglaiidlce3	2026-05-15 17:20:42.182	2026-05-15 17:20:42.591	2026-05-15 17:20:42.606	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974039464	sanjeev sir	\N
2575	qdcs5r8u1ppadn8nw4zvv83n	2026-05-15 17:19:45.498	2026-05-15 17:22:13.522	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825884867	hina shah	\N
2527	s5l7wizbldorjavzr1ovp6o8	2026-05-15 17:19:35.031	2026-05-15 17:22:08.636	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924248582	anushree	\N
2548	w5p7wej1l1y9y5tkspmdxbmw	2026-05-15 17:19:39.798	2026-05-15 17:22:08.71	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904099897	MAHESH HIRAGAR	\N
2544	op021vlnx92hp7rdxk6kl02b	2026-05-15 17:19:38.581	2026-05-15 17:19:39.031	2026-05-15 17:19:39.046	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824023455	APURVA BHAI	\N
2539	n06eiqqd9dwgwg2vtaslx4vv	2026-05-15 17:19:37.935	2026-05-15 17:22:13.15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841668	rahul shah	\N
2551	bnufzrslgoo8qhuj0xyg9nhk	2026-05-15 17:19:40.388	2026-05-15 17:22:08.726	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427124401	RAJAN PANDYA	\N
2554	j6ingodez1so6icgktv0lhhq	2026-05-15 17:19:40.99	2026-05-15 17:22:08.74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428219652	DINA BEN	\N
2557	htr3gesjhj5cof062zle66v8	2026-05-15 17:19:41.706	2026-05-15 17:22:08.753	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825300706	Surekha Pillai	\N
2563	x963e3o4bmckyxr8ldeb8wji	2026-05-15 17:19:42.908	2026-05-15 17:22:08.768	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200861365	SANI Vaghela	\N
2550	w5p7wej1l1y9y5tkspmdxbmw	2026-05-15 17:19:39.798	2026-05-15 17:19:40.238	2026-05-15 17:19:40.25	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904099897	MAHESH HIRAGAR	\N
2566	ztf4antvpn3gwiybwbubfeir	2026-05-15 17:19:43.562	2026-05-15 17:22:08.782	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537752510	shilp roy	\N
2569	ojpk6uoc9v9k3s88wx6xk9pd	2026-05-15 17:19:44.222	2026-05-15 17:22:08.795	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
2553	bnufzrslgoo8qhuj0xyg9nhk	2026-05-15 17:19:40.388	2026-05-15 17:19:40.816	2026-05-15 17:19:40.83	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427124401	RAJAN PANDYA	\N
2572	ftra493gvgdajlid7d2dlnjz	2026-05-15 17:19:44.859	2026-05-15 17:22:08.808	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6901037938	G KHIMPI-CAT	\N
2578	t0wcmmleuk83lw2d34ghzq1a	2026-05-15 17:19:46.127	2026-05-15 17:22:08.82	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779005950	ARJUN HARIBHAI PARMAR	\N
2556	j6ingodez1so6icgktv0lhhq	2026-05-15 17:19:40.99	2026-05-15 17:19:41.521	2026-05-15 17:19:41.536	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428219652	DINA BEN	\N
2581	ohai2atx7dct72zl4ijtuxwi	2026-05-15 17:19:46.792	2026-05-15 17:22:08.834	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320082452	KAVYA	\N
2584	zarzbgdlgui2kwllq1wgywhm	2026-05-15 17:19:47.428	2026-05-15 17:22:08.848	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173168681	ravina madan	\N
2559	htr3gesjhj5cof062zle66v8	2026-05-15 17:19:41.706	2026-05-15 17:19:42.18	2026-05-15 17:19:42.194	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825300706	Surekha Pillai	\N
2587	qv4qkiv5wy8oolnmxbw8jbmn	2026-05-15 17:19:48.059	2026-05-15 17:22:08.86	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662474255	prabhu bhai	\N
2826	fmcq9ujws01vofglaiidlce3	2026-05-15 17:20:42.182	2026-05-15 17:22:10.756	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974039464	sanjeev sir	\N
2590	svrbgor2aav6ybs9q3mrxrrp	2026-05-15 17:19:48.675	2026-05-15 17:22:08.873	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779044496	RUSHIKESH BHAI	\N
2593	bj2k25bppqr98d56b7lg7idr	2026-05-15 17:19:49.477	2026-05-15 17:22:08.886	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016147656	VAMA	\N
2596	xbz1goc1fxcqdf55qa404rk4	2026-05-15 17:19:50.09	2026-05-15 17:22:08.902	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898877517	kamlesh patel	\N
2565	x963e3o4bmckyxr8ldeb8wji	2026-05-15 17:19:42.908	2026-05-15 17:19:43.352	2026-05-15 17:19:43.37	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200861365	SANI Vaghela	\N
2599	zr7hitq22wz66gua55hf0nve	2026-05-15 17:19:50.701	2026-05-15 17:22:08.932	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
2602	sd5kwbdp4w0psq0fe0sat2yo	2026-05-15 17:19:51.283	2026-05-15 17:22:08.956	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9509464764	naveen kumar	\N
2568	ztf4antvpn3gwiybwbubfeir	2026-05-15 17:19:43.562	2026-05-15 17:19:44.032	2026-05-15 17:19:44.048	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537752510	shilp roy	\N
2605	tl58kts31txihzvmqt2xu5oc	2026-05-15 17:19:51.883	2026-05-15 17:22:08.99	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974982884	himmatsingh	\N
2608	n1ps4sou8c84j4o6awcxx5s2	2026-05-15 17:19:52.509	2026-05-15 17:22:09.027	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510980651	CHETANBHAI	\N
2571	ojpk6uoc9v9k3s88wx6xk9pd	2026-05-15 17:19:44.222	2026-05-15 17:19:44.682	2026-05-15 17:19:44.699	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
2611	bdasvn6rlr3gnrz2l3pj9lbf	2026-05-15 17:19:53.142	2026-05-15 17:22:09.07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879552785	SUHANI MAM	\N
2614	hylo40uudmjo08ocxrfbfhee	2026-05-15 17:19:53.749	2026-05-15 17:22:09.174	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
2574	ftra493gvgdajlid7d2dlnjz	2026-05-15 17:19:44.859	2026-05-15 17:19:45.318	2026-05-15 17:19:45.332	\N	\N	\N	\N	\N	\N	\N	\N	\N	6901037938	G KHIMPI-CAT	\N
2617	bz2qibb2575ztegeaegqf0ww	2026-05-15 17:19:54.364	2026-05-15 17:22:09.238	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874966964	yash oberoi	\N
2620	bkb4cxq4orbqq1i3t52tj929	2026-05-15 17:19:54.998	2026-05-15 17:22:09.349	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
2623	ecboh6fss1dn5wjdxcuvzn5n	2026-05-15 17:19:55.581	2026-05-15 17:22:09.375	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
2629	j3iqwpi3e5jgsb39a2cwi5k1	2026-05-15 17:19:56.763	2026-05-15 17:22:09.426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600062523	PALAK	\N
2580	t0wcmmleuk83lw2d34ghzq1a	2026-05-15 17:19:46.127	2026-05-15 17:19:46.612	2026-05-15 17:19:46.627	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779005950	ARJUN HARIBHAI PARMAR	\N
2536	a8rucjg3cre4gmftvvb43uag	2026-05-15 17:19:37.284	2026-05-15 17:22:09.849	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979846268	DIPAK	\N
2560	i6fbh94kpg645sdy6td23oki	2026-05-15 17:19:42.331	2026-05-15 17:22:10.381	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
2583	ohai2atx7dct72zl4ijtuxwi	2026-05-15 17:19:46.792	2026-05-15 17:19:47.259	2026-05-15 17:19:47.275	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320082452	KAVYA	\N
2586	zarzbgdlgui2kwllq1wgywhm	2026-05-15 17:19:47.428	2026-05-15 17:19:47.893	2026-05-15 17:19:47.908	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173168681	ravina madan	\N
2589	qv4qkiv5wy8oolnmxbw8jbmn	2026-05-15 17:19:48.059	2026-05-15 17:19:48.512	2026-05-15 17:19:48.526	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662474255	prabhu bhai	\N
2592	svrbgor2aav6ybs9q3mrxrrp	2026-05-15 17:19:48.675	2026-05-15 17:19:49.312	2026-05-15 17:19:49.327	\N	\N	\N	\N	\N	\N	\N	\N	\N	7779044496	RUSHIKESH BHAI	\N
2595	bj2k25bppqr98d56b7lg7idr	2026-05-15 17:19:49.477	2026-05-15 17:19:49.924	2026-05-15 17:19:49.94	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016147656	VAMA	\N
2598	xbz1goc1fxcqdf55qa404rk4	2026-05-15 17:19:50.09	2026-05-15 17:19:50.535	2026-05-15 17:19:50.55	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898877517	kamlesh patel	\N
2601	zr7hitq22wz66gua55hf0nve	2026-05-15 17:19:50.701	2026-05-15 17:19:51.131	2026-05-15 17:19:51.143	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
2604	sd5kwbdp4w0psq0fe0sat2yo	2026-05-15 17:19:51.283	2026-05-15 17:19:51.719	2026-05-15 17:19:51.734	\N	\N	\N	\N	\N	\N	\N	\N	\N	9509464764	naveen kumar	\N
2607	tl58kts31txihzvmqt2xu5oc	2026-05-15 17:19:51.883	2026-05-15 17:19:52.325	2026-05-15 17:19:52.338	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974982884	himmatsingh	\N
2610	n1ps4sou8c84j4o6awcxx5s2	2026-05-15 17:19:52.509	2026-05-15 17:19:52.986	2026-05-15 17:19:53.001	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510980651	CHETANBHAI	\N
2613	bdasvn6rlr3gnrz2l3pj9lbf	2026-05-15 17:19:53.142	2026-05-15 17:19:53.586	2026-05-15 17:19:53.599	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879552785	SUHANI MAM	\N
2616	hylo40uudmjo08ocxrfbfhee	2026-05-15 17:19:53.749	2026-05-15 17:19:54.193	2026-05-15 17:19:54.206	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
2619	bz2qibb2575ztegeaegqf0ww	2026-05-15 17:19:54.364	2026-05-15 17:19:54.832	2026-05-15 17:19:54.851	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874966964	yash oberoi	\N
2622	bkb4cxq4orbqq1i3t52tj929	2026-05-15 17:19:54.998	2026-05-15 17:19:55.422	2026-05-15 17:19:55.435	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
2625	ecboh6fss1dn5wjdxcuvzn5n	2026-05-15 17:19:55.581	2026-05-15 17:19:56.016	2026-05-15 17:19:56.03	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
2628	kfmtbnrb8r63g22s0miane67	2026-05-15 17:19:56.179	2026-05-15 17:19:56.605	2026-05-15 17:19:56.623	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925206149	Vandana Mohta	\N
2631	j3iqwpi3e5jgsb39a2cwi5k1	2026-05-15 17:19:56.763	2026-05-15 17:19:57.203	2026-05-15 17:19:57.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600062523	PALAK	\N
2634	qsy50t5p4g41db5rtooi7jur	2026-05-15 17:19:57.357	2026-05-15 17:19:57.805	2026-05-15 17:19:57.819	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510767676	irfan saikh	\N
2644	jm33fgezby1dp72l2ljo0m1y	2026-05-15 17:19:59.767	2026-05-15 17:22:09.506	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790755	sunita	\N
3097	q5zeoereawq96x8njsfip5ng	2026-05-15 17:21:42.529	2026-05-15 17:22:13.011	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016438776	jonshan	\N
2700	qd2w125g5lw7she8r27h9dqj	2026-05-15 17:20:12.068	2026-05-15 17:22:10.981	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
2647	yp93af5cainkzh2u990jcv7l	2026-05-15 17:20:00.371	2026-05-15 17:22:09.529	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726855444	Essence Productions	\N
2825	k3u3r5tn5idxpxawiwnoj090	2026-05-15 17:20:41.544	2026-05-15 17:20:42.018	2026-05-15 17:20:42.033	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408784223	ami shah	\N
2650	qtywl0efkex1ysujn65qmuiu	2026-05-15 17:20:00.953	2026-05-15 17:22:09.554	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662194423	dr.kapil ahuja	\N
2892	i59gavcbdailnn26iui2dtus	2026-05-15 17:20:56.78	2026-05-15 17:22:11.2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238077276	rajvee	\N
2653	mflr3hbu5up8ebck2y6hv0sw	2026-05-15 17:20:01.64	2026-05-15 17:22:09.577	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427711874	shefali	\N
2904	d4jm3cg9xim8hk7tirind129	2026-05-15 17:20:58.984	2026-05-15 17:22:11.952	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376144612	SANTOSHKUMAR SACHAN	\N
2727	xjx16ehmxr9b18izm13s7d3q	2026-05-15 17:20:17.609	2026-05-15 17:22:09.601	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558550025	SUHANI	\N
2662	w40ua80qxo7oqfms9e2ilotl	2026-05-15 17:20:03.564	2026-05-15 17:22:09.654	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978990350	JATIN GANDHI	\N
3096	na630ckqydqu1vuio0jylpne	2026-05-15 17:19:59.165	2026-05-15 17:21:42.369	2026-05-15 17:21:42.384	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828431	simba parikh	\N
2898	tkpw9u9j3ulppv7p6zy82i4d	2026-05-15 17:20:57.886	2026-05-15 17:22:11.221	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
2665	mvnccxwi6l1w6oueqly7i4fz	2026-05-15 17:20:04.203	2026-05-15 17:22:09.682	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698062908	KALPANA PATEL	\N
2894	i59gavcbdailnn26iui2dtus	2026-05-15 17:20:56.78	2026-05-15 17:20:57.176	2026-05-15 17:20:57.193	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238077276	rajvee	\N
2668	abi4w1i36jd4u6aortxwsebi	2026-05-15 17:20:04.838	2026-05-15 17:22:09.707	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586837007	paul sir	\N
2674	i1bscdd37akceq7rl2op4nyf	2026-05-15 17:20:06.011	2026-05-15 17:22:09.734	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586282259	dogs spa	\N
2626	kfmtbnrb8r63g22s0miane67	2026-05-15 17:19:56.179	2026-05-15 17:22:09.4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925206149	Vandana Mohta	\N
2901	w9iid1chisiu4eofegoagbcr	2026-05-15 17:20:58.432	2026-05-15 17:22:11.244	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537165120	mina	\N
2900	tkpw9u9j3ulppv7p6zy82i4d	2026-05-15 17:20:57.886	2026-05-15 17:20:58.281	2026-05-15 17:20:58.295	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
2680	w3wzv9tai9mkpqabb1eklhni	2026-05-15 17:20:07.192	2026-05-15 17:22:09.758	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099653533	NIKITA DESAI	\N
2632	qsy50t5p4g41db5rtooi7jur	2026-05-15 17:19:57.357	2026-05-15 17:22:09.452	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510767676	irfan saikh	\N
2903	w9iid1chisiu4eofegoagbcr	2026-05-15 17:20:58.432	2026-05-15 17:20:58.832	2026-05-15 17:20:58.846	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537165120	mina	\N
2683	xr7po5m1gczde73tpr4c2lwl	2026-05-15 17:20:07.743	2026-05-15 17:22:09.782	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574842899	devansh	\N
2659	uvu3kj7y65gi9esc3fov272d	2026-05-15 17:20:02.967	2026-05-15 17:22:09.805	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426384619	pooja mehata	\N
2691	a5g3dqryw9ctz05z3rjb6kw4	2026-05-15 17:20:10.345	2026-05-15 17:22:09.872	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8878799771	ankish	\N
2686	uvu3kj7y65gi9esc3fov272d	2026-05-15 17:20:02.967	2026-05-15 17:20:08.941	2026-05-15 17:20:08.957	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426384619	pooja mehata	\N
2689	xthc7empq5cmziq6wkfpp9tq	2026-05-15 17:20:09.099	2026-05-15 17:20:09.51	2026-05-15 17:20:09.524	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460721837	shilly shah	\N
2906	d4jm3cg9xim8hk7tirind129	2026-05-15 17:20:58.984	2026-05-15 17:20:59.379	2026-05-15 17:20:59.393	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376144612	SANTOSHKUMAR SACHAN	\N
2694	bun0na9y4lkjpelnbh2yaki0	2026-05-15 17:20:10.917	2026-05-15 17:22:09.894	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879615794	MAHESH PATEL	\N
2641	na630ckqydqu1vuio0jylpne	2026-05-15 17:19:59.165	2026-05-15 17:22:12.988	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828431	simba parikh	\N
2697	syuifpaksufj1bc6xp8z4i8o	2026-05-15 17:20:11.481	2026-05-15 17:22:09.917	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824022765	uma singh	\N
2677	z1f9fvuzdqwzflr1rslyrphj	2026-05-15 17:20:06.596	2026-05-15 17:22:11.663	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
2703	sw8a74pwbp9xr3c5n0cjp2bv	2026-05-15 17:20:12.62	2026-05-15 17:22:09.939	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9913999457	ZEEL SONI	\N
2638	tdl5lz156p8go9s15uaf5ylt	2026-05-15 17:19:58.564	2026-05-15 17:22:09.478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
2656	icjn8gcnqdiido1y1iehm01h	2026-05-15 17:20:02.319	2026-05-15 17:22:09.624	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825061176	mayur bhai	\N
2706	r2c1s6duxklvd4q0j1sfk3b1	2026-05-15 17:20:13.244	2026-05-15 17:22:09.961	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984549810	PAAVAN PANCHAL	\N
2709	uhpfxxoko4aem25q7ioh1gq5	2026-05-15 17:20:13.819	2026-05-15 17:22:09.985	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
2715	c0x5xapxopk02ihefxy7mxuv	2026-05-15 17:20:14.955	2026-05-15 17:22:10.007	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
2779	kd65f7li0onoblqdbq5jt8q2	2026-05-15 17:20:31	2026-05-15 17:22:10.138	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8959591489	mamta agrawal	\N
2782	jy3ohklz8ulgep4qohfcqah2	2026-05-15 17:20:31.57	2026-05-15 17:22:10.159	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825175191	PIYABEN	\N
2785	dgijiv4xgizctt8wdt830m49	2026-05-15 17:20:32.149	2026-05-15 17:22:10.182	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
2788	soaazbqz4ph65hckhpddpsfw	2026-05-15 17:20:32.722	2026-05-15 17:22:10.204	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879737299	RENUKA MAM	\N
2773	yghoqfztp3p0ujcorekjar63	2026-05-15 17:20:29.823	2026-05-15 17:22:10.512	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
2823	k3u3r5tn5idxpxawiwnoj090	2026-05-15 17:20:41.544	2026-05-15 17:22:10.735	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408784223	ami shah	\N
2712	xebx7me08qs3ea29tnub3y7u	2026-05-15 17:20:14.384	2026-05-15 17:22:11.54	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984500853	yash gaur	\N
2671	vks25otefv6lprnlank5cgy8	2026-05-15 17:20:05.424	2026-05-15 17:22:12.326	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723814430	BINDU ACHARYA	\N
2723	rj1s3b6mf2xp4nfo6t9xjk8e	2026-05-15 17:20:16.206	2026-05-15 17:20:16.676	2026-05-15 17:20:16.694	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984661368	VIDHI MAM	\N
2729	xjx16ehmxr9b18izm13s7d3q	2026-05-15 17:20:17.609	2026-05-15 17:20:18.187	2026-05-15 17:20:18.208	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558550025	SUHANI	\N
2732	id7q42892ggrr4rup18au24h	2026-05-15 17:20:18.463	2026-05-15 17:20:19.058	2026-05-15 17:20:19.077	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879577708	NIRAV CHOLERA	\N
2735	u6t5opxu3rl53jbpjnzyfvr1	2026-05-15 17:20:19.272	2026-05-15 17:20:19.882	2026-05-15 17:20:19.905	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376495441	BHAVNA	\N
2738	jwry0ajnutsy6e2kv19tel22	2026-05-15 17:20:20.096	2026-05-15 17:20:20.65	2026-05-15 17:20:20.668	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824098895	JAYANTA ROY	\N
2741	tj7b6wohbqpv9qr8wx15ul3c	2026-05-15 17:20:20.862	2026-05-15 17:20:21.48	2026-05-15 17:20:21.5	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173910155	MEET	\N
2744	nrnkirukdwfvq5sgts5hcwx2	2026-05-15 17:20:21.692	2026-05-15 17:20:22.302	2026-05-15 17:20:22.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328920659	print vision	\N
2747	o40dvpobavh1v9p2o6m8up3a	2026-05-15 17:20:22.517	2026-05-15 17:20:23.16	2026-05-15 17:20:23.18	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
2775	yghoqfztp3p0ujcorekjar63	2026-05-15 17:20:29.823	2026-05-15 17:20:30.229	2026-05-15 17:20:30.246	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
2791	ggi93rk8szms0yhmvcxgi7z2	2026-05-15 17:19:39.199	2026-05-15 17:20:33.966	2026-05-15 17:20:33.981	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724919595	deval	\N
2794	tllpd8x7bqqz9eisjlf6p7o6	2026-05-15 17:20:34.14	2026-05-15 17:20:34.722	2026-05-15 17:20:34.741	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327608033	shivani	\N
2797	m0rezvpieqg052zs74kj6eo5	2026-05-15 17:20:34.909	2026-05-15 17:20:35.448	2026-05-15 17:20:35.465	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328006629	malini	\N
2800	g7rldp54w5c0zmu32cw2umlo	2026-05-15 17:20:35.646	2026-05-15 17:20:36.212	2026-05-15 17:20:36.237	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824033130	MANISH PATEL	\N
2803	vpql1q3rxhrzapx4a7mbppm9	2026-05-15 17:20:36.4	2026-05-15 17:20:36.901	2026-05-15 17:20:36.92	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825017116	AKASH K SHAH	\N
2806	ohp9ztqdk7tizqvyymfz9gzi	2026-05-15 17:20:37.109	2026-05-15 17:20:37.617	2026-05-15 17:20:37.634	\N	\N	\N	\N	\N	\N	\N	\N	\N	8140787834	TANIYA CHOITHANI	\N
2809	mdl9pbb5so1sx9egogml9666	2026-05-15 17:20:37.819	2026-05-15 17:20:38.304	2026-05-15 17:20:38.319	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
2812	dfvz2qubqteb3smu1gwfieqz	2026-05-15 17:20:38.471	2026-05-15 17:20:38.904	2026-05-15 17:20:38.919	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
2815	rjtk4jgkqncvr3km2bw6vb8f	2026-05-15 17:20:39.068	2026-05-15 17:20:39.501	2026-05-15 17:20:39.515	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925888388	AARTI	\N
2640	tdl5lz156p8go9s15uaf5ylt	2026-05-15 17:19:58.564	2026-05-15 17:19:58.998	2026-05-15 17:19:59.012	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
2646	jm33fgezby1dp72l2ljo0m1y	2026-05-15 17:19:59.767	2026-05-15 17:20:00.202	2026-05-15 17:20:00.218	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879790755	sunita	\N
2649	yp93af5cainkzh2u990jcv7l	2026-05-15 17:20:00.371	2026-05-15 17:20:00.801	2026-05-15 17:20:00.815	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726855444	Essence Productions	\N
2652	qtywl0efkex1ysujn65qmuiu	2026-05-15 17:20:00.953	2026-05-15 17:20:01.467	2026-05-15 17:20:01.483	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662194423	dr.kapil ahuja	\N
2655	mflr3hbu5up8ebck2y6hv0sw	2026-05-15 17:20:01.64	2026-05-15 17:20:02.156	2026-05-15 17:20:02.176	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427711874	shefali	\N
2658	icjn8gcnqdiido1y1iehm01h	2026-05-15 17:20:02.319	2026-05-15 17:20:02.8	2026-05-15 17:20:02.815	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825061176	mayur bhai	\N
2664	w40ua80qxo7oqfms9e2ilotl	2026-05-15 17:20:03.564	2026-05-15 17:20:04.041	2026-05-15 17:20:04.057	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978990350	JATIN GANDHI	\N
2667	mvnccxwi6l1w6oueqly7i4fz	2026-05-15 17:20:04.203	2026-05-15 17:20:04.682	2026-05-15 17:20:04.696	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698062908	KALPANA PATEL	\N
2670	abi4w1i36jd4u6aortxwsebi	2026-05-15 17:20:04.838	2026-05-15 17:20:05.272	2026-05-15 17:20:05.288	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586837007	paul sir	\N
2835	f1hpfe6bet2qsirrz55jbpsc	2026-05-15 17:20:43.883	2026-05-15 17:22:10.822	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383465118	MARGESH	\N
2733	u6t5opxu3rl53jbpjnzyfvr1	2026-05-15 17:20:19.272	2026-05-15 17:22:10.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376495441	BHAVNA	\N
2831	qcj4av8v4q6m4chcyc2bx7vu	2026-05-15 17:20:42.756	2026-05-15 17:20:43.151	2026-05-15 17:20:43.166	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
2736	jwry0ajnutsy6e2kv19tel22	2026-05-15 17:20:20.096	2026-05-15 17:22:10.293	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824098895	JAYANTA ROY	\N
2739	tj7b6wohbqpv9qr8wx15ul3c	2026-05-15 17:20:20.862	2026-05-15 17:22:10.315	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173910155	MEET	\N
2742	nrnkirukdwfvq5sgts5hcwx2	2026-05-15 17:20:21.692	2026-05-15 17:22:10.337	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328920659	print vision	\N
2838	xt2c7b8kjku53o1wdmgbunw6	2026-05-15 17:20:44.695	2026-05-15 17:22:10.846	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328889052	tejal patel	\N
2745	o40dvpobavh1v9p2o6m8up3a	2026-05-15 17:20:22.517	2026-05-15 17:22:10.36	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
2752	ea2ev6yovbfglcvghbhjfrmr	2026-05-15 17:20:25.31	2026-05-15 17:22:10.403	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
3103	eyp9licdvlkrjispy0qbfswv	2026-05-15 17:21:43.696	2026-05-15 17:22:13.054	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825324802	SAGAR	\N
2770	lyo2xan4cmpj3nhmw9e0dgun	2026-05-15 17:20:29.218	2026-05-15 17:22:10.094	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9737396831	SINDHU	\N
2750	n3ji89lpk0jzh43ej3f2c3c8	2026-05-15 17:20:23.362	2026-05-15 17:20:24.107	2026-05-15 17:20:24.126	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
2844	sst4pdfj941cvw8qjok2olqu	2026-05-15 17:20:46.034	2026-05-15 17:22:10.892	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924110049	DHRUVA	\N
2758	ttfohbztrjjyhatj5dulhd1t	2026-05-15 17:20:26.681	2026-05-15 17:22:10.425	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824252956	shradhavi mam	\N
2840	xt2c7b8kjku53o1wdmgbunw6	2026-05-15 17:20:44.695	2026-05-15 17:20:45.252	2026-05-15 17:20:45.267	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328889052	tejal patel	\N
2761	wdumdo4y4219yhzcl64q92hm	2026-05-15 17:20:27.252	2026-05-15 17:22:10.447	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007727	nainash	\N
3102	k392sl74bx34lrs0xm88s7m5	2026-05-15 17:21:43.111	2026-05-15 17:21:43.535	2026-05-15 17:21:43.55	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984795662	SAHIL	\N
2764	f9papzjg15m3uhxsvretvkcp	2026-05-15 17:20:28.018	2026-05-15 17:22:10.468	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
2850	ladeowliq0fuak4zthofqd36	2026-05-15 17:20:47.161	2026-05-15 17:22:10.935	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426419425	mini	\N
2767	ldt2y4rj6adl63zusfrssxt1	2026-05-15 17:20:28.647	2026-05-15 17:22:10.49	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7229019457	nimisha	\N
2846	sst4pdfj941cvw8qjok2olqu	2026-05-15 17:20:46.034	2026-05-15 17:20:46.449	2026-05-15 17:20:46.46	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924110049	DHRUVA	\N
2792	tllpd8x7bqqz9eisjlf6p7o6	2026-05-15 17:20:34.14	2026-05-15 17:22:10.554	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327608033	shivani	\N
2776	mqvnkvjvo4o3h9f7ibtbnjb1	2026-05-15 17:20:30.396	2026-05-15 17:22:10.116	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033742303	nirman shah	\N
2772	lyo2xan4cmpj3nhmw9e0dgun	2026-05-15 17:20:29.218	2026-05-15 17:20:29.666	2026-05-15 17:20:29.678	\N	\N	\N	\N	\N	\N	\N	\N	\N	9737396831	SINDHU	\N
2816	dpcx3qw6nc6i8klt8qlg31vf	2026-05-15 17:20:39.654	2026-05-15 17:22:10.225	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
2778	mqvnkvjvo4o3h9f7ibtbnjb1	2026-05-15 17:20:30.396	2026-05-15 17:20:30.838	2026-05-15 17:20:30.852	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033742303	nirman shah	\N
2781	kd65f7li0onoblqdbq5jt8q2	2026-05-15 17:20:31	2026-05-15 17:20:31.421	2026-05-15 17:20:31.436	\N	\N	\N	\N	\N	\N	\N	\N	\N	8959591489	mamta agrawal	\N
2784	jy3ohklz8ulgep4qohfcqah2	2026-05-15 17:20:31.57	2026-05-15 17:20:31.983	2026-05-15 17:20:31.998	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825175191	PIYABEN	\N
2787	dgijiv4xgizctt8wdt830m49	2026-05-15 17:20:32.149	2026-05-15 17:20:32.564	2026-05-15 17:20:32.578	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
2790	soaazbqz4ph65hckhpddpsfw	2026-05-15 17:20:32.722	2026-05-15 17:20:33.141	2026-05-15 17:20:33.163	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879737299	RENUKA MAM	\N
2853	nzckq6ifcd31thbx5c9uy62m	2026-05-15 17:20:47.956	2026-05-15 17:22:10.958	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825069396	Radhika	\N
2795	m0rezvpieqg052zs74kj6eo5	2026-05-15 17:20:34.909	2026-05-15 17:22:10.577	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328006629	malini	\N
2798	g7rldp54w5c0zmu32cw2umlo	2026-05-15 17:20:35.646	2026-05-15 17:22:10.599	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824033130	MANISH PATEL	\N
3105	eyp9licdvlkrjispy0qbfswv	2026-05-15 17:21:43.696	2026-05-15 17:21:44.111	2026-05-15 17:21:44.126	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825324802	SAGAR	\N
2801	vpql1q3rxhrzapx4a7mbppm9	2026-05-15 17:20:36.4	2026-05-15 17:22:10.624	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825017116	AKASH K SHAH	\N
2863	cpl8gklfqn20b91u064q6u02	2026-05-15 17:20:50.432	2026-05-15 17:22:11.066	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328261967	kavita gupta	\N
2804	ohp9ztqdk7tizqvyymfz9gzi	2026-05-15 17:20:37.109	2026-05-15 17:22:10.649	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8140787834	TANIYA CHOITHANI	\N
2855	nzckq6ifcd31thbx5c9uy62m	2026-05-15 17:20:47.956	2026-05-15 17:20:48.434	2026-05-15 17:20:48.449	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825069396	Radhika	\N
2807	mdl9pbb5so1sx9egogml9666	2026-05-15 17:20:37.819	2026-05-15 17:22:10.671	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
2856	qd2w125g5lw7she8r27h9dqj	2026-05-15 17:20:12.068	2026-05-15 17:20:49.119	2026-05-15 17:20:49.133	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
2810	dfvz2qubqteb3smu1gwfieqz	2026-05-15 17:20:38.471	2026-05-15 17:22:10.692	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
2859	vxk8u4dnu6wa31h1b6bosyw7	2026-05-15 17:20:49.269	2026-05-15 17:20:49.697	2026-05-15 17:20:49.712	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712077770	simi makwana	\N
2813	rjtk4jgkqncvr3km2bw6vb8f	2026-05-15 17:20:39.068	2026-05-15 17:22:10.713	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925888388	AARTI	\N
2829	qcj4av8v4q6m4chcyc2bx7vu	2026-05-15 17:20:42.756	2026-05-15 17:22:10.779	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
2730	id7q42892ggrr4rup18au24h	2026-05-15 17:20:18.463	2026-05-15 17:22:10.248	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879577708	NIRAV CHOLERA	\N
2867	qz4uvmv1fw7u3wu386zkrfj7	2026-05-15 17:20:51.642	2026-05-15 17:22:11.088	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980792255	rajani sanyal	\N
2818	dpcx3qw6nc6i8klt8qlg31vf	2026-05-15 17:20:39.654	2026-05-15 17:20:40.072	2026-05-15 17:20:40.1	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
2873	f6i8kqrn2g11b483dl92xs5c	2026-05-15 17:20:52.796	2026-05-15 17:22:11.84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924630055	VATSALA	\N
2865	cpl8gklfqn20b91u064q6u02	2026-05-15 17:20:50.432	2026-05-15 17:20:50.845	2026-05-15 17:20:50.859	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328261967	kavita gupta	\N
2879	w8x92v4p2bbw4cid3vzkx0ea	2026-05-15 17:20:53.917	2026-05-15 17:22:11.863	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8128686886	anamika	\N
2755	kjb7p0z5edovwimlvhh08f8n	2026-05-15 17:20:26.095	2026-05-15 17:22:11.885	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9632222155	bhavna	\N
2869	qz4uvmv1fw7u3wu386zkrfj7	2026-05-15 17:20:51.642	2026-05-15 17:20:52.048	2026-05-15 17:20:52.061	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980792255	rajani sanyal	\N
2889	tbvqr84tjc8ftj7zfhewratf	2026-05-15 17:20:56.22	2026-05-15 17:22:11.909	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925228812	pranjali shah	\N
2895	z0hbh8zaamo8tpl5og14iog5	2026-05-15 17:20:57.331	2026-05-15 17:22:11.929	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
2875	f6i8kqrn2g11b483dl92xs5c	2026-05-15 17:20:52.796	2026-05-15 17:20:53.191	2026-05-15 17:20:53.204	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924630055	VATSALA	\N
3100	k392sl74bx34lrs0xm88s7m5	2026-05-15 17:21:43.111	2026-05-15 17:22:13.032	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984795662	SAHIL	\N
2881	w8x92v4p2bbw4cid3vzkx0ea	2026-05-15 17:20:53.917	2026-05-15 17:20:54.309	2026-05-15 17:20:54.323	\N	\N	\N	\N	\N	\N	\N	\N	\N	8128686886	anamika	\N
2885	kjb7p0z5edovwimlvhh08f8n	2026-05-15 17:20:26.095	2026-05-15 17:20:55.519	2026-05-15 17:20:55.531	\N	\N	\N	\N	\N	\N	\N	\N	\N	9632222155	bhavna	\N
2891	tbvqr84tjc8ftj7zfhewratf	2026-05-15 17:20:56.22	2026-05-15 17:20:56.622	2026-05-15 17:20:56.636	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925228812	pranjali shah	\N
2897	z0hbh8zaamo8tpl5og14iog5	2026-05-15 17:20:57.331	2026-05-15 17:20:57.728	2026-05-15 17:20:57.747	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
3099	q5zeoereawq96x8njsfip5ng	2026-05-15 17:21:42.529	2026-05-15 17:21:42.951	2026-05-15 17:21:42.962	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016438776	jonshan	\N
2676	i1bscdd37akceq7rl2op4nyf	2026-05-15 17:20:06.011	2026-05-15 17:20:06.448	2026-05-15 17:20:06.461	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586282259	dogs spa	\N
2682	w3wzv9tai9mkpqabb1eklhni	2026-05-15 17:20:07.192	2026-05-15 17:20:07.595	2026-05-15 17:20:07.61	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099653533	NIKITA DESAI	\N
2685	xr7po5m1gczde73tpr4c2lwl	2026-05-15 17:20:07.743	2026-05-15 17:20:08.244	2026-05-15 17:20:08.258	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574842899	devansh	\N
2721	rj1s3b6mf2xp4nfo6t9xjk8e	2026-05-15 17:20:16.206	2026-05-15 17:22:10.029	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984661368	VIDHI MAM	\N
2690	a8rucjg3cre4gmftvvb43uag	2026-05-15 17:19:37.284	2026-05-15 17:20:10.182	2026-05-15 17:20:10.195	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979846268	DIPAK	\N
2693	a5g3dqryw9ctz05z3rjb6kw4	2026-05-15 17:20:10.345	2026-05-15 17:20:10.763	2026-05-15 17:20:10.778	\N	\N	\N	\N	\N	\N	\N	\N	\N	8878799771	ankish	\N
2696	bun0na9y4lkjpelnbh2yaki0	2026-05-15 17:20:10.917	2026-05-15 17:20:11.33	2026-05-15 17:20:11.341	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879615794	MAHESH PATEL	\N
2699	syuifpaksufj1bc6xp8z4i8o	2026-05-15 17:20:11.481	2026-05-15 17:20:11.905	2026-05-15 17:20:11.92	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824022765	uma singh	\N
2705	sw8a74pwbp9xr3c5n0cjp2bv	2026-05-15 17:20:12.62	2026-05-15 17:20:13.076	2026-05-15 17:20:13.097	\N	\N	\N	\N	\N	\N	\N	\N	\N	9913999457	ZEEL SONI	\N
2708	r2c1s6duxklvd4q0j1sfk3b1	2026-05-15 17:20:13.244	2026-05-15 17:20:13.669	2026-05-15 17:20:13.684	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984549810	PAAVAN PANCHAL	\N
2711	uhpfxxoko4aem25q7ioh1gq5	2026-05-15 17:20:13.819	2026-05-15 17:20:14.234	2026-05-15 17:20:14.249	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
2717	c0x5xapxopk02ihefxy7mxuv	2026-05-15 17:20:14.955	2026-05-15 17:20:15.382	2026-05-15 17:20:15.396	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
2834	usi5ocl71dnw88gkrq5t9arw	2026-05-15 17:20:43.319	2026-05-15 17:20:43.73	2026-05-15 17:20:43.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825539995	mansi	\N
2724	v9zssrxtuqlbbmwy87njo07c	2026-05-15 17:20:16.877	2026-05-15 17:22:10.05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690217111	KAMRAJ MODI	\N
2837	f1hpfe6bet2qsirrz55jbpsc	2026-05-15 17:20:43.883	2026-05-15 17:20:44.462	2026-05-15 17:20:44.488	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383465118	MARGESH	\N
2832	usi5ocl71dnw88gkrq5t9arw	2026-05-15 17:20:43.319	2026-05-15 17:22:10.801	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825539995	mansi	\N
2726	v9zssrxtuqlbbmwy87njo07c	2026-05-15 17:20:16.877	2026-05-15 17:20:17.423	2026-05-15 17:20:17.439	\N	\N	\N	\N	\N	\N	\N	\N	\N	8690217111	KAMRAJ MODI	\N
2751	i6fbh94kpg645sdy6td23oki	2026-05-15 17:19:42.331	2026-05-15 17:20:25.088	2026-05-15 17:20:25.107	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
2754	ea2ev6yovbfglcvghbhjfrmr	2026-05-15 17:20:25.31	2026-05-15 17:20:25.916	2026-05-15 17:20:25.933	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
2760	ttfohbztrjjyhatj5dulhd1t	2026-05-15 17:20:26.681	2026-05-15 17:20:27.095	2026-05-15 17:20:27.11	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824252956	shradhavi mam	\N
2763	wdumdo4y4219yhzcl64q92hm	2026-05-15 17:20:27.252	2026-05-15 17:20:27.807	2026-05-15 17:20:27.833	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007727	nainash	\N
2766	f9papzjg15m3uhxsvretvkcp	2026-05-15 17:20:28.018	2026-05-15 17:20:28.489	2026-05-15 17:20:28.503	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
2769	ldt2y4rj6adl63zusfrssxt1	2026-05-15 17:20:28.647	2026-05-15 17:20:29.071	2026-05-15 17:20:29.085	\N	\N	\N	\N	\N	\N	\N	\N	\N	7229019457	nimisha	\N
2687	xthc7empq5cmziq6wkfpp9tq	2026-05-15 17:20:09.099	2026-05-15 17:22:09.828	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460721837	shilly shah	\N
2847	fs74fd4w7zd856445xvmarfo	2026-05-15 17:20:46.606	2026-05-15 17:22:10.913	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099083999	tarana bhatiya	\N
2843	cafyq11e7f1rbr6eic2jif1g	2026-05-15 17:20:45.437	2026-05-15 17:20:45.873	2026-05-15 17:20:45.892	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978799729	rekha nobalnagar	\N
2841	cafyq11e7f1rbr6eic2jif1g	2026-05-15 17:20:45.437	2026-05-15 17:22:10.868	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978799729	rekha nobalnagar	\N
2857	vxk8u4dnu6wa31h1b6bosyw7	2026-05-15 17:20:49.269	2026-05-15 17:22:11.011	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712077770	simi makwana	\N
2849	fs74fd4w7zd856445xvmarfo	2026-05-15 17:20:46.606	2026-05-15 17:20:47.008	2026-05-15 17:20:47.021	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099083999	tarana bhatiya	\N
2852	ladeowliq0fuak4zthofqd36	2026-05-15 17:20:47.161	2026-05-15 17:20:47.699	2026-05-15 17:20:47.725	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426419425	mini	\N
2860	o7ftn4cscjsw612ha1y71qzp	2026-05-15 17:20:49.853	2026-05-15 17:22:11.038	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173138901	yagnish	\N
2870	awe8n497q23v5tifsut2cq90	2026-05-15 17:20:52.197	2026-05-15 17:22:11.11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825645991	KEYUR	\N
2876	uimnbxlkb3ibbpzl8xa7vqqy	2026-05-15 17:20:53.341	2026-05-15 17:22:11.134	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9313718597	SNEHA	\N
2882	jlr9y7miz3jwxir4sxyshaua	2026-05-15 17:20:54.457	2026-05-15 17:22:11.157	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825225536	vishal	\N
2862	o7ftn4cscjsw612ha1y71qzp	2026-05-15 17:20:49.853	2026-05-15 17:20:50.284	2026-05-15 17:20:50.298	\N	\N	\N	\N	\N	\N	\N	\N	\N	9173138901	yagnish	\N
2886	qt8p23fnugf2farrc4ruq6ej	2026-05-15 17:20:55.672	2026-05-15 17:22:11.179	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238087667	JAYA MEM	\N
2907	w0367bjs1ft6kujuwzbksebw	2026-05-15 17:20:59.543	2026-05-15 17:22:11.264	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000602710	DEVANG	\N
2913	u2yohfvl2n1z925x1bj2wjyb	2026-05-15 17:21:00.65	2026-05-15 17:22:11.286	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043920593	BHAVESH	\N
2872	awe8n497q23v5tifsut2cq90	2026-05-15 17:20:52.197	2026-05-15 17:20:52.632	2026-05-15 17:20:52.648	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825645991	KEYUR	\N
2919	iu4wld2s4bd9fypfu4bq0fei	2026-05-15 17:21:01.798	2026-05-15 17:22:11.308	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9104982128	nirav agrawal	\N
2925	ulm6h6oyt4txog5x8uvuqhuo	2026-05-15 17:21:02.902	2026-05-15 17:22:11.33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824254727	nayna dholkiya	\N
2878	uimnbxlkb3ibbpzl8xa7vqqy	2026-05-15 17:20:53.341	2026-05-15 17:20:53.767	2026-05-15 17:20:53.782	\N	\N	\N	\N	\N	\N	\N	\N	\N	9313718597	SNEHA	\N
2931	i7esjnn051r5ev2cj7nabwlp	2026-05-15 17:21:03.995	2026-05-15 17:22:11.353	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428214275	sanjay	\N
2937	g99x7osb33ee3ln8q1nnbrja	2026-05-15 17:21:05.123	2026-05-15 17:22:11.373	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9838917895	ANSHUL	\N
2884	jlr9y7miz3jwxir4sxyshaua	2026-05-15 17:20:54.457	2026-05-15 17:20:54.873	2026-05-15 17:20:54.887	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825225536	vishal	\N
2910	t9rccgt9edflqlk48v7rcs3w	2026-05-15 17:21:00.104	2026-05-15 17:22:11.975	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327034286	vishal parmar	\N
2916	g3cpyucdottmiiwg2z55u75w	2026-05-15 17:21:01.196	2026-05-15 17:22:11.999	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990328335	ankita	\N
2888	qt8p23fnugf2farrc4ruq6ej	2026-05-15 17:20:55.672	2026-05-15 17:20:56.062	2026-05-15 17:20:56.079	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238087667	JAYA MEM	\N
2922	ln524qb6ikzstffrpx6oeg6a	2026-05-15 17:21:02.354	2026-05-15 17:22:12.025	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879275721	jigna	\N
2928	unnyqiykufbk3cqlrekc36ut	2026-05-15 17:21:03.441	2026-05-15 17:22:12.052	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998460397	FLORA FOUNTAIN	\N
2909	w0367bjs1ft6kujuwzbksebw	2026-05-15 17:20:59.543	2026-05-15 17:20:59.947	2026-05-15 17:20:59.96	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000602710	DEVANG	\N
2934	mv0mzfyh7g3nfivkrhthgag6	2026-05-15 17:21:04.56	2026-05-15 17:22:12.075	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9227492442	pradip sinde	\N
2940	rogy304rp3842s8rgrqr1ghz	2026-05-15 17:21:05.674	2026-05-15 17:22:12.098	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825258843	Ayushi Agrawal	\N
2912	t9rccgt9edflqlk48v7rcs3w	2026-05-15 17:21:00.104	2026-05-15 17:21:00.505	2026-05-15 17:21:00.517	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327034286	vishal parmar	\N
2946	lruqk95ijeriuavb1kxrl0vh	2026-05-15 17:21:06.802	2026-05-15 17:22:12.121	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925472679	varsha acharya	\N
2915	u2yohfvl2n1z925x1bj2wjyb	2026-05-15 17:21:00.65	2026-05-15 17:21:01.046	2026-05-15 17:21:01.06	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043920593	BHAVESH	\N
2918	g3cpyucdottmiiwg2z55u75w	2026-05-15 17:21:01.196	2026-05-15 17:21:01.648	2026-05-15 17:21:01.662	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990328335	ankita	\N
2921	iu4wld2s4bd9fypfu4bq0fei	2026-05-15 17:21:01.798	2026-05-15 17:21:02.203	2026-05-15 17:21:02.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	9104982128	nirav agrawal	\N
2924	ln524qb6ikzstffrpx6oeg6a	2026-05-15 17:21:02.354	2026-05-15 17:21:02.757	2026-05-15 17:21:02.772	\N	\N	\N	\N	\N	\N	\N	\N	\N	8879275721	jigna	\N
2927	ulm6h6oyt4txog5x8uvuqhuo	2026-05-15 17:21:02.902	2026-05-15 17:21:03.295	2026-05-15 17:21:03.308	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824254727	nayna dholkiya	\N
2930	unnyqiykufbk3cqlrekc36ut	2026-05-15 17:21:03.441	2026-05-15 17:21:03.852	2026-05-15 17:21:03.862	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998460397	FLORA FOUNTAIN	\N
2933	i7esjnn051r5ev2cj7nabwlp	2026-05-15 17:21:03.995	2026-05-15 17:21:04.408	2026-05-15 17:21:04.421	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428214275	sanjay	\N
2936	mv0mzfyh7g3nfivkrhthgag6	2026-05-15 17:21:04.56	2026-05-15 17:21:04.975	2026-05-15 17:21:04.989	\N	\N	\N	\N	\N	\N	\N	\N	\N	9227492442	pradip sinde	\N
2939	g99x7osb33ee3ln8q1nnbrja	2026-05-15 17:21:05.123	2026-05-15 17:21:05.523	2026-05-15 17:21:05.537	\N	\N	\N	\N	\N	\N	\N	\N	\N	9838917895	ANSHUL	\N
2942	rogy304rp3842s8rgrqr1ghz	2026-05-15 17:21:05.674	2026-05-15 17:21:06.08	2026-05-15 17:21:06.097	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825258843	Ayushi Agrawal	\N
2978	xebx7me08qs3ea29tnub3y7u	2026-05-15 17:20:14.384	2026-05-15 17:21:15.647	2026-05-15 17:21:15.664	\N	\N	\N	\N	\N	\N	\N	\N	\N	7984500853	yash gaur	\N
2945	cghq74dgt3t79xvnk0wl1lb1	2026-05-15 17:21:06.235	2026-05-15 17:21:06.638	2026-05-15 17:21:06.652	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824041191	pinky modi	\N
3060	n7nsf2emhwax7m4ln653o18j	2026-05-15 17:21:33.872	2026-05-15 17:22:12.768	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687496506	yashika	\N
2966	zcauqgc3swpmp64r0mduz7r8	2026-05-15 17:21:11.826	2026-05-15 17:22:11.488	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979381287	kajal thakkar	\N
2954	bfchfrp7xp51i7ltgjm5ujet	2026-05-15 17:21:08.193	2026-05-15 17:21:08.692	2026-05-15 17:21:08.706	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
2958	xc6z5om7x68wyxzl4uxfe2zb	2026-05-15 17:20:15.537	2026-05-15 17:21:09.9	2026-05-15 17:21:09.913	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898100038	JINAY	\N
3116	zvj816teuunjr49qux47a5xh	2026-05-15 17:21:46.661	2026-05-15 17:22:13.171	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9769946369	chandni kapadiya	\N
3039	dossmxekq9d79kkbexdbuyd1	2026-05-15 17:21:29.413	2026-05-15 17:22:11.751	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
2962	f6smxuklkee8j182kb87vlwp	2026-05-15 17:21:10.709	2026-05-15 17:21:11.1	2026-05-15 17:21:11.113	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879007060	RADHIKA NANDA	\N
3108	zlluc9xmklabor3qpumk69v4	2026-05-15 17:21:44.264	2026-05-15 17:21:44.681	2026-05-15 17:21:44.695	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898888898	Aman Patel	\N
3048	kjfqr7j0nehyhkde6tkysb9n	2026-05-15 17:21:31.51	2026-05-15 17:22:11.773	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099011151	Saket parikh	\N
2968	zcauqgc3swpmp64r0mduz7r8	2026-05-15 17:21:11.826	2026-05-15 17:21:12.318	2026-05-15 17:21:12.333	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979381287	kajal thakkar	\N
2949	rgqjunak51cy4klavghiyewl	2026-05-15 17:21:07.483	2026-05-15 17:22:12.148	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727363124	chirag	\N
2974	rp8xlni7mwdl71m7rwcprye9	2026-05-15 17:21:13.322	2026-05-15 17:21:13.959	2026-05-15 17:21:13.977	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909011008	abhishek mehta	\N
3045	z15etskkts1wyj4yyakrtaat	2026-05-15 17:21:30.898	2026-05-15 17:22:12.674	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825008286	brjesh panchal	\N
3041	dossmxekq9d79kkbexdbuyd1	2026-05-15 17:21:29.413	2026-05-15 17:21:30.048	2026-05-15 17:21:30.066	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
3135	rd3s0z2vg7e2lp6mxcf3k99x	2026-05-15 17:21:50.64	2026-05-15 17:22:13.307	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355076524	DEVASH RAVAL	\N
3066	d9wx10fk1xkrxcpc1r63m5qx	2026-05-15 17:21:35.071	2026-05-15 17:22:12.812	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866141601	SPURGE FOUNDATION	\N
3114	rs7lzrp95aqfgfyz11k0sgxn	2026-05-15 17:21:45.41	2026-05-15 17:21:45.839	2026-05-15 17:21:45.857	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
3054	q3dmkan7g9nfsobvv46ur5w9	2026-05-15 17:21:32.677	2026-05-15 17:22:12.722	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
3050	kjfqr7j0nehyhkde6tkysb9n	2026-05-15 17:21:31.51	2026-05-15 17:21:31.942	2026-05-15 17:21:31.957	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099011151	Saket parikh	\N
3072	fuazq0x58nx1fidqsa6ko6y9	2026-05-15 17:21:36.428	2026-05-15 17:22:12.857	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979320012	parul patel	\N
3056	q3dmkan7g9nfsobvv46ur5w9	2026-05-15 17:21:32.677	2026-05-15 17:21:33.103	2026-05-15 17:21:33.116	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
3075	tj4hsdilv36v8nq26awsr92d	2026-05-15 17:21:37.291	2026-05-15 17:22:12.878	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
3062	n7nsf2emhwax7m4ln653o18j	2026-05-15 17:21:33.872	2026-05-15 17:21:34.308	2026-05-15 17:21:34.324	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687496506	yashika	\N
3141	mjvf8gf7yupf079dvyn23wam	2026-05-15 17:21:51.738	2026-05-15 17:22:13.351	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043222087	krutika	\N
3078	mwpfmd64h41irqaruucbohsf	2026-05-15 17:21:38.274	2026-05-15 17:22:12.899	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426689696	SAMIR JAIN	\N
3118	zvj816teuunjr49qux47a5xh	2026-05-15 17:21:46.661	2026-05-15 17:21:47.048	2026-05-15 17:21:47.063	\N	\N	\N	\N	\N	\N	\N	\N	\N	9769946369	chandni kapadiya	\N
3081	qi0v2x1vftj0nwvdhhmjtd1l	2026-05-15 17:21:38.946	2026-05-15 17:22:12.943	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016050596	dhrumil	\N
3106	zlluc9xmklabor3qpumk69v4	2026-05-15 17:21:44.264	2026-05-15 17:22:13.077	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898888898	Aman Patel	\N
3112	rs7lzrp95aqfgfyz11k0sgxn	2026-05-15 17:21:45.41	2026-05-15 17:22:13.129	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
3144	uzqfwgni47rexnq02lthcxud	2026-05-15 17:21:52.316	2026-05-15 17:22:13.372	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000882020	raja panchal	\N
3125	b3qkscs855qdy4lu3ztjpaly	2026-05-15 17:21:48.33	2026-05-15 17:22:13.236	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638225166	chandu bhojwani	\N
3127	b3qkscs855qdy4lu3ztjpaly	2026-05-15 17:21:48.33	2026-05-15 17:21:48.733	2026-05-15 17:21:48.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638225166	chandu bhojwani	\N
3131	rl5rlc9xgrtwv5k8vaccp5ns	2026-05-15 17:21:49.425	2026-05-15 17:22:13.284	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687686467	ANERI SHAH	\N
3083	qi0v2x1vftj0nwvdhhmjtd1l	2026-05-15 17:21:38.946	2026-05-15 17:21:39.366	2026-05-15 17:21:39.38	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016050596	dhrumil	\N
3069	bzwy6zhys6egzud6ih77jbbu	2026-05-15 17:21:35.8	2026-05-15 17:22:12.835	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824262434	gaurang	\N
3089	cqfz7ysg0mzreenei0tmu18z	2026-05-15 17:21:40.064	2026-05-15 17:21:40.464	2026-05-15 17:21:40.483	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825218377	sejuti mam	\N
3092	ld0a9zsomq12bg7yr26ldoul	2026-05-15 17:21:40.629	2026-05-15 17:21:41.046	2026-05-15 17:21:41.06	\N	\N	\N	\N	\N	\N	\N	\N	\N	9819707470	TOFFEE MEHTA	\N
3152	a31ant1s638wshqiyhuu2tq2	2026-05-15 17:21:53.438	2026-05-15 17:21:54.167	2026-05-15 17:21:54.185	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998467868	NIRALI	\N
3162	b3f163o284szqxpxts2rlms6	2026-05-15 17:21:56.144	2026-05-15 17:22:13.501	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8757170894	PAVAN	\N
3169	pznzxye6raerqjdrbrt33ddm	2026-05-15 17:21:57.953	2026-05-15 17:22:13.566	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567992860	shreya	\N
3137	rd3s0z2vg7e2lp6mxcf3k99x	2026-05-15 17:21:50.64	2026-05-15 17:21:51.035	2026-05-15 17:21:51.049	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355076524	DEVASH RAVAL	\N
3216	vnmptpy5rqoo5b7emox1gge4	2026-05-15 17:22:08.154	2026-05-15 17:22:13.898	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9311256467	hirdesh yadav	\N
3210	ly6asczmre7qbym53gn9y6mg	2026-05-15 17:22:07.031	2026-05-15 17:22:13.921	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328973143	prisha	\N
3146	uzqfwgni47rexnq02lthcxud	2026-05-15 17:21:52.316	2026-05-15 17:21:52.72	2026-05-15 17:21:52.733	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000882020	raja panchal	\N
3149	yeprexfphgto7nxaf76kx05t	2026-05-15 17:21:52.876	2026-05-15 17:21:53.285	2026-05-15 17:21:53.298	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429756316	Mohit Sir advocate - Adani	\N
3155	xjc0ziqtzdu4xfbyh73325nc	2026-05-15 17:21:54.37	2026-05-15 17:21:54.848	2026-05-15 17:21:54.863	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909927685	GOPI	\N
3158	jewbopevzjkrv85e9ng3cr2m	2026-05-15 17:21:55.001	2026-05-15 17:21:55.431	2026-05-15 17:21:55.445	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574886038	harsh	\N
3164	b3f163o284szqxpxts2rlms6	2026-05-15 17:21:56.144	2026-05-15 17:21:56.547	2026-05-15 17:21:56.561	\N	\N	\N	\N	\N	\N	\N	\N	\N	8757170894	PAVAN	\N
3165	qdcs5r8u1ppadn8nw4zvv83n	2026-05-15 17:19:45.498	2026-05-15 17:21:57.209	2026-05-15 17:21:57.223	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825884867	hina shah	\N
3171	pznzxye6raerqjdrbrt33ddm	2026-05-15 17:21:57.953	2026-05-15 17:21:58.567	2026-05-15 17:21:58.585	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567992860	shreya	\N
3212	ly6asczmre7qbym53gn9y6mg	2026-05-15 17:22:07.031	2026-05-15 17:22:07.46	2026-05-15 17:22:07.474	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328973143	prisha	\N
3215	a8qq8komnncxvv4bjonbxmne	2026-05-15 17:22:07.61	2026-05-15 17:22:08.006	2026-05-15 17:22:08.02	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998796311	JYOTI	\N
3218	vnmptpy5rqoo5b7emox1gge4	2026-05-15 17:22:08.154	2026-05-15 17:22:08.545	2026-05-15 17:22:08.558	\N	\N	\N	\N	\N	\N	\N	\N	\N	9311256467	hirdesh yadav	\N
2943	cghq74dgt3t79xvnk0wl1lb1	2026-05-15 17:21:06.235	2026-05-15 17:22:11.397	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824041191	pinky modi	\N
2952	bfchfrp7xp51i7ltgjm5ujet	2026-05-15 17:21:08.193	2026-05-15 17:22:11.417	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
2718	xc6z5om7x68wyxzl4uxfe2zb	2026-05-15 17:20:15.537	2026-05-15 17:22:11.438	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898100038	JINAY	\N
2960	f6smxuklkee8j182kb87vlwp	2026-05-15 17:21:10.709	2026-05-15 17:22:11.46	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879007060	RADHIKA NANDA	\N
2972	rp8xlni7mwdl71m7rwcprye9	2026-05-15 17:21:13.322	2026-05-15 17:22:11.519	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909011008	abhishek mehta	\N
3087	cqfz7ysg0mzreenei0tmu18z	2026-05-15 17:21:40.064	2026-05-15 17:22:11.796	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825218377	sejuti mam	\N
3109	szmhpb63qayla5ha4bvfk2hp	2026-05-15 17:21:44.849	2026-05-15 17:22:13.103	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200168908	anshi	\N
2948	lruqk95ijeriuavb1kxrl0vh	2026-05-15 17:21:06.802	2026-05-15 17:21:07.276	2026-05-15 17:21:07.298	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925472679	varsha acharya	\N
2951	rgqjunak51cy4klavghiyewl	2026-05-15 17:21:07.483	2026-05-15 17:21:08.013	2026-05-15 17:21:08.032	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727363124	chirag	\N
2963	r6s8au8fumvc9r1aht7q4fkf	2026-05-15 17:21:11.249	2026-05-15 17:22:12.194	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825006715	Anand Devani	\N
2957	kg0oqvdtpaq1iwzpybv4owrw	2026-05-15 17:21:08.849	2026-05-15 17:21:09.262	2026-05-15 17:21:09.276	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
3111	szmhpb63qayla5ha4bvfk2hp	2026-05-15 17:21:44.849	2026-05-15 17:21:45.25	2026-05-15 17:21:45.265	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200168908	anshi	\N
3115	n06eiqqd9dwgwg2vtaslx4vv	2026-05-15 17:19:37.935	2026-05-15 17:21:46.502	2026-05-15 17:21:46.516	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841668	rahul shah	\N
2969	mh01dcxfrik0hg8v6bh1xjrr	2026-05-15 17:21:12.507	2026-05-15 17:22:12.219	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408881834	NEHA SHETH	\N
2965	r6s8au8fumvc9r1aht7q4fkf	2026-05-15 17:21:11.249	2026-05-15 17:21:11.662	2026-05-15 17:21:11.676	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825006715	Anand Devani	\N
2975	gkpcp6cazxxkmy8q8myf0ldn	2026-05-15 17:21:14.167	2026-05-15 17:22:12.24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971484348	milii	\N
2971	mh01dcxfrik0hg8v6bh1xjrr	2026-05-15 17:21:12.507	2026-05-15 17:21:13.084	2026-05-15 17:21:13.108	\N	\N	\N	\N	\N	\N	\N	\N	\N	9408881834	NEHA SHETH	\N
2979	llb7ueiakhbz4kxwfgjuntm6	2026-05-15 17:21:15.806	2026-05-15 17:22:12.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724888858	ankur	\N
2977	gkpcp6cazxxkmy8q8myf0ldn	2026-05-15 17:21:14.167	2026-05-15 17:21:14.787	2026-05-15 17:21:14.808	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971484348	milii	\N
3147	yeprexfphgto7nxaf76kx05t	2026-05-15 17:21:52.876	2026-05-15 17:22:13.392	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429756316	Mohit Sir advocate - Adani	\N
2986	j48afexfutkmijwj35s9m36s	2026-05-15 17:21:17.618	2026-05-15 17:22:12.383	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376101399	AVANI S CHAUHAN	\N
2981	llb7ueiakhbz4kxwfgjuntm6	2026-05-15 17:21:15.806	2026-05-15 17:21:16.206	2026-05-15 17:21:16.221	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724888858	ankur	\N
2982	vks25otefv6lprnlank5cgy8	2026-05-15 17:20:05.424	2026-05-15 17:21:16.86	2026-05-15 17:21:16.873	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723814430	BINDU ACHARYA	\N
3121	k0mwfacbup9vmhxe8zit5r3y	2026-05-15 17:21:47.208	2026-05-15 17:21:47.61	2026-05-15 17:21:47.624	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007282	SEEMA MEHTA	\N
2992	ucidqlclblw2v5uhw8bvb6c9	2026-05-15 17:21:18.717	2026-05-15 17:22:12.411	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
2988	j48afexfutkmijwj35s9m36s	2026-05-15 17:21:17.618	2026-05-15 17:21:18.021	2026-05-15 17:21:18.035	\N	\N	\N	\N	\N	\N	\N	\N	\N	9376101399	AVANI S CHAUHAN	\N
2998	uumdlyi7j4kvnodg1c3avt6h	2026-05-15 17:21:20.045	2026-05-15 17:22:12.434	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
2994	ucidqlclblw2v5uhw8bvb6c9	2026-05-15 17:21:18.717	2026-05-15 17:21:19.114	2026-05-15 17:21:19.128	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
3004	gt2gwsjudj51dodhxi5aldkx	2026-05-15 17:21:21.408	2026-05-15 17:22:12.46	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727261575	ROSHAN	\N
3000	uumdlyi7j4kvnodg1c3avt6h	2026-05-15 17:21:20.045	2026-05-15 17:21:20.57	2026-05-15 17:21:20.584	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
3150	a31ant1s638wshqiyhuu2tq2	2026-05-15 17:21:53.438	2026-05-15 17:22:13.414	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998467868	NIRALI	\N
3011	qqr87gpv9ga0l4mrolvvd7p6	2026-05-15 17:21:23.141	2026-05-15 17:22:12.507	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
3006	gt2gwsjudj51dodhxi5aldkx	2026-05-15 17:21:21.408	2026-05-15 17:21:21.813	2026-05-15 17:21:21.827	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727261575	ROSHAN	\N
3007	dlxd65pd383050cg4c81fnqq	2026-05-15 17:19:57.96	2026-05-15 17:21:22.453	2026-05-15 17:21:22.463	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265702121	KAVITA	\N
3018	gdgyvqgeoiz3uwdkyfnqhft7	2026-05-15 17:21:25.153	2026-05-15 17:22:12.559	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898858599	vipul patel	\N
3013	qqr87gpv9ga0l4mrolvvd7p6	2026-05-15 17:21:23.141	2026-05-15 17:21:23.611	2026-05-15 17:21:23.645	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
3016	tn0ykakz9mqc8fu0qk5nff3n	2026-05-15 17:21:23.834	2026-05-15 17:21:24.298	2026-05-15 17:21:24.311	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099924735	Pooja Srivastava	\N
3024	axfsgcxaj7ae7axmh6hkq90i	2026-05-15 17:21:26.252	2026-05-15 17:22:12.584	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879003302	GINNY SHARMA	\N
3020	gdgyvqgeoiz3uwdkyfnqhft7	2026-05-15 17:21:25.153	2026-05-15 17:21:25.542	2026-05-15 17:21:25.555	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898858599	vipul patel	\N
3153	xjc0ziqtzdu4xfbyh73325nc	2026-05-15 17:21:54.37	2026-05-15 17:22:13.435	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909927685	GOPI	\N
3030	l5vz08uuilzllt9xuavp97t1	2026-05-15 17:21:27.359	2026-05-15 17:22:12.607	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460863785	PURVIBEN PRAJAPATI	\N
3026	axfsgcxaj7ae7axmh6hkq90i	2026-05-15 17:21:26.252	2026-05-15 17:21:26.665	2026-05-15 17:21:26.68	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879003302	GINNY SHARMA	\N
3036	hgibx0cypkb8pbsm3vsqgk3d	2026-05-15 17:21:28.718	2026-05-15 17:22:12.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714967878	vipul	\N
3032	l5vz08uuilzllt9xuavp97t1	2026-05-15 17:21:27.359	2026-05-15 17:21:27.752	2026-05-15 17:21:27.766	\N	\N	\N	\N	\N	\N	\N	\N	\N	8460863785	PURVIBEN PRAJAPATI	\N
3042	ppshs21uamqop8jvnvcel9vl	2026-05-15 17:21:30.23	2026-05-15 17:22:12.652	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428103716	pinal mam	\N
3038	hgibx0cypkb8pbsm3vsqgk3d	2026-05-15 17:21:28.718	2026-05-15 17:21:29.257	2026-05-15 17:21:29.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714967878	vipul	\N
3156	jewbopevzjkrv85e9ng3cr2m	2026-05-15 17:21:55.001	2026-05-15 17:22:13.457	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7574886038	harsh	\N
3051	buy1wng9kgfsep0k5ae20eoc	2026-05-15 17:21:32.101	2026-05-15 17:22:12.698	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8105757555	.madhukar	\N
3044	ppshs21uamqop8jvnvcel9vl	2026-05-15 17:21:30.23	2026-05-15 17:21:30.728	2026-05-15 17:21:30.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428103716	pinal mam	\N
3047	z15etskkts1wyj4yyakrtaat	2026-05-15 17:21:30.898	2026-05-15 17:21:31.352	2026-05-15 17:21:31.364	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825008286	brjesh panchal	\N
3093	lnlynshsv00c3iwv0dg3tsp1	2026-05-15 17:21:41.222	2026-05-15 17:22:12.965	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998438045	c.b mehta	\N
3053	buy1wng9kgfsep0k5ae20eoc	2026-05-15 17:21:32.101	2026-05-15 17:21:32.518	2026-05-15 17:21:32.531	\N	\N	\N	\N	\N	\N	\N	\N	\N	8105757555	.madhukar	\N
2955	kg0oqvdtpaq1iwzpybv4owrw	2026-05-15 17:21:08.849	2026-05-15 17:22:12.172	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
3159	iz4msnvhizha2wde5kmmgpd8	2026-05-15 17:21:55.583	2026-05-15 17:22:13.478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8401128002	MOKASH	\N
3166	ravgbwdaw6ncagotzdbibr5q	2026-05-15 17:21:57.358	2026-05-15 17:22:13.544	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
3161	iz4msnvhizha2wde5kmmgpd8	2026-05-15 17:21:55.583	2026-05-15 17:21:55.99	2026-05-15 17:21:56.006	\N	\N	\N	\N	\N	\N	\N	\N	\N	8401128002	MOKASH	\N
3172	f2kn3ajeo9xsn0ml0p6ke91s	2026-05-15 17:21:58.753	2026-05-15 17:22:13.594	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879560679	REEMA	\N
3168	ravgbwdaw6ncagotzdbibr5q	2026-05-15 17:21:57.358	2026-05-15 17:21:57.799	2026-05-15 17:21:57.812	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
3178	lnhb6wh3mxu4t48lz4jw2w64	2026-05-15 17:21:59.987	2026-05-15 17:22:13.64	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600254585	ANU	\N
3174	f2kn3ajeo9xsn0ml0p6ke91s	2026-05-15 17:21:58.753	2026-05-15 17:21:59.234	2026-05-15 17:21:59.252	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879560679	REEMA	\N
3184	gsbap0inzvct6c5p84npcewu	2026-05-15 17:22:01.149	2026-05-15 17:22:13.678	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909192984	SUJATA MAHETA	\N
3180	lnhb6wh3mxu4t48lz4jw2w64	2026-05-15 17:21:59.987	2026-05-15 17:22:00.392	2026-05-15 17:22:00.406	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600254585	ANU	\N
3188	pfutra1eft45tg92uv1g9rk7	2026-05-15 17:22:02.379	2026-05-15 17:22:13.722	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925123410	hitesh	\N
3186	gsbap0inzvct6c5p84npcewu	2026-05-15 17:22:01.149	2026-05-15 17:22:01.575	2026-05-15 17:22:01.588	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909192984	SUJATA MAHETA	\N
3194	e87bwnvkdjkke6lc652lr9cx	2026-05-15 17:22:03.526	2026-05-15 17:22:13.766	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879293369	dishank	\N
3190	pfutra1eft45tg92uv1g9rk7	2026-05-15 17:22:02.379	2026-05-15 17:22:02.82	2026-05-15 17:22:02.835	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925123410	hitesh	\N
3204	p6i226ngz31a500qsttbelf5	2026-05-15 17:22:05.833	2026-05-15 17:22:13.852	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638222562	Hardik Parab lab	\N
3196	e87bwnvkdjkke6lc652lr9cx	2026-05-15 17:22:03.526	2026-05-15 17:22:03.918	2026-05-15 17:22:03.933	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879293369	dishank	\N
3200	ukfnm7j6t6v6t3kzry5ccd5i	2026-05-15 17:21:20.745	2026-05-15 17:22:05.142	2026-05-15 17:22:05.154	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
3207	rgh7je8r2y64upo3apyp3g2n	2026-05-15 17:22:06.399	2026-05-15 17:22:13.873	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824034734	rajan parikh	\N
3213	a8qq8komnncxvv4bjonbxmne	2026-05-15 17:22:07.61	2026-05-15 17:22:13.942	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998796311	JYOTI	\N
3209	rgh7je8r2y64upo3apyp3g2n	2026-05-15 17:22:06.399	2026-05-15 17:22:06.85	2026-05-15 17:22:06.867	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824034734	rajan parikh	\N
3090	ld0a9zsomq12bg7yr26ldoul	2026-05-15 17:21:40.629	2026-05-15 17:22:11.818	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9819707470	TOFFEE MEHTA	\N
3119	k0mwfacbup9vmhxe8zit5r3y	2026-05-15 17:21:47.208	2026-05-15 17:22:13.194	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825007282	SEEMA MEHTA	\N
2985	cds8gstt7974f7aamztngqnx	2026-05-15 17:21:17.007	2026-05-15 17:21:17.456	2026-05-15 17:21:17.471	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
3128	khz6jq8975e67je4vj2fcn87	2026-05-15 17:21:48.878	2026-05-15 17:22:13.26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924126036	MEGHNA SHUKLA	\N
2991	lo56mlzqho3cd010obw1cc0z	2026-05-15 17:21:18.17	2026-05-15 17:21:18.566	2026-05-15 17:21:18.58	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904149382	TEJAS BORISA	\N
3138	lz903e47tvhjjws2ontwrr57	2026-05-15 17:21:51.182	2026-05-15 17:22:13.328	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979911315	CHINTAN PATEL	\N
2997	r0qkor1uav7utpv9grng8rlq	2026-05-15 17:21:19.264	2026-05-15 17:21:19.746	2026-05-15 17:21:19.783	\N	\N	\N	\N	\N	\N	\N	\N	\N	7688272858	enhance family saloon	\N
3124	jire0lfktakfjypbhdmgrow4	2026-05-15 17:21:47.759	2026-05-15 17:21:48.175	2026-05-15 17:21:48.189	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
3175	dt648nf7wqqn49r0rcy7gyyh	2026-05-15 17:21:59.41	2026-05-15 17:22:13.617	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077905	jp pandya	\N
3010	uxmzu6nlzbg0x92j8c59x5o1	2026-05-15 17:21:22.607	2026-05-15 17:21:22.997	2026-05-15 17:21:23.011	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725025000	bagga	\N
3181	za1sptzp5loyzspzwcur0h6p	2026-05-15 17:22:00.545	2026-05-15 17:22:13.657	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9636455547	NARESH	\N
3017	z1f9fvuzdqwzflr1rslyrphj	2026-05-15 17:20:06.596	2026-05-15 17:21:24.988	2026-05-15 17:21:25.002	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
2819	hl7l7rb9lgmqi2e4vp1n9lwp	2026-05-15 17:20:40.24	2026-05-15 17:22:13.701	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
3023	m7tpf3j3imy91234wkhiksdu	2026-05-15 17:21:25.697	2026-05-15 17:21:26.102	2026-05-15 17:21:26.118	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909971900	JETI SHAH	\N
3191	pieqp740ksvhw19ehq83rgli	2026-05-15 17:22:02.971	2026-05-15 17:22:13.744	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265039638	ananya	\N
3029	h92mw8n2om062blmdkxrrgxt	2026-05-15 17:21:26.816	2026-05-15 17:21:27.213	2026-05-15 17:21:27.226	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898398983	KARAN JIT	\N
3130	khz6jq8975e67je4vj2fcn87	2026-05-15 17:21:48.878	2026-05-15 17:21:49.278	2026-05-15 17:21:49.292	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924126036	MEGHNA SHUKLA	\N
3197	zkmhfbsu9cdw15wh74eksfih	2026-05-15 17:22:04.072	2026-05-15 17:22:13.787	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980496774	LALIT	\N
3035	wd1vy4jgdvyj3078vkaxoo3i	2026-05-15 17:21:27.916	2026-05-15 17:21:28.416	2026-05-15 17:21:28.449	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824037807	jay	\N
3134	rl5rlc9xgrtwv5k8vaccp5ns	2026-05-15 17:21:49.425	2026-05-15 17:21:50.471	2026-05-15 17:21:50.484	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687686467	ANERI SHAH	\N
3001	ukfnm7j6t6v6t3kzry5ccd5i	2026-05-15 17:21:20.745	2026-05-15 17:22:13.81	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
3059	ipx9y744xntiqltyb1a08oq7	2026-05-15 17:21:33.257	2026-05-15 17:21:33.723	2026-05-15 17:21:33.737	\N	\N	\N	\N	\N	\N	\N	\N	\N	7490053277	charu patel	\N
3201	hxjkhqtib0nc796tx1u15mt2	2026-05-15 17:22:05.296	2026-05-15 17:22:13.83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725899957	Yash wadhwani	\N
3065	v6qp595j33a6lnfvml2kip0k	2026-05-15 17:21:34.467	2026-05-15 17:21:34.904	2026-05-15 17:21:34.918	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990980688	aji	\N
3068	d9wx10fk1xkrxcpc1r63m5qx	2026-05-15 17:21:35.071	2026-05-15 17:21:35.608	2026-05-15 17:21:35.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866141601	SPURGE FOUNDATION	\N
3071	bzwy6zhys6egzud6ih77jbbu	2026-05-15 17:21:35.8	2026-05-15 17:21:36.255	2026-05-15 17:21:36.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824262434	gaurang	\N
3074	fuazq0x58nx1fidqsa6ko6y9	2026-05-15 17:21:36.428	2026-05-15 17:21:37.127	2026-05-15 17:21:37.139	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979320012	parul patel	\N
3077	tj4hsdilv36v8nq26awsr92d	2026-05-15 17:21:37.291	2026-05-15 17:21:37.955	2026-05-15 17:21:37.995	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
3080	mwpfmd64h41irqaruucbohsf	2026-05-15 17:21:38.274	2026-05-15 17:21:38.779	2026-05-15 17:21:38.798	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426689696	SAMIR JAIN	\N
3086	krmmosz2mbsctmtyixxzsuo8	2026-05-15 17:21:39.517	2026-05-15 17:21:39.917	2026-05-15 17:21:39.931	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724939424	boby	\N
3140	lz903e47tvhjjws2ontwrr57	2026-05-15 17:21:51.182	2026-05-15 17:21:51.586	2026-05-15 17:21:51.6	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979911315	CHINTAN PATEL	\N
3143	mjvf8gf7yupf079dvyn23wam	2026-05-15 17:21:51.738	2026-05-15 17:21:52.167	2026-05-15 17:21:52.181	\N	\N	\N	\N	\N	\N	\N	\N	\N	7043222087	krutika	\N
3177	dt648nf7wqqn49r0rcy7gyyh	2026-05-15 17:21:59.41	2026-05-15 17:21:59.834	2026-05-15 17:21:59.846	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077905	jp pandya	\N
3183	za1sptzp5loyzspzwcur0h6p	2026-05-15 17:22:00.545	2026-05-15 17:22:00.992	2026-05-15 17:22:01.006	\N	\N	\N	\N	\N	\N	\N	\N	\N	9636455547	NARESH	\N
3187	hl7l7rb9lgmqi2e4vp1n9lwp	2026-05-15 17:20:40.24	2026-05-15 17:22:02.225	2026-05-15 17:22:02.241	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
3193	pieqp740ksvhw19ehq83rgli	2026-05-15 17:22:02.971	2026-05-15 17:22:03.37	2026-05-15 17:22:03.383	\N	\N	\N	\N	\N	\N	\N	\N	\N	9265039638	ananya	\N
3199	zkmhfbsu9cdw15wh74eksfih	2026-05-15 17:22:04.072	2026-05-15 17:22:04.462	2026-05-15 17:22:04.475	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980496774	LALIT	\N
3203	hxjkhqtib0nc796tx1u15mt2	2026-05-15 17:22:05.296	2026-05-15 17:22:05.693	2026-05-15 17:22:05.707	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725899957	Yash wadhwani	\N
3206	p6i226ngz31a500qsttbelf5	2026-05-15 17:22:05.833	2026-05-15 17:22:06.249	2026-05-15 17:22:06.263	\N	\N	\N	\N	\N	\N	\N	\N	\N	9638222562	Hardik Parab lab	\N
2748	n3ji89lpk0jzh43ej3f2c3c8	2026-05-15 17:20:23.362	2026-05-15 17:22:10.071	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
2983	cds8gstt7974f7aamztngqnx	2026-05-15 17:21:17.007	2026-05-15 17:22:11.564	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
2989	lo56mlzqho3cd010obw1cc0z	2026-05-15 17:21:18.17	2026-05-15 17:22:11.594	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9904149382	TEJAS BORISA	\N
2995	r0qkor1uav7utpv9grng8rlq	2026-05-15 17:21:19.264	2026-05-15 17:22:11.616	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7688272858	enhance family saloon	\N
3008	uxmzu6nlzbg0x92j8c59x5o1	2026-05-15 17:21:22.607	2026-05-15 17:22:11.641	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725025000	bagga	\N
3021	m7tpf3j3imy91234wkhiksdu	2026-05-15 17:21:25.697	2026-05-15 17:22:11.686	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909971900	JETI SHAH	\N
3027	h92mw8n2om062blmdkxrrgxt	2026-05-15 17:21:26.816	2026-05-15 17:22:11.707	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898398983	KARAN JIT	\N
3033	wd1vy4jgdvyj3078vkaxoo3i	2026-05-15 17:21:27.916	2026-05-15 17:22:11.728	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824037807	jay	\N
3014	tn0ykakz9mqc8fu0qk5nff3n	2026-05-15 17:21:23.834	2026-05-15 17:22:12.53	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099924735	Pooja Srivastava	\N
3057	ipx9y744xntiqltyb1a08oq7	2026-05-15 17:21:33.257	2026-05-15 17:22:12.746	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7490053277	charu patel	\N
3063	v6qp595j33a6lnfvml2kip0k	2026-05-15 17:21:34.467	2026-05-15 17:22:12.79	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990980688	aji	\N
3084	krmmosz2mbsctmtyixxzsuo8	2026-05-15 17:21:39.517	2026-05-15 17:22:12.921	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9724939424	boby	\N
3122	jire0lfktakfjypbhdmgrow4	2026-05-15 17:21:47.759	2026-05-15 17:22:13.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
\.


--
-- Data for Name: customers_customet_status_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customet_status_lnk (id, customer_id, customet_status_id) FROM stdin;
25046	2527	11
25047	2529	25
25048	2530	11
25049	2532	25
25050	2533	11
25051	2535	25
25052	2536	11
25054	2539	11
25056	2542	11
25057	2544	25
25058	2545	11
25060	2548	11
25061	2550	25
25062	2551	11
25063	2553	25
25064	2554	11
25065	2556	25
25066	2557	11
25067	2559	25
25068	2560	11
25070	2563	11
25071	2565	25
25072	2566	11
25073	2568	25
25074	2569	11
25075	2571	25
25076	2572	11
25077	2574	25
25078	2575	11
25080	2578	11
25081	2580	25
25082	2581	11
25083	2583	25
25084	2584	11
25085	2586	25
25086	2587	11
25087	2589	25
25088	2590	11
25089	2592	25
25090	2593	11
25091	2595	25
25092	2596	11
25093	2598	25
25094	2599	11
25095	2601	25
25096	2602	11
25097	2604	25
25098	2605	11
25099	2607	25
25100	2608	11
25101	2610	25
25102	2611	11
25103	2613	25
25104	2614	11
25105	2616	25
25106	2617	11
25107	2619	25
25108	2620	11
25109	2622	25
25110	2623	11
25111	2625	25
25112	2626	11
25113	2628	25
25114	2629	11
25115	2631	25
25116	2632	11
25117	2634	25
25118	2635	11
25120	2638	11
25121	2640	25
25122	2641	11
25124	2644	11
25125	2646	25
25126	2647	11
25127	2649	25
25128	2650	11
25129	2652	25
25130	2653	11
25131	2655	25
25132	2656	11
25133	2658	25
25134	2659	11
25136	2662	11
25137	2664	25
25138	2665	11
25139	2667	25
25140	2668	11
25141	2670	25
25142	2671	11
25144	2674	11
25145	2676	25
25146	2677	11
25148	2680	11
25149	2682	25
25150	2683	11
25151	2685	25
25153	2686	25
25154	2687	11
25155	2689	25
25157	2690	25
25158	2691	11
25159	2693	25
25160	2694	11
25161	2696	25
25162	2697	11
25163	2699	25
25164	2700	11
25166	2703	11
25167	2705	25
25168	2706	11
25169	2708	25
25170	2709	11
25171	2711	25
25172	2712	11
25174	2715	11
25175	2717	25
25176	2718	11
25178	2721	11
25179	2723	25
25180	2724	11
25181	2726	25
25182	2727	11
25183	2729	25
25184	2730	11
25185	2732	25
25186	2733	11
25187	2735	25
25188	2736	11
25189	2738	25
25190	2739	11
25191	2741	25
25192	2742	11
25193	2744	25
25194	2745	11
25195	2747	25
25196	2748	11
25197	2750	25
25199	2751	25
25200	2752	11
25201	2754	25
25202	2755	11
25204	2758	11
25205	2760	25
25206	2761	11
25207	2763	25
25208	2764	11
25209	2766	25
25210	2767	11
25211	2769	25
25212	2770	11
25213	2772	25
25214	2773	11
25215	2775	25
25216	2776	11
25217	2778	25
25218	2779	11
25219	2781	25
25220	2782	11
25221	2784	25
25222	2785	11
25223	2787	25
25224	2788	11
25225	2790	25
25227	2791	25
25228	2792	11
25229	2794	25
25230	2795	11
25231	2797	25
25232	2798	11
25233	2800	25
25234	2801	11
25235	2803	25
25236	2804	11
25237	2806	25
25238	2807	11
25239	2809	25
25240	2810	11
25241	2812	25
25242	2813	11
25243	2815	25
25246	2819	11
25244	2816	11
25245	2818	25
25250	2823	11
25251	2825	25
25252	2826	11
25253	2828	25
25254	2829	11
25255	2831	25
25256	2832	11
25257	2834	25
25258	2835	11
25259	2837	25
25260	2838	11
25261	2840	25
25262	2841	11
25263	2843	25
25264	2844	11
25265	2846	25
25266	2847	11
25267	2849	25
25268	2850	11
25269	2852	25
25270	2853	11
25271	2855	25
25273	2856	25
25274	2857	11
25275	2859	25
25276	2860	11
25277	2862	25
25278	2863	11
25279	2865	25
25282	2867	11
25283	2869	25
25284	2870	11
25285	2872	25
25286	2873	11
25287	2875	25
25288	2876	11
25289	2878	25
25290	2879	11
25291	2881	25
25292	2882	11
25293	2884	25
25295	2885	25
25296	2886	11
25297	2888	25
25298	2889	11
25299	2891	25
25300	2892	11
25301	2894	25
25302	2895	11
25303	2897	25
25304	2898	11
25305	2900	25
25306	2901	11
25307	2903	25
25308	2904	11
25309	2906	25
25310	2907	11
25311	2909	25
25312	2910	11
25313	2912	25
25314	2913	11
25315	2915	25
25316	2916	11
25317	2918	25
25318	2919	11
25319	2921	25
25320	2922	11
25321	2924	25
25322	2925	11
25323	2927	25
25324	2928	11
25325	2930	25
25326	2931	11
25327	2933	25
25328	2934	11
25329	2936	25
25330	2937	11
25331	2939	25
25332	2940	11
25333	2942	25
25334	2943	11
25335	2945	25
25336	2946	11
25337	2948	25
25338	2949	11
25339	2951	25
25340	2952	11
25341	2954	25
25342	2955	11
25343	2957	25
25345	2958	25
25348	2960	11
25349	2962	25
25350	2963	11
25351	2965	25
25352	2966	11
25353	2968	25
25354	2969	11
25355	2971	25
25356	2972	11
25357	2974	25
25358	2975	11
25359	2977	25
25361	2978	25
25362	2979	11
25363	2981	25
25365	2982	25
25366	2983	11
25367	2985	25
25368	2986	11
25369	2988	25
25370	2989	11
25371	2991	25
25372	2992	11
25373	2994	25
25374	2995	11
25375	2997	25
25376	2998	11
25377	3000	25
25378	3001	11
25380	3004	11
25381	3006	25
25383	3007	25
25384	3008	11
25385	3010	25
25386	3011	11
25387	3013	25
25388	3014	11
25389	3016	25
25391	3017	25
25392	3018	11
25393	3020	25
25394	3021	11
25395	3023	25
25396	3024	11
25397	3026	25
25398	3027	11
25399	3029	25
25400	3030	11
25401	3032	25
25402	3033	11
25403	3035	25
25404	3036	11
25405	3038	25
25406	3039	11
25407	3041	25
25408	3042	11
25409	3044	25
25410	3045	11
25411	3047	25
25412	3048	11
25413	3050	25
25414	3051	11
25415	3053	25
25416	3054	11
25417	3056	25
25418	3057	11
25419	3059	25
25420	3060	11
25421	3062	25
25422	3063	11
25423	3065	25
25424	3066	11
25425	3068	25
25426	3069	11
25427	3071	25
25428	3072	11
25429	3074	25
25430	3075	11
25431	3077	25
25432	3078	11
25433	3080	25
25434	3081	11
25435	3083	25
25436	3084	11
25437	3086	25
25438	3087	11
25439	3089	25
25440	3090	11
25441	3092	25
25442	3093	11
25443	3095	25
25445	3096	25
25446	3097	11
25447	3099	25
25448	3100	11
25449	3102	25
25450	3103	11
25451	3105	25
25452	3106	11
25453	3108	25
25454	3109	11
25455	3111	25
25456	3112	11
25457	3114	25
25459	3115	25
25460	3116	11
25461	3118	25
25462	3119	11
25463	3121	25
25464	3122	11
25465	3124	25
25466	3125	11
25467	3127	25
25468	3128	11
25469	3130	25
25470	3131	11
25473	3134	25
25474	3135	11
25475	3137	25
25476	3138	11
25477	3140	25
25478	3141	11
25479	3143	25
25480	3144	11
25481	3146	25
25482	3147	11
25483	3149	25
25484	3150	11
25485	3152	25
25486	3153	11
25487	3155	25
25488	3156	11
25489	3158	25
25490	3159	11
25491	3161	25
25492	3162	11
25493	3164	25
25495	3165	25
25496	3166	11
25497	3168	25
25498	3169	11
25499	3171	25
25500	3172	11
25501	3174	25
25502	3175	11
25503	3177	25
25504	3178	11
25505	3180	25
25506	3181	11
25507	3183	25
25508	3184	11
25509	3186	25
25511	3187	25
25512	3188	11
25513	3190	25
25514	3191	11
25515	3193	25
25516	3194	11
25517	3196	25
25518	3197	11
25519	3199	25
25521	3200	25
25522	3201	11
25523	3203	25
25524	3204	11
25525	3206	25
25526	3207	11
25527	3209	25
25528	3210	11
25529	3212	25
25530	3213	11
25531	3215	25
25532	3216	11
25533	3218	25
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
2589	2527	9
3157	3095	10
2591	2529	10
2592	2530	9
3159	3097	9
2594	2532	10
2595	2533	9
2597	2535	10
2598	2536	9
3162	3100	9
2601	2539	9
3164	3102	10
3167	3105	10
2604	2542	9
3168	3106	9
2606	2544	10
2607	2545	9
3170	3108	10
2610	2548	9
3174	3112	9
2612	2550	10
2613	2551	9
2615	2553	10
2616	2554	9
2618	2556	10
2619	2557	9
2621	2559	10
2622	2560	9
2625	2563	9
2627	2565	10
2628	2566	9
2630	2568	10
2631	2569	9
2633	2571	10
2634	2572	9
2636	2574	10
2637	2575	9
2640	2578	9
2642	2580	10
2643	2581	9
2645	2583	10
2646	2584	9
2648	2586	10
2649	2587	9
2651	2589	10
2652	2590	9
2654	2592	10
2655	2593	9
2657	2595	10
2658	2596	9
2660	2598	10
2661	2599	9
2663	2601	10
2664	2602	9
2666	2604	10
2667	2605	9
2669	2607	10
2670	2608	9
2672	2610	10
2673	2611	9
2675	2613	10
2676	2614	9
2678	2616	10
2679	2617	9
2681	2619	10
2682	2620	9
2684	2622	10
2685	2623	9
2687	2625	10
2688	2626	9
2690	2628	10
2691	2629	9
2693	2631	10
2694	2632	9
2696	2634	10
2697	2635	9
2700	2638	9
2702	2640	10
2703	2641	9
2706	2644	9
2708	2646	10
2709	2647	9
2711	2649	10
2712	2650	9
2714	2652	10
2715	2653	9
2717	2655	10
2718	2656	9
2720	2658	10
2721	2659	9
2724	2662	9
2726	2664	10
2727	2665	9
2729	2667	10
2730	2668	9
2732	2670	10
2733	2671	9
2736	2674	9
2738	2676	10
2739	2677	9
2742	2680	9
2744	2682	10
2745	2683	9
2747	2685	10
2748	2686	10
2749	2687	9
2751	2689	10
2752	2690	10
2753	2691	9
2755	2693	10
2756	2694	9
2758	2696	10
2759	2697	9
2761	2699	10
2762	2700	9
2765	2703	9
2767	2705	10
2768	2706	9
2770	2708	10
2771	2709	9
2773	2711	10
2774	2712	9
2777	2715	9
2779	2717	10
2780	2718	9
2783	2721	9
2785	2723	10
2786	2724	9
2788	2726	10
2789	2727	9
2791	2729	10
2792	2730	9
2794	2732	10
2795	2733	9
2797	2735	10
2798	2736	9
2800	2738	10
2801	2739	9
2803	2741	10
2804	2742	9
2806	2744	10
2807	2745	9
2809	2747	10
2810	2748	9
2812	2750	10
2813	2751	10
2814	2752	9
2816	2754	10
2817	2755	9
2820	2758	9
2822	2760	10
2823	2761	9
2825	2763	10
2826	2764	9
2828	2766	10
2829	2767	9
2831	2769	10
2832	2770	9
2834	2772	10
2835	2773	9
2837	2775	10
2838	2776	9
2840	2778	10
2841	2779	9
2843	2781	10
2844	2782	9
2846	2784	10
2847	2785	9
2849	2787	10
2850	2788	9
2852	2790	10
2853	2791	10
2854	2792	9
2856	2794	10
2857	2795	9
2885	2823	9
2860	2798	9
3158	3096	10
2863	2801	9
2887	2825	10
2866	2804	9
2891	2829	9
2869	2807	9
3161	3099	10
2872	2810	9
2893	2831	10
2875	2813	9
2897	2835	9
2878	2816	9
3165	3103	9
2880	2818	10
2900	2838	9
2902	2840	10
2906	2844	9
3171	3109	9
2908	2846	10
2912	2850	9
2915	2853	9
3173	3111	10
2917	2855	10
2918	2856	10
2921	2859	10
2925	2863	9
3177	3115	10
2927	2865	10
2929	2867	9
3181	3119	9
2931	2869	10
2935	2873	9
2937	2875	10
2941	2879	9
3183	3121	10
2943	2881	10
2947	2885	10
2951	2889	9
3184	3122	9
2953	2891	10
2954	2892	9
2956	2894	10
2957	2895	9
3186	3124	10
2959	2897	10
2960	2898	9
3190	3128	9
2962	2900	10
2963	2901	9
2965	2903	10
2966	2904	9
3192	3130	10
2968	2906	10
2969	2907	9
3196	3134	10
2971	2909	10
2972	2910	9
3200	3138	9
2974	2912	10
2975	2913	9
2977	2915	10
2978	2916	9
3202	3140	10
2980	2918	10
2981	2919	9
3205	3143	10
2983	2921	10
2984	2922	9
3209	3147	9
2986	2924	10
2987	2925	9
2989	2927	10
2990	2928	9
3212	3150	9
2992	2930	10
2993	2931	9
2995	2933	10
2996	2934	9
3215	3153	9
2998	2936	10
2999	2937	9
3001	2939	10
3002	2940	9
3218	3156	9
3004	2942	10
3005	2943	9
3007	2945	10
3008	2946	9
3221	3159	9
3010	2948	10
3011	2949	9
3013	2951	10
3014	2952	9
3223	3161	10
3016	2954	10
3017	2955	9
3228	3166	9
3019	2957	10
3020	2958	10
3022	2960	9
3230	3168	10
3024	2962	10
3025	2963	9
3234	3172	9
3027	2965	10
3028	2966	9
3030	2968	10
3031	2969	9
3236	3174	10
3033	2971	10
3034	2972	9
3237	3175	9
3036	2974	10
3037	2975	9
3039	2977	10
3041	2979	9
3239	3177	10
3043	2981	10
3044	2982	10
3048	2986	9
3240	3178	9
3050	2988	10
3054	2992	9
3056	2994	10
3060	2998	9
3242	3180	10
3062	3000	10
3066	3004	9
3243	3181	9
3068	3006	10
3069	3007	10
3073	3011	9
3075	3013	10
3078	3016	10
3080	3018	9
3245	3183	10
3082	3020	10
3086	3024	9
3246	3184	9
3088	3026	10
3092	3030	9
3094	3032	10
3098	3036	9
3248	3186	10
3100	3038	10
3101	3039	9
3249	3187	10
3103	3041	10
3104	3042	9
3250	3188	9
3106	3044	10
3107	3045	9
3109	3047	10
3110	3048	9
3252	3190	10
3112	3050	10
3113	3051	9
3253	3191	9
3115	3053	10
3116	3054	9
3118	3056	10
3122	3060	9
3255	3193	10
3124	3062	10
3128	3066	9
3256	3194	9
3131	3069	9
3134	3072	9
3258	3196	10
3137	3075	9
3259	3197	9
3140	3078	9
3143	3081	9
3261	3199	10
3145	3083	10
3149	3087	9
3262	3200	10
3151	3089	10
3152	3090	9
3154	3092	10
3155	3093	9
2859	2797	10
2862	2800	10
2865	2803	10
2868	2806	10
2871	2809	10
2874	2812	10
2877	2815	10
2881	2819	9
2888	2826	9
3176	3114	10
2890	2828	10
2894	2832	9
3178	3116	9
2896	2834	10
2899	2837	10
2903	2841	9
2905	2843	10
2909	2847	9
3180	3118	10
2911	2849	10
2914	2852	10
2919	2857	9
3187	3125	9
2922	2860	9
2924	2862	10
3189	3127	10
2932	2870	9
3193	3131	9
2934	2872	10
2938	2876	9
2940	2878	10
2944	2882	9
2946	2884	10
2948	2886	9
3197	3135	9
2950	2888	10
3040	2978	10
3045	2983	9
3047	2985	10
3051	2989	9
3199	3137	10
3053	2991	10
3057	2995	9
3203	3141	9
3059	2997	10
3063	3001	9
3070	3008	9
3206	3144	9
3072	3010	10
3076	3014	9
3079	3017	10
3083	3021	9
3208	3146	10
3085	3023	10
3089	3027	9
3211	3149	10
3091	3029	10
3095	3033	9
3214	3152	10
3097	3035	10
3119	3057	9
3217	3155	10
3121	3059	10
3125	3063	9
3220	3158	10
3127	3065	10
3130	3068	10
3133	3071	10
3136	3074	10
3139	3077	10
3142	3080	10
3146	3084	9
3224	3162	9
3148	3086	10
3226	3164	10
3227	3165	10
3231	3169	9
3233	3171	10
3263	3201	9
3265	3203	10
3266	3204	9
3268	3206	10
3269	3207	9
3271	3209	10
3272	3210	9
3274	3212	10
3275	3213	9
3277	3215	10
3278	3216	9
3280	3218	10
\.


--
-- Data for Name: customet_follow_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, count, follow_up_date, is_followed, note) FROM stdin;
1749	mzo68384skah7iqm00hik0qf	2026-05-15 17:19:35.318	2026-05-15 17:19:35.318	2026-05-15 17:19:35.359	\N	\N	\N	0	\N	f	\N
1751	ep3z5ee4x0qibbtn5ax72pt1	2026-05-15 17:19:36.101	2026-05-15 17:19:36.101	2026-05-15 17:19:36.122	\N	\N	\N	0	\N	f	\N
1753	lsryckz6a46l06jbrlia2m7q	2026-05-15 17:19:36.805	2026-05-15 17:19:36.805	2026-05-15 17:19:36.822	\N	\N	\N	0	\N	f	\N
1759	p1k2z47tasmfhdheeiebydc4	2026-05-15 17:19:38.751	2026-05-15 17:19:38.751	2026-05-15 17:19:38.768	\N	\N	\N	0	\N	f	\N
1763	gfpht923gn4viku0qiw7fa4h	2026-05-15 17:19:39.961	2026-05-15 17:19:39.961	2026-05-15 17:19:39.976	\N	\N	\N	0	\N	f	\N
1765	k1l9g5fpvr3e656r9wascsej	2026-05-15 17:19:40.54	2026-05-15 17:19:40.54	2026-05-15 17:19:40.556	\N	\N	\N	0	\N	f	\N
1767	ff2gp2rxomx5luvwjeqlnpca	2026-05-15 17:19:41.164	2026-05-15 17:19:41.164	2026-05-15 17:19:41.187	\N	\N	\N	0	\N	f	\N
1769	bzvxybqru993qqfnaxqgv18h	2026-05-15 17:19:41.911	2026-05-15 17:19:41.911	2026-05-15 17:19:41.926	\N	\N	\N	0	\N	f	\N
1773	uswwmbj5d5tv31xb89mmakc2	2026-05-15 17:19:43.055	2026-05-15 17:19:43.055	2026-05-15 17:19:43.069	\N	\N	\N	0	\N	f	\N
1775	s2ylgwye2cv845f24e8wu3lo	2026-05-15 17:19:43.735	2026-05-15 17:19:43.735	2026-05-15 17:19:43.75	\N	\N	\N	0	\N	f	\N
1777	a7ojln6cfziw9pwn8pfv89n2	2026-05-15 17:19:44.381	2026-05-15 17:19:44.381	2026-05-15 17:19:44.395	\N	\N	\N	0	\N	f	\N
1779	uelp6zrpeboxhwd7x3sj7203	2026-05-15 17:19:45.025	2026-05-15 17:19:45.025	2026-05-15 17:19:45.041	\N	\N	\N	0	\N	f	\N
1783	c6lndyk09e0l3o1mko7dlzgd	2026-05-15 17:19:46.299	2026-05-15 17:19:46.299	2026-05-15 17:19:46.314	\N	\N	\N	0	\N	f	\N
1785	pq0rsnl926coxavvidf1gp2m	2026-05-15 17:19:46.959	2026-05-15 17:19:46.959	2026-05-15 17:19:46.976	\N	\N	\N	0	\N	f	\N
1787	s8ngrojw9pmdbjksn9v28cr8	2026-05-15 17:19:47.596	2026-05-15 17:19:47.596	2026-05-15 17:19:47.613	\N	\N	\N	0	\N	f	\N
1789	pkf32ai0eewvx6x8mq9ugr4q	2026-05-15 17:19:48.223	2026-05-15 17:19:48.223	2026-05-15 17:19:48.237	\N	\N	\N	0	\N	f	\N
1791	kdu3hc0wa0ntfzznwv6tal04	2026-05-15 17:19:48.861	2026-05-15 17:19:48.861	2026-05-15 17:19:48.878	\N	\N	\N	0	\N	f	\N
1793	d2wip8z0ie39w9w5m3j4f7y0	2026-05-15 17:19:49.635	2026-05-15 17:19:49.635	2026-05-15 17:19:49.648	\N	\N	\N	0	\N	f	\N
1795	nkh22fhfp9ohvbtkncdqpb7k	2026-05-15 17:19:50.248	2026-05-15 17:19:50.248	2026-05-15 17:19:50.264	\N	\N	\N	0	\N	f	\N
1797	i7trgiq1l0wd3t9rdn4x5und	2026-05-15 17:19:50.853	2026-05-15 17:19:50.853	2026-05-15 17:19:50.868	\N	\N	\N	0	\N	f	\N
1799	c5uq65iydnz2wkqdnind9tng	2026-05-15 17:19:51.444	2026-05-15 17:19:51.444	2026-05-15 17:19:51.456	\N	\N	\N	0	\N	f	\N
1801	dggfrsretyxt9aqjuh6kxhs8	2026-05-15 17:19:52.038	2026-05-15 17:19:52.038	2026-05-15 17:19:52.052	\N	\N	\N	0	\N	f	\N
1803	r0x75zk0zlwyjef6wyrxrfc2	2026-05-15 17:19:52.686	2026-05-15 17:19:52.686	2026-05-15 17:19:52.701	\N	\N	\N	0	\N	f	\N
1805	df4gtqw62lbadppxir0gifwa	2026-05-15 17:19:53.314	2026-05-15 17:19:53.314	2026-05-15 17:19:53.327	\N	\N	\N	0	\N	f	\N
1807	jr9j26tokdmiwyct09xrvcz9	2026-05-15 17:19:53.903	2026-05-15 17:19:53.903	2026-05-15 17:19:53.917	\N	\N	\N	0	\N	f	\N
1809	tbq0u8wtlwkyd424fii0atpg	2026-05-15 17:19:54.534	2026-05-15 17:19:54.534	2026-05-15 17:19:54.549	\N	\N	\N	0	\N	f	\N
1811	ma0xeddu5ksr4gxvsim5wty5	2026-05-15 17:19:55.145	2026-05-15 17:19:55.145	2026-05-15 17:19:55.159	\N	\N	\N	0	\N	f	\N
1813	h0kfyds4wruoxbam4dkscr22	2026-05-15 17:19:55.733	2026-05-15 17:19:55.733	2026-05-15 17:19:55.747	\N	\N	\N	0	\N	f	\N
1815	i44ru53z8dl1b0tpqm48134h	2026-05-15 17:19:56.327	2026-05-15 17:19:56.327	2026-05-15 17:19:56.341	\N	\N	\N	0	\N	f	\N
1817	xpq26y5eqyy6xdcebkunj4rb	2026-05-15 17:19:56.918	2026-05-15 17:19:56.918	2026-05-15 17:19:56.931	\N	\N	\N	0	\N	f	\N
1819	jaernf66vrevnoc11a15ifkr	2026-05-15 17:19:57.514	2026-05-15 17:19:57.514	2026-05-15 17:19:57.53	\N	\N	\N	0	\N	f	\N
1823	h8u917ub22uc4a25lh79w3kp	2026-05-15 17:19:58.717	2026-05-15 17:19:58.717	2026-05-15 17:19:58.732	\N	\N	\N	0	\N	f	\N
1827	vls6mwng1zpfif4drvdbzkfv	2026-05-15 17:19:59.916	2026-05-15 17:19:59.916	2026-05-15 17:19:59.926	\N	\N	\N	0	\N	f	\N
1829	z7yoiqqf5q2rnsmzbhurqrzk	2026-05-15 17:20:00.528	2026-05-15 17:20:00.528	2026-05-15 17:20:00.541	\N	\N	\N	0	\N	f	\N
1831	iy64vmgn3ui1xr8pc9x9g2sv	2026-05-15 17:20:01.146	2026-05-15 17:20:01.146	2026-05-15 17:20:01.157	\N	\N	\N	0	\N	f	\N
1885	pxcgpn7h2hny41r98l5z7ls8	2026-05-15 17:20:17.772	2026-05-15 17:20:17.772	2026-05-15 17:20:17.804	\N	\N	\N	0	\N	f	\N
1748	mzo68384skah7iqm00hik0qf	2026-05-15 17:19:35.318	2026-05-15 17:22:08.931	\N	\N	\N	\N	0	\N	f	\N
1750	ep3z5ee4x0qibbtn5ax72pt1	2026-05-15 17:19:36.101	2026-05-15 17:22:08.96	\N	\N	\N	\N	0	\N	f	\N
1752	lsryckz6a46l06jbrlia2m7q	2026-05-15 17:19:36.805	2026-05-15 17:22:08.998	\N	\N	\N	\N	0	\N	f	\N
1758	p1k2z47tasmfhdheeiebydc4	2026-05-15 17:19:38.751	2026-05-15 17:22:09.04	\N	\N	\N	\N	0	\N	f	\N
1762	gfpht923gn4viku0qiw7fa4h	2026-05-15 17:19:39.961	2026-05-15 17:22:09.091	\N	\N	\N	\N	0	\N	f	\N
1764	k1l9g5fpvr3e656r9wascsej	2026-05-15 17:19:40.54	2026-05-15 17:22:09.19	\N	\N	\N	\N	0	\N	f	\N
1766	ff2gp2rxomx5luvwjeqlnpca	2026-05-15 17:19:41.164	2026-05-15 17:22:09.271	\N	\N	\N	\N	0	\N	f	\N
1768	bzvxybqru993qqfnaxqgv18h	2026-05-15 17:19:41.911	2026-05-15 17:22:09.362	\N	\N	\N	\N	0	\N	f	\N
1772	uswwmbj5d5tv31xb89mmakc2	2026-05-15 17:19:43.055	2026-05-15 17:22:09.389	\N	\N	\N	\N	0	\N	f	\N
1774	s2ylgwye2cv845f24e8wu3lo	2026-05-15 17:19:43.735	2026-05-15 17:22:09.415	\N	\N	\N	\N	0	\N	f	\N
1776	a7ojln6cfziw9pwn8pfv89n2	2026-05-15 17:19:44.381	2026-05-15 17:22:09.442	\N	\N	\N	\N	0	\N	f	\N
1778	uelp6zrpeboxhwd7x3sj7203	2026-05-15 17:19:45.025	2026-05-15 17:22:09.468	\N	\N	\N	\N	0	\N	f	\N
1782	c6lndyk09e0l3o1mko7dlzgd	2026-05-15 17:19:46.299	2026-05-15 17:22:09.493	\N	\N	\N	\N	0	\N	f	\N
1784	pq0rsnl926coxavvidf1gp2m	2026-05-15 17:19:46.959	2026-05-15 17:22:09.519	\N	\N	\N	\N	0	\N	f	\N
1786	s8ngrojw9pmdbjksn9v28cr8	2026-05-15 17:19:47.596	2026-05-15 17:22:09.542	\N	\N	\N	\N	0	\N	f	\N
1788	pkf32ai0eewvx6x8mq9ugr4q	2026-05-15 17:19:48.223	2026-05-15 17:22:09.566	\N	\N	\N	\N	0	\N	f	\N
1790	kdu3hc0wa0ntfzznwv6tal04	2026-05-15 17:19:48.861	2026-05-15 17:22:09.59	\N	\N	\N	\N	0	\N	f	\N
1792	d2wip8z0ie39w9w5m3j4f7y0	2026-05-15 17:19:49.635	2026-05-15 17:22:09.614	\N	\N	\N	\N	0	\N	f	\N
1794	nkh22fhfp9ohvbtkncdqpb7k	2026-05-15 17:19:50.248	2026-05-15 17:22:09.641	\N	\N	\N	\N	0	\N	f	\N
1796	i7trgiq1l0wd3t9rdn4x5und	2026-05-15 17:19:50.853	2026-05-15 17:22:09.669	\N	\N	\N	\N	0	\N	f	\N
1798	c5uq65iydnz2wkqdnind9tng	2026-05-15 17:19:51.444	2026-05-15 17:22:09.696	\N	\N	\N	\N	0	\N	f	\N
1800	dggfrsretyxt9aqjuh6kxhs8	2026-05-15 17:19:52.038	2026-05-15 17:22:09.722	\N	\N	\N	\N	0	\N	f	\N
1802	r0x75zk0zlwyjef6wyrxrfc2	2026-05-15 17:19:52.686	2026-05-15 17:22:09.747	\N	\N	\N	\N	0	\N	f	\N
1804	df4gtqw62lbadppxir0gifwa	2026-05-15 17:19:53.314	2026-05-15 17:22:09.772	\N	\N	\N	\N	0	\N	f	\N
1806	jr9j26tokdmiwyct09xrvcz9	2026-05-15 17:19:53.903	2026-05-15 17:22:09.794	\N	\N	\N	\N	0	\N	f	\N
1808	tbq0u8wtlwkyd424fii0atpg	2026-05-15 17:19:54.534	2026-05-15 17:22:09.818	\N	\N	\N	\N	0	\N	f	\N
1810	ma0xeddu5ksr4gxvsim5wty5	2026-05-15 17:19:55.145	2026-05-15 17:22:09.839	\N	\N	\N	\N	0	\N	f	\N
1812	h0kfyds4wruoxbam4dkscr22	2026-05-15 17:19:55.733	2026-05-15 17:22:09.862	\N	\N	\N	\N	0	\N	f	\N
1814	i44ru53z8dl1b0tpqm48134h	2026-05-15 17:19:56.327	2026-05-15 17:22:09.885	\N	\N	\N	\N	0	\N	f	\N
1816	xpq26y5eqyy6xdcebkunj4rb	2026-05-15 17:19:56.918	2026-05-15 17:22:09.907	\N	\N	\N	\N	0	\N	f	\N
1818	jaernf66vrevnoc11a15ifkr	2026-05-15 17:19:57.514	2026-05-15 17:22:09.929	\N	\N	\N	\N	0	\N	f	\N
1822	h8u917ub22uc4a25lh79w3kp	2026-05-15 17:19:58.717	2026-05-15 17:22:09.951	\N	\N	\N	\N	0	\N	f	\N
1826	vls6mwng1zpfif4drvdbzkfv	2026-05-15 17:19:59.916	2026-05-15 17:22:09.976	\N	\N	\N	\N	0	\N	f	\N
1828	z7yoiqqf5q2rnsmzbhurqrzk	2026-05-15 17:20:00.528	2026-05-15 17:22:09.998	\N	\N	\N	\N	0	\N	f	\N
1830	iy64vmgn3ui1xr8pc9x9g2sv	2026-05-15 17:20:01.146	2026-05-15 17:22:10.019	\N	\N	\N	\N	0	\N	f	\N
1832	jz0sj7ql41tcpv57tdx4zikk	2026-05-15 17:20:01.828	2026-05-15 17:22:10.041	\N	\N	\N	\N	0	\N	f	\N
1884	pxcgpn7h2hny41r98l5z7ls8	2026-05-15 17:20:17.772	2026-05-15 17:22:10.062	\N	\N	\N	\N	0	\N	f	\N
1833	jz0sj7ql41tcpv57tdx4zikk	2026-05-15 17:20:01.828	2026-05-15 17:20:01.828	2026-05-15 17:20:01.851	\N	\N	\N	0	\N	f	\N
1835	ogpodtzw5pomc7t80fz2hy1s	2026-05-15 17:20:02.494	2026-05-15 17:20:02.494	2026-05-15 17:20:02.506	\N	\N	\N	0	\N	f	\N
1839	a1lakcwsart3j8dmyjrgxtrv	2026-05-15 17:20:03.726	2026-05-15 17:20:03.726	2026-05-15 17:20:03.744	\N	\N	\N	0	\N	f	\N
1841	wfmpeiydihmimx9w3ecpk82p	2026-05-15 17:20:04.372	2026-05-15 17:20:04.372	2026-05-15 17:20:04.39	\N	\N	\N	0	\N	f	\N
1843	x2n5x9yfe626m8zvpitlxl6d	2026-05-15 17:20:04.999	2026-05-15 17:20:04.999	2026-05-15 17:20:05.013	\N	\N	\N	0	\N	f	\N
1847	y9707b70wekxf6kbkdisgbyd	2026-05-15 17:20:06.177	2026-05-15 17:20:06.177	2026-05-15 17:20:06.192	\N	\N	\N	0	\N	f	\N
1851	ukxjq3p5wjlwwuq45483tb1n	2026-05-15 17:20:07.333	2026-05-15 17:20:07.333	2026-05-15 17:20:07.346	\N	\N	\N	0	\N	f	\N
1853	qa8nbpdidn32djcvjvvy2uba	2026-05-15 17:20:07.935	2026-05-15 17:20:07.935	2026-05-15 17:20:07.956	\N	\N	\N	0	\N	f	\N
1855	i882n5r3wuwoon81ejrz4a2g	2026-05-15 17:20:08.64	2026-05-15 17:20:08.64	2026-05-15 17:20:08.671	\N	\N	\N	0	\N	f	\N
1857	y8sj4ezt0xtwvtolmi3e0pou	2026-05-15 17:20:09.243	2026-05-15 17:20:09.243	2026-05-15 17:20:09.257	\N	\N	\N	0	\N	f	\N
1859	o6r9quib26zkajr4z8eh2zor	2026-05-15 17:20:09.898	2026-05-15 17:20:09.898	2026-05-15 17:20:09.912	\N	\N	\N	0	\N	f	\N
1861	olqwt3canj9d2mlqsne3il0u	2026-05-15 17:20:10.499	2026-05-15 17:20:10.499	2026-05-15 17:20:10.51	\N	\N	\N	0	\N	f	\N
1863	qfer9qchitlongja4ok6xlum	2026-05-15 17:20:11.057	2026-05-15 17:20:11.057	2026-05-15 17:20:11.073	\N	\N	\N	0	\N	f	\N
1865	k82gr7mbezu5k2i7kiuu1tli	2026-05-15 17:20:11.632	2026-05-15 17:20:11.632	2026-05-15 17:20:11.646	\N	\N	\N	0	\N	f	\N
1869	lhy00dga4tq9xm8vskcujsb2	2026-05-15 17:20:12.77	2026-05-15 17:20:12.77	2026-05-15 17:20:12.784	\N	\N	\N	0	\N	f	\N
1871	vroa5daqdq1e6lysm1wqysy0	2026-05-15 17:20:13.392	2026-05-15 17:20:13.392	2026-05-15 17:20:13.403	\N	\N	\N	0	\N	f	\N
1873	qb4mkattkls8r6uqefraabbq	2026-05-15 17:20:13.967	2026-05-15 17:20:13.967	2026-05-15 17:20:13.981	\N	\N	\N	0	\N	f	\N
1877	z6on2lkfaw7gxd7qxtw1yevx	2026-05-15 17:20:15.099	2026-05-15 17:20:15.099	2026-05-15 17:20:15.113	\N	\N	\N	0	\N	f	\N
1881	d122pwa5x76pkx11dned6i59	2026-05-15 17:20:16.349	2026-05-15 17:20:16.349	2026-05-15 17:20:16.363	\N	\N	\N	0	\N	f	\N
1883	joko80yabdduyvxg35k22ct4	2026-05-15 17:20:17.118	2026-05-15 17:20:17.118	2026-05-15 17:20:17.139	\N	\N	\N	0	\N	f	\N
1899	ghj5zznszfgxnejywj9n2ty8	2026-05-15 17:20:23.658	2026-05-15 17:20:23.658	2026-05-15 17:20:23.7	\N	\N	\N	0	\N	f	\N
1915	goywhpoa3jeuhc26uknklg8q	2026-05-15 17:20:29.359	2026-05-15 17:20:29.359	2026-05-15 17:20:29.374	\N	\N	\N	0	\N	f	\N
1919	kd6sws7ahj293suj20ps7ekm	2026-05-15 17:20:30.554	2026-05-15 17:20:30.554	2026-05-15 17:20:30.57	\N	\N	\N	0	\N	f	\N
1921	kayb1g2rdssxewzaeh6qq74p	2026-05-15 17:20:31.146	2026-05-15 17:20:31.146	2026-05-15 17:20:31.16	\N	\N	\N	0	\N	f	\N
1923	rksyyfjirufoyifdvzn0wt5h	2026-05-15 17:20:31.715	2026-05-15 17:20:31.715	2026-05-15 17:20:31.731	\N	\N	\N	0	\N	f	\N
1925	pb0rymk90kjodypbhsuhexu5	2026-05-15 17:20:32.294	2026-05-15 17:20:32.294	2026-05-15 17:20:32.304	\N	\N	\N	0	\N	f	\N
1927	t6ej87rif1aa3485cq38yhqa	2026-05-15 17:20:32.863	2026-05-15 17:20:32.863	2026-05-15 17:20:32.878	\N	\N	\N	0	\N	f	\N
1947	msc7ingk9is0usk2w8coc6sm	2026-05-15 17:20:39.799	2026-05-15 17:20:39.799	2026-05-15 17:20:39.823	\N	\N	\N	0	\N	f	\N
1834	ogpodtzw5pomc7t80fz2hy1s	2026-05-15 17:20:02.494	2026-05-15 17:22:10.084	\N	\N	\N	\N	0	\N	f	\N
1838	a1lakcwsart3j8dmyjrgxtrv	2026-05-15 17:20:03.726	2026-05-15 17:22:10.106	\N	\N	\N	\N	0	\N	f	\N
1840	wfmpeiydihmimx9w3ecpk82p	2026-05-15 17:20:04.372	2026-05-15 17:22:10.127	\N	\N	\N	\N	0	\N	f	\N
1842	x2n5x9yfe626m8zvpitlxl6d	2026-05-15 17:20:04.999	2026-05-15 17:22:10.15	\N	\N	\N	\N	0	\N	f	\N
1846	y9707b70wekxf6kbkdisgbyd	2026-05-15 17:20:06.177	2026-05-15 17:22:10.171	\N	\N	\N	\N	0	\N	f	\N
1850	ukxjq3p5wjlwwuq45483tb1n	2026-05-15 17:20:07.333	2026-05-15 17:22:10.194	\N	\N	\N	\N	0	\N	f	\N
1852	qa8nbpdidn32djcvjvvy2uba	2026-05-15 17:20:07.935	2026-05-15 17:22:10.216	\N	\N	\N	\N	0	\N	f	\N
1854	i882n5r3wuwoon81ejrz4a2g	2026-05-15 17:20:08.64	2026-05-15 17:22:10.238	\N	\N	\N	\N	0	\N	f	\N
1856	y8sj4ezt0xtwvtolmi3e0pou	2026-05-15 17:20:09.243	2026-05-15 17:22:10.26	\N	\N	\N	\N	0	\N	f	\N
1858	o6r9quib26zkajr4z8eh2zor	2026-05-15 17:20:09.898	2026-05-15 17:22:10.281	\N	\N	\N	\N	0	\N	f	\N
1860	olqwt3canj9d2mlqsne3il0u	2026-05-15 17:20:10.499	2026-05-15 17:22:10.305	\N	\N	\N	\N	0	\N	f	\N
1862	qfer9qchitlongja4ok6xlum	2026-05-15 17:20:11.057	2026-05-15 17:22:10.327	\N	\N	\N	\N	0	\N	f	\N
1864	k82gr7mbezu5k2i7kiuu1tli	2026-05-15 17:20:11.632	2026-05-15 17:22:10.349	\N	\N	\N	\N	0	\N	f	\N
1868	lhy00dga4tq9xm8vskcujsb2	2026-05-15 17:20:12.77	2026-05-15 17:22:10.371	\N	\N	\N	\N	0	\N	f	\N
1870	vroa5daqdq1e6lysm1wqysy0	2026-05-15 17:20:13.392	2026-05-15 17:22:10.393	\N	\N	\N	\N	0	\N	f	\N
1872	qb4mkattkls8r6uqefraabbq	2026-05-15 17:20:13.967	2026-05-15 17:22:10.416	\N	\N	\N	\N	0	\N	f	\N
1876	z6on2lkfaw7gxd7qxtw1yevx	2026-05-15 17:20:15.099	2026-05-15 17:22:10.437	\N	\N	\N	\N	0	\N	f	\N
1880	d122pwa5x76pkx11dned6i59	2026-05-15 17:20:16.349	2026-05-15 17:22:10.459	\N	\N	\N	\N	0	\N	f	\N
1882	joko80yabdduyvxg35k22ct4	2026-05-15 17:20:17.118	2026-05-15 17:22:10.481	\N	\N	\N	\N	0	\N	f	\N
1898	ghj5zznszfgxnejywj9n2ty8	2026-05-15 17:20:23.658	2026-05-15 17:22:10.502	\N	\N	\N	\N	0	\N	f	\N
1914	goywhpoa3jeuhc26uknklg8q	2026-05-15 17:20:29.359	2026-05-15 17:22:10.523	\N	\N	\N	\N	0	\N	f	\N
1918	kd6sws7ahj293suj20ps7ekm	2026-05-15 17:20:30.554	2026-05-15 17:22:10.544	\N	\N	\N	\N	0	\N	f	\N
1920	kayb1g2rdssxewzaeh6qq74p	2026-05-15 17:20:31.146	2026-05-15 17:22:10.567	\N	\N	\N	\N	0	\N	f	\N
1922	rksyyfjirufoyifdvzn0wt5h	2026-05-15 17:20:31.715	2026-05-15 17:22:10.589	\N	\N	\N	\N	0	\N	f	\N
1924	pb0rymk90kjodypbhsuhexu5	2026-05-15 17:20:32.294	2026-05-15 17:22:10.612	\N	\N	\N	\N	0	\N	f	\N
1926	t6ej87rif1aa3485cq38yhqa	2026-05-15 17:20:32.863	2026-05-15 17:22:10.638	\N	\N	\N	\N	0	\N	f	\N
1946	msc7ingk9is0usk2w8coc6sm	2026-05-15 17:20:39.799	2026-05-15 17:22:10.661	\N	\N	\N	\N	0	\N	f	\N
1887	cqu863xkja9tsa66lq350yzx	2026-05-15 17:20:18.664	2026-05-15 17:20:18.664	2026-05-15 17:20:18.684	\N	\N	\N	0	\N	f	\N
1889	nk1o9fegjamyx0k1ta3ll6u6	2026-05-15 17:20:19.487	2026-05-15 17:20:19.487	2026-05-15 17:20:19.506	\N	\N	\N	0	\N	f	\N
1891	ig77nf8z0u2sgkq4ocucbvcc	2026-05-15 17:20:20.288	2026-05-15 17:20:20.288	2026-05-15 17:20:20.305	\N	\N	\N	0	\N	f	\N
1893	fddtcf88d3u1x15z0a43tmf9	2026-05-15 17:20:21.087	2026-05-15 17:20:21.087	2026-05-15 17:20:21.106	\N	\N	\N	0	\N	f	\N
1895	c8vbbqitd25i9pi43v7eapak	2026-05-15 17:20:21.907	2026-05-15 17:20:21.907	2026-05-15 17:20:21.93	\N	\N	\N	0	\N	f	\N
1897	k89ui7q0ah8idztuhvlbxyes	2026-05-15 17:20:22.735	2026-05-15 17:20:22.735	2026-05-15 17:20:22.753	\N	\N	\N	0	\N	f	\N
1901	cu8ek2pobj99jh9uk7zsootc	2026-05-15 17:20:24.673	2026-05-15 17:20:24.673	2026-05-15 17:20:24.696	\N	\N	\N	0	\N	f	\N
1903	zfnhlq815slu9uulhf2ux7c4	2026-05-15 17:20:25.526	2026-05-15 17:20:25.526	2026-05-15 17:20:25.544	\N	\N	\N	0	\N	f	\N
1907	y23qjzje44x1kqp9hjr70hnz	2026-05-15 17:20:26.829	2026-05-15 17:20:26.829	2026-05-15 17:20:26.843	\N	\N	\N	0	\N	f	\N
1909	cmjk9x98aiqsed6rvkef1wpu	2026-05-15 17:20:27.404	2026-05-15 17:20:27.404	2026-05-15 17:20:27.42	\N	\N	\N	0	\N	f	\N
1911	vby958qi2yhybea4x2hi96dy	2026-05-15 17:20:28.206	2026-05-15 17:20:28.206	2026-05-15 17:20:28.222	\N	\N	\N	0	\N	f	\N
1913	h78358kkr8zpejerefnxvdxe	2026-05-15 17:20:28.792	2026-05-15 17:20:28.792	2026-05-15 17:20:28.806	\N	\N	\N	0	\N	f	\N
1917	g83iu41mjhcy1b9dfl5xmj1d	2026-05-15 17:20:29.966	2026-05-15 17:20:29.966	2026-05-15 17:20:29.979	\N	\N	\N	0	\N	f	\N
1929	wgf2xa9cazu360oqp0hb0yv0	2026-05-15 17:20:33.61	2026-05-15 17:20:33.61	2026-05-15 17:20:33.628	\N	\N	\N	0	\N	f	\N
1931	j1vpey3bdnnczic5nspogmmn	2026-05-15 17:20:34.34	2026-05-15 17:20:34.34	2026-05-15 17:20:34.359	\N	\N	\N	0	\N	f	\N
1933	qqmb8ahpydgpml39sgojwdr2	2026-05-15 17:20:35.076	2026-05-15 17:20:35.076	2026-05-15 17:20:35.09	\N	\N	\N	0	\N	f	\N
1935	uk4bfv0hoi8ack051dby2po3	2026-05-15 17:20:35.804	2026-05-15 17:20:35.804	2026-05-15 17:20:35.819	\N	\N	\N	0	\N	f	\N
1937	rx1kwa1un02efl5l4fpg1ori	2026-05-15 17:20:36.57	2026-05-15 17:20:36.57	2026-05-15 17:20:36.586	\N	\N	\N	0	\N	f	\N
1939	wgaw77u4itvtfkxaxmnj8g07	2026-05-15 17:20:37.302	2026-05-15 17:20:37.302	2026-05-15 17:20:37.319	\N	\N	\N	0	\N	f	\N
1941	zhpavkw7l0txsb9xhtz81fxh	2026-05-15 17:20:37.994	2026-05-15 17:20:37.994	2026-05-15 17:20:38.009	\N	\N	\N	0	\N	f	\N
1943	hvpde8lk1x6s0wforjlqygoj	2026-05-15 17:20:38.627	2026-05-15 17:20:38.627	2026-05-15 17:20:38.641	\N	\N	\N	0	\N	f	\N
1945	vyl9f01rhl576dtctnn6pqs5	2026-05-15 17:20:39.229	2026-05-15 17:20:39.229	2026-05-15 17:20:39.246	\N	\N	\N	0	\N	f	\N
1953	nzz0ffwgpaz9vezs6mhcni5r	2026-05-15 17:20:41.736	2026-05-15 17:20:41.736	2026-05-15 17:20:41.754	\N	\N	\N	0	\N	f	\N
1955	ou0jevdhph41nt4o0m9a1vzb	2026-05-15 17:20:42.321	2026-05-15 17:20:42.321	2026-05-15 17:20:42.337	\N	\N	\N	0	\N	f	\N
1957	ok18xlecfiyrbenyij437ktt	2026-05-15 17:20:42.892	2026-05-15 17:20:42.892	2026-05-15 17:20:42.904	\N	\N	\N	0	\N	f	\N
1959	ymdsup06y0oustsa97ootmtl	2026-05-15 17:20:43.458	2026-05-15 17:20:43.458	2026-05-15 17:20:43.474	\N	\N	\N	0	\N	f	\N
1961	bint5nfris5u35jergnqyhvp	2026-05-15 17:20:44.028	2026-05-15 17:20:44.028	2026-05-15 17:20:44.042	\N	\N	\N	0	\N	f	\N
1963	cujb2rb9ko2r2jwayp0tnkqx	2026-05-15 17:20:44.931	2026-05-15 17:20:44.931	2026-05-15 17:20:44.966	\N	\N	\N	0	\N	f	\N
1965	d6uc3upln9jlga3vbta43zpj	2026-05-15 17:20:45.584	2026-05-15 17:20:45.584	2026-05-15 17:20:45.595	\N	\N	\N	0	\N	f	\N
1967	nitvefvcjcgf16ruo068y0eb	2026-05-15 17:20:46.184	2026-05-15 17:20:46.184	2026-05-15 17:20:46.196	\N	\N	\N	0	\N	f	\N
1969	gw8xkrqxviwcx6c2auidxdkm	2026-05-15 17:20:46.752	2026-05-15 17:20:46.752	2026-05-15 17:20:46.765	\N	\N	\N	0	\N	f	\N
1971	cfr344v6p43xmjwenv3py0v8	2026-05-15 17:20:47.3	2026-05-15 17:20:47.3	2026-05-15 17:20:47.313	\N	\N	\N	0	\N	f	\N
1973	fuknf7mdi62eoeqxz1bfhmpu	2026-05-15 17:20:48.149	2026-05-15 17:20:48.149	2026-05-15 17:20:48.167	\N	\N	\N	0	\N	f	\N
1975	g7ueznwj0wi0t8daudci46qe	2026-05-15 17:20:48.843	2026-05-15 17:20:48.843	2026-05-15 17:20:48.856	\N	\N	\N	0	\N	f	\N
1977	dbgxgrmkpib2swuv8wql8cl4	2026-05-15 17:20:49.429	2026-05-15 17:20:49.429	2026-05-15 17:20:49.441	\N	\N	\N	0	\N	f	\N
1979	q5htd5lth3df3391p6ib8dgx	2026-05-15 17:20:50.018	2026-05-15 17:20:50.018	2026-05-15 17:20:50.034	\N	\N	\N	0	\N	f	\N
1980	a2r706mxohxprijq0rq9xm58	2026-05-15 17:20:50.573	2026-05-15 17:20:50.573	\N	\N	\N	\N	0	\N	f	\N
1981	a2r706mxohxprijq0rq9xm58	2026-05-15 17:20:50.573	2026-05-15 17:20:50.573	2026-05-15 17:20:50.585	\N	\N	\N	0	\N	f	\N
1984	cn64ajy10yjcu05kodjv8b59	2026-05-15 17:20:51.791	2026-05-15 17:20:51.791	\N	\N	\N	\N	0	\N	f	\N
1985	cn64ajy10yjcu05kodjv8b59	2026-05-15 17:20:51.791	2026-05-15 17:20:51.791	2026-05-15 17:20:51.806	\N	\N	\N	0	\N	f	\N
1986	u2sko5hjtx5ht1ug5lzfkp3t	2026-05-15 17:20:52.344	2026-05-15 17:20:52.344	\N	\N	\N	\N	0	\N	f	\N
1886	cqu863xkja9tsa66lq350yzx	2026-05-15 17:20:18.664	2026-05-15 17:22:10.683	\N	\N	\N	\N	0	\N	f	\N
1888	nk1o9fegjamyx0k1ta3ll6u6	2026-05-15 17:20:19.487	2026-05-15 17:22:10.704	\N	\N	\N	\N	0	\N	f	\N
1890	ig77nf8z0u2sgkq4ocucbvcc	2026-05-15 17:20:20.288	2026-05-15 17:22:10.726	\N	\N	\N	\N	0	\N	f	\N
1892	fddtcf88d3u1x15z0a43tmf9	2026-05-15 17:20:21.087	2026-05-15 17:22:10.747	\N	\N	\N	\N	0	\N	f	\N
1894	c8vbbqitd25i9pi43v7eapak	2026-05-15 17:20:21.907	2026-05-15 17:22:10.768	\N	\N	\N	\N	0	\N	f	\N
1896	k89ui7q0ah8idztuhvlbxyes	2026-05-15 17:20:22.735	2026-05-15 17:22:10.791	\N	\N	\N	\N	0	\N	f	\N
1900	cu8ek2pobj99jh9uk7zsootc	2026-05-15 17:20:24.673	2026-05-15 17:22:10.812	\N	\N	\N	\N	0	\N	f	\N
1902	zfnhlq815slu9uulhf2ux7c4	2026-05-15 17:20:25.526	2026-05-15 17:22:10.836	\N	\N	\N	\N	0	\N	f	\N
1906	y23qjzje44x1kqp9hjr70hnz	2026-05-15 17:20:26.829	2026-05-15 17:22:10.858	\N	\N	\N	\N	0	\N	f	\N
1908	cmjk9x98aiqsed6rvkef1wpu	2026-05-15 17:20:27.404	2026-05-15 17:22:10.881	\N	\N	\N	\N	0	\N	f	\N
1910	vby958qi2yhybea4x2hi96dy	2026-05-15 17:20:28.206	2026-05-15 17:22:10.903	\N	\N	\N	\N	0	\N	f	\N
1912	h78358kkr8zpejerefnxvdxe	2026-05-15 17:20:28.792	2026-05-15 17:22:10.926	\N	\N	\N	\N	0	\N	f	\N
1916	g83iu41mjhcy1b9dfl5xmj1d	2026-05-15 17:20:29.966	2026-05-15 17:22:10.948	\N	\N	\N	\N	0	\N	f	\N
1928	wgf2xa9cazu360oqp0hb0yv0	2026-05-15 17:20:33.61	2026-05-15 17:22:10.971	\N	\N	\N	\N	0	\N	f	\N
1930	j1vpey3bdnnczic5nspogmmn	2026-05-15 17:20:34.34	2026-05-15 17:22:10.998	\N	\N	\N	\N	0	\N	f	\N
1932	qqmb8ahpydgpml39sgojwdr2	2026-05-15 17:20:35.076	2026-05-15 17:22:11.025	\N	\N	\N	\N	0	\N	f	\N
1934	uk4bfv0hoi8ack051dby2po3	2026-05-15 17:20:35.804	2026-05-15 17:22:11.057	\N	\N	\N	\N	0	\N	f	\N
1936	rx1kwa1un02efl5l4fpg1ori	2026-05-15 17:20:36.57	2026-05-15 17:22:11.079	\N	\N	\N	\N	0	\N	f	\N
1938	wgaw77u4itvtfkxaxmnj8g07	2026-05-15 17:20:37.302	2026-05-15 17:22:11.099	\N	\N	\N	\N	0	\N	f	\N
1940	zhpavkw7l0txsb9xhtz81fxh	2026-05-15 17:20:37.994	2026-05-15 17:22:11.123	\N	\N	\N	\N	0	\N	f	\N
1942	hvpde8lk1x6s0wforjlqygoj	2026-05-15 17:20:38.627	2026-05-15 17:22:11.147	\N	\N	\N	\N	0	\N	f	\N
1944	vyl9f01rhl576dtctnn6pqs5	2026-05-15 17:20:39.229	2026-05-15 17:22:11.168	\N	\N	\N	\N	0	\N	f	\N
1952	nzz0ffwgpaz9vezs6mhcni5r	2026-05-15 17:20:41.736	2026-05-15 17:22:11.19	\N	\N	\N	\N	0	\N	f	\N
1954	ou0jevdhph41nt4o0m9a1vzb	2026-05-15 17:20:42.321	2026-05-15 17:22:11.212	\N	\N	\N	\N	0	\N	f	\N
1956	ok18xlecfiyrbenyij437ktt	2026-05-15 17:20:42.892	2026-05-15 17:22:11.234	\N	\N	\N	\N	0	\N	f	\N
1958	ymdsup06y0oustsa97ootmtl	2026-05-15 17:20:43.458	2026-05-15 17:22:11.255	\N	\N	\N	\N	0	\N	f	\N
1960	bint5nfris5u35jergnqyhvp	2026-05-15 17:20:44.028	2026-05-15 17:22:11.275	\N	\N	\N	\N	0	\N	f	\N
1962	cujb2rb9ko2r2jwayp0tnkqx	2026-05-15 17:20:44.931	2026-05-15 17:22:11.297	\N	\N	\N	\N	0	\N	f	\N
1964	d6uc3upln9jlga3vbta43zpj	2026-05-15 17:20:45.584	2026-05-15 17:22:11.319	\N	\N	\N	\N	0	\N	f	\N
1966	nitvefvcjcgf16ruo068y0eb	2026-05-15 17:20:46.184	2026-05-15 17:22:11.343	\N	\N	\N	\N	0	\N	f	\N
1968	gw8xkrqxviwcx6c2auidxdkm	2026-05-15 17:20:46.752	2026-05-15 17:22:11.364	\N	\N	\N	\N	0	\N	f	\N
1970	cfr344v6p43xmjwenv3py0v8	2026-05-15 17:20:47.3	2026-05-15 17:22:11.384	\N	\N	\N	\N	0	\N	f	\N
1972	fuknf7mdi62eoeqxz1bfhmpu	2026-05-15 17:20:48.149	2026-05-15 17:22:11.408	\N	\N	\N	\N	0	\N	f	\N
1976	dbgxgrmkpib2swuv8wql8cl4	2026-05-15 17:20:49.429	2026-05-15 17:22:11.542	\N	\N	\N	\N	0	\N	f	\N
1978	q5htd5lth3df3391p6ib8dgx	2026-05-15 17:20:50.018	2026-05-15 17:22:11.566	\N	\N	\N	\N	0	\N	f	\N
1974	g7ueznwj0wi0t8daudci46qe	2026-05-15 17:20:48.843	2026-05-15 17:22:11.52	\N	\N	\N	\N	0	\N	f	\N
1987	u2sko5hjtx5ht1ug5lzfkp3t	2026-05-15 17:20:52.344	2026-05-15 17:20:52.344	2026-05-15 17:20:52.359	\N	\N	\N	0	\N	f	\N
1991	yg1v4n6t8t5tkswg5wgq2e70	2026-05-15 17:20:53.492	2026-05-15 17:20:53.492	2026-05-15 17:20:53.507	\N	\N	\N	0	\N	f	\N
1995	w48yp2mx161zjvfd92nypuq1	2026-05-15 17:20:54.596	2026-05-15 17:20:54.596	2026-05-15 17:20:54.609	\N	\N	\N	0	\N	f	\N
1999	xvwedopfgeva61hk8ykzppi3	2026-05-15 17:20:55.807	2026-05-15 17:20:55.807	2026-05-15 17:20:55.822	\N	\N	\N	0	\N	f	\N
2003	s76hxfg6f33uunqrejtglqqi	2026-05-15 17:20:56.917	2026-05-15 17:20:56.917	2026-05-15 17:20:56.93	\N	\N	\N	0	\N	f	\N
2007	qdcvm1ig3t3er4g9bcjdfr49	2026-05-15 17:20:58.018	2026-05-15 17:20:58.018	2026-05-15 17:20:58.032	\N	\N	\N	0	\N	f	\N
2009	jxs8ae1t6ret925kst5gvu70	2026-05-15 17:20:58.565	2026-05-15 17:20:58.565	2026-05-15 17:20:58.578	\N	\N	\N	0	\N	f	\N
2013	ue9hyxrkjkmo0cpt78gfyf8j	2026-05-15 17:20:59.679	2026-05-15 17:20:59.679	2026-05-15 17:20:59.692	\N	\N	\N	0	\N	f	\N
2017	xt98u9ng46t5m4fbyszqf4as	2026-05-15 17:21:00.789	2026-05-15 17:21:00.789	2026-05-15 17:21:00.8	\N	\N	\N	0	\N	f	\N
2021	r517mi8skgoczjijjay13glg	2026-05-15 17:21:01.941	2026-05-15 17:21:01.941	2026-05-15 17:21:01.954	\N	\N	\N	0	\N	f	\N
2025	ge54y9hnv6mxyv8r3cxua8o8	2026-05-15 17:21:03.034	2026-05-15 17:21:03.034	2026-05-15 17:21:03.046	\N	\N	\N	0	\N	f	\N
2029	v3d837yrsfjvtd2idq06x51t	2026-05-15 17:21:04.131	2026-05-15 17:21:04.131	2026-05-15 17:21:04.143	\N	\N	\N	0	\N	f	\N
2033	i7yocjeee9vizzi32272vrxc	2026-05-15 17:21:05.259	2026-05-15 17:21:05.259	2026-05-15 17:21:05.273	\N	\N	\N	0	\N	f	\N
2037	qtiq7reu62whd5bh1ijuy3g3	2026-05-15 17:21:06.372	2026-05-15 17:21:06.372	2026-05-15 17:21:06.385	\N	\N	\N	0	\N	f	\N
2043	playbh6c57t6ngwxq01iqrmc	2026-05-15 17:21:08.347	2026-05-15 17:21:08.347	2026-05-15 17:21:08.369	\N	\N	\N	0	\N	f	\N
2047	xwae826w37t00dhg0b0hh4ms	2026-05-15 17:21:09.629	2026-05-15 17:21:09.629	2026-05-15 17:21:09.644	\N	\N	\N	0	\N	f	\N
2051	d2mfgz6azuatj06hvcfchu43	2026-05-15 17:21:10.841	2026-05-15 17:21:10.841	2026-05-15 17:21:10.854	\N	\N	\N	0	\N	f	\N
2055	zmwbgxcqnwji3fzpkfu1qovp	2026-05-15 17:21:11.987	2026-05-15 17:21:11.987	2026-05-15 17:21:12.001	\N	\N	\N	0	\N	f	\N
2059	k3u76w99t4e4dtra3tip3hq1	2026-05-15 17:21:13.518	2026-05-15 17:21:13.518	2026-05-15 17:21:13.541	\N	\N	\N	0	\N	f	\N
2063	cohtvswhkrk4sh98e98o611x	2026-05-15 17:21:15.325	2026-05-15 17:21:15.325	2026-05-15 17:21:15.342	\N	\N	\N	0	\N	f	\N
2069	hk5voeogn244sb4vp0v6b5x5	2026-05-15 17:21:17.15	2026-05-15 17:21:17.15	2026-05-15 17:21:17.167	\N	\N	\N	0	\N	f	\N
2073	yie19kv3c5aa0y1xtro0zdg1	2026-05-15 17:21:18.307	2026-05-15 17:21:18.307	2026-05-15 17:21:18.319	\N	\N	\N	0	\N	f	\N
2077	xj28guxoxm6aj5qshyg3np9a	2026-05-15 17:21:19.397	2026-05-15 17:21:19.397	2026-05-15 17:21:19.411	\N	\N	\N	0	\N	f	\N
2087	l6xviz4ulczgnkh1254bzkkz	2026-05-15 17:21:22.743	2026-05-15 17:21:22.743	2026-05-15 17:21:22.758	\N	\N	\N	0	\N	f	\N
2093	inmftfzrojw08kbn9e77jm0u	2026-05-15 17:21:24.697	2026-05-15 17:21:24.697	2026-05-15 17:21:24.71	\N	\N	\N	0	\N	f	\N
2097	icnvpyd2hh5nri63rk8tlnai	2026-05-15 17:21:25.842	2026-05-15 17:21:25.842	2026-05-15 17:21:25.855	\N	\N	\N	0	\N	f	\N
2101	qkcyj3bwt6jl2gonp29hq07e	2026-05-15 17:21:26.952	2026-05-15 17:21:26.952	2026-05-15 17:21:26.966	\N	\N	\N	0	\N	f	\N
2105	qzbyla0hl293xwiy17sgh383	2026-05-15 17:21:28.049	2026-05-15 17:21:28.049	2026-05-15 17:21:28.063	\N	\N	\N	0	\N	f	\N
2109	brh0enie7lnf5idrvke1i74u	2026-05-15 17:21:29.563	2026-05-15 17:21:29.563	2026-05-15 17:21:29.579	\N	\N	\N	0	\N	f	\N
2115	z1xiilxv7yh30cs9ve7jo8x3	2026-05-15 17:21:31.662	2026-05-15 17:21:31.662	2026-05-15 17:21:31.678	\N	\N	\N	0	\N	f	\N
2141	yirwm18k0wxa0x7m30msnp6f	2026-05-15 17:21:40.208	2026-05-15 17:21:40.208	2026-05-15 17:21:40.223	\N	\N	\N	0	\N	f	\N
2143	qixpqmsu63lnyddmapf9k65g	2026-05-15 17:21:40.786	2026-05-15 17:21:40.786	2026-05-15 17:21:40.798	\N	\N	\N	0	\N	f	\N
1990	yg1v4n6t8t5tkswg5wgq2e70	2026-05-15 17:20:53.492	2026-05-15 17:22:11.595	\N	\N	\N	\N	0	\N	f	\N
1994	w48yp2mx161zjvfd92nypuq1	2026-05-15 17:20:54.596	2026-05-15 17:22:11.617	\N	\N	\N	\N	0	\N	f	\N
1998	xvwedopfgeva61hk8ykzppi3	2026-05-15 17:20:55.807	2026-05-15 17:22:11.643	\N	\N	\N	\N	0	\N	f	\N
2002	s76hxfg6f33uunqrejtglqqi	2026-05-15 17:20:56.917	2026-05-15 17:22:11.664	\N	\N	\N	\N	0	\N	f	\N
2006	qdcvm1ig3t3er4g9bcjdfr49	2026-05-15 17:20:58.018	2026-05-15 17:22:11.687	\N	\N	\N	\N	0	\N	f	\N
2008	jxs8ae1t6ret925kst5gvu70	2026-05-15 17:20:58.565	2026-05-15 17:22:11.709	\N	\N	\N	\N	0	\N	f	\N
2012	ue9hyxrkjkmo0cpt78gfyf8j	2026-05-15 17:20:59.679	2026-05-15 17:22:11.73	\N	\N	\N	\N	0	\N	f	\N
2016	xt98u9ng46t5m4fbyszqf4as	2026-05-15 17:21:00.789	2026-05-15 17:22:11.752	\N	\N	\N	\N	0	\N	f	\N
2020	r517mi8skgoczjijjay13glg	2026-05-15 17:21:01.941	2026-05-15 17:22:11.775	\N	\N	\N	\N	0	\N	f	\N
2024	ge54y9hnv6mxyv8r3cxua8o8	2026-05-15 17:21:03.034	2026-05-15 17:22:11.797	\N	\N	\N	\N	0	\N	f	\N
2028	v3d837yrsfjvtd2idq06x51t	2026-05-15 17:21:04.131	2026-05-15 17:22:11.819	\N	\N	\N	\N	0	\N	f	\N
2032	i7yocjeee9vizzi32272vrxc	2026-05-15 17:21:05.259	2026-05-15 17:22:11.84	\N	\N	\N	\N	0	\N	f	\N
2036	qtiq7reu62whd5bh1ijuy3g3	2026-05-15 17:21:06.372	2026-05-15 17:22:11.864	\N	\N	\N	\N	0	\N	f	\N
2042	playbh6c57t6ngwxq01iqrmc	2026-05-15 17:21:08.347	2026-05-15 17:22:11.886	\N	\N	\N	\N	0	\N	f	\N
2046	xwae826w37t00dhg0b0hh4ms	2026-05-15 17:21:09.629	2026-05-15 17:22:11.909	\N	\N	\N	\N	0	\N	f	\N
2050	d2mfgz6azuatj06hvcfchu43	2026-05-15 17:21:10.841	2026-05-15 17:22:11.93	\N	\N	\N	\N	0	\N	f	\N
2054	zmwbgxcqnwji3fzpkfu1qovp	2026-05-15 17:21:11.987	2026-05-15 17:22:11.953	\N	\N	\N	\N	0	\N	f	\N
2058	k3u76w99t4e4dtra3tip3hq1	2026-05-15 17:21:13.518	2026-05-15 17:22:11.977	\N	\N	\N	\N	0	\N	f	\N
2062	cohtvswhkrk4sh98e98o611x	2026-05-15 17:21:15.325	2026-05-15 17:22:12	\N	\N	\N	\N	0	\N	f	\N
2068	hk5voeogn244sb4vp0v6b5x5	2026-05-15 17:21:17.15	2026-05-15 17:22:12.026	\N	\N	\N	\N	0	\N	f	\N
2072	yie19kv3c5aa0y1xtro0zdg1	2026-05-15 17:21:18.307	2026-05-15 17:22:12.054	\N	\N	\N	\N	0	\N	f	\N
2076	xj28guxoxm6aj5qshyg3np9a	2026-05-15 17:21:19.397	2026-05-15 17:22:12.076	\N	\N	\N	\N	0	\N	f	\N
2086	l6xviz4ulczgnkh1254bzkkz	2026-05-15 17:21:22.743	2026-05-15 17:22:12.099	\N	\N	\N	\N	0	\N	f	\N
2092	inmftfzrojw08kbn9e77jm0u	2026-05-15 17:21:24.697	2026-05-15 17:22:12.122	\N	\N	\N	\N	0	\N	f	\N
2096	icnvpyd2hh5nri63rk8tlnai	2026-05-15 17:21:25.842	2026-05-15 17:22:12.15	\N	\N	\N	\N	0	\N	f	\N
2100	qkcyj3bwt6jl2gonp29hq07e	2026-05-15 17:21:26.952	2026-05-15 17:22:12.173	\N	\N	\N	\N	0	\N	f	\N
2104	qzbyla0hl293xwiy17sgh383	2026-05-15 17:21:28.049	2026-05-15 17:22:12.196	\N	\N	\N	\N	0	\N	f	\N
2108	brh0enie7lnf5idrvke1i74u	2026-05-15 17:21:29.563	2026-05-15 17:22:12.22	\N	\N	\N	\N	0	\N	f	\N
2114	z1xiilxv7yh30cs9ve7jo8x3	2026-05-15 17:21:31.662	2026-05-15 17:22:12.241	\N	\N	\N	\N	0	\N	f	\N
2140	yirwm18k0wxa0x7m30msnp6f	2026-05-15 17:21:40.208	2026-05-15 17:22:12.274	\N	\N	\N	\N	0	\N	f	\N
2142	qixpqmsu63lnyddmapf9k65g	2026-05-15 17:21:40.786	2026-05-15 17:22:12.327	\N	\N	\N	\N	0	\N	f	\N
1989	ldrcylhigdz18hey3udvxw9p	2026-05-15 17:20:52.931	2026-05-15 17:20:52.931	2026-05-15 17:20:52.945	\N	\N	\N	0	\N	f	\N
1993	mre3p1x956wwvu5b7v7lapq5	2026-05-15 17:20:54.049	2026-05-15 17:20:54.049	2026-05-15 17:20:54.061	\N	\N	\N	0	\N	f	\N
1997	o9vmms5wekq5m42jqllb165r	2026-05-15 17:20:55.261	2026-05-15 17:20:55.261	2026-05-15 17:20:55.275	\N	\N	\N	0	\N	f	\N
2001	ddjv8ohvrvlooovwazgo0aop	2026-05-15 17:20:56.36	2026-05-15 17:20:56.36	2026-05-15 17:20:56.373	\N	\N	\N	0	\N	f	\N
2005	aberhw87tb1dbu1rigck34bj	2026-05-15 17:20:57.472	2026-05-15 17:20:57.472	2026-05-15 17:20:57.487	\N	\N	\N	0	\N	f	\N
2011	e3bxingn7dzqkks1nqs4qp00	2026-05-15 17:20:59.117	2026-05-15 17:20:59.117	2026-05-15 17:20:59.131	\N	\N	\N	0	\N	f	\N
2015	h85j7w4fnbfodb2b6qcu52jf	2026-05-15 17:21:00.236	2026-05-15 17:21:00.236	2026-05-15 17:21:00.249	\N	\N	\N	0	\N	f	\N
2019	i0bitfduak4d6rviy89hpakc	2026-05-15 17:21:01.363	2026-05-15 17:21:01.363	2026-05-15 17:21:01.381	\N	\N	\N	0	\N	f	\N
2023	o6z6utv6457ful5apitou50q	2026-05-15 17:21:02.491	2026-05-15 17:21:02.491	2026-05-15 17:21:02.503	\N	\N	\N	0	\N	f	\N
2027	r8vtf36fxobzn7uqqmu62dj3	2026-05-15 17:21:03.585	2026-05-15 17:21:03.585	2026-05-15 17:21:03.596	\N	\N	\N	0	\N	f	\N
2031	zgma9855uo34y7su9uls4c2k	2026-05-15 17:21:04.708	2026-05-15 17:21:04.708	2026-05-15 17:21:04.73	\N	\N	\N	0	\N	f	\N
2035	ih8e5b261bc845tgdg2o9kdr	2026-05-15 17:21:05.823	2026-05-15 17:21:05.823	2026-05-15 17:21:05.836	\N	\N	\N	0	\N	f	\N
2039	xpr0h8tzf1wzzetfomgdj4l8	2026-05-15 17:21:06.946	2026-05-15 17:21:06.946	2026-05-15 17:21:06.956	\N	\N	\N	0	\N	f	\N
2041	dcd7paqy0rxh96ywy7t54z45	2026-05-15 17:21:07.679	2026-05-15 17:21:07.679	2026-05-15 17:21:07.7	\N	\N	\N	0	\N	f	\N
2045	rzkzpya8v6h3uphy9adjrtis	2026-05-15 17:21:08.997	2026-05-15 17:21:08.997	2026-05-15 17:21:09.012	\N	\N	\N	0	\N	f	\N
2053	urqrrvoyri69j8986abbmlil	2026-05-15 17:21:11.396	2026-05-15 17:21:11.396	2026-05-15 17:21:11.41	\N	\N	\N	0	\N	f	\N
2057	qm1tk4dpopps0xylbczp6dru	2026-05-15 17:21:12.686	2026-05-15 17:21:12.686	2026-05-15 17:21:12.702	\N	\N	\N	0	\N	f	\N
2061	ug68q5b46h1w4wh4oyf987nu	2026-05-15 17:21:14.388	2026-05-15 17:21:14.388	2026-05-15 17:21:14.41	\N	\N	\N	0	\N	f	\N
2065	tvcuwg15mohdd8julo3d32tf	2026-05-15 17:21:15.946	2026-05-15 17:21:15.946	2026-05-15 17:21:15.958	\N	\N	\N	0	\N	f	\N
2067	ns7c8gj8qat468s9c2vjlxgx	2026-05-15 17:21:16.583	2026-05-15 17:21:16.583	2026-05-15 17:21:16.597	\N	\N	\N	0	\N	f	\N
2071	y91z7jo5kqfjs7lfud19m2uu	2026-05-15 17:21:17.754	2026-05-15 17:21:17.754	2026-05-15 17:21:17.768	\N	\N	\N	0	\N	f	\N
2075	tsrm3v7z5vt956pr6ngwa3tu	2026-05-15 17:21:18.854	2026-05-15 17:21:18.854	2026-05-15 17:21:18.87	\N	\N	\N	0	\N	f	\N
2079	m075t6ulgs8pcw7vsdh3lcbg	2026-05-15 17:21:20.279	2026-05-15 17:21:20.279	2026-05-15 17:21:20.295	\N	\N	\N	0	\N	f	\N
2083	ydi7be18ce0cgtbwxye9b2i3	2026-05-15 17:21:21.548	2026-05-15 17:21:21.548	2026-05-15 17:21:21.562	\N	\N	\N	0	\N	f	\N
2085	f1lns8vu7lq3lo8d6qcqlb5k	2026-05-15 17:21:22.185	2026-05-15 17:21:22.185	2026-05-15 17:21:22.197	\N	\N	\N	0	\N	f	\N
2089	pb4fqstt0w9xchcggpidjq0i	2026-05-15 17:21:23.278	2026-05-15 17:21:23.278	2026-05-15 17:21:23.292	\N	\N	\N	0	\N	f	\N
2091	qmv8s485aaqp47k3691sqv6r	2026-05-15 17:21:24.018	2026-05-15 17:21:24.018	2026-05-15 17:21:24.031	\N	\N	\N	0	\N	f	\N
2095	yfb0hsuig999sz3i5m7njk6x	2026-05-15 17:21:25.282	2026-05-15 17:21:25.282	2026-05-15 17:21:25.295	\N	\N	\N	0	\N	f	\N
2099	nkhqwl1h479d7b4qmy97yiwa	2026-05-15 17:21:26.391	2026-05-15 17:21:26.391	2026-05-15 17:21:26.404	\N	\N	\N	0	\N	f	\N
2103	lrp7kkfdwg3qx67vfoas52h2	2026-05-15 17:21:27.496	2026-05-15 17:21:27.496	2026-05-15 17:21:27.507	\N	\N	\N	0	\N	f	\N
2107	nu5v5fbveds5rifjrr0890bq	2026-05-15 17:21:28.942	2026-05-15 17:21:28.942	2026-05-15 17:21:28.96	\N	\N	\N	0	\N	f	\N
2111	heil0dn31oz20bw143ol1cj9	2026-05-15 17:21:30.411	2026-05-15 17:21:30.411	2026-05-15 17:21:30.427	\N	\N	\N	0	\N	f	\N
2113	o4bp9qjneqhyfk3ie8cq4sts	2026-05-15 17:21:31.065	2026-05-15 17:21:31.065	2026-05-15 17:21:31.081	\N	\N	\N	0	\N	f	\N
2117	wermadqw55pxtdlvsjc7ii69	2026-05-15 17:21:32.254	2026-05-15 17:21:32.254	2026-05-15 17:21:32.266	\N	\N	\N	0	\N	f	\N
2119	v23rby1m6niqbr3oyearjtbs	2026-05-15 17:21:32.83	2026-05-15 17:21:32.83	2026-05-15 17:21:32.844	\N	\N	\N	0	\N	f	\N
2121	lgmf59bg3cbtp0b7sx7v6vo2	2026-05-15 17:21:33.42	2026-05-15 17:21:33.42	2026-05-15 17:21:33.435	\N	\N	\N	0	\N	f	\N
2123	xsorskni1qsko1p364bbbjnv	2026-05-15 17:21:34.023	2026-05-15 17:21:34.023	2026-05-15 17:21:34.04	\N	\N	\N	0	\N	f	\N
2125	mgs7f3rf1wd8xnanfvxixflj	2026-05-15 17:21:34.618	2026-05-15 17:21:34.618	2026-05-15 17:21:34.636	\N	\N	\N	0	\N	f	\N
2127	jmy1bft41jc8it4ch03tnxi2	2026-05-15 17:21:35.27	2026-05-15 17:21:35.27	2026-05-15 17:21:35.286	\N	\N	\N	0	\N	f	\N
2129	o7qwwnb3vjlstf7vouthfpkp	2026-05-15 17:21:35.979	2026-05-15 17:21:35.979	2026-05-15 17:21:35.998	\N	\N	\N	0	\N	f	\N
2131	z32pvwfffjx4bze78wtwtjru	2026-05-15 17:21:36.712	2026-05-15 17:21:36.712	2026-05-15 17:21:36.738	\N	\N	\N	0	\N	f	\N
2133	f73bci5656bctyvvosnn3djb	2026-05-15 17:21:37.476	2026-05-15 17:21:37.476	2026-05-15 17:21:37.506	\N	\N	\N	0	\N	f	\N
1992	mre3p1x956wwvu5b7v7lapq5	2026-05-15 17:20:54.049	2026-05-15 17:22:12.413	\N	\N	\N	\N	0	\N	f	\N
2000	ddjv8ohvrvlooovwazgo0aop	2026-05-15 17:20:56.36	2026-05-15 17:22:12.462	\N	\N	\N	\N	0	\N	f	\N
2004	aberhw87tb1dbu1rigck34bj	2026-05-15 17:20:57.472	2026-05-15 17:22:12.485	\N	\N	\N	\N	0	\N	f	\N
2010	e3bxingn7dzqkks1nqs4qp00	2026-05-15 17:20:59.117	2026-05-15 17:22:12.509	\N	\N	\N	\N	0	\N	f	\N
2014	h85j7w4fnbfodb2b6qcu52jf	2026-05-15 17:21:00.236	2026-05-15 17:22:12.531	\N	\N	\N	\N	0	\N	f	\N
2018	i0bitfduak4d6rviy89hpakc	2026-05-15 17:21:01.363	2026-05-15 17:22:12.561	\N	\N	\N	\N	0	\N	f	\N
2022	o6z6utv6457ful5apitou50q	2026-05-15 17:21:02.491	2026-05-15 17:22:12.586	\N	\N	\N	\N	0	\N	f	\N
2026	r8vtf36fxobzn7uqqmu62dj3	2026-05-15 17:21:03.585	2026-05-15 17:22:12.608	\N	\N	\N	\N	0	\N	f	\N
2030	zgma9855uo34y7su9uls4c2k	2026-05-15 17:21:04.708	2026-05-15 17:22:12.63	\N	\N	\N	\N	0	\N	f	\N
2034	ih8e5b261bc845tgdg2o9kdr	2026-05-15 17:21:05.823	2026-05-15 17:22:12.654	\N	\N	\N	\N	0	\N	f	\N
2038	xpr0h8tzf1wzzetfomgdj4l8	2026-05-15 17:21:06.946	2026-05-15 17:22:12.676	\N	\N	\N	\N	0	\N	f	\N
2040	dcd7paqy0rxh96ywy7t54z45	2026-05-15 17:21:07.679	2026-05-15 17:22:12.699	\N	\N	\N	\N	0	\N	f	\N
2044	rzkzpya8v6h3uphy9adjrtis	2026-05-15 17:21:08.997	2026-05-15 17:22:12.723	\N	\N	\N	\N	0	\N	f	\N
2052	urqrrvoyri69j8986abbmlil	2026-05-15 17:21:11.396	2026-05-15 17:22:12.746	\N	\N	\N	\N	0	\N	f	\N
2056	qm1tk4dpopps0xylbczp6dru	2026-05-15 17:21:12.686	2026-05-15 17:22:12.769	\N	\N	\N	\N	0	\N	f	\N
2060	ug68q5b46h1w4wh4oyf987nu	2026-05-15 17:21:14.388	2026-05-15 17:22:12.792	\N	\N	\N	\N	0	\N	f	\N
2064	tvcuwg15mohdd8julo3d32tf	2026-05-15 17:21:15.946	2026-05-15 17:22:12.813	\N	\N	\N	\N	0	\N	f	\N
2066	ns7c8gj8qat468s9c2vjlxgx	2026-05-15 17:21:16.583	2026-05-15 17:22:12.835	\N	\N	\N	\N	0	\N	f	\N
2070	y91z7jo5kqfjs7lfud19m2uu	2026-05-15 17:21:17.754	2026-05-15 17:22:12.858	\N	\N	\N	\N	0	\N	f	\N
2074	tsrm3v7z5vt956pr6ngwa3tu	2026-05-15 17:21:18.854	2026-05-15 17:22:12.878	\N	\N	\N	\N	0	\N	f	\N
2078	m075t6ulgs8pcw7vsdh3lcbg	2026-05-15 17:21:20.279	2026-05-15 17:22:12.901	\N	\N	\N	\N	0	\N	f	\N
2082	ydi7be18ce0cgtbwxye9b2i3	2026-05-15 17:21:21.548	2026-05-15 17:22:12.922	\N	\N	\N	\N	0	\N	f	\N
2084	f1lns8vu7lq3lo8d6qcqlb5k	2026-05-15 17:21:22.185	2026-05-15 17:22:12.943	\N	\N	\N	\N	0	\N	f	\N
2090	qmv8s485aaqp47k3691sqv6r	2026-05-15 17:21:24.018	2026-05-15 17:22:12.989	\N	\N	\N	\N	0	\N	f	\N
2094	yfb0hsuig999sz3i5m7njk6x	2026-05-15 17:21:25.282	2026-05-15 17:22:13.012	\N	\N	\N	\N	0	\N	f	\N
2098	nkhqwl1h479d7b4qmy97yiwa	2026-05-15 17:21:26.391	2026-05-15 17:22:13.033	\N	\N	\N	\N	0	\N	f	\N
2102	lrp7kkfdwg3qx67vfoas52h2	2026-05-15 17:21:27.496	2026-05-15 17:22:13.055	\N	\N	\N	\N	0	\N	f	\N
2106	nu5v5fbveds5rifjrr0890bq	2026-05-15 17:21:28.942	2026-05-15 17:22:13.078	\N	\N	\N	\N	0	\N	f	\N
2110	heil0dn31oz20bw143ol1cj9	2026-05-15 17:21:30.411	2026-05-15 17:22:13.106	\N	\N	\N	\N	0	\N	f	\N
2112	o4bp9qjneqhyfk3ie8cq4sts	2026-05-15 17:21:31.065	2026-05-15 17:22:13.131	\N	\N	\N	\N	0	\N	f	\N
2116	wermadqw55pxtdlvsjc7ii69	2026-05-15 17:21:32.254	2026-05-15 17:22:13.152	\N	\N	\N	\N	0	\N	f	\N
2118	v23rby1m6niqbr3oyearjtbs	2026-05-15 17:21:32.83	2026-05-15 17:22:13.173	\N	\N	\N	\N	0	\N	f	\N
2120	lgmf59bg3cbtp0b7sx7v6vo2	2026-05-15 17:21:33.42	2026-05-15 17:22:13.195	\N	\N	\N	\N	0	\N	f	\N
2122	xsorskni1qsko1p364bbbjnv	2026-05-15 17:21:34.023	2026-05-15 17:22:13.215	\N	\N	\N	\N	0	\N	f	\N
2124	mgs7f3rf1wd8xnanfvxixflj	2026-05-15 17:21:34.618	2026-05-15 17:22:13.238	\N	\N	\N	\N	0	\N	f	\N
2126	jmy1bft41jc8it4ch03tnxi2	2026-05-15 17:21:35.27	2026-05-15 17:22:13.263	\N	\N	\N	\N	0	\N	f	\N
2128	o7qwwnb3vjlstf7vouthfpkp	2026-05-15 17:21:35.979	2026-05-15 17:22:13.285	\N	\N	\N	\N	0	\N	f	\N
2130	z32pvwfffjx4bze78wtwtjru	2026-05-15 17:21:36.712	2026-05-15 17:22:13.309	\N	\N	\N	\N	0	\N	f	\N
2132	f73bci5656bctyvvosnn3djb	2026-05-15 17:21:37.476	2026-05-15 17:22:13.329	\N	\N	\N	\N	0	\N	f	\N
2134	fnemv0smjc5qllnmxo5jwln7	2026-05-15 17:21:38.488	2026-05-15 17:22:13.352	\N	\N	\N	\N	0	\N	f	\N
2135	fnemv0smjc5qllnmxo5jwln7	2026-05-15 17:21:38.488	2026-05-15 17:21:38.488	2026-05-15 17:21:38.506	\N	\N	\N	0	\N	f	\N
2139	bx1cuf1tbbqxusa0yo4izpxx	2026-05-15 17:21:39.66	2026-05-15 17:21:39.66	2026-05-15 17:21:39.673	\N	\N	\N	0	\N	f	\N
2138	bx1cuf1tbbqxusa0yo4izpxx	2026-05-15 17:21:39.66	2026-05-15 17:22:13.373	\N	\N	\N	\N	0	\N	f	\N
2137	b1judfip7csw67fx3mx1h902	2026-05-15 17:21:39.1	2026-05-15 17:21:39.1	2026-05-15 17:21:39.115	\N	\N	\N	0	\N	f	\N
2145	p87v13ae55tqmviqgb2tfr16	2026-05-15 17:21:41.397	2026-05-15 17:21:41.397	2026-05-15 17:21:41.429	\N	\N	\N	0	\N	f	\N
2147	rs55iur930iq7ok4felb8q15	2026-05-15 17:21:42.095	2026-05-15 17:21:42.095	2026-05-15 17:21:42.11	\N	\N	\N	0	\N	f	\N
2149	x677esuxlwp6mlkc03z1yodj	2026-05-15 17:21:42.677	2026-05-15 17:21:42.677	2026-05-15 17:21:42.692	\N	\N	\N	0	\N	f	\N
2151	ua6n6xe47xhds0wwq7xrm3a9	2026-05-15 17:21:43.266	2026-05-15 17:21:43.266	2026-05-15 17:21:43.281	\N	\N	\N	0	\N	f	\N
2153	l866b7hzz0sxr64vlka9phdl	2026-05-15 17:21:43.853	2026-05-15 17:21:43.853	2026-05-15 17:21:43.868	\N	\N	\N	0	\N	f	\N
2155	elauu5qbqk5zz1fpdf0d6c26	2026-05-15 17:21:44.408	2026-05-15 17:21:44.408	2026-05-15 17:21:44.42	\N	\N	\N	0	\N	f	\N
2157	l6uvk45hvqahtkhvft8f8jam	2026-05-15 17:21:44.989	2026-05-15 17:21:44.989	2026-05-15 17:21:45.004	\N	\N	\N	0	\N	f	\N
2159	i7jwjsm61sc6cg5ye3quycxw	2026-05-15 17:21:45.559	2026-05-15 17:21:45.559	2026-05-15 17:21:45.57	\N	\N	\N	0	\N	f	\N
2161	v9ywtjv9dchekxi0wozoei7r	2026-05-15 17:21:46.23	2026-05-15 17:21:46.23	2026-05-15 17:21:46.243	\N	\N	\N	0	\N	f	\N
2163	e82a1tdyjpksehiz14ojb0mj	2026-05-15 17:21:46.797	2026-05-15 17:21:46.797	2026-05-15 17:21:46.81	\N	\N	\N	0	\N	f	\N
2165	rcfihjr449l0i5u0i08hlzs2	2026-05-15 17:21:47.356	2026-05-15 17:21:47.356	2026-05-15 17:21:47.368	\N	\N	\N	0	\N	f	\N
2167	bkmg4eqy3841edlz6257z1o6	2026-05-15 17:21:47.912	2026-05-15 17:21:47.912	2026-05-15 17:21:47.926	\N	\N	\N	0	\N	f	\N
2169	rhi4a7i0g6uu0076vh4ve9zu	2026-05-15 17:21:48.472	2026-05-15 17:21:48.472	2026-05-15 17:21:48.487	\N	\N	\N	0	\N	f	\N
2171	ko8m5gphseknojs9btt6twlc	2026-05-15 17:21:49.017	2026-05-15 17:21:49.017	2026-05-15 17:21:49.028	\N	\N	\N	0	\N	f	\N
2175	ysmjm8yo8t0aqm4ixl0x09sk	2026-05-15 17:21:50.194	2026-05-15 17:21:50.194	2026-05-15 17:21:50.208	\N	\N	\N	0	\N	f	\N
2177	j3j9bjox2bvg52dvvpc1t9px	2026-05-15 17:21:50.774	2026-05-15 17:21:50.774	2026-05-15 17:21:50.791	\N	\N	\N	0	\N	f	\N
2179	i60li1fi01tmred6eacz9zyq	2026-05-15 17:21:51.328	2026-05-15 17:21:51.328	2026-05-15 17:21:51.34	\N	\N	\N	0	\N	f	\N
2181	nycw54f6jt5anyg1pyidlhke	2026-05-15 17:21:51.907	2026-05-15 17:21:51.907	2026-05-15 17:21:51.92	\N	\N	\N	0	\N	f	\N
2183	m05tmobegi82ge5m0ewjm9ua	2026-05-15 17:21:52.456	2026-05-15 17:21:52.456	2026-05-15 17:21:52.469	\N	\N	\N	0	\N	f	\N
2185	jg0j6zv6xaoocaw7je06x5ea	2026-05-15 17:21:53.026	2026-05-15 17:21:53.026	2026-05-15 17:21:53.04	\N	\N	\N	0	\N	f	\N
2187	s9l2ggstqxysk7s9iflkxthk	2026-05-15 17:21:53.743	2026-05-15 17:21:53.743	2026-05-15 17:21:53.761	\N	\N	\N	0	\N	f	\N
2188	inbmx5wkiy87pec7wr75f1lg	2026-05-15 17:21:54.563	2026-05-15 17:21:54.563	\N	\N	\N	\N	0	\N	f	\N
2189	inbmx5wkiy87pec7wr75f1lg	2026-05-15 17:21:54.563	2026-05-15 17:21:54.563	2026-05-15 17:21:54.582	\N	\N	\N	0	\N	f	\N
2190	zw6tatpjwjp825cjuysqhro5	2026-05-15 17:21:55.166	2026-05-15 17:21:55.166	\N	\N	\N	\N	0	\N	f	\N
2191	zw6tatpjwjp825cjuysqhro5	2026-05-15 17:21:55.166	2026-05-15 17:21:55.166	2026-05-15 17:21:55.179	\N	\N	\N	0	\N	f	\N
2192	mnvmqbf777v33edsshhbaiuj	2026-05-15 17:21:55.727	2026-05-15 17:21:55.727	\N	\N	\N	\N	0	\N	f	\N
2193	mnvmqbf777v33edsshhbaiuj	2026-05-15 17:21:55.727	2026-05-15 17:21:55.727	2026-05-15 17:21:55.74	\N	\N	\N	0	\N	f	\N
2194	dl3df6j2kkp50btygwu8ghoq	2026-05-15 17:21:56.283	2026-05-15 17:21:56.283	\N	\N	\N	\N	0	\N	f	\N
2195	dl3df6j2kkp50btygwu8ghoq	2026-05-15 17:21:56.283	2026-05-15 17:21:56.283	2026-05-15 17:21:56.297	\N	\N	\N	0	\N	f	\N
2196	lradmmw54vsb92joim383m1z	2026-05-15 17:21:56.932	2026-05-15 17:21:56.932	\N	\N	\N	\N	0	\N	f	\N
2197	lradmmw54vsb92joim383m1z	2026-05-15 17:21:56.932	2026-05-15 17:21:56.932	2026-05-15 17:21:56.946	\N	\N	\N	0	\N	f	\N
2198	s68zvodshth2esf4h1p6nbrs	2026-05-15 17:21:57.516	2026-05-15 17:21:57.516	\N	\N	\N	\N	0	\N	f	\N
2199	s68zvodshth2esf4h1p6nbrs	2026-05-15 17:21:57.516	2026-05-15 17:21:57.516	2026-05-15 17:21:57.53	\N	\N	\N	0	\N	f	\N
2200	u6ycpy38xldpf3sgrrt9jumx	2026-05-15 17:21:58.192	2026-05-15 17:21:58.192	\N	\N	\N	\N	0	\N	f	\N
2201	u6ycpy38xldpf3sgrrt9jumx	2026-05-15 17:21:58.192	2026-05-15 17:21:58.192	2026-05-15 17:21:58.218	\N	\N	\N	0	\N	f	\N
2202	e2nhly51b52fpveno0bs6w08	2026-05-15 17:21:58.917	2026-05-15 17:21:58.917	\N	\N	\N	\N	0	\N	f	\N
2203	e2nhly51b52fpveno0bs6w08	2026-05-15 17:21:58.917	2026-05-15 17:21:58.917	2026-05-15 17:21:58.932	\N	\N	\N	0	\N	f	\N
2204	bsyll92h43xipcb13h6s2mwx	2026-05-15 17:21:59.551	2026-05-15 17:21:59.551	\N	\N	\N	\N	0	\N	f	\N
2205	bsyll92h43xipcb13h6s2mwx	2026-05-15 17:21:59.551	2026-05-15 17:21:59.551	2026-05-15 17:21:59.563	\N	\N	\N	0	\N	f	\N
2206	a7ajo0wd1oqcdltv9y7vkw69	2026-05-15 17:22:00.135	2026-05-15 17:22:00.135	\N	\N	\N	\N	0	\N	f	\N
2207	a7ajo0wd1oqcdltv9y7vkw69	2026-05-15 17:22:00.135	2026-05-15 17:22:00.135	2026-05-15 17:22:00.147	\N	\N	\N	0	\N	f	\N
2208	vwvv2ejytsq52j5ichqeqd97	2026-05-15 17:22:00.697	2026-05-15 17:22:00.697	\N	\N	\N	\N	0	\N	f	\N
2209	vwvv2ejytsq52j5ichqeqd97	2026-05-15 17:22:00.697	2026-05-15 17:22:00.697	2026-05-15 17:22:00.713	\N	\N	\N	0	\N	f	\N
2210	ayoybg6h9y8ilyhwc6np2693	2026-05-15 17:22:01.284	2026-05-15 17:22:01.284	\N	\N	\N	\N	0	\N	f	\N
2211	ayoybg6h9y8ilyhwc6np2693	2026-05-15 17:22:01.284	2026-05-15 17:22:01.284	2026-05-15 17:22:01.297	\N	\N	\N	0	\N	f	\N
2212	oabrkzzdob6pgqzid7hv31qc	2026-05-15 17:22:01.948	2026-05-15 17:22:01.948	\N	\N	\N	\N	0	\N	f	\N
2213	oabrkzzdob6pgqzid7hv31qc	2026-05-15 17:22:01.948	2026-05-15 17:22:01.948	2026-05-15 17:22:01.962	\N	\N	\N	0	\N	f	\N
2214	l5suqdtynmjok1yy9ldsu1w8	2026-05-15 17:22:02.525	2026-05-15 17:22:02.525	\N	\N	\N	\N	0	\N	f	\N
2215	l5suqdtynmjok1yy9ldsu1w8	2026-05-15 17:22:02.525	2026-05-15 17:22:02.525	2026-05-15 17:22:02.539	\N	\N	\N	0	\N	f	\N
2216	p6894m4lk2g7xbvieyawn5u2	2026-05-15 17:22:03.106	2026-05-15 17:22:03.106	\N	\N	\N	\N	0	\N	f	\N
2217	p6894m4lk2g7xbvieyawn5u2	2026-05-15 17:22:03.106	2026-05-15 17:22:03.106	2026-05-15 17:22:03.12	\N	\N	\N	0	\N	f	\N
2218	tq3v6wooh0ni4r1klb45xkl1	2026-05-15 17:22:03.664	2026-05-15 17:22:03.664	\N	\N	\N	\N	0	\N	f	\N
2219	tq3v6wooh0ni4r1klb45xkl1	2026-05-15 17:22:03.664	2026-05-15 17:22:03.664	2026-05-15 17:22:03.677	\N	\N	\N	0	\N	f	\N
2220	rvgmpy1sqcnm1wgmsktnxfq4	2026-05-15 17:22:04.211	2026-05-15 17:22:04.211	\N	\N	\N	\N	0	\N	f	\N
2221	rvgmpy1sqcnm1wgmsktnxfq4	2026-05-15 17:22:04.211	2026-05-15 17:22:04.211	2026-05-15 17:22:04.222	\N	\N	\N	0	\N	f	\N
2222	p18xvzqbm5gp690uf76zo80p	2026-05-15 17:22:04.852	2026-05-15 17:22:04.852	\N	\N	\N	\N	0	\N	f	\N
2223	p18xvzqbm5gp690uf76zo80p	2026-05-15 17:22:04.852	2026-05-15 17:22:04.852	2026-05-15 17:22:04.866	\N	\N	\N	0	\N	f	\N
2224	jboopp5gqkugxmuu3ka2esiz	2026-05-15 17:22:05.431	2026-05-15 17:22:05.431	\N	\N	\N	\N	0	\N	f	\N
2225	jboopp5gqkugxmuu3ka2esiz	2026-05-15 17:22:05.431	2026-05-15 17:22:05.431	2026-05-15 17:22:05.446	\N	\N	\N	0	\N	f	\N
2226	gxue2c0plfuv4zppo6hmtty7	2026-05-15 17:22:06.002	2026-05-15 17:22:06.002	\N	\N	\N	\N	0	\N	f	\N
2227	gxue2c0plfuv4zppo6hmtty7	2026-05-15 17:22:06.002	2026-05-15 17:22:06.002	2026-05-15 17:22:06.013	\N	\N	\N	0	\N	f	\N
2228	un9k7dhw0vflicpjoiks8g4r	2026-05-15 17:22:06.548	2026-05-15 17:22:06.548	\N	\N	\N	\N	0	\N	f	\N
2144	p87v13ae55tqmviqgb2tfr16	2026-05-15 17:21:41.397	2026-05-15 17:22:13.415	\N	\N	\N	\N	0	\N	f	\N
2148	x677esuxlwp6mlkc03z1yodj	2026-05-15 17:21:42.677	2026-05-15 17:22:13.458	\N	\N	\N	\N	0	\N	f	\N
2150	ua6n6xe47xhds0wwq7xrm3a9	2026-05-15 17:21:43.266	2026-05-15 17:22:13.478	\N	\N	\N	\N	0	\N	f	\N
2152	l866b7hzz0sxr64vlka9phdl	2026-05-15 17:21:43.853	2026-05-15 17:22:13.502	\N	\N	\N	\N	0	\N	f	\N
2156	l6uvk45hvqahtkhvft8f8jam	2026-05-15 17:21:44.989	2026-05-15 17:22:13.926	\N	\N	\N	\N	0	\N	f	\N
2158	i7jwjsm61sc6cg5ye3quycxw	2026-05-15 17:21:45.559	2026-05-15 17:22:13.947	\N	\N	\N	\N	0	\N	f	\N
2160	v9ywtjv9dchekxi0wozoei7r	2026-05-15 17:21:46.23	2026-05-15 17:22:13.97	\N	\N	\N	\N	0	\N	f	\N
2162	e82a1tdyjpksehiz14ojb0mj	2026-05-15 17:21:46.797	2026-05-15 17:22:13.983	\N	\N	\N	\N	0	\N	f	\N
2164	rcfihjr449l0i5u0i08hlzs2	2026-05-15 17:21:47.356	2026-05-15 17:22:13.995	\N	\N	\N	\N	0	\N	f	\N
2166	bkmg4eqy3841edlz6257z1o6	2026-05-15 17:21:47.912	2026-05-15 17:22:14.008	\N	\N	\N	\N	0	\N	f	\N
2168	rhi4a7i0g6uu0076vh4ve9zu	2026-05-15 17:21:48.472	2026-05-15 17:22:14.021	\N	\N	\N	\N	0	\N	f	\N
2170	ko8m5gphseknojs9btt6twlc	2026-05-15 17:21:49.017	2026-05-15 17:22:14.032	\N	\N	\N	\N	0	\N	f	\N
2174	ysmjm8yo8t0aqm4ixl0x09sk	2026-05-15 17:21:50.194	2026-05-15 17:22:14.042	\N	\N	\N	\N	0	\N	f	\N
2176	j3j9bjox2bvg52dvvpc1t9px	2026-05-15 17:21:50.774	2026-05-15 17:22:14.054	\N	\N	\N	\N	0	\N	f	\N
2178	i60li1fi01tmred6eacz9zyq	2026-05-15 17:21:51.328	2026-05-15 17:22:14.065	\N	\N	\N	\N	0	\N	f	\N
2180	nycw54f6jt5anyg1pyidlhke	2026-05-15 17:21:51.907	2026-05-15 17:22:14.078	\N	\N	\N	\N	0	\N	f	\N
2182	m05tmobegi82ge5m0ewjm9ua	2026-05-15 17:21:52.456	2026-05-15 17:22:14.089	\N	\N	\N	\N	0	\N	f	\N
2184	jg0j6zv6xaoocaw7je06x5ea	2026-05-15 17:21:53.026	2026-05-15 17:22:14.1	\N	\N	\N	\N	0	\N	f	\N
2186	s9l2ggstqxysk7s9iflkxthk	2026-05-15 17:21:53.743	2026-05-15 17:22:14.112	\N	\N	\N	\N	0	\N	f	\N
2154	elauu5qbqk5zz1fpdf0d6c26	2026-05-15 17:21:44.408	2026-05-15 17:22:13.905	\N	\N	\N	\N	0	\N	f	\N
2229	un9k7dhw0vflicpjoiks8g4r	2026-05-15 17:22:06.548	2026-05-15 17:22:06.548	2026-05-15 17:22:06.563	\N	\N	\N	0	\N	f	\N
2235	o131ciu3gy50t2dy8tbs8gej	2026-05-15 17:22:08.285	2026-05-15 17:22:08.285	2026-05-15 17:22:08.296	\N	\N	\N	0	\N	f	\N
2234	o131ciu3gy50t2dy8tbs8gej	2026-05-15 17:22:08.285	2026-05-15 17:22:14.123	\N	\N	\N	\N	0	\N	f	\N
1996	o9vmms5wekq5m42jqllb165r	2026-05-15 17:20:55.261	2026-05-15 17:22:14.137	\N	\N	\N	\N	0	\N	f	\N
2146	rs55iur930iq7ok4felb8q15	2026-05-15 17:21:42.095	2026-05-15 17:22:14.148	\N	\N	\N	\N	0	\N	f	\N
2231	v8kgoqxltrdstrba1ufwvm36	2026-05-15 17:22:07.192	2026-05-15 17:22:07.192	2026-05-15 17:22:07.206	\N	\N	\N	0	\N	f	\N
2233	tzsi04dx5zrvxpswu1lsr32m	2026-05-15 17:22:07.747	2026-05-15 17:22:07.747	2026-05-15 17:22:07.761	\N	\N	\N	0	\N	f	\N
2230	v8kgoqxltrdstrba1ufwvm36	2026-05-15 17:22:07.192	2026-05-15 17:22:14.16	\N	\N	\N	\N	0	\N	f	\N
2232	tzsi04dx5zrvxpswu1lsr32m	2026-05-15 17:22:07.747	2026-05-15 17:22:14.171	\N	\N	\N	\N	0	\N	f	\N
1988	ldrcylhigdz18hey3udvxw9p	2026-05-15 17:20:52.931	2026-05-15 17:22:14.183	\N	\N	\N	\N	0	\N	f	\N
2088	pb4fqstt0w9xchcggpidjq0i	2026-05-15 17:21:23.278	2026-05-15 17:22:14.196	\N	\N	\N	\N	0	\N	f	\N
2136	b1judfip7csw67fx3mx1h902	2026-05-15 17:21:39.1	2026-05-15 17:22:14.207	\N	\N	\N	\N	0	\N	f	\N
\.


--
-- Data for Name: customet_follow_ups_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_customer_lnk (id, customet_follow_up_id, customer_id) FROM stdin;
2602	1748	2527
2908	1952	2823
2604	1749	2529
2605	1750	2530
3196	2144	3093
2607	1751	2532
2608	1752	2533
2913	1955	2828
2610	1753	2535
3226	2164	3119
3231	2167	3124
3232	2168	3125
2617	1758	2542
3237	2171	3130
2619	1759	2544
3243	2175	3134
2623	1762	2548
3244	2176	3135
2625	1763	2550
2626	1764	2551
2628	1765	2553
2629	1766	2554
3249	2179	3140
2631	1767	2556
2632	1768	2557
3252	2181	3143
2634	1769	2559
3283	2202	3172
3288	2205	3177
2638	1772	2563
3289	2206	3178
2640	1773	2565
2641	1774	2566
2643	1775	2568
2644	1776	2569
3294	2209	3183
2646	1777	2571
2647	1778	2572
3295	2210	3184
2649	1779	2574
2653	1782	2578
3300	2213	3187
2655	1783	2580
2656	1784	2581
3301	2214	3188
2658	1785	2583
2659	1786	2584
2661	1787	2586
2662	1788	2587
3306	2217	3193
2664	1789	2589
2665	1790	2590
3307	2218	3194
2667	1791	2592
2668	1792	2593
2670	1793	2595
2671	1794	2596
2673	1795	2598
2674	1796	2599
2676	1797	2601
2677	1798	2602
2679	1799	2604
2680	1800	2605
2682	1801	2607
2683	1802	2608
2685	1803	2610
2686	1804	2611
2688	1805	2613
2689	1806	2614
2691	1807	2616
2692	1808	2617
2694	1809	2619
2695	1810	2620
2697	1811	2622
2698	1812	2623
2700	1813	2625
2701	1814	2626
2703	1815	2628
2704	1816	2629
2706	1817	2631
2707	1818	2632
2709	1819	2634
2713	1822	2638
2715	1823	2640
2719	1826	2644
2721	1827	2646
2722	1828	2647
2724	1829	2649
2725	1830	2650
2727	1831	2652
2728	1832	2653
2730	1833	2655
2731	1834	2656
2733	1835	2658
2737	1838	2662
2739	1839	2664
2740	1840	2665
2742	1841	2667
2743	1842	2668
2745	1843	2670
2749	1846	2674
2751	1847	2676
2755	1850	2680
2757	1851	2682
2758	1852	2683
2760	1853	2685
2761	1854	2659
2763	1855	2686
2764	1856	2687
2766	1857	2689
2767	1858	2536
2769	1859	2690
2770	1860	2691
2772	1861	2693
2773	1862	2694
2775	1863	2696
2776	1864	2697
2778	1865	2699
2782	1868	2703
2784	1869	2705
2785	1870	2706
2787	1871	2708
2788	1872	2709
2790	1873	2711
2794	1876	2715
2796	1877	2717
2800	1880	2721
2802	1881	2723
2803	1882	2724
2805	1883	2726
2806	1884	2727
2808	1885	2729
2809	1886	2730
2811	1887	2732
2812	1888	2733
2814	1889	2735
2815	1890	2736
2817	1891	2738
2818	1892	2739
2820	1893	2741
2821	1894	2742
2823	1895	2744
2824	1896	2745
2826	1897	2747
2827	1898	2748
2829	1899	2750
2830	1900	2560
2832	1901	2751
2833	1902	2752
2835	1903	2754
2839	1906	2758
2841	1907	2760
2842	1908	2761
2844	1909	2763
2845	1910	2764
2847	1911	2766
2848	1912	2767
2850	1913	2769
2851	1914	2770
2853	1915	2772
2854	1916	2773
2856	1917	2775
2857	1918	2776
2859	1919	2778
2860	1920	2779
2862	1921	2781
2863	1922	2782
2865	1923	2784
2866	1924	2785
2868	1925	2787
2869	1926	2788
2871	1927	2790
2872	1928	2545
2874	1929	2791
2875	1930	2792
2878	1932	2795
2877	1931	2794
2880	1933	2797
2883	1935	2800
2886	1937	2803
2889	1939	2806
2892	1941	2809
2895	1943	2812
2898	1945	2815
2899	1946	2816
2910	1953	2825
2914	1956	2829
3198	2145	3095
2919	1959	2834
2922	1961	2837
2923	1962	2838
3199	2146	2641
2928	1965	2843
2929	1966	2844
2934	1969	2849
2937	1971	2852
2938	1972	2853
3202	2148	3097
2941	1974	2700
2944	1976	2857
3207	2151	3102
2949	1979	2862
2950	1980	2863
3210	2153	3105
3213	2155	3108
2956	1984	2867
3214	2156	3109
2961	1987	2872
2962	1988	2873
2967	1991	2878
2968	1992	2879
3219	2159	3114
2973	1995	2884
2974	1996	2755
3220	2160	2539
2979	1999	2888
2980	2000	2889
2985	2003	2894
2986	2004	2895
3225	2163	3118
2991	2007	2900
2994	2009	2903
2995	2010	2904
3229	2166	3122
3000	2013	2909
3001	2014	2910
3006	2017	2915
3007	2018	2916
3234	2169	3127
3012	2021	2921
3013	2022	2922
3235	2170	3128
3018	2025	2927
3019	2026	2928
3024	2029	2933
3025	2030	2934
3030	2033	2939
3031	2034	2940
3241	2174	3131
3036	2037	2945
3037	2038	2946
3040	2040	2949
3246	2177	3137
3045	2043	2954
3046	2044	2955
3247	2178	3138
3051	2047	2958
3250	2180	3141
3057	2051	2962
3058	2052	2963
3063	2055	2968
3064	2056	2969
3255	2183	3146
3069	2059	2974
3070	2060	2975
3258	2185	3149
3075	2063	2978
3076	2064	2979
3261	2187	3152
3079	2066	2671
3264	2189	3155
3084	2069	2985
3085	2070	2986
3267	2191	3158
3090	2073	2991
3091	2074	2992
3268	2192	3159
3096	2077	2997
3097	2078	2998
3103	2082	3004
3273	2195	3164
3106	2084	2635
3276	2197	3165
3111	2087	3010
3112	2088	3011
3277	2198	3166
3115	2090	3014
3120	2093	3017
3121	2094	3018
3282	2201	3171
3126	2097	3023
3127	2098	3024
3132	2101	3029
3133	2102	3030
3312	2221	3199
3138	2105	3035
3139	2106	3036
3313	2222	3001
3144	2109	3041
3145	2110	3042
3148	2112	3045
3318	2225	3203
3153	2115	3050
3154	2116	3051
3321	2227	3206
3157	2118	3054
3322	2228	3207
3159	2119	3056
3160	2120	3057
3162	2121	3059
3163	2122	3060
3327	2231	3212
3165	2123	3062
3166	2124	3063
3330	2233	3215
3168	2125	3065
3169	2126	3066
3331	2234	3216
3171	2127	3068
3172	2128	3069
3174	2129	3071
3175	2130	3072
3177	2131	3074
3178	2132	3075
3180	2133	3077
3181	2134	3078
3183	2135	3080
3184	2136	3081
3186	2137	3083
3187	2138	3084
3189	2139	3086
3192	2141	3089
3195	2143	3092
2911	1954	2826
2881	1934	2798
3201	2147	3096
2884	1936	2801
2916	1957	2831
2887	1938	2804
2917	1958	2832
2890	1940	2807
3204	2149	3099
2893	1942	2810
2920	1960	2835
2896	1944	2813
3205	2150	3100
2901	1947	2818
2925	1963	2840
2926	1964	2841
3208	2152	3103
2931	1967	2846
2932	1968	2847
2935	1970	2850
3211	2154	3106
2940	1973	2855
2943	1975	2856
2946	1977	2859
2947	1978	2860
2952	1981	2865
3216	2157	3111
3217	2158	3112
2958	1985	2869
2959	1986	2870
2964	1989	2875
2965	1990	2876
3222	2161	3115
2970	1993	2881
2971	1994	2882
3223	2162	3116
2976	1997	2885
2977	1998	2886
2982	2001	2891
2983	2002	2892
3228	2165	3121
2988	2005	2897
2989	2006	2898
3253	2182	3144
2992	2008	2901
2997	2011	2906
2998	2012	2907
3256	2184	3147
3003	2015	2912
3004	2016	2913
3009	2019	2918
3010	2020	2919
3259	2186	3150
3015	2023	2924
3016	2024	2925
3021	2027	2930
3022	2028	2931
3262	2188	3153
3027	2031	2936
3028	2032	2937
3033	2035	2942
3034	2036	2943
3265	2190	3156
3039	2039	2948
3042	2041	2951
3043	2042	2952
3048	2045	2957
3049	2046	2718
3270	2193	3161
3271	2194	3162
3055	2050	2960
3060	2053	2965
3061	2054	2966
3274	2196	2575
3066	2057	2971
3067	2058	2972
3072	2061	2977
3073	2062	2712
3279	2199	3168
3078	2065	2981
3081	2067	2982
3082	2068	2983
3280	2200	3169
3087	2071	2988
3088	2072	2989
3093	2075	2994
3094	2076	2995
3285	2203	3174
3099	2079	3000
3286	2204	3175
3105	2083	3006
3108	2085	3007
3109	2086	3008
3114	2089	3013
3117	2091	3016
3118	2092	2677
3291	2207	3180
3123	2095	3020
3124	2096	3021
3292	2208	3181
3129	2099	3026
3130	2100	3027
3135	2103	3032
3136	2104	3033
3297	2211	3186
3141	2107	3038
3142	2108	3039
3298	2212	2819
3147	2111	3044
3150	2113	3047
3151	2114	3048
3156	2117	3053
3190	2140	3087
3303	2215	3190
3193	2142	3090
3304	2216	3191
3309	2219	3196
3310	2220	3197
3315	2223	3200
3316	2224	3201
3319	2226	3204
3324	2229	3209
3325	2230	3210
3328	2232	3213
3333	2235	3218
\.


--
-- Data for Name: customet_follow_ups_follow_status_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_follow_status_lnk (id, customet_follow_up_id, follow_status_id) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups_follow_ups_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_follow_ups_lnk (id, customet_follow_up_id, follow_up_list_id, follow_up_list_ord, customet_follow_up_ord) FROM stdin;
2068	1748	1673	0	1
2069	1749	1674	1	1
2070	1750	1675	0	1
2071	1751	1676	1	1
2072	1752	1677	0	1
2073	1753	1678	1	1
2078	1758	1683	0	1
2079	1759	1684	1	1
2082	1762	1687	0	1
2083	1763	1688	1	1
2084	1764	1689	0	1
2085	1765	1690	1	1
2086	1766	1691	0	1
2087	1767	1692	1	1
2088	1768	1693	0	1
2089	1769	1694	1	1
2092	1772	1697	0	1
2093	1773	1698	1	1
2094	1774	1699	0	1
2095	1775	1700	1	1
2096	1776	1701	0	1
2097	1777	1702	1	1
2098	1778	1703	0	1
2099	1779	1704	1	1
2102	1782	1707	0	1
2103	1783	1708	1	1
2104	1784	1709	0	1
2105	1785	1710	1	1
2106	1786	1711	0	1
2107	1787	1712	1	1
2108	1788	1713	0	1
2109	1789	1714	1	1
2110	1790	1715	0	1
2111	1791	1716	1	1
2112	1792	1717	0	1
2113	1793	1718	1	1
2114	1794	1719	0	1
2115	1795	1720	1	1
2116	1796	1721	0	1
2117	1797	1722	1	1
2118	1798	1723	0	1
2119	1799	1724	1	1
2120	1800	1725	0	1
2121	1801	1726	1	1
2122	1802	1727	0	1
2123	1803	1728	1	1
2124	1804	1729	0	1
2125	1805	1730	1	1
2126	1806	1731	0	1
2127	1807	1732	1	1
2128	1808	1733	0	1
2129	1809	1734	1	1
2130	1810	1735	0	1
2131	1811	1736	1	1
2132	1812	1737	0	1
2133	1813	1738	1	1
2134	1814	1739	0	1
2135	1815	1740	1	1
2136	1816	1741	0	1
2137	1817	1742	1	1
2138	1818	1743	0	1
2139	1819	1744	1	1
2142	1822	1747	0	1
2143	1823	1748	1	1
2146	1826	1751	0	1
2147	1827	1752	1	1
2148	1828	1753	0	1
2149	1829	1754	1	1
2150	1830	1755	0	1
2151	1831	1756	1	1
2152	1832	1757	0	1
2153	1833	1758	1	1
2154	1834	1759	0	1
2155	1835	1760	1	1
2158	1838	1763	0	1
2159	1839	1764	1	1
2160	1840	1765	0	1
2161	1841	1766	1	1
2162	1842	1767	0	1
2163	1843	1768	1	1
2166	1846	1771	0	1
2167	1847	1772	1	1
2170	1850	1775	0	1
2171	1851	1776	1	1
2172	1852	1777	0	1
2173	1853	1778	1	1
2174	1854	1761	0	1
2175	1854	1779	1	1
2176	1855	1762	1	1
2177	1855	1780	2	1
2178	1856	1781	0	1
2179	1857	1782	1	1
2180	1858	1679	0	1
2181	1858	1783	1	1
2182	1859	1680	1	1
2183	1859	1784	2	1
2184	1860	1785	0	1
2185	1861	1786	1	1
2186	1862	1787	0	1
2187	1863	1788	1	1
2188	1864	1789	0	1
2189	1865	1790	1	1
2192	1868	1793	0	1
2193	1869	1794	1	1
2194	1870	1795	0	1
2195	1871	1796	1	1
2196	1872	1797	0	1
2197	1873	1798	1	1
2200	1876	1801	0	1
2201	1877	1802	1	1
2204	1880	1805	0	1
2205	1881	1806	1	1
2206	1882	1807	0	1
2207	1883	1808	1	1
2240	1914	1839	0	1
2241	1915	1840	1	1
2244	1918	1843	0	1
2245	1919	1844	1	1
2246	1920	1845	0	1
2247	1921	1846	1	1
2248	1922	1847	0	1
2249	1923	1848	1	1
2250	1924	1849	0	1
2251	1925	1850	1	1
2252	1926	1851	0	1
2253	1927	1852	1	1
2274	1946	1871	0	1
2275	1947	1872	1	1
2208	1884	1809	0	1
2209	1885	1810	1	1
2210	1886	1811	0	1
2211	1887	1812	1	1
2212	1888	1813	0	1
2213	1889	1814	1	1
2214	1890	1815	0	1
2215	1891	1816	1	1
2216	1892	1817	0	1
2217	1893	1818	1	1
2218	1894	1819	0	1
2219	1895	1820	1	1
2220	1896	1821	0	1
2221	1897	1822	1	1
2224	1900	1695	0	1
2225	1900	1825	1	1
2226	1901	1696	1	1
2227	1901	1826	2	1
2228	1902	1827	0	1
2229	1903	1828	1	1
2232	1906	1831	0	1
2233	1907	1832	1	1
2234	1908	1833	0	1
2235	1909	1834	1	1
2236	1910	1835	0	1
2237	1911	1836	1	1
2238	1912	1837	0	1
2239	1913	1838	1	1
2242	1916	1841	0	1
2243	1917	1842	1	1
2254	1928	1685	0	1
2255	1928	1853	1	1
2256	1929	1686	1	1
2257	1929	1854	2	1
2258	1930	1855	0	1
2259	1931	1856	1	1
2260	1932	1857	0	1
2261	1933	1858	1	1
2262	1934	1859	0	1
2263	1935	1860	1	1
2264	1936	1861	0	1
2265	1937	1862	1	1
2266	1938	1863	0	1
2267	1939	1864	1	1
2268	1940	1865	0	1
2269	1941	1866	1	1
2270	1942	1867	0	1
2271	1943	1868	1	1
2272	1944	1869	0	1
2273	1945	1870	1	1
2222	1898	1823	0	1
2223	1899	1824	1	1
2282	1952	1877	0	1
2283	1953	1878	1	1
2284	1954	1879	0	1
2285	1955	1880	1	1
2286	1956	1881	0	1
2287	1957	1882	1	1
2288	1958	1883	0	1
2289	1959	1884	1	1
2290	1960	1885	0	1
2291	1961	1886	1	1
2292	1962	1887	0	1
2293	1963	1888	1	1
2294	1964	1889	0	1
2295	1965	1890	1	1
2296	1966	1891	0	1
2297	1967	1892	1	1
2298	1968	1893	0	1
2299	1969	1894	1	1
2300	1970	1895	0	1
2301	1971	1896	1	1
2302	1972	1897	0	1
2303	1973	1898	1	1
2304	1974	1791	0	1
2305	1974	1899	1	1
2306	1975	1792	1	1
2307	1975	1900	2	1
2308	1976	1901	0	1
2309	1977	1902	1	1
2310	1978	1903	0	1
2311	1979	1904	1	1
2312	1980	1905	0	1
2313	1981	1906	1	1
2318	1984	1909	0	1
2319	1985	1910	1	1
2320	1986	1911	0	1
2321	1987	1912	1	1
2322	1988	1913	0	1
2323	1989	1914	1	1
2324	1990	1915	0	1
2325	1991	1916	1	1
2326	1992	1917	0	1
2327	1993	1918	1	1
2328	1994	1919	0	1
2329	1995	1920	1	1
2330	1996	1829	0	1
2331	1996	1921	1	1
2332	1997	1830	1	1
2333	1997	1922	2	1
2334	1998	1923	0	1
2335	1999	1924	1	1
2336	2000	1925	0	1
2337	2001	1926	1	1
2338	2002	1927	0	1
2339	2003	1928	1	1
2340	2004	1929	0	1
2341	2005	1930	1	1
2342	2006	1931	0	1
2343	2007	1932	1	1
2344	2008	1933	0	1
2345	2009	1934	1	1
2346	2010	1935	0	1
2347	2011	1936	1	1
2348	2012	1937	0	1
2349	2013	1938	1	1
2350	2014	1939	0	1
2351	2015	1940	1	1
2352	2016	1941	0	1
2353	2017	1942	1	1
2354	2018	1943	0	1
2355	2019	1944	1	1
2356	2020	1945	0	1
2357	2021	1946	1	1
2358	2022	1947	0	1
2359	2023	1948	1	1
2360	2024	1949	0	1
2361	2025	1950	1	1
2362	2026	1951	0	1
2363	2027	1952	1	1
2364	2028	1953	0	1
2365	2029	1954	1	1
2366	2030	1955	0	1
2367	2031	1956	1	1
2368	2032	1957	0	1
2369	2033	1958	1	1
2370	2034	1959	0	1
2371	2035	1960	1	1
2372	2036	1961	0	1
2373	2037	1962	1	1
2374	2038	1963	0	1
2375	2039	1964	1	1
2376	2040	1965	0	1
2377	2041	1966	1	1
2378	2042	1967	0	1
2379	2043	1968	1	1
2380	2044	1969	0	1
2381	2045	1970	1	1
2382	2046	1803	0	1
2383	2046	1971	1	1
2384	2047	1804	1	1
2385	2047	1972	2	1
2390	2050	1975	0	1
2391	2051	1976	1	1
2392	2052	1977	0	1
2393	2053	1978	1	1
2394	2054	1979	0	1
2395	2055	1980	1	1
2396	2056	1981	0	1
2397	2057	1982	1	1
2398	2058	1983	0	1
2399	2059	1984	1	1
2400	2060	1985	0	1
2401	2061	1986	1	1
2402	2062	1799	0	1
2403	2062	1973	1	1
2404	2062	1987	2	1
2405	2063	1800	1	1
2406	2063	1974	2	1
2407	2063	1988	3	1
2408	2064	1989	0	1
2409	2065	1990	1	1
2410	2066	1769	0	1
2411	2066	1907	1	1
2412	2066	1991	2	1
2413	2067	1770	1	1
2414	2067	1908	2	1
2415	2067	1992	3	1
2416	2068	1993	0	1
2417	2069	1994	1	1
2418	2070	1995	0	1
2419	2071	1996	1	1
2420	2072	1997	0	1
2421	2073	1998	1	1
2422	2074	1999	0	1
2423	2075	2000	1	1
2426	2078	2003	0	1
2427	2079	2004	1	1
2430	2082	2007	0	1
2431	2083	2008	1	1
2432	2084	1745	0	1
2433	2084	2009	1	1
2434	2085	1746	1	1
2435	2085	2010	2	1
2438	2088	2013	0	1
2439	2089	2014	1	1
2440	2090	2015	0	1
2441	2091	2016	1	1
2446	2094	2019	0	1
2447	2095	2020	1	1
2450	2098	2023	0	1
2451	2099	2024	1	1
2454	2102	2027	0	1
2455	2103	2028	1	1
2470	2118	2043	0	1
2471	2119	2044	1	1
2474	2122	2047	0	1
2475	2123	2048	1	1
2488	2136	2061	0	1
2489	2137	2062	1	1
2424	2076	2001	0	1
2425	2077	2002	1	1
2436	2086	2011	0	1
2437	2087	2012	1	1
2442	2092	1773	0	1
2443	2092	2017	1	1
2444	2093	1774	1	1
2445	2093	2018	2	1
2448	2096	2021	0	1
2449	2097	2022	1	1
2452	2100	2025	0	1
2453	2101	2026	1	1
2456	2104	2029	0	1
2457	2105	2030	1	1
2460	2108	2033	0	1
2461	2109	2034	1	1
2466	2114	2039	0	1
2467	2115	2040	1	1
2492	2140	2065	0	1
2493	2141	2066	1	1
2494	2142	2067	0	1
2495	2143	2068	1	1
2458	2106	2031	0	1
2459	2107	2032	1	1
2462	2110	2035	0	1
2463	2111	2036	1	1
2464	2112	2037	0	1
2465	2113	2038	1	1
2468	2116	2041	0	1
2469	2117	2042	1	1
2472	2120	2045	0	1
2473	2121	2046	1	1
2476	2124	2049	0	1
2477	2125	2050	1	1
2478	2126	2051	0	1
2479	2127	2052	1	1
2480	2128	2053	0	1
2481	2129	2054	1	1
2482	2130	2055	0	1
2483	2131	2056	1	1
2484	2132	2057	0	1
2485	2133	2058	1	1
2486	2134	2059	0	1
2487	2135	2060	1	1
2490	2138	2063	0	1
2491	2139	2064	1	1
2496	2144	2069	0	1
2497	2145	2070	1	1
2498	2146	1749	0	1
2499	2146	2071	1	1
2500	2147	1750	1	1
2501	2147	2072	2	1
2502	2148	2073	0	1
2503	2149	2074	1	1
2504	2150	2075	0	1
2505	2151	2076	1	1
2506	2152	2077	0	1
2507	2153	2078	1	1
2508	2154	2079	0	1
2509	2155	2080	1	1
2510	2156	2081	0	1
2511	2157	2082	1	1
2512	2158	2083	0	1
2513	2159	2084	1	1
2514	2160	1681	0	1
2515	2160	1875	1	1
2516	2160	2085	2	1
2517	2161	1682	1	1
2518	2161	1876	2	1
2519	2161	2086	3	1
2520	2162	2087	0	1
2521	2163	2088	1	1
2522	2164	2089	0	1
2523	2165	2090	1	1
2524	2166	2091	0	1
2525	2167	2092	1	1
2526	2168	2093	0	1
2527	2169	2094	1	1
2528	2170	2095	0	1
2529	2171	2096	1	1
2532	2174	2097	0	1
2533	2174	2099	1	1
2534	2175	2098	1	1
2535	2175	2100	2	1
2536	2176	2101	0	1
2537	2177	2102	1	1
2538	2178	2103	0	1
2539	2179	2104	1	1
2540	2180	2105	0	1
2541	2181	2106	1	1
2542	2182	2107	0	1
2543	2183	2108	1	1
2544	2184	2109	0	1
2545	2185	2110	1	1
2546	2186	2111	0	1
2547	2187	2112	1	1
2548	2188	2113	0	1
2549	2189	2114	1	1
2550	2190	2115	0	1
2551	2191	2116	1	1
2552	2192	2117	0	1
2553	2193	2118	1	1
2554	2194	2119	0	1
2555	2195	2120	1	1
2556	2196	1705	0	1
2557	2196	2121	1	1
2558	2197	1706	1	1
2559	2197	2122	2	1
2560	2198	2123	0	1
2561	2199	2124	1	1
2562	2200	2125	0	1
2563	2201	2126	1	1
2564	2202	2127	0	1
2565	2203	2128	1	1
2566	2204	2129	0	1
2567	2205	2130	1	1
2568	2206	2131	0	1
2569	2207	2132	1	1
2570	2208	2133	0	1
2571	2209	2134	1	1
2572	2210	2135	0	1
2573	2211	2136	1	1
2574	2212	1873	0	1
2575	2212	2137	1	1
2576	2213	1874	1	1
2577	2213	2138	2	1
2578	2214	2139	0	1
2579	2215	2140	1	1
2580	2216	2141	0	1
2581	2217	2142	1	1
2582	2218	2143	0	1
2583	2219	2144	1	1
2584	2220	2145	0	1
2585	2221	2146	1	1
2586	2222	2005	0	1
2587	2222	2147	1	1
2588	2223	2006	1	1
2589	2223	2148	2	1
2590	2224	2149	0	1
2591	2225	2150	1	1
2592	2226	2151	0	1
2593	2227	2152	1	1
2594	2228	2153	0	1
2595	2229	2154	1	1
2596	2230	2155	0	1
2597	2231	2156	1	1
2598	2232	2157	0	1
2599	2233	2158	1	1
2600	2234	2159	0	1
2601	2235	2160	1	1
\.


--
-- Data for Name: customet_follow_ups_shopping_category_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_shopping_category_lnk (id, customet_follow_up_id, shopping_category_id) FROM stdin;
225	1748	7
226	1750	7
227	1752	7
228	1758	7
229	1762	7
230	1764	7
231	1766	7
232	1768	7
233	1772	7
234	1774	7
235	1776	7
236	1778	7
237	1782	7
238	1784	7
239	1786	7
240	1788	7
241	1790	7
242	1792	7
243	1794	7
244	1796	7
245	1798	7
246	1800	7
247	1802	7
248	1804	7
249	1806	7
250	1808	7
251	1810	7
252	1812	7
253	1814	7
254	1816	7
255	1818	7
256	1822	7
257	1826	7
258	1828	7
259	1830	7
260	1832	7
261	1884	7
262	1834	7
263	1838	7
264	1840	7
265	1842	7
266	1846	7
267	1850	7
268	1852	7
269	1854	7
270	1856	7
271	1858	7
272	1860	7
273	1862	7
274	1864	7
275	1868	7
276	1870	7
277	1872	7
278	1876	7
279	1880	7
280	1882	7
281	1898	7
282	1914	7
283	1918	7
284	1920	7
285	1922	7
286	1924	7
287	1926	7
288	1946	7
289	1886	7
290	1888	7
291	1890	7
292	1892	7
293	1894	7
294	1896	7
295	1900	7
296	1902	7
297	1906	7
298	1908	7
299	1910	7
300	1912	7
301	1916	7
302	1928	7
303	1930	7
304	1932	7
305	1934	7
306	1936	7
307	1938	7
308	1940	7
309	1942	7
310	1944	7
311	1952	7
312	1954	7
313	1956	7
314	1958	7
315	1960	7
316	1962	7
317	1964	7
318	1966	7
319	1968	7
320	1970	7
321	1972	7
322	1974	7
323	1976	7
324	1978	7
328	1990	7
329	1994	7
330	1998	7
331	2002	7
332	2006	7
333	2008	7
334	2012	7
335	2016	7
336	2020	7
337	2024	7
338	2028	7
339	2032	7
340	2036	7
341	2042	7
342	2046	7
343	2050	7
344	2054	7
345	2058	7
346	2062	7
347	2068	7
348	2072	7
349	2076	7
350	2086	7
351	2092	7
352	2096	7
353	2100	7
354	2104	7
355	2108	7
356	2114	7
357	2140	7
358	2142	7
359	1988	7
360	1992	7
361	1996	7
362	2000	7
363	2004	7
364	2010	7
365	2014	7
366	2018	7
367	2022	7
368	2026	7
369	2030	7
370	2034	7
371	2038	7
372	2040	7
373	2044	7
374	2052	7
375	2056	7
376	2060	7
377	2064	7
378	2066	7
379	2070	7
380	2074	7
381	2078	7
382	2082	7
383	2084	7
384	2088	7
385	2090	7
386	2094	7
387	2098	7
388	2102	7
389	2106	7
390	2110	7
391	2112	7
392	2116	7
393	2118	7
394	2120	7
395	2122	7
396	2124	7
397	2126	7
398	2128	7
399	2130	7
400	2132	7
401	2134	7
402	2138	7
403	2136	7
404	2144	7
405	2146	7
406	2148	7
407	2150	7
408	2152	7
409	2154	7
410	2156	7
411	2158	7
412	2160	7
413	2162	7
416	2168	7
420	2178	7
424	2186	7
414	2164	7
418	2174	7
422	2182	7
444	2230	7
415	2166	7
419	2176	7
423	2184	7
441	2234	7
445	2232	7
417	2170	7
421	2180	7
\.


--
-- Data for Name: customet_follow_ups_staff_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_staff_lnk (id, customet_follow_up_id, staff_id) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_store_lnk (id, customet_follow_up_id, store_id) FROM stdin;
1687	1748	9
1688	1749	10
1689	1750	9
1690	1751	10
1691	1752	9
1692	1753	10
1697	1758	9
1698	1759	10
1701	1762	9
1702	1763	10
1703	1764	9
1704	1765	10
1705	1766	9
1706	1767	10
1707	1768	9
1708	1769	10
1711	1772	9
1712	1773	10
1713	1774	9
1714	1775	10
1715	1776	9
1716	1777	10
1717	1778	9
1718	1779	10
1721	1782	9
1722	1783	10
1723	1784	9
1724	1785	10
1725	1786	9
1726	1787	10
1727	1788	9
1728	1789	10
1729	1790	9
1730	1791	10
1731	1792	9
1732	1793	10
1733	1794	9
1734	1795	10
1735	1796	9
1736	1797	10
1737	1798	9
1738	1799	10
1739	1800	9
1740	1801	10
1741	1802	9
1742	1803	10
1743	1804	9
1744	1805	10
1745	1806	9
1746	1807	10
1747	1808	9
1748	1809	10
1749	1810	9
1750	1811	10
1751	1812	9
1752	1813	10
1753	1814	9
1754	1815	10
1755	1816	9
1756	1817	10
1757	1818	9
1758	1819	10
1761	1822	9
1762	1823	10
1765	1826	9
1766	1827	10
1767	1828	9
1768	1829	10
1769	1830	9
1770	1831	10
1771	1832	9
1772	1833	10
1773	1834	9
1774	1835	10
1777	1838	9
1778	1839	10
1779	1840	9
1780	1841	10
1781	1842	9
1782	1843	10
1785	1846	9
1786	1847	10
1789	1850	9
1790	1851	10
1791	1852	9
1792	1853	10
1793	1854	9
1794	1855	10
1795	1856	9
1796	1857	10
1797	1858	9
1798	1859	10
1799	1860	9
1800	1861	10
1801	1862	9
1802	1863	10
1803	1864	9
1804	1865	10
1807	1868	9
1808	1869	10
1809	1870	9
1810	1871	10
1811	1872	9
1812	1873	10
1815	1876	9
1816	1877	10
1819	1880	9
1820	1881	10
1821	1882	9
1822	1883	10
1823	1884	9
1824	1885	10
1825	1886	9
1826	1887	10
1827	1888	9
1828	1889	10
1829	1890	9
1830	1891	10
1831	1892	9
1832	1893	10
1833	1894	9
1834	1895	10
1835	1896	9
1836	1897	10
1837	1898	9
1838	1899	10
1839	1900	9
1840	1901	10
1841	1902	9
1842	1903	10
1845	1906	9
1846	1907	10
1847	1908	9
1848	1909	10
1849	1910	9
1850	1911	10
1851	1912	9
1852	1913	10
1853	1914	9
1854	1915	10
1855	1916	9
1856	1917	10
1857	1918	9
1858	1919	10
1859	1920	9
1860	1921	10
1861	1922	9
1862	1923	10
1863	1924	9
1864	1925	10
1865	1926	9
1866	1927	10
1867	1928	9
1868	1929	10
1869	1930	9
1870	1931	10
1871	1932	9
1872	1933	10
1873	1934	9
1874	1935	10
1875	1936	9
1876	1937	10
1877	1938	9
1878	1939	10
1879	1940	9
1880	1941	10
1881	1942	9
1882	1943	10
1883	1944	9
1884	1945	10
1885	1946	9
1886	1947	10
1891	1952	9
1892	1953	10
1893	1954	9
1894	1955	10
1895	1956	9
1896	1957	10
1897	1958	9
1898	1959	10
1899	1960	9
1900	1961	10
1901	1962	9
1902	1963	10
1903	1964	9
1904	1965	10
1905	1966	9
1906	1967	10
1907	1968	9
1908	1969	10
1909	1970	9
1910	1971	10
1911	1972	9
1912	1973	10
1913	1974	9
1914	1975	10
1915	1976	9
1916	1977	10
1917	1978	9
1918	1979	10
1919	1980	9
1920	1981	10
1923	1984	9
1924	1985	10
1925	1986	9
1926	1987	10
1927	1988	9
1928	1989	10
1929	1990	9
1930	1991	10
1931	1992	9
1932	1993	10
1933	1994	9
1934	1995	10
1935	1996	9
1936	1997	10
1937	1998	9
1938	1999	10
1939	2000	9
1940	2001	10
1941	2002	9
1942	2003	10
1943	2004	9
1944	2005	10
1945	2006	9
1946	2007	10
1947	2008	9
1948	2009	10
1949	2010	9
1950	2011	10
1951	2012	9
1952	2013	10
1953	2014	9
1954	2015	10
1955	2016	9
1956	2017	10
1957	2018	9
1958	2019	10
1959	2020	9
1960	2021	10
1961	2022	9
1962	2023	10
1963	2024	9
1964	2025	10
1965	2026	9
1966	2027	10
1967	2028	9
1968	2029	10
1969	2030	9
1970	2031	10
1971	2032	9
1972	2033	10
1973	2034	9
1974	2035	10
1975	2036	9
1976	2037	10
1977	2038	9
1978	2039	10
1979	2040	9
1980	2041	10
1981	2042	9
1982	2043	10
1983	2044	9
1984	2045	10
1985	2046	9
1986	2047	10
1989	2050	9
1990	2051	10
1991	2052	9
1992	2053	10
1993	2054	9
1994	2055	10
1995	2056	9
1996	2057	10
1997	2058	9
1998	2059	10
1999	2060	9
2000	2061	10
2001	2062	9
2002	2063	10
2003	2064	9
2004	2065	10
2005	2066	9
2006	2067	10
2007	2068	9
2008	2069	10
2009	2070	9
2010	2071	10
2011	2072	9
2012	2073	10
2013	2074	9
2014	2075	10
2015	2076	9
2016	2077	10
2017	2078	9
2018	2079	10
2021	2082	9
2022	2083	10
2023	2084	9
2024	2085	10
2025	2086	9
2026	2087	10
2027	2088	9
2028	2089	10
2029	2090	9
2030	2091	10
2031	2092	9
2032	2093	10
2033	2094	9
2034	2095	10
2035	2096	9
2036	2097	10
2037	2098	9
2038	2099	10
2039	2100	9
2040	2101	10
2041	2102	9
2042	2103	10
2043	2104	9
2044	2105	10
2045	2106	9
2046	2107	10
2047	2108	9
2048	2109	10
2049	2110	9
2050	2111	10
2051	2112	9
2052	2113	10
2053	2114	9
2054	2115	10
2055	2116	9
2056	2117	10
2057	2118	9
2058	2119	10
2059	2120	9
2060	2121	10
2061	2122	9
2062	2123	10
2063	2124	9
2064	2125	10
2065	2126	9
2066	2127	10
2067	2128	9
2068	2129	10
2069	2130	9
2070	2131	10
2071	2132	9
2072	2133	10
2073	2134	9
2074	2135	10
2075	2136	9
2076	2137	10
2077	2138	9
2078	2139	10
2079	2140	9
2080	2141	10
2081	2142	9
2082	2143	10
2083	2144	9
2084	2145	10
2085	2146	9
2086	2147	10
2087	2148	9
2088	2149	10
2089	2150	9
2090	2151	10
2091	2152	9
2092	2153	10
2093	2154	9
2094	2155	10
2095	2156	9
2096	2157	10
2097	2158	9
2098	2159	10
2099	2160	9
2100	2161	10
2101	2162	9
2102	2163	10
2103	2164	9
2104	2165	10
2105	2166	9
2106	2167	10
2107	2168	9
2108	2169	10
2109	2170	9
2110	2171	10
2113	2174	9
2114	2175	10
2115	2176	9
2116	2177	10
2117	2178	9
2118	2179	10
2119	2180	9
2120	2181	10
2121	2182	9
2122	2183	10
2123	2184	9
2124	2185	10
2125	2186	9
2126	2187	10
2127	2188	9
2128	2189	10
2129	2190	9
2130	2191	10
2131	2192	9
2132	2193	10
2133	2194	9
2134	2195	10
2135	2196	9
2136	2197	10
2137	2198	9
2138	2199	10
2139	2200	9
2140	2201	10
2141	2202	9
2142	2203	10
2143	2204	9
2144	2205	10
2145	2206	9
2146	2207	10
2147	2208	9
2148	2209	10
2149	2210	9
2150	2211	10
2151	2212	9
2152	2213	10
2153	2214	9
2154	2215	10
2155	2216	9
2156	2217	10
2157	2218	9
2158	2219	10
2159	2220	9
2160	2221	10
2161	2222	9
2162	2223	10
2163	2224	9
2164	2225	10
2165	2226	9
2166	2227	10
2167	2228	9
2168	2229	10
2169	2230	9
2170	2231	10
2171	2232	9
2172	2233	10
2173	2234	9
2174	2235	10
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
-- Data for Name: follow_statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_statuses (id, document_id, label, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	dt6maewsw9ezn5fq9dzs08vu	Pending	2026-05-15 13:39:02.84	2026-05-15 13:39:02.84	\N	1	1	\N
2	dt6maewsw9ezn5fq9dzs08vu	Pending	2026-05-15 13:39:02.84	2026-05-15 13:39:02.84	2026-05-15 13:39:02.914	1	1	\N
3	fex5ofbc2x4c95ijyczx3wwf	Followup Again	2026-05-15 13:39:19.506	2026-05-15 13:39:19.506	\N	1	1	\N
4	fex5ofbc2x4c95ijyczx3wwf	Followup Again	2026-05-15 13:39:19.506	2026-05-15 13:39:19.506	2026-05-15 13:39:19.537	1	1	\N
5	jxdm7wy8enxtg281yetfxn5v	Completed	2026-05-15 13:39:29.895	2026-05-15 13:39:29.895	\N	1	1	\N
6	jxdm7wy8enxtg281yetfxn5v	Completed	2026-05-15 13:39:29.895	2026-05-15 13:39:29.895	2026-05-15 13:39:29.927	1	1	\N
\.


--
-- Data for Name: follow_up_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists (id, document_id, till_sequence, customer_name, bill_amount, notes, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, bill_date) FROM stdin;
1673	utmrph3j2z2niodjcfoa3w7d	CO-225-30706	anushree	1275	\N	2026-05-15 17:19:35.192	2026-05-15 17:19:35.192	\N	\N	\N	\N	2026-03-05
1674	utmrph3j2z2niodjcfoa3w7d	CO-225-30706	anushree	1275	\N	2026-05-15 17:19:35.192	2026-05-15 17:19:35.192	2026-05-15 17:19:35.222	\N	\N	\N	2026-03-05
1675	otbq9byjlefp7io6yzqzy4v8	CO-225-30707	manthan chauhan	109	\N	2026-05-15 17:19:35.991	2026-05-15 17:19:35.991	\N	\N	\N	\N	2026-03-05
1676	otbq9byjlefp7io6yzqzy4v8	CO-225-30707	manthan chauhan	109	\N	2026-05-15 17:19:35.991	2026-05-15 17:19:35.991	2026-05-15 17:19:36.003	\N	\N	\N	2026-03-05
1677	mxcknffpm2efrt67ekww6hoa	CO-225-30708	VILAKSHI MODI	194	\N	2026-05-15 17:19:36.694	2026-05-15 17:19:36.694	\N	\N	\N	\N	2026-03-05
1678	mxcknffpm2efrt67ekww6hoa	CO-225-30708	VILAKSHI MODI	194	\N	2026-05-15 17:19:36.694	2026-05-15 17:19:36.694	2026-05-15 17:19:36.706	\N	\N	\N	2026-03-05
1679	fh1cy1uvbq3egww0v03id4vm	CO-225-30709	DIPAK	1018	\N	2026-05-15 17:19:37.352	2026-05-15 17:19:37.352	\N	\N	\N	\N	2026-03-05
1680	fh1cy1uvbq3egww0v03id4vm	CO-225-30709	DIPAK	1018	\N	2026-05-15 17:19:37.352	2026-05-15 17:19:37.352	2026-05-15 17:19:37.364	\N	\N	\N	2026-03-05
1681	oudkszx7sh0nx889yvrmcl5x	CO-225-30710	rahul shah	40	\N	2026-05-15 17:19:38.003	2026-05-15 17:19:38.003	\N	\N	\N	\N	2026-03-05
1682	oudkszx7sh0nx889yvrmcl5x	CO-225-30710	rahul shah	40	\N	2026-05-15 17:19:38.003	2026-05-15 17:19:38.003	2026-05-15 17:19:38.015	\N	\N	\N	2026-03-05
1683	k4lppcjxbir1gexr3km8kqpz	CO-225-30711	APURVA BHAI	2155	\N	2026-05-15 17:19:38.646	2026-05-15 17:19:38.646	\N	\N	\N	\N	2026-03-05
1684	k4lppcjxbir1gexr3km8kqpz	CO-225-30711	APURVA BHAI	2155	\N	2026-05-15 17:19:38.646	2026-05-15 17:19:38.646	2026-05-15 17:19:38.656	\N	\N	\N	2026-03-05
1685	gobba4v156g9pbt4vch9seo7	CO-225-30712	deval	11129	\N	2026-05-15 17:19:39.263	2026-05-15 17:19:39.263	\N	\N	\N	\N	2026-03-05
1686	gobba4v156g9pbt4vch9seo7	CO-225-30712	deval	11129	\N	2026-05-15 17:19:39.263	2026-05-15 17:19:39.263	2026-05-15 17:19:39.269	\N	\N	\N	2026-03-05
1687	w3u90qjx9vhou1yt07jg21mg	CO-225-30713	MAHESH HIRAGAR	22000	\N	2026-05-15 17:19:39.868	2026-05-15 17:19:39.868	\N	\N	\N	\N	2026-03-05
1688	w3u90qjx9vhou1yt07jg21mg	CO-225-30713	MAHESH HIRAGAR	22000	\N	2026-05-15 17:19:39.868	2026-05-15 17:19:39.868	2026-05-15 17:19:39.878	\N	\N	\N	2026-03-05
1689	o5b5bx25ed78x6bjkttpwai2	CO-225-30714	RAJAN PANDYA	2099	\N	2026-05-15 17:19:40.445	2026-05-15 17:19:40.445	\N	\N	\N	\N	2026-03-05
1690	o5b5bx25ed78x6bjkttpwai2	CO-225-30714	RAJAN PANDYA	2099	\N	2026-05-15 17:19:40.445	2026-05-15 17:19:40.445	2026-05-15 17:19:40.457	\N	\N	\N	2026-03-05
1691	azh1vk7it0v81899oesmtw2h	CO-225-30715	DINA BEN	1576	\N	2026-05-15 17:19:41.045	2026-05-15 17:19:41.045	\N	\N	\N	\N	2026-03-05
1692	azh1vk7it0v81899oesmtw2h	CO-225-30715	DINA BEN	1576	\N	2026-05-15 17:19:41.045	2026-05-15 17:19:41.045	2026-05-15 17:19:41.058	\N	\N	\N	2026-03-05
1693	l0hnovmd6x7xkwmqjg3p5dgf	CO-225-30716	Surekha Pillai	1950	\N	2026-05-15 17:19:41.798	2026-05-15 17:19:41.798	\N	\N	\N	\N	2026-03-05
1694	l0hnovmd6x7xkwmqjg3p5dgf	CO-225-30716	Surekha Pillai	1950	\N	2026-05-15 17:19:41.798	2026-05-15 17:19:41.798	2026-05-15 17:19:41.83	\N	\N	\N	2026-03-05
1695	sifbeywd3dae8blpg4lbrj6u	CO-225-30717	Pruthvi Foundation	450	\N	2026-05-15 17:19:42.392	2026-05-15 17:19:42.392	\N	\N	\N	\N	2026-03-05
1696	sifbeywd3dae8blpg4lbrj6u	CO-225-30717	Pruthvi Foundation	450	\N	2026-05-15 17:19:42.392	2026-05-15 17:19:42.392	2026-05-15 17:19:42.4	\N	\N	\N	2026-03-05
1697	i7w5jsl82rl26hb9rxvv74zz	CO-225-30718	SANI Vaghela	927	\N	2026-05-15 17:19:42.969	2026-05-15 17:19:42.969	\N	\N	\N	\N	2026-03-05
1698	i7w5jsl82rl26hb9rxvv74zz	CO-225-30718	SANI Vaghela	927	\N	2026-05-15 17:19:42.969	2026-05-15 17:19:42.969	2026-05-15 17:19:42.976	\N	\N	\N	2026-03-05
1699	y2kh9pgpe8hltxpln1gvdkdq	CO-225-30719	shilp roy	50	\N	2026-05-15 17:19:43.622	2026-05-15 17:19:43.622	\N	\N	\N	\N	2026-03-05
1700	y2kh9pgpe8hltxpln1gvdkdq	CO-225-30719	shilp roy	50	\N	2026-05-15 17:19:43.622	2026-05-15 17:19:43.622	2026-05-15 17:19:43.633	\N	\N	\N	2026-03-05
1701	fqcazmho4cgreopkk9mbdz96	CO-225-30720	VISHU VYAS	657	\N	2026-05-15 17:19:44.282	2026-05-15 17:19:44.282	\N	\N	\N	\N	2026-03-05
1702	fqcazmho4cgreopkk9mbdz96	CO-225-30720	VISHU VYAS	657	\N	2026-05-15 17:19:44.282	2026-05-15 17:19:44.282	2026-05-15 17:19:44.293	\N	\N	\N	2026-03-05
1703	s4rdcdgbfk8xbwtxrobca62y	CO-225-30721	G KHIMPI-CAT	320	\N	2026-05-15 17:19:44.927	2026-05-15 17:19:44.927	\N	\N	\N	\N	2026-03-05
1704	s4rdcdgbfk8xbwtxrobca62y	CO-225-30721	G KHIMPI-CAT	320	\N	2026-05-15 17:19:44.927	2026-05-15 17:19:44.927	2026-05-15 17:19:44.934	\N	\N	\N	2026-03-05
1705	j9n7c26istju8smu72e27nnd	CO-225-30722	hina shah	2322	\N	2026-05-15 17:19:45.567	2026-05-15 17:19:45.567	\N	\N	\N	\N	2026-03-06
1706	j9n7c26istju8smu72e27nnd	CO-225-30722	hina shah	2322	\N	2026-05-15 17:19:45.567	2026-05-15 17:19:45.567	2026-05-15 17:19:45.578	\N	\N	\N	2026-03-06
1707	aqnd3rshjpgnrp2608bo9gcm	CO-225-30723	ARJUN HARIBHAI PARMAR	5600	\N	2026-05-15 17:19:46.196	2026-05-15 17:19:46.196	\N	\N	\N	\N	2026-03-06
1708	aqnd3rshjpgnrp2608bo9gcm	CO-225-30723	ARJUN HARIBHAI PARMAR	5600	\N	2026-05-15 17:19:46.196	2026-05-15 17:19:46.196	2026-05-15 17:19:46.207	\N	\N	\N	2026-03-06
1709	rz257v7wujyrpeew47qn39ud	CO-225-30724	KAVYA	4259	\N	2026-05-15 17:19:46.859	2026-05-15 17:19:46.859	\N	\N	\N	\N	2026-03-06
1710	rz257v7wujyrpeew47qn39ud	CO-225-30724	KAVYA	4259	\N	2026-05-15 17:19:46.859	2026-05-15 17:19:46.859	2026-05-15 17:19:46.868	\N	\N	\N	2026-03-06
1711	ei56p4mgm82a1fom7xkupa5w	CO-225-30725	ravina madan	652	\N	2026-05-15 17:19:47.495	2026-05-15 17:19:47.495	\N	\N	\N	\N	2026-03-06
1712	ei56p4mgm82a1fom7xkupa5w	CO-225-30725	ravina madan	652	\N	2026-05-15 17:19:47.495	2026-05-15 17:19:47.495	2026-05-15 17:19:47.505	\N	\N	\N	2026-03-06
1713	syaatzhfjxj46gk2cq8xde3b	CO-225-30726	prabhu bhai	300	\N	2026-05-15 17:19:48.121	2026-05-15 17:19:48.121	\N	\N	\N	\N	2026-03-06
1714	syaatzhfjxj46gk2cq8xde3b	CO-225-30726	prabhu bhai	300	\N	2026-05-15 17:19:48.121	2026-05-15 17:19:48.121	2026-05-15 17:19:48.13	\N	\N	\N	2026-03-06
1715	yoakemafofvxj2dqac6tpyje	CO-225-30727	RUSHIKESH BHAI	2200	\N	2026-05-15 17:19:48.741	2026-05-15 17:19:48.741	\N	\N	\N	\N	2026-03-06
1716	yoakemafofvxj2dqac6tpyje	CO-225-30727	RUSHIKESH BHAI	2200	\N	2026-05-15 17:19:48.741	2026-05-15 17:19:48.741	2026-05-15 17:19:48.753	\N	\N	\N	2026-03-06
1717	lglclz266b0gok8hlaqc872r	CO-225-30728	VAMA	888	\N	2026-05-15 17:19:49.543	2026-05-15 17:19:49.543	\N	\N	\N	\N	2026-03-06
1718	lglclz266b0gok8hlaqc872r	CO-225-30728	VAMA	888	\N	2026-05-15 17:19:49.543	2026-05-15 17:19:49.543	2026-05-15 17:19:49.554	\N	\N	\N	2026-03-06
1719	sx6w7zasr2xagw9h5gvtxht9	CO-225-30729	kamlesh patel	480	\N	2026-05-15 17:19:50.154	2026-05-15 17:19:50.154	\N	\N	\N	\N	2026-03-06
1720	sx6w7zasr2xagw9h5gvtxht9	CO-225-30729	kamlesh patel	480	\N	2026-05-15 17:19:50.154	2026-05-15 17:19:50.154	2026-05-15 17:19:50.163	\N	\N	\N	2026-03-06
1721	y4yvh5doflenzlobfei4zmll	CO-225-30730	Satish Hosiery Mart	3233	\N	2026-05-15 17:19:50.757	2026-05-15 17:19:50.757	\N	\N	\N	\N	2026-03-06
1722	y4yvh5doflenzlobfei4zmll	CO-225-30730	Satish Hosiery Mart	3233	\N	2026-05-15 17:19:50.757	2026-05-15 17:19:50.757	2026-05-15 17:19:50.768	\N	\N	\N	2026-03-06
1723	axekn3xs66a9t04vuumkamvz	CO-225-30731	naveen kumar	2100	\N	2026-05-15 17:19:51.341	2026-05-15 17:19:51.341	\N	\N	\N	\N	2026-03-06
1724	axekn3xs66a9t04vuumkamvz	CO-225-30731	naveen kumar	2100	\N	2026-05-15 17:19:51.341	2026-05-15 17:19:51.341	2026-05-15 17:19:51.352	\N	\N	\N	2026-03-06
1725	s8xnec920ljjomt2tzlt101w	CO-225-30732	himmatsingh	500	\N	2026-05-15 17:19:51.944	2026-05-15 17:19:51.944	\N	\N	\N	\N	2026-03-06
1726	s8xnec920ljjomt2tzlt101w	CO-225-30732	himmatsingh	500	\N	2026-05-15 17:19:51.944	2026-05-15 17:19:51.944	2026-05-15 17:19:51.953	\N	\N	\N	2026-03-06
1727	j19rhsglrm6oksmcwdgjzuha	CO-225-30733	CHETANBHAI	565	\N	2026-05-15 17:19:52.572	2026-05-15 17:19:52.572	\N	\N	\N	\N	2026-03-06
1728	j19rhsglrm6oksmcwdgjzuha	CO-225-30733	CHETANBHAI	565	\N	2026-05-15 17:19:52.572	2026-05-15 17:19:52.572	2026-05-15 17:19:52.584	\N	\N	\N	2026-03-06
1729	w1phg5cxuygii51828hfzzbt	CO-225-30734	SUHANI MAM	2100	\N	2026-05-15 17:19:53.215	2026-05-15 17:19:53.215	\N	\N	\N	\N	2026-03-06
1730	w1phg5cxuygii51828hfzzbt	CO-225-30734	SUHANI MAM	2100	\N	2026-05-15 17:19:53.215	2026-05-15 17:19:53.215	2026-05-15 17:19:53.222	\N	\N	\N	2026-03-06
1731	dgx3hbx6hrqspc86dahpxxz5	CO-225-30735	HITESHBHAI	1693	\N	2026-05-15 17:19:53.807	2026-05-15 17:19:53.807	\N	\N	\N	\N	2026-03-06
1732	dgx3hbx6hrqspc86dahpxxz5	CO-225-30735	HITESHBHAI	1693	\N	2026-05-15 17:19:53.807	2026-05-15 17:19:53.807	2026-05-15 17:19:53.815	\N	\N	\N	2026-03-06
1733	if37crtldoque97kty9penw4	CO-225-30736	yash oberoi	2099	\N	2026-05-15 17:19:54.429	2026-05-15 17:19:54.429	\N	\N	\N	\N	2026-03-06
1734	if37crtldoque97kty9penw4	CO-225-30736	yash oberoi	2099	\N	2026-05-15 17:19:54.429	2026-05-15 17:19:54.429	2026-05-15 17:19:54.44	\N	\N	\N	2026-03-06
1735	ql5np5hl52lycadafgvf9fuk	CO-225-30737	SHUBHRA	2100	\N	2026-05-15 17:19:55.056	2026-05-15 17:19:55.056	\N	\N	\N	\N	2026-03-06
1736	ql5np5hl52lycadafgvf9fuk	CO-225-30737	SHUBHRA	2100	\N	2026-05-15 17:19:55.056	2026-05-15 17:19:55.056	2026-05-15 17:19:55.065	\N	\N	\N	2026-03-06
1737	lrockn2l9641d0xgpz66fj4o	CO-225-30738	shweta gulati	14350	\N	2026-05-15 17:19:55.643	2026-05-15 17:19:55.643	\N	\N	\N	\N	2026-03-06
1738	lrockn2l9641d0xgpz66fj4o	CO-225-30738	shweta gulati	14350	\N	2026-05-15 17:19:55.643	2026-05-15 17:19:55.643	2026-05-15 17:19:55.65	\N	\N	\N	2026-03-06
1739	qunji4wg3cqnzspsfxci9qk3	CO-225-30739	Vandana Mohta	2257	\N	2026-05-15 17:19:56.233	2026-05-15 17:19:56.233	\N	\N	\N	\N	2026-03-06
1740	qunji4wg3cqnzspsfxci9qk3	CO-225-30739	Vandana Mohta	2257	\N	2026-05-15 17:19:56.233	2026-05-15 17:19:56.233	2026-05-15 17:19:56.245	\N	\N	\N	2026-03-06
1741	yugkdgvqiwo3njtlnh0d04uw	CO-225-30740	PALAK	3324	\N	2026-05-15 17:19:56.823	2026-05-15 17:19:56.823	\N	\N	\N	\N	2026-03-06
1742	yugkdgvqiwo3njtlnh0d04uw	CO-225-30740	PALAK	3324	\N	2026-05-15 17:19:56.823	2026-05-15 17:19:56.823	2026-05-15 17:19:56.83	\N	\N	\N	2026-03-06
1743	ado2ujkkhth6gx09k5oyh8qp	CO-225-30741	irfan saikh	40	\N	2026-05-15 17:19:57.412	2026-05-15 17:19:57.412	\N	\N	\N	\N	2026-03-06
1744	ado2ujkkhth6gx09k5oyh8qp	CO-225-30741	irfan saikh	40	\N	2026-05-15 17:19:57.412	2026-05-15 17:19:57.412	2026-05-15 17:19:57.423	\N	\N	\N	2026-03-06
1745	lbp7ir3s5oqfpfd7afxbr6x6	CO-225-30742	KAVITA	588	\N	2026-05-15 17:19:58.028	2026-05-15 17:19:58.028	\N	\N	\N	\N	2026-03-06
1746	lbp7ir3s5oqfpfd7afxbr6x6	CO-225-30742	KAVITA	588	\N	2026-05-15 17:19:58.028	2026-05-15 17:19:58.028	2026-05-15 17:19:58.038	\N	\N	\N	2026-03-06
1747	o3fcbd3i00qmum8fvo9l0fl5	CO-225-30743	Maulika Hely	10452	\N	2026-05-15 17:19:58.623	2026-05-15 17:19:58.623	\N	\N	\N	\N	2026-03-06
1748	o3fcbd3i00qmum8fvo9l0fl5	CO-225-30743	Maulika Hely	10452	\N	2026-05-15 17:19:58.623	2026-05-15 17:19:58.623	2026-05-15 17:19:58.633	\N	\N	\N	2026-03-06
1749	pk77833gtp7ei99pj8wmb54i	CO-225-30744	simba parikh	9139	\N	2026-05-15 17:19:59.226	2026-05-15 17:19:59.226	\N	\N	\N	\N	2026-03-06
1750	pk77833gtp7ei99pj8wmb54i	CO-225-30744	simba parikh	9139	\N	2026-05-15 17:19:59.226	2026-05-15 17:19:59.226	2026-05-15 17:19:59.238	\N	\N	\N	2026-03-06
1751	md5abrp5fx84djv737kkv5j9	CO-225-30745	sunita	370	\N	2026-05-15 17:19:59.824	2026-05-15 17:19:59.824	\N	\N	\N	\N	2026-03-06
1752	md5abrp5fx84djv737kkv5j9	CO-225-30745	sunita	370	\N	2026-05-15 17:19:59.824	2026-05-15 17:19:59.824	2026-05-15 17:19:59.834	\N	\N	\N	2026-03-06
1753	kidhqruhd57js5gzyck0c9ml	CO-225-30746	Essence Productions	1980	\N	2026-05-15 17:20:00.435	2026-05-15 17:20:00.435	\N	\N	\N	\N	2026-03-06
1754	kidhqruhd57js5gzyck0c9ml	CO-225-30746	Essence Productions	1980	\N	2026-05-15 17:20:00.435	2026-05-15 17:20:00.435	2026-05-15 17:20:00.443	\N	\N	\N	2026-03-06
1755	t6p7qfnqtbhpxjvj3nucq6eu	CO-225-30747	dr.kapil ahuja	2200	\N	2026-05-15 17:20:01.01	2026-05-15 17:20:01.01	\N	\N	\N	\N	2026-03-06
1756	t6p7qfnqtbhpxjvj3nucq6eu	CO-225-30747	dr.kapil ahuja	2200	\N	2026-05-15 17:20:01.01	2026-05-15 17:20:01.01	2026-05-15 17:20:01.019	\N	\N	\N	2026-03-06
1757	jrq1t5twsauhnrqjb51pa6e9	CO-225-30748	shefali	2116	\N	2026-05-15 17:20:01.714	2026-05-15 17:20:01.714	\N	\N	\N	\N	2026-03-06
1758	jrq1t5twsauhnrqjb51pa6e9	CO-225-30748	shefali	2116	\N	2026-05-15 17:20:01.714	2026-05-15 17:20:01.714	2026-05-15 17:20:01.727	\N	\N	\N	2026-03-06
1759	vu4sxosyw0o165oynddru5qw	CO-225-30749	mayur bhai	1332	\N	2026-05-15 17:20:02.388	2026-05-15 17:20:02.388	\N	\N	\N	\N	2026-03-06
1760	vu4sxosyw0o165oynddru5qw	CO-225-30749	mayur bhai	1332	\N	2026-05-15 17:20:02.388	2026-05-15 17:20:02.388	2026-05-15 17:20:02.398	\N	\N	\N	2026-03-06
1761	zjo6fj40j9tqaj6msxa0i2k8	CO-225-30750	pooja mehata	2099	\N	2026-05-15 17:20:03.021	2026-05-15 17:20:03.021	\N	\N	\N	\N	2026-03-06
1762	zjo6fj40j9tqaj6msxa0i2k8	CO-225-30750	pooja mehata	2099	\N	2026-05-15 17:20:03.021	2026-05-15 17:20:03.021	2026-05-15 17:20:03.032	\N	\N	\N	2026-03-06
1763	lb1gge8igi485smcpd6ezp9t	CO-225-30751	JATIN GANDHI	2150	\N	2026-05-15 17:20:03.622	2026-05-15 17:20:03.622	\N	\N	\N	\N	2026-03-06
1764	lb1gge8igi485smcpd6ezp9t	CO-225-30751	JATIN GANDHI	2150	\N	2026-05-15 17:20:03.622	2026-05-15 17:20:03.622	2026-05-15 17:20:03.632	\N	\N	\N	2026-03-06
1765	ur4xmg6ehfs0xqrr3fi9ryt2	CO-225-30752	KALPANA PATEL	2099	\N	2026-05-15 17:20:04.273	2026-05-15 17:20:04.273	\N	\N	\N	\N	2026-03-06
1766	ur4xmg6ehfs0xqrr3fi9ryt2	CO-225-30752	KALPANA PATEL	2099	\N	2026-05-15 17:20:04.273	2026-05-15 17:20:04.273	2026-05-15 17:20:04.282	\N	\N	\N	2026-03-06
1767	kmscbkxqcwi2ykonz23enw3t	CO-225-30753	paul sir	2113	\N	2026-05-15 17:20:04.904	2026-05-15 17:20:04.904	\N	\N	\N	\N	2026-03-06
1768	kmscbkxqcwi2ykonz23enw3t	CO-225-30753	paul sir	2113	\N	2026-05-15 17:20:04.904	2026-05-15 17:20:04.904	2026-05-15 17:20:04.914	\N	\N	\N	2026-03-06
1769	upzx59f4ygan3xwwu53wiqet	CO-225-30754	BINDU ACHARYA	2730	\N	2026-05-15 17:20:05.482	2026-05-15 17:20:05.482	\N	\N	\N	\N	2026-03-06
1770	upzx59f4ygan3xwwu53wiqet	CO-225-30754	BINDU ACHARYA	2730	\N	2026-05-15 17:20:05.482	2026-05-15 17:20:05.482	2026-05-15 17:20:05.493	\N	\N	\N	2026-03-06
1771	iy71jgqz69bj7v8hrxb1mx2r	CO-225-30755	dogs spa	6700	\N	2026-05-15 17:20:06.079	2026-05-15 17:20:06.079	\N	\N	\N	\N	2026-03-06
1772	iy71jgqz69bj7v8hrxb1mx2r	CO-225-30755	dogs spa	6700	\N	2026-05-15 17:20:06.079	2026-05-15 17:20:06.079	2026-05-15 17:20:06.091	\N	\N	\N	2026-03-06
1773	g4saoqx2k3srg7q8dakj1ht3	CO-225-30756	MAYRA DEGINER	1950	\N	2026-05-15 17:20:06.657	2026-05-15 17:20:06.657	\N	\N	\N	\N	2026-03-06
1774	g4saoqx2k3srg7q8dakj1ht3	CO-225-30756	MAYRA DEGINER	1950	\N	2026-05-15 17:20:06.657	2026-05-15 17:20:06.657	2026-05-15 17:20:06.665	\N	\N	\N	2026-03-06
1775	w95k2dfts1b6wu13wyx3v6pa	CO-225-30757	NIKITA DESAI	2730	\N	2026-05-15 17:20:07.246	2026-05-15 17:20:07.246	\N	\N	\N	\N	2026-03-06
1776	w95k2dfts1b6wu13wyx3v6pa	CO-225-30757	NIKITA DESAI	2730	\N	2026-05-15 17:20:07.246	2026-05-15 17:20:07.246	2026-05-15 17:20:07.256	\N	\N	\N	2026-03-06
1777	nnv7lvk01d2rynnvmdzsedz0	CO-225-30758	devansh	1380	\N	2026-05-15 17:20:07.809	2026-05-15 17:20:07.809	\N	\N	\N	\N	2026-03-06
1778	nnv7lvk01d2rynnvmdzsedz0	CO-225-30758	devansh	1380	\N	2026-05-15 17:20:07.809	2026-05-15 17:20:07.809	2026-05-15 17:20:07.822	\N	\N	\N	2026-03-06
1779	qyft7o1ubzyzek4ulmt71nf4	CO-225-30759	pooja mehata	1950	\N	2026-05-15 17:20:08.402	2026-05-15 17:20:08.402	\N	\N	\N	\N	2026-03-06
1780	qyft7o1ubzyzek4ulmt71nf4	CO-225-30759	pooja mehata	1950	\N	2026-05-15 17:20:08.402	2026-05-15 17:20:08.402	2026-05-15 17:20:08.41	\N	\N	\N	2026-03-06
1781	l6ty7aggzn4icfi07iryhb4s	CO-225-30760	shilly shah	195	\N	2026-05-15 17:20:09.155	2026-05-15 17:20:09.155	\N	\N	\N	\N	2026-03-06
1782	l6ty7aggzn4icfi07iryhb4s	CO-225-30760	shilly shah	195	\N	2026-05-15 17:20:09.155	2026-05-15 17:20:09.155	2026-05-15 17:20:09.164	\N	\N	\N	2026-03-06
1783	dtlwt1r2qodvzchitb0a2s1b	CO-225-30761	DIPAK	110	\N	2026-05-15 17:20:09.669	2026-05-15 17:20:09.669	\N	\N	\N	\N	2026-03-06
1784	dtlwt1r2qodvzchitb0a2s1b	CO-225-30761	DIPAK	110	\N	2026-05-15 17:20:09.669	2026-05-15 17:20:09.669	2026-05-15 17:20:09.676	\N	\N	\N	2026-03-06
1785	ccfysis0yu84roa0y7wgkxc4	CO-225-30762	ankish	32	\N	2026-05-15 17:20:10.403	2026-05-15 17:20:10.403	\N	\N	\N	\N	2026-03-06
1786	ccfysis0yu84roa0y7wgkxc4	CO-225-30762	ankish	32	\N	2026-05-15 17:20:10.403	2026-05-15 17:20:10.403	2026-05-15 17:20:10.411	\N	\N	\N	2026-03-06
1787	cm8drpaipeu1no4w5iy8u5c0	CO-225-30763	MAHESH PATEL	117	\N	2026-05-15 17:20:10.971	2026-05-15 17:20:10.971	\N	\N	\N	\N	2026-03-06
1788	cm8drpaipeu1no4w5iy8u5c0	CO-225-30763	MAHESH PATEL	117	\N	2026-05-15 17:20:10.971	2026-05-15 17:20:10.971	2026-05-15 17:20:10.982	\N	\N	\N	2026-03-06
1789	xt3hugygrq8nfgsbazj74a2q	CO-225-30764	uma singh	1619	\N	2026-05-15 17:20:11.54	2026-05-15 17:20:11.54	\N	\N	\N	\N	2026-03-06
1790	xt3hugygrq8nfgsbazj74a2q	CO-225-30764	uma singh	1619	\N	2026-05-15 17:20:11.54	2026-05-15 17:20:11.54	2026-05-15 17:20:11.551	\N	\N	\N	2026-03-06
1791	rpqdcxs9fhhhee23vogd3dgw	CO-225-30765	kusum parmar	1450	\N	2026-05-15 17:20:12.121	2026-05-15 17:20:12.121	\N	\N	\N	\N	2026-03-06
1792	rpqdcxs9fhhhee23vogd3dgw	CO-225-30765	kusum parmar	1450	\N	2026-05-15 17:20:12.121	2026-05-15 17:20:12.121	2026-05-15 17:20:12.132	\N	\N	\N	2026-03-06
1793	xhajgw0rgoxiafkp0qkdeg2b	CO-225-30766	ZEEL SONI	75	\N	2026-05-15 17:20:12.677	2026-05-15 17:20:12.677	\N	\N	\N	\N	2026-03-06
1794	xhajgw0rgoxiafkp0qkdeg2b	CO-225-30766	ZEEL SONI	75	\N	2026-05-15 17:20:12.677	2026-05-15 17:20:12.677	2026-05-15 17:20:12.685	\N	\N	\N	2026-03-06
1795	ftvra6xe3wosiehdmn3ljwss	CO-225-30767	PAAVAN PANCHAL	2730	\N	2026-05-15 17:20:13.3	2026-05-15 17:20:13.3	\N	\N	\N	\N	2026-03-06
1796	ftvra6xe3wosiehdmn3ljwss	CO-225-30767	PAAVAN PANCHAL	2730	\N	2026-05-15 17:20:13.3	2026-05-15 17:20:13.3	2026-05-15 17:20:13.312	\N	\N	\N	2026-03-06
1797	yl87q8rmwg4klrx4rquv8zux	CO-225-30768	harshad patel	1950	\N	2026-05-15 17:20:13.879	2026-05-15 17:20:13.879	\N	\N	\N	\N	2026-03-06
1798	yl87q8rmwg4klrx4rquv8zux	CO-225-30768	harshad patel	1950	\N	2026-05-15 17:20:13.879	2026-05-15 17:20:13.879	2026-05-15 17:20:13.886	\N	\N	\N	2026-03-06
1799	oteydtm4i6bpuoxv0hmuzm7s	CO-225-30769	yash gaur	131	\N	2026-05-15 17:20:14.442	2026-05-15 17:20:14.442	\N	\N	\N	\N	2026-03-06
1800	oteydtm4i6bpuoxv0hmuzm7s	CO-225-30769	yash gaur	131	\N	2026-05-15 17:20:14.442	2026-05-15 17:20:14.442	2026-05-15 17:20:14.451	\N	\N	\N	2026-03-06
1801	xnvkvjjpoqmrespqwz34y9y5	CO-225-30770	BHAVNA PUROHIT	195	\N	2026-05-15 17:20:15.012	2026-05-15 17:20:15.012	\N	\N	\N	\N	2026-03-06
1802	xnvkvjjpoqmrespqwz34y9y5	CO-225-30770	BHAVNA PUROHIT	195	\N	2026-05-15 17:20:15.012	2026-05-15 17:20:15.012	2026-05-15 17:20:15.02	\N	\N	\N	2026-03-06
1803	ln5b8t8v9fs2uf1dj2np6x9e	CO-225-30771	JINAY	1901	\N	2026-05-15 17:20:15.598	2026-05-15 17:20:15.598	\N	\N	\N	\N	2026-03-06
1804	ln5b8t8v9fs2uf1dj2np6x9e	CO-225-30771	JINAY	1901	\N	2026-05-15 17:20:15.598	2026-05-15 17:20:15.598	2026-05-15 17:20:15.609	\N	\N	\N	2026-03-06
1809	igbnj3hc57syus6bm6q3fe0s	CO-225-30774	SUHANI	2870	\N	2026-05-15 17:20:17.67	2026-05-15 17:20:17.67	\N	\N	\N	\N	2026-03-06
1810	igbnj3hc57syus6bm6q3fe0s	CO-225-30774	SUHANI	2870	\N	2026-05-15 17:20:17.67	2026-05-15 17:20:17.67	2026-05-15 17:20:17.679	\N	\N	\N	2026-03-06
1825	f963cdquahcuz97yd03kupwk	CO-225-30782	Pruthvi Foundation	5340	\N	2026-05-15 17:20:24.322	2026-05-15 17:20:24.322	\N	\N	\N	\N	2026-03-07
1826	f963cdquahcuz97yd03kupwk	CO-225-30782	Pruthvi Foundation	5340	\N	2026-05-15 17:20:24.322	2026-05-15 17:20:24.322	2026-05-15 17:20:24.335	\N	\N	\N	2026-03-07
1827	qxvjr1068zmq96htzfc4am8f	CO-225-30783	D.P SHARMA	2222	\N	2026-05-15 17:20:25.4	2026-05-15 17:20:25.4	\N	\N	\N	\N	2026-03-07
1828	qxvjr1068zmq96htzfc4am8f	CO-225-30783	D.P SHARMA	2222	\N	2026-05-15 17:20:25.4	2026-05-15 17:20:25.4	2026-05-15 17:20:25.414	\N	\N	\N	2026-03-07
1829	m636kx0wy3s55qr8xjhw99mi	CO-225-30784	bhavna	8368	\N	2026-05-15 17:20:26.156	2026-05-15 17:20:26.156	\N	\N	\N	\N	2026-03-07
1830	m636kx0wy3s55qr8xjhw99mi	CO-225-30784	bhavna	8368	\N	2026-05-15 17:20:26.156	2026-05-15 17:20:26.156	2026-05-15 17:20:26.163	\N	\N	\N	2026-03-07
1831	r6idkekiiqb9ucnsho89c28z	CO-225-30785	shradhavi mam	855	\N	2026-05-15 17:20:26.74	2026-05-15 17:20:26.74	\N	\N	\N	\N	2026-03-07
1832	r6idkekiiqb9ucnsho89c28z	CO-225-30785	shradhavi mam	855	\N	2026-05-15 17:20:26.74	2026-05-15 17:20:26.74	2026-05-15 17:20:26.752	\N	\N	\N	2026-03-07
1833	pl1pdhk6msf38e08k1ti7wmx	CO-225-30786	nainash	1100	\N	2026-05-15 17:20:27.308	2026-05-15 17:20:27.308	\N	\N	\N	\N	2026-03-07
1834	pl1pdhk6msf38e08k1ti7wmx	CO-225-30786	nainash	1100	\N	2026-05-15 17:20:27.308	2026-05-15 17:20:27.308	2026-05-15 17:20:27.319	\N	\N	\N	2026-03-07
1835	blqsax5w9qcf5oj0i3xb8vde	CO-225-30787	krishna	10042	\N	2026-05-15 17:20:28.098	2026-05-15 17:20:28.098	\N	\N	\N	\N	2026-03-07
1836	blqsax5w9qcf5oj0i3xb8vde	CO-225-30787	krishna	10042	\N	2026-05-15 17:20:28.098	2026-05-15 17:20:28.098	2026-05-15 17:20:28.114	\N	\N	\N	2026-03-07
1837	wqhixvz2lkqnwn1sz0r4lts8	CO-225-30788	nimisha	4656	\N	2026-05-15 17:20:28.703	2026-05-15 17:20:28.703	\N	\N	\N	\N	2026-03-07
1838	wqhixvz2lkqnwn1sz0r4lts8	CO-225-30788	nimisha	4656	\N	2026-05-15 17:20:28.703	2026-05-15 17:20:28.703	2026-05-15 17:20:28.71	\N	\N	\N	2026-03-07
1839	lv1njcv4zehav9lrempxmg0c	CO-225-30789	SINDHU	1850	\N	2026-05-15 17:20:29.269	2026-05-15 17:20:29.269	\N	\N	\N	\N	2026-03-07
1840	lv1njcv4zehav9lrempxmg0c	CO-225-30789	SINDHU	1850	\N	2026-05-15 17:20:29.269	2026-05-15 17:20:29.269	2026-05-15 17:20:29.277	\N	\N	\N	2026-03-07
1805	iqid7bb3sbxvq3l4md7vlzl8	CO-225-30772	VIDHI MAM	9151	\N	2026-05-15 17:20:16.261	2026-05-15 17:20:16.261	\N	\N	\N	\N	2026-03-06
1806	iqid7bb3sbxvq3l4md7vlzl8	CO-225-30772	VIDHI MAM	9151	\N	2026-05-15 17:20:16.261	2026-05-15 17:20:16.261	2026-05-15 17:20:16.27	\N	\N	\N	2026-03-06
1807	qva8xjsaarelg5pi6qll5em3	CO-225-30773	KAMRAJ MODI	1950	\N	2026-05-15 17:20:16.96	2026-05-15 17:20:16.96	\N	\N	\N	\N	2026-03-06
1808	qva8xjsaarelg5pi6qll5em3	CO-225-30773	KAMRAJ MODI	1950	\N	2026-05-15 17:20:16.96	2026-05-15 17:20:16.96	2026-05-15 17:20:16.975	\N	\N	\N	2026-03-06
1811	vm1d3f1c2r4uyk8abidc1t09	CO-225-30775	NIRAV CHOLERA	190	\N	2026-05-15 17:20:18.539	2026-05-15 17:20:18.539	\N	\N	\N	\N	2026-03-06
1812	vm1d3f1c2r4uyk8abidc1t09	CO-225-30775	NIRAV CHOLERA	190	\N	2026-05-15 17:20:18.539	2026-05-15 17:20:18.539	2026-05-15 17:20:18.553	\N	\N	\N	2026-03-06
1813	kntg8v15fcrnsge03iy4csvw	CO-225-30776	BHAVNA	1100	\N	2026-05-15 17:20:19.349	2026-05-15 17:20:19.349	\N	\N	\N	\N	2026-03-06
1814	kntg8v15fcrnsge03iy4csvw	CO-225-30776	BHAVNA	1100	\N	2026-05-15 17:20:19.349	2026-05-15 17:20:19.349	2026-05-15 17:20:19.363	\N	\N	\N	2026-03-06
1815	rqx30b4kptpkpibf1rq8sona	CO-225-30777	JAYANTA ROY	590	\N	2026-05-15 17:20:20.179	2026-05-15 17:20:20.179	\N	\N	\N	\N	2026-03-06
1816	rqx30b4kptpkpibf1rq8sona	CO-225-30777	JAYANTA ROY	590	\N	2026-05-15 17:20:20.179	2026-05-15 17:20:20.179	2026-05-15 17:20:20.187	\N	\N	\N	2026-03-06
1817	h0x9yyu3tnt3fpa8ngizz6qu	CO-225-30778	MEET	2210	\N	2026-05-15 17:20:20.941	2026-05-15 17:20:20.941	\N	\N	\N	\N	2026-03-07
1818	h0x9yyu3tnt3fpa8ngizz6qu	CO-225-30778	MEET	2210	\N	2026-05-15 17:20:20.941	2026-05-15 17:20:20.941	2026-05-15 17:20:20.954	\N	\N	\N	2026-03-07
1819	ehwovf3cw3od7n42s3f6o06m	CO-225-30779	print vision	1962	\N	2026-05-15 17:20:21.779	2026-05-15 17:20:21.779	\N	\N	\N	\N	2026-03-07
1820	ehwovf3cw3od7n42s3f6o06m	CO-225-30779	print vision	1962	\N	2026-05-15 17:20:21.779	2026-05-15 17:20:21.779	2026-05-15 17:20:21.794	\N	\N	\N	2026-03-07
1821	b4e9nn1uqtuospsjh3l6fcyk	CO-225-30780	niti dave	9833	\N	2026-05-15 17:20:22.603	2026-05-15 17:20:22.603	\N	\N	\N	\N	2026-03-07
1822	b4e9nn1uqtuospsjh3l6fcyk	CO-225-30780	niti dave	9833	\N	2026-05-15 17:20:22.603	2026-05-15 17:20:22.603	2026-05-15 17:20:22.621	\N	\N	\N	2026-03-07
1823	x6f9kazqsqtuveax9x2tdlso	CO-225-30781	KALINDI SHAH	2260	\N	2026-05-15 17:20:23.436	2026-05-15 17:20:23.436	\N	\N	\N	\N	2026-03-07
1824	x6f9kazqsqtuveax9x2tdlso	CO-225-30781	KALINDI SHAH	2260	\N	2026-05-15 17:20:23.436	2026-05-15 17:20:23.436	2026-05-15 17:20:23.452	\N	\N	\N	2026-03-07
1843	mytrqdqbgo2xkxzthvjxi15z	CO-225-30791	nirman shah	2320	\N	2026-05-15 17:20:30.449	2026-05-15 17:20:30.449	\N	\N	\N	\N	2026-03-07
1844	mytrqdqbgo2xkxzthvjxi15z	CO-225-30791	nirman shah	2320	\N	2026-05-15 17:20:30.449	2026-05-15 17:20:30.449	2026-05-15 17:20:30.455	\N	\N	\N	2026-03-07
1853	fta9v4ca9g077nxurp4kpk9z	CO-225-30796	deval	8200	\N	2026-05-15 17:20:33.347	2026-05-15 17:20:33.347	\N	\N	\N	\N	2026-03-07
1854	fta9v4ca9g077nxurp4kpk9z	CO-225-30796	deval	8200	\N	2026-05-15 17:20:33.347	2026-05-15 17:20:33.347	2026-05-15 17:20:33.361	\N	\N	\N	2026-03-07
1855	fl7muhcubc8iv8xp1734f7xn	CO-225-30797	shivani	2100	\N	2026-05-15 17:20:34.215	2026-05-15 17:20:34.215	\N	\N	\N	\N	2026-03-07
1856	fl7muhcubc8iv8xp1734f7xn	CO-225-30797	shivani	2100	\N	2026-05-15 17:20:34.215	2026-05-15 17:20:34.215	2026-05-15 17:20:34.229	\N	\N	\N	2026-03-07
1857	e01eafbc4byggxylmaa46avp	CO-225-30798	malini	799	\N	2026-05-15 17:20:34.982	2026-05-15 17:20:34.982	\N	\N	\N	\N	2026-03-07
1858	e01eafbc4byggxylmaa46avp	CO-225-30798	malini	799	\N	2026-05-15 17:20:34.982	2026-05-15 17:20:34.982	2026-05-15 17:20:34.993	\N	\N	\N	2026-03-07
1859	akod0v3w29vco9stemfv44sj	CO-225-30799	MANISH PATEL	7034	\N	2026-05-15 17:20:35.708	2026-05-15 17:20:35.708	\N	\N	\N	\N	2026-03-07
1860	akod0v3w29vco9stemfv44sj	CO-225-30799	MANISH PATEL	7034	\N	2026-05-15 17:20:35.708	2026-05-15 17:20:35.708	2026-05-15 17:20:35.717	\N	\N	\N	2026-03-07
1861	jkpr4j477neyuekq3xydsieg	CO-225-30800	AKASH K SHAH	1700	\N	2026-05-15 17:20:36.479	2026-05-15 17:20:36.479	\N	\N	\N	\N	2026-03-07
1862	jkpr4j477neyuekq3xydsieg	CO-225-30800	AKASH K SHAH	1700	\N	2026-05-15 17:20:36.479	2026-05-15 17:20:36.479	2026-05-15 17:20:36.489	\N	\N	\N	2026-03-07
1863	e1p2rnvqolvju8cxfpv5r1wu	CO-225-30801	TANIYA CHOITHANI	2099	\N	2026-05-15 17:20:37.186	2026-05-15 17:20:37.186	\N	\N	\N	\N	2026-03-07
1864	e1p2rnvqolvju8cxfpv5r1wu	CO-225-30801	TANIYA CHOITHANI	2099	\N	2026-05-15 17:20:37.186	2026-05-15 17:20:37.186	2026-05-15 17:20:37.198	\N	\N	\N	2026-03-07
1865	dul4w38w4yw9iiik1hylwstv	CO-225-30802	rekha ben	174	\N	2026-05-15 17:20:37.887	2026-05-15 17:20:37.887	\N	\N	\N	\N	2026-03-07
1866	dul4w38w4yw9iiik1hylwstv	CO-225-30802	rekha ben	174	\N	2026-05-15 17:20:37.887	2026-05-15 17:20:37.887	2026-05-15 17:20:37.896	\N	\N	\N	2026-03-07
1867	lu6bl5qspcv54hw9p77pcqyb	CO-225-30803	HIMANI	1550	\N	2026-05-15 17:20:38.53	2026-05-15 17:20:38.53	\N	\N	\N	\N	2026-03-07
1868	lu6bl5qspcv54hw9p77pcqyb	CO-225-30803	HIMANI	1550	\N	2026-05-15 17:20:38.53	2026-05-15 17:20:38.53	2026-05-15 17:20:38.539	\N	\N	\N	2026-03-07
1869	j92forp0pfesb9mese2enajr	CO-225-30804	AARTI	560	\N	2026-05-15 17:20:39.125	2026-05-15 17:20:39.125	\N	\N	\N	\N	2026-03-07
1870	j92forp0pfesb9mese2enajr	CO-225-30804	AARTI	560	\N	2026-05-15 17:20:39.125	2026-05-15 17:20:39.125	2026-05-15 17:20:39.137	\N	\N	\N	2026-03-07
1871	nf7ps9m1tgivdh485xhvng4x	CO-225-30805	MONIKA PANCHOLI	2116	\N	2026-05-15 17:20:39.707	2026-05-15 17:20:39.707	\N	\N	\N	\N	2026-03-07
1872	nf7ps9m1tgivdh485xhvng4x	CO-225-30805	MONIKA PANCHOLI	2116	\N	2026-05-15 17:20:39.707	2026-05-15 17:20:39.707	2026-05-15 17:20:39.718	\N	\N	\N	2026-03-07
1841	a97rgrq9lgv4ls50cpx8kcew	CO-225-30790	JYOTI RAJGOR	4200	\N	2026-05-15 17:20:29.881	2026-05-15 17:20:29.881	\N	\N	\N	\N	2026-03-07
1842	a97rgrq9lgv4ls50cpx8kcew	CO-225-30790	JYOTI RAJGOR	4200	\N	2026-05-15 17:20:29.881	2026-05-15 17:20:29.881	2026-05-15 17:20:29.89	\N	\N	\N	2026-03-07
1845	espr1pbcvrm02onpd3if7txs	CO-225-30792	mamta agrawal	4200	\N	2026-05-15 17:20:31.054	2026-05-15 17:20:31.054	\N	\N	\N	\N	2026-03-07
1846	espr1pbcvrm02onpd3if7txs	CO-225-30792	mamta agrawal	4200	\N	2026-05-15 17:20:31.054	2026-05-15 17:20:31.054	2026-05-15 17:20:31.065	\N	\N	\N	2026-03-07
1847	og53x727lpymzw3061u99n46	CO-225-30793	PIYABEN	4262	\N	2026-05-15 17:20:31.625	2026-05-15 17:20:31.625	\N	\N	\N	\N	2026-03-07
1848	og53x727lpymzw3061u99n46	CO-225-30793	PIYABEN	4262	\N	2026-05-15 17:20:31.625	2026-05-15 17:20:31.625	2026-05-15 17:20:31.636	\N	\N	\N	2026-03-07
1849	mywtniuziy55wmkjas71xpnj	CO-225-30794	DINESH SAXENA	2939	\N	2026-05-15 17:20:32.207	2026-05-15 17:20:32.207	\N	\N	\N	\N	2026-03-07
1850	mywtniuziy55wmkjas71xpnj	CO-225-30794	DINESH SAXENA	2939	\N	2026-05-15 17:20:32.207	2026-05-15 17:20:32.207	2026-05-15 17:20:32.216	\N	\N	\N	2026-03-07
1851	gsp7jjck58uyjbpgi0rn1f5u	CO-225-30795	RENUKA MAM	2099	\N	2026-05-15 17:20:32.779	2026-05-15 17:20:32.779	\N	\N	\N	\N	2026-03-07
1852	gsp7jjck58uyjbpgi0rn1f5u	CO-225-30795	RENUKA MAM	2099	\N	2026-05-15 17:20:32.779	2026-05-15 17:20:32.779	2026-05-15 17:20:32.786	\N	\N	\N	2026-03-07
1873	dfgxalsi4v6rc9htls4ouj3m	CO-225-30806	AMIT LAB WIFE	2367	\N	2026-05-15 17:20:40.298	2026-05-15 17:20:40.298	\N	\N	\N	\N	2026-03-07
1874	dfgxalsi4v6rc9htls4ouj3m	CO-225-30806	AMIT LAB WIFE	2367	\N	2026-05-15 17:20:40.298	2026-05-15 17:20:40.298	2026-05-15 17:20:40.305	\N	\N	\N	2026-03-07
1875	ir2r59iszln18238sfyi9jyr	CO-225-30807	rahul shah	40	\N	2026-05-15 17:20:40.801	2026-05-15 17:20:40.801	\N	\N	\N	\N	2026-03-07
1876	ir2r59iszln18238sfyi9jyr	CO-225-30807	rahul shah	40	\N	2026-05-15 17:20:40.801	2026-05-15 17:20:40.801	2026-05-15 17:20:40.811	\N	\N	\N	2026-03-07
1877	pdn3qrj0kr8b18jcolb4z4km	CO-225-30808	ami shah	6600	\N	2026-05-15 17:20:41.621	2026-05-15 17:20:41.621	\N	\N	\N	\N	2026-03-07
1878	pdn3qrj0kr8b18jcolb4z4km	CO-225-30808	ami shah	6600	\N	2026-05-15 17:20:41.621	2026-05-15 17:20:41.621	2026-05-15 17:20:41.647	\N	\N	\N	2026-03-07
1879	o6in9vk1wdjzb33iohyxp44h	CO-225-30809	sanjeev sir	3370	\N	2026-05-15 17:20:42.235	2026-05-15 17:20:42.235	\N	\N	\N	\N	2026-03-07
1880	o6in9vk1wdjzb33iohyxp44h	CO-225-30809	sanjeev sir	3370	\N	2026-05-15 17:20:42.235	2026-05-15 17:20:42.235	2026-05-15 17:20:42.246	\N	\N	\N	2026-03-07
1881	o9svic47cycn3b2yr4tvfhns	CO-225-30810	JIGNESHBHAI	2939	\N	2026-05-15 17:20:42.81	2026-05-15 17:20:42.81	\N	\N	\N	\N	2026-03-07
1882	o9svic47cycn3b2yr4tvfhns	CO-225-30810	JIGNESHBHAI	2939	\N	2026-05-15 17:20:42.81	2026-05-15 17:20:42.81	2026-05-15 17:20:42.817	\N	\N	\N	2026-03-07
1883	bzl3595k0m22ynyzw74ftwpv	CO-225-30811	mansi	990	\N	2026-05-15 17:20:43.373	2026-05-15 17:20:43.373	\N	\N	\N	\N	2026-03-07
1884	bzl3595k0m22ynyzw74ftwpv	CO-225-30811	mansi	990	\N	2026-05-15 17:20:43.373	2026-05-15 17:20:43.373	2026-05-15 17:20:43.381	\N	\N	\N	2026-03-07
1885	l0b1k4pcxpxitljjzorqk6aa	CO-225-30812	MARGESH	1090	\N	2026-05-15 17:20:43.943	2026-05-15 17:20:43.943	\N	\N	\N	\N	2026-03-07
1886	l0b1k4pcxpxitljjzorqk6aa	CO-225-30812	MARGESH	1090	\N	2026-05-15 17:20:43.943	2026-05-15 17:20:43.943	2026-05-15 17:20:43.954	\N	\N	\N	2026-03-07
1887	fffprje9ii3r3iis8jm6kkbq	CO-225-30813	tejal patel	731	\N	2026-05-15 17:20:44.792	2026-05-15 17:20:44.792	\N	\N	\N	\N	2026-03-07
1888	fffprje9ii3r3iis8jm6kkbq	CO-225-30813	tejal patel	731	\N	2026-05-15 17:20:44.792	2026-05-15 17:20:44.792	2026-05-15 17:20:44.806	\N	\N	\N	2026-03-07
1889	q6i1tm9jk8xczt361h17habo	CO-225-30814	rekha nobalnagar	1310	\N	2026-05-15 17:20:45.496	2026-05-15 17:20:45.496	\N	\N	\N	\N	2026-03-07
1890	q6i1tm9jk8xczt361h17habo	CO-225-30814	rekha nobalnagar	1310	\N	2026-05-15 17:20:45.496	2026-05-15 17:20:45.496	2026-05-15 17:20:45.506	\N	\N	\N	2026-03-07
1891	w2wd7iodpzxvdw2iglgvjzz5	CO-225-30815	DHRUVA	335	\N	2026-05-15 17:20:46.097	2026-05-15 17:20:46.097	\N	\N	\N	\N	2026-03-07
1892	w2wd7iodpzxvdw2iglgvjzz5	CO-225-30815	DHRUVA	335	\N	2026-05-15 17:20:46.097	2026-05-15 17:20:46.097	2026-05-15 17:20:46.106	\N	\N	\N	2026-03-07
1893	dz2zy9i96nphq9mxf1fc9kyl	CO-225-30816	tarana bhatiya	1625	\N	2026-05-15 17:20:46.668	2026-05-15 17:20:46.668	\N	\N	\N	\N	2026-03-07
1894	dz2zy9i96nphq9mxf1fc9kyl	CO-225-30816	tarana bhatiya	1625	\N	2026-05-15 17:20:46.668	2026-05-15 17:20:46.668	2026-05-15 17:20:46.677	\N	\N	\N	2026-03-07
1895	nttx91ggl4r4qw6zfmh9qi8p	CO-225-30817	mini	1188	\N	2026-05-15 17:20:47.217	2026-05-15 17:20:47.217	\N	\N	\N	\N	2026-03-07
1896	nttx91ggl4r4qw6zfmh9qi8p	CO-225-30817	mini	1188	\N	2026-05-15 17:20:47.217	2026-05-15 17:20:47.217	2026-05-15 17:20:47.224	\N	\N	\N	2026-03-07
1897	vazfjqbft625bgwj20u6y4jr	CO-225-30818	Radhika	1010	\N	2026-05-15 17:20:48.04	2026-05-15 17:20:48.04	\N	\N	\N	\N	2026-03-07
1898	vazfjqbft625bgwj20u6y4jr	CO-225-30818	Radhika	1010	\N	2026-05-15 17:20:48.04	2026-05-15 17:20:48.04	2026-05-15 17:20:48.054	\N	\N	\N	2026-03-07
1899	yzuxtedsq1y102wk5ggqwvi3	CO-225-30819	kusum parmar	350	\N	2026-05-15 17:20:48.589	2026-05-15 17:20:48.589	\N	\N	\N	\N	2026-03-07
1900	yzuxtedsq1y102wk5ggqwvi3	CO-225-30819	kusum parmar	350	\N	2026-05-15 17:20:48.589	2026-05-15 17:20:48.589	2026-05-15 17:20:48.6	\N	\N	\N	2026-03-07
1901	esozkphgvm4v7u31r3g84omz	CO-225-30820	simi makwana	2200	\N	2026-05-15 17:20:49.334	2026-05-15 17:20:49.334	\N	\N	\N	\N	2026-03-07
1902	esozkphgvm4v7u31r3g84omz	CO-225-30820	simi makwana	2200	\N	2026-05-15 17:20:49.334	2026-05-15 17:20:49.334	2026-05-15 17:20:49.344	\N	\N	\N	2026-03-07
1903	vuuuvuxehgschf85cvxvc5sy	CO-225-30821	yagnish	450	\N	2026-05-15 17:20:49.909	2026-05-15 17:20:49.909	\N	\N	\N	\N	2026-03-07
1904	vuuuvuxehgschf85cvxvc5sy	CO-225-30821	yagnish	450	\N	2026-05-15 17:20:49.909	2026-05-15 17:20:49.909	2026-05-15 17:20:49.918	\N	\N	\N	2026-03-07
1905	fgst9x9x8o5jf7rxs109ua5k	CO-225-30822	kavita gupta	8598	\N	2026-05-15 17:20:50.492	2026-05-15 17:20:50.492	\N	\N	\N	\N	2026-03-07
1906	fgst9x9x8o5jf7rxs109ua5k	CO-225-30822	kavita gupta	8598	\N	2026-05-15 17:20:50.492	2026-05-15 17:20:50.492	2026-05-15 17:20:50.499	\N	\N	\N	2026-03-07
1907	ozqqks0eo03veeoges5htbk8	CO-225-30823	BINDU ACHARYA	2730	\N	2026-05-15 17:20:50.996	2026-05-15 17:20:50.996	\N	\N	\N	\N	2026-03-07
1908	ozqqks0eo03veeoges5htbk8	CO-225-30823	BINDU ACHARYA	2730	\N	2026-05-15 17:20:50.996	2026-05-15 17:20:50.996	2026-05-15 17:20:51.005	\N	\N	\N	2026-03-07
1909	nh22g6ct4qbfy29runva55u2	CO-225-30824	rajani sanyal	11100	\N	2026-05-15 17:20:51.698	2026-05-15 17:20:51.698	\N	\N	\N	\N	2026-03-07
1910	nh22g6ct4qbfy29runva55u2	CO-225-30824	rajani sanyal	11100	\N	2026-05-15 17:20:51.698	2026-05-15 17:20:51.698	2026-05-15 17:20:51.71	\N	\N	\N	2026-03-07
1911	mxnpfp6we0etoym20gdrx87k	CO-225-30825	KEYUR	1333	\N	2026-05-15 17:20:52.255	2026-05-15 17:20:52.255	\N	\N	\N	\N	2026-03-07
1912	mxnpfp6we0etoym20gdrx87k	CO-225-30825	KEYUR	1333	\N	2026-05-15 17:20:52.255	2026-05-15 17:20:52.255	2026-05-15 17:20:52.262	\N	\N	\N	2026-03-07
1913	yw6y8umh77clytufmnlxeshx	CO-225-30826	VATSALA	1573	\N	2026-05-15 17:20:52.853	2026-05-15 17:20:52.853	\N	\N	\N	\N	2026-03-07
1914	yw6y8umh77clytufmnlxeshx	CO-225-30826	VATSALA	1573	\N	2026-05-15 17:20:52.853	2026-05-15 17:20:52.853	2026-05-15 17:20:52.861	\N	\N	\N	2026-03-07
1915	fh7du77bgyapi7i9zjuei4re	CO-225-30827	SNEHA	5806	\N	2026-05-15 17:20:53.399	2026-05-15 17:20:53.399	\N	\N	\N	\N	2026-03-07
1916	fh7du77bgyapi7i9zjuei4re	CO-225-30827	SNEHA	5806	\N	2026-05-15 17:20:53.399	2026-05-15 17:20:53.399	2026-05-15 17:20:53.409	\N	\N	\N	2026-03-07
1917	mgwmp97486xoe7xzlg91ituu	CO-225-30828	anamika	1167	\N	2026-05-15 17:20:53.969	2026-05-15 17:20:53.969	\N	\N	\N	\N	2026-03-07
1918	mgwmp97486xoe7xzlg91ituu	CO-225-30828	anamika	1167	\N	2026-05-15 17:20:53.969	2026-05-15 17:20:53.969	2026-05-15 17:20:53.976	\N	\N	\N	2026-03-07
1919	sluwuzp9k15moxt0o8kzqwk5	CO-225-30829	vishal	924	\N	2026-05-15 17:20:54.51	2026-05-15 17:20:54.51	\N	\N	\N	\N	2026-03-07
1920	sluwuzp9k15moxt0o8kzqwk5	CO-225-30829	vishal	924	\N	2026-05-15 17:20:54.51	2026-05-15 17:20:54.51	2026-05-15 17:20:54.52	\N	\N	\N	2026-03-07
1921	hktpvex944hzc2s77grir0mx	CO-225-30830	bhavna	1606	\N	2026-05-15 17:20:55.032	2026-05-15 17:20:55.032	\N	\N	\N	\N	2026-03-09
1922	hktpvex944hzc2s77grir0mx	CO-225-30830	bhavna	1606	\N	2026-05-15 17:20:55.032	2026-05-15 17:20:55.032	2026-05-15 17:20:55.041	\N	\N	\N	2026-03-09
1923	jwo8sy6gdumm1zv3fxrbwl2d	CO-225-30831	JAYA MEM	8497	\N	2026-05-15 17:20:55.723	2026-05-15 17:20:55.723	\N	\N	\N	\N	2026-03-09
1924	jwo8sy6gdumm1zv3fxrbwl2d	CO-225-30831	JAYA MEM	8497	\N	2026-05-15 17:20:55.723	2026-05-15 17:20:55.723	2026-05-15 17:20:55.733	\N	\N	\N	2026-03-09
1925	wj4jfczvhdyl74ibcmq9djy4	CO-225-30832	pranjali shah	200	\N	2026-05-15 17:20:56.276	2026-05-15 17:20:56.276	\N	\N	\N	\N	2026-03-09
1926	wj4jfczvhdyl74ibcmq9djy4	CO-225-30832	pranjali shah	200	\N	2026-05-15 17:20:56.276	2026-05-15 17:20:56.276	2026-05-15 17:20:56.286	\N	\N	\N	2026-03-09
1927	wcknc0iq7uc4gwfpwumay2ta	CO-225-30833	rajvee	1700	\N	2026-05-15 17:20:56.834	2026-05-15 17:20:56.834	\N	\N	\N	\N	2026-03-09
1928	wcknc0iq7uc4gwfpwumay2ta	CO-225-30833	rajvee	1700	\N	2026-05-15 17:20:56.834	2026-05-15 17:20:56.834	2026-05-15 17:20:56.841	\N	\N	\N	2026-03-09
1931	c47b5ms3mcped5vqw5zg5kqa	CO-225-30835	NILESH SHAH	5189	\N	2026-05-15 17:20:57.937	2026-05-15 17:20:57.937	\N	\N	\N	\N	2026-03-09
1932	c47b5ms3mcped5vqw5zg5kqa	CO-225-30835	NILESH SHAH	5189	\N	2026-05-15 17:20:57.937	2026-05-15 17:20:57.937	2026-05-15 17:20:57.947	\N	\N	\N	2026-03-09
1937	d7tukzqv5iupopbjwwwltsdb	CO-225-30838	DEVANG	918	\N	2026-05-15 17:20:59.594	2026-05-15 17:20:59.594	\N	\N	\N	\N	2026-03-09
1938	d7tukzqv5iupopbjwwwltsdb	CO-225-30838	DEVANG	918	\N	2026-05-15 17:20:59.594	2026-05-15 17:20:59.594	2026-05-15 17:20:59.601	\N	\N	\N	2026-03-09
1941	jyxqdio1ymp0jn0ieazaj8go	CO-225-30840	BHAVESH	1840	\N	2026-05-15 17:21:00.709	2026-05-15 17:21:00.709	\N	\N	\N	\N	2026-03-09
1942	jyxqdio1ymp0jn0ieazaj8go	CO-225-30840	BHAVESH	1840	\N	2026-05-15 17:21:00.709	2026-05-15 17:21:00.709	2026-05-15 17:21:00.716	\N	\N	\N	2026-03-09
1945	dnppiqgpuc9nrulsx9db0b4d	CO-225-30842	nirav agrawal	8670	\N	2026-05-15 17:21:01.859	2026-05-15 17:21:01.859	\N	\N	\N	\N	2026-03-09
1946	dnppiqgpuc9nrulsx9db0b4d	CO-225-30842	nirav agrawal	8670	\N	2026-05-15 17:21:01.859	2026-05-15 17:21:01.859	2026-05-15 17:21:01.866	\N	\N	\N	2026-03-09
1949	f1l2ztuj944g15zxdpg7lrpy	CO-225-30844	nayna dholkiya	1081	\N	2026-05-15 17:21:02.951	2026-05-15 17:21:02.951	\N	\N	\N	\N	2026-03-09
1950	f1l2ztuj944g15zxdpg7lrpy	CO-225-30844	nayna dholkiya	1081	\N	2026-05-15 17:21:02.951	2026-05-15 17:21:02.951	2026-05-15 17:21:02.96	\N	\N	\N	2026-03-09
1953	xrxacetczz8rqo6wlbnp1p1d	CO-225-30846	sanjay	232	\N	2026-05-15 17:21:04.05	2026-05-15 17:21:04.05	\N	\N	\N	\N	2026-03-09
1954	xrxacetczz8rqo6wlbnp1p1d	CO-225-30846	sanjay	232	\N	2026-05-15 17:21:04.05	2026-05-15 17:21:04.05	2026-05-15 17:21:04.057	\N	\N	\N	2026-03-09
1957	x96o3ur6zambdakj6to4hlsx	CO-225-30848	ANSHUL	370	\N	2026-05-15 17:21:05.174	2026-05-15 17:21:05.174	\N	\N	\N	\N	2026-03-09
1958	x96o3ur6zambdakj6to4hlsx	CO-225-30848	ANSHUL	370	\N	2026-05-15 17:21:05.174	2026-05-15 17:21:05.174	2026-05-15 17:21:05.184	\N	\N	\N	2026-03-09
1961	pwqjs494sewzaubk6mjy6e1t	CO-225-30850	pinky modi	2911	\N	2026-05-15 17:21:06.287	2026-05-15 17:21:06.287	\N	\N	\N	\N	2026-03-09
1962	pwqjs494sewzaubk6mjy6e1t	CO-225-30850	pinky modi	2911	\N	2026-05-15 17:21:06.287	2026-05-15 17:21:06.287	2026-05-15 17:21:06.296	\N	\N	\N	2026-03-09
1965	mz0qbq5x1hr3zveoauxnwbwk	CO-225-30852	chirag	225	\N	2026-05-15 17:21:07.556	2026-05-15 17:21:07.556	\N	\N	\N	\N	2026-03-09
1966	mz0qbq5x1hr3zveoauxnwbwk	CO-225-30852	chirag	225	\N	2026-05-15 17:21:07.556	2026-05-15 17:21:07.556	2026-05-15 17:21:07.571	\N	\N	\N	2026-03-09
1967	l4y8r19ekc9d76xsn8d2ug0e	CO-225-30853	AASHKA	1735	\N	2026-05-15 17:21:08.247	2026-05-15 17:21:08.247	\N	\N	\N	\N	2026-03-09
1968	l4y8r19ekc9d76xsn8d2ug0e	CO-225-30853	AASHKA	1735	\N	2026-05-15 17:21:08.247	2026-05-15 17:21:08.247	2026-05-15 17:21:08.254	\N	\N	\N	2026-03-09
1973	wxiyf5u0sod9hb1t4sbuhh29	CO-225-30856	yash gaur	3041	\N	2026-05-15 17:21:10.049	2026-05-15 17:21:10.049	\N	\N	\N	\N	2026-03-09
1974	wxiyf5u0sod9hb1t4sbuhh29	CO-225-30856	yash gaur	3041	\N	2026-05-15 17:21:10.049	2026-05-15 17:21:10.049	2026-05-15 17:21:10.059	\N	\N	\N	2026-03-09
1975	kwk6xxhsfmj7bl75k0n01zce	CO-225-30857	RADHIKA NANDA	645	\N	2026-05-15 17:21:10.761	2026-05-15 17:21:10.761	\N	\N	\N	\N	2026-03-09
1976	kwk6xxhsfmj7bl75k0n01zce	CO-225-30857	RADHIKA NANDA	645	\N	2026-05-15 17:21:10.761	2026-05-15 17:21:10.761	2026-05-15 17:21:10.768	\N	\N	\N	2026-03-09
1979	daqibsuatel2ze0l8g7qth4s	CO-225-30859	kajal thakkar	700	\N	2026-05-15 17:21:11.878	2026-05-15 17:21:11.878	\N	\N	\N	\N	2026-03-09
1980	daqibsuatel2ze0l8g7qth4s	CO-225-30859	kajal thakkar	700	\N	2026-05-15 17:21:11.878	2026-05-15 17:21:11.878	2026-05-15 17:21:11.89	\N	\N	\N	2026-03-09
1983	esxapgbu777a7x0zzn43mnz8	CO-225-30861	abhishek mehta	1415	\N	2026-05-15 17:21:13.407	2026-05-15 17:21:13.407	\N	\N	\N	\N	2026-03-09
1984	esxapgbu777a7x0zzn43mnz8	CO-225-30861	abhishek mehta	1415	\N	2026-05-15 17:21:13.407	2026-05-15 17:21:13.407	2026-05-15 17:21:13.417	\N	\N	\N	2026-03-09
1993	xhxdoq3lfq49aidpvkl57mh5	CO-225-30866	swati sharma	1950	\N	2026-05-15 17:21:17.057	2026-05-15 17:21:17.057	\N	\N	\N	\N	2026-03-09
1994	xhxdoq3lfq49aidpvkl57mh5	CO-225-30866	swati sharma	1950	\N	2026-05-15 17:21:17.057	2026-05-15 17:21:17.057	2026-05-15 17:21:17.069	\N	\N	\N	2026-03-09
1997	frw953f4iywsqlb3avgtw3gu	CO-225-30868	TEJAS BORISA	431	\N	2026-05-15 17:21:18.224	2026-05-15 17:21:18.224	\N	\N	\N	\N	2026-03-09
1998	frw953f4iywsqlb3avgtw3gu	CO-225-30868	TEJAS BORISA	431	\N	2026-05-15 17:21:18.224	2026-05-15 17:21:18.224	2026-05-15 17:21:18.233	\N	\N	\N	2026-03-09
2001	b28t470bkau849qvbzf41pnr	CO-225-30870	enhance family saloon	2000	\N	2026-05-15 17:21:19.315	2026-05-15 17:21:19.315	\N	\N	\N	\N	2026-03-09
2002	b28t470bkau849qvbzf41pnr	CO-225-30870	enhance family saloon	2000	\N	2026-05-15 17:21:19.315	2026-05-15 17:21:19.315	2026-05-15 17:21:19.323	\N	\N	\N	2026-03-09
2005	wsaxgmob0tjs1luukssbb4pk	CO-225-30872	VIDHI MAM	2241	\N	2026-05-15 17:21:20.804	2026-05-15 17:21:20.804	\N	\N	\N	\N	2026-03-09
2006	wsaxgmob0tjs1luukssbb4pk	CO-225-30872	VIDHI MAM	2241	\N	2026-05-15 17:21:20.804	2026-05-15 17:21:20.804	2026-05-15 17:21:20.821	\N	\N	\N	2026-03-09
2011	i4zkgk7l6dzet1j3w11bd0sy	CO-225-30875	bagga	1571	\N	2026-05-15 17:21:22.658	2026-05-15 17:21:22.658	\N	\N	\N	\N	2026-03-09
2012	i4zkgk7l6dzet1j3w11bd0sy	CO-225-30875	bagga	1571	\N	2026-05-15 17:21:22.658	2026-05-15 17:21:22.658	2026-05-15 17:21:22.666	\N	\N	\N	2026-03-09
2015	t75v1mqp81uir8rkwwxzsj5e	CO-225-30877	Pooja Srivastava	633	\N	2026-05-15 17:21:23.91	2026-05-15 17:21:23.91	\N	\N	\N	\N	2026-03-09
2016	t75v1mqp81uir8rkwwxzsj5e	CO-225-30877	Pooja Srivastava	633	\N	2026-05-15 17:21:23.91	2026-05-15 17:21:23.91	2026-05-15 17:21:23.924	\N	\N	\N	2026-03-09
2021	wi8wvazr29r0jgshbr34ahju	CO-225-30880	JETI SHAH	2405	\N	2026-05-15 17:21:25.76	2026-05-15 17:21:25.76	\N	\N	\N	\N	2026-03-09
2022	wi8wvazr29r0jgshbr34ahju	CO-225-30880	JETI SHAH	2405	\N	2026-05-15 17:21:25.76	2026-05-15 17:21:25.76	2026-05-15 17:21:25.769	\N	\N	\N	2026-03-09
2025	b6eyrp4u28tsiua5yhakfb7x	CO-225-30882	KARAN JIT	119	\N	2026-05-15 17:21:26.867	2026-05-15 17:21:26.867	\N	\N	\N	\N	2026-03-09
2026	b6eyrp4u28tsiua5yhakfb7x	CO-225-30882	KARAN JIT	119	\N	2026-05-15 17:21:26.867	2026-05-15 17:21:26.867	2026-05-15 17:21:26.874	\N	\N	\N	2026-03-09
2029	e8mlfen3bteyuvcw8aozn11j	CO-225-30884	jay	2282	\N	2026-05-15 17:21:27.967	2026-05-15 17:21:27.967	\N	\N	\N	\N	2026-03-09
2030	e8mlfen3bteyuvcw8aozn11j	CO-225-30884	jay	2282	\N	2026-05-15 17:21:27.967	2026-05-15 17:21:27.967	2026-05-15 17:21:27.977	\N	\N	\N	2026-03-09
2033	swnb7m1uhqxovgjh9p238wxa	CO-225-30886	rupal	5744	\N	2026-05-15 17:21:29.477	2026-05-15 17:21:29.477	\N	\N	\N	\N	2026-03-09
2034	swnb7m1uhqxovgjh9p238wxa	CO-225-30886	rupal	5744	\N	2026-05-15 17:21:29.477	2026-05-15 17:21:29.477	2026-05-15 17:21:29.486	\N	\N	\N	2026-03-09
2037	jx8lmgvro3yakvgpklkfwd2a	CO-225-30888	brjesh panchal	2100	\N	2026-05-15 17:21:30.966	2026-05-15 17:21:30.966	\N	\N	\N	\N	2026-03-09
2038	jx8lmgvro3yakvgpklkfwd2a	CO-225-30888	brjesh panchal	2100	\N	2026-05-15 17:21:30.966	2026-05-15 17:21:30.966	2026-05-15 17:21:30.977	\N	\N	\N	2026-03-09
2039	kmqssubdvgk306tggp8jb56w	CO-225-30889	Saket parikh	6590	\N	2026-05-15 17:21:31.568	2026-05-15 17:21:31.568	\N	\N	\N	\N	2026-03-09
2040	kmqssubdvgk306tggp8jb56w	CO-225-30889	Saket parikh	6590	\N	2026-05-15 17:21:31.568	2026-05-15 17:21:31.568	2026-05-15 17:21:31.578	\N	\N	\N	2026-03-09
2043	c2n3qg9wc4ccpq3lp2j54cba	CO-225-30891	vikram veri	345	\N	2026-05-15 17:21:32.74	2026-05-15 17:21:32.74	\N	\N	\N	\N	2026-03-09
2044	c2n3qg9wc4ccpq3lp2j54cba	CO-225-30891	vikram veri	345	\N	2026-05-15 17:21:32.74	2026-05-15 17:21:32.74	2026-05-15 17:21:32.751	\N	\N	\N	2026-03-09
1929	jmk5iwasf2mp57ukchvbn0mx	CO-225-30834	electronic junction	5600	\N	2026-05-15 17:20:57.385	2026-05-15 17:20:57.385	\N	\N	\N	\N	2026-03-09
1930	jmk5iwasf2mp57ukchvbn0mx	CO-225-30834	electronic junction	5600	\N	2026-05-15 17:20:57.385	2026-05-15 17:20:57.385	2026-05-15 17:20:57.394	\N	\N	\N	2026-03-09
1933	jzp17tfel2iabloieg1i0kga	CO-225-30836	mina	4820	\N	2026-05-15 17:20:58.483	2026-05-15 17:20:58.483	\N	\N	\N	\N	2026-03-09
1934	jzp17tfel2iabloieg1i0kga	CO-225-30836	mina	4820	\N	2026-05-15 17:20:58.483	2026-05-15 17:20:58.483	2026-05-15 17:20:58.492	\N	\N	\N	2026-03-09
1935	uxxlrp7ubuv9e6ikmrzwsouk	CO-225-30837	SANTOSHKUMAR SACHAN	105	\N	2026-05-15 17:20:59.036	2026-05-15 17:20:59.036	\N	\N	\N	\N	2026-03-09
1936	uxxlrp7ubuv9e6ikmrzwsouk	CO-225-30837	SANTOSHKUMAR SACHAN	105	\N	2026-05-15 17:20:59.036	2026-05-15 17:20:59.036	2026-05-15 17:20:59.047	\N	\N	\N	2026-03-09
1939	j2ir7jtygavj5jwnczd4gowd	CO-225-30839	vishal parmar	1754	\N	2026-05-15 17:21:00.158	2026-05-15 17:21:00.158	\N	\N	\N	\N	2026-03-09
1940	j2ir7jtygavj5jwnczd4gowd	CO-225-30839	vishal parmar	1754	\N	2026-05-15 17:21:00.158	2026-05-15 17:21:00.158	2026-05-15 17:21:00.165	\N	\N	\N	2026-03-09
1943	dr1z9ehcsqpcrpth7asfrtyf	CO-225-30841	ankita	2300	\N	2026-05-15 17:21:01.254	2026-05-15 17:21:01.254	\N	\N	\N	\N	2026-03-09
1944	dr1z9ehcsqpcrpth7asfrtyf	CO-225-30841	ankita	2300	\N	2026-05-15 17:21:01.254	2026-05-15 17:21:01.254	2026-05-15 17:21:01.264	\N	\N	\N	2026-03-09
1947	ceby7ypm2qcmc3smd6rjn7to	CO-225-30843	jigna	5789	\N	2026-05-15 17:21:02.405	2026-05-15 17:21:02.405	\N	\N	\N	\N	2026-03-09
1948	ceby7ypm2qcmc3smd6rjn7to	CO-225-30843	jigna	5789	\N	2026-05-15 17:21:02.405	2026-05-15 17:21:02.405	2026-05-15 17:21:02.412	\N	\N	\N	2026-03-09
1951	cfb5tvxizkdb6qrnihnzlm0g	CO-225-30845	FLORA FOUNTAIN	6390	\N	2026-05-15 17:21:03.504	2026-05-15 17:21:03.504	\N	\N	\N	\N	2026-03-09
1952	cfb5tvxizkdb6qrnihnzlm0g	CO-225-30845	FLORA FOUNTAIN	6390	\N	2026-05-15 17:21:03.504	2026-05-15 17:21:03.504	2026-05-15 17:21:03.511	\N	\N	\N	2026-03-09
1955	dxyc4wh392rkgb2hjpsu1uui	CO-225-30847	pradip sinde	1908	\N	2026-05-15 17:21:04.615	2026-05-15 17:21:04.615	\N	\N	\N	\N	2026-03-09
1956	dxyc4wh392rkgb2hjpsu1uui	CO-225-30847	pradip sinde	1908	\N	2026-05-15 17:21:04.615	2026-05-15 17:21:04.615	2026-05-15 17:21:04.624	\N	\N	\N	2026-03-09
1959	lqx7vxl4itbi29glmbgbqyi4	CO-225-30849	Ayushi Agrawal	167	\N	2026-05-15 17:21:05.731	2026-05-15 17:21:05.731	\N	\N	\N	\N	2026-03-09
1960	lqx7vxl4itbi29glmbgbqyi4	CO-225-30849	Ayushi Agrawal	167	\N	2026-05-15 17:21:05.731	2026-05-15 17:21:05.731	2026-05-15 17:21:05.739	\N	\N	\N	2026-03-09
1963	evhcy1oz9ammn0d8j42p62lg	CO-225-30851	varsha acharya	204	\N	2026-05-15 17:21:06.861	2026-05-15 17:21:06.861	\N	\N	\N	\N	2026-03-09
1964	evhcy1oz9ammn0d8j42p62lg	CO-225-30851	varsha acharya	204	\N	2026-05-15 17:21:06.861	2026-05-15 17:21:06.861	2026-05-15 17:21:06.869	\N	\N	\N	2026-03-09
1969	ybo1b9u5hwb18njfqjh3us01	CO-225-30854	ANUPAMA	2155	\N	2026-05-15 17:21:08.904	2026-05-15 17:21:08.904	\N	\N	\N	\N	2026-03-09
1970	ybo1b9u5hwb18njfqjh3us01	CO-225-30854	ANUPAMA	2155	\N	2026-05-15 17:21:08.904	2026-05-15 17:21:08.904	2026-05-15 17:21:08.914	\N	\N	\N	2026-03-09
1971	be14l0fhmjgvtu0umwrfp6x6	CO-225-30855	JINAY	553	\N	2026-05-15 17:21:09.415	2026-05-15 17:21:09.415	\N	\N	\N	\N	2026-03-09
1972	be14l0fhmjgvtu0umwrfp6x6	CO-225-30855	JINAY	553	\N	2026-05-15 17:21:09.415	2026-05-15 17:21:09.415	2026-05-15 17:21:09.424	\N	\N	\N	2026-03-09
1977	abm1ea0ud7z89eybdp2ztfcx	CO-225-30858	Anand Devani	3103	\N	2026-05-15 17:21:11.312	2026-05-15 17:21:11.312	\N	\N	\N	\N	2026-03-09
1978	abm1ea0ud7z89eybdp2ztfcx	CO-225-30858	Anand Devani	3103	\N	2026-05-15 17:21:11.312	2026-05-15 17:21:11.312	2026-05-15 17:21:11.322	\N	\N	\N	2026-03-09
1981	byh3luuqhazy8iamd5rql9v5	CO-225-30860	NEHA SHETH	1779	\N	2026-05-15 17:21:12.579	2026-05-15 17:21:12.579	\N	\N	\N	\N	2026-03-09
1982	byh3luuqhazy8iamd5rql9v5	CO-225-30860	NEHA SHETH	1779	\N	2026-05-15 17:21:12.579	2026-05-15 17:21:12.579	2026-05-15 17:21:12.59	\N	\N	\N	2026-03-09
1985	fqyh4lkr5bv2m87q0gmcb9ll	CO-225-30862	milii	941	\N	2026-05-15 17:21:14.253	2026-05-15 17:21:14.253	\N	\N	\N	\N	2026-03-09
1986	fqyh4lkr5bv2m87q0gmcb9ll	CO-225-30862	milii	941	\N	2026-05-15 17:21:14.253	2026-05-15 17:21:14.253	2026-05-15 17:21:14.267	\N	\N	\N	2026-03-09
2035	vtx51mr650hmen7jzd4t616w	CO-225-30887	pinal mam	75	\N	2026-05-15 17:21:30.294	2026-05-15 17:21:30.294	\N	\N	\N	\N	2026-03-09
2036	vtx51mr650hmen7jzd4t616w	CO-225-30887	pinal mam	75	\N	2026-05-15 17:21:30.294	2026-05-15 17:21:30.294	2026-05-15 17:21:30.306	\N	\N	\N	2026-03-09
2041	xyzzmxz35wztlu19v2rxyz4n	CO-225-30890	.madhukar	3771	\N	2026-05-15 17:21:32.167	2026-05-15 17:21:32.167	\N	\N	\N	\N	2026-03-09
2042	xyzzmxz35wztlu19v2rxyz4n	CO-225-30890	.madhukar	3771	\N	2026-05-15 17:21:32.167	2026-05-15 17:21:32.167	2026-05-15 17:21:32.176	\N	\N	\N	2026-03-09
2045	t83p6ym9lp7y5hfnxl9a6mxt	CO-225-30892	charu patel	1345	\N	2026-05-15 17:21:33.32	2026-05-15 17:21:33.32	\N	\N	\N	\N	2026-03-09
2046	t83p6ym9lp7y5hfnxl9a6mxt	CO-225-30892	charu patel	1345	\N	2026-05-15 17:21:33.32	2026-05-15 17:21:33.32	2026-05-15 17:21:33.329	\N	\N	\N	2026-03-09
2049	b71ykuxqux148y7szo1hhqsx	CO-225-30894	aji	2320	\N	2026-05-15 17:21:34.527	2026-05-15 17:21:34.527	\N	\N	\N	\N	2026-03-09
2050	b71ykuxqux148y7szo1hhqsx	CO-225-30894	aji	2320	\N	2026-05-15 17:21:34.527	2026-05-15 17:21:34.527	2026-05-15 17:21:34.538	\N	\N	\N	2026-03-09
2063	zujze2t5ak730wurmjyy9oe2	CO-225-30901	boby	276	\N	2026-05-15 17:21:39.569	2026-05-15 17:21:39.569	\N	\N	\N	\N	2026-03-09
2064	zujze2t5ak730wurmjyy9oe2	CO-225-30901	boby	276	\N	2026-05-15 17:21:39.569	2026-05-15 17:21:39.569	2026-05-15 17:21:39.581	\N	\N	\N	2026-03-09
2067	v34yfv1awws0ep4z91l3q116	CO-225-30903	TOFFEE MEHTA	1560	\N	2026-05-15 17:21:40.699	2026-05-15 17:21:40.699	\N	\N	\N	\N	2026-03-10
2068	v34yfv1awws0ep4z91l3q116	CO-225-30903	TOFFEE MEHTA	1560	\N	2026-05-15 17:21:40.699	2026-05-15 17:21:40.699	2026-05-15 17:21:40.709	\N	\N	\N	2026-03-10
2069	wu6odlhbltif2zi335lgd4ze	CO-225-30904	c.b mehta	1695	\N	2026-05-15 17:21:41.28	2026-05-15 17:21:41.28	\N	\N	\N	\N	2026-03-10
2070	wu6odlhbltif2zi335lgd4ze	CO-225-30904	c.b mehta	1695	\N	2026-05-15 17:21:41.28	2026-05-15 17:21:41.28	2026-05-15 17:21:41.292	\N	\N	\N	2026-03-10
1987	qr5jix1edg2aoci193ax8fh6	CO-225-30863	yash gaur	250	\N	2026-05-15 17:21:14.999	2026-05-15 17:21:14.999	\N	\N	\N	\N	2026-03-09
1988	qr5jix1edg2aoci193ax8fh6	CO-225-30863	yash gaur	250	\N	2026-05-15 17:21:14.999	2026-05-15 17:21:14.999	2026-05-15 17:21:15.009	\N	\N	\N	2026-03-09
1989	y4dw3xyoxds7712k6pdka1xu	CO-225-30864	ankur	3437	\N	2026-05-15 17:21:15.858	2026-05-15 17:21:15.858	\N	\N	\N	\N	2026-03-09
1990	y4dw3xyoxds7712k6pdka1xu	CO-225-30864	ankur	3437	\N	2026-05-15 17:21:15.858	2026-05-15 17:21:15.858	2026-05-15 17:21:15.87	\N	\N	\N	2026-03-09
1991	wk4gwz3e9w5tyhw6j8hhfyhf	CO-225-30865	BINDU ACHARYA	2730	\N	2026-05-15 17:21:16.353	2026-05-15 17:21:16.353	\N	\N	\N	\N	2026-03-09
1992	wk4gwz3e9w5tyhw6j8hhfyhf	CO-225-30865	BINDU ACHARYA	2730	\N	2026-05-15 17:21:16.353	2026-05-15 17:21:16.353	2026-05-15 17:21:16.364	\N	\N	\N	2026-03-09
1995	ehl1i4kwc6h32ewumo2pgj80	CO-225-30867	AVANI S CHAUHAN	2099	\N	2026-05-15 17:21:17.672	2026-05-15 17:21:17.672	\N	\N	\N	\N	2026-03-09
1996	ehl1i4kwc6h32ewumo2pgj80	CO-225-30867	AVANI S CHAUHAN	2099	\N	2026-05-15 17:21:17.672	2026-05-15 17:21:17.672	2026-05-15 17:21:17.682	\N	\N	\N	2026-03-09
1999	yh0wogmoh38uu87dwm9gcf1u	CO-225-30869	PRITI SHAH	1194	\N	2026-05-15 17:21:18.77	2026-05-15 17:21:18.77	\N	\N	\N	\N	2026-03-09
2000	yh0wogmoh38uu87dwm9gcf1u	CO-225-30869	PRITI SHAH	1194	\N	2026-05-15 17:21:18.77	2026-05-15 17:21:18.77	2026-05-15 17:21:18.781	\N	\N	\N	2026-03-09
2003	alft2m66fwsqtri35vw9htcf	CO-225-30871	HEENA RANA	723	\N	2026-05-15 17:21:20.148	2026-05-15 17:21:20.148	\N	\N	\N	\N	2026-03-09
2004	alft2m66fwsqtri35vw9htcf	CO-225-30871	HEENA RANA	723	\N	2026-05-15 17:21:20.148	2026-05-15 17:21:20.148	2026-05-15 17:21:20.172	\N	\N	\N	2026-03-09
2007	kg5z2anote6jnqkkmz403cw8	CO-225-30873	ROSHAN	388	\N	2026-05-15 17:21:21.461	2026-05-15 17:21:21.461	\N	\N	\N	\N	2026-03-09
2008	kg5z2anote6jnqkkmz403cw8	CO-225-30873	ROSHAN	388	\N	2026-05-15 17:21:21.461	2026-05-15 17:21:21.461	2026-05-15 17:21:21.469	\N	\N	\N	2026-03-09
2009	xvrbs7odqd3q447gm942uyec	CO-225-30874	KAVITA	319	\N	2026-05-15 17:21:21.961	2026-05-15 17:21:21.961	\N	\N	\N	\N	2026-03-09
2010	xvrbs7odqd3q447gm942uyec	CO-225-30874	KAVITA	319	\N	2026-05-15 17:21:21.961	2026-05-15 17:21:21.961	2026-05-15 17:21:21.971	\N	\N	\N	2026-03-09
2013	p1a0djdmajf6iqrqm9gfv3pz	CO-225-30876	SCOOBY	4668	\N	2026-05-15 17:21:23.196	2026-05-15 17:21:23.196	\N	\N	\N	\N	2026-03-09
2014	p1a0djdmajf6iqrqm9gfv3pz	CO-225-30876	SCOOBY	4668	\N	2026-05-15 17:21:23.196	2026-05-15 17:21:23.196	2026-05-15 17:21:23.206	\N	\N	\N	2026-03-09
2017	djxfdpr90zl2y7c7aezvyrg0	CO-225-30878	MAYRA DEGINER	1165	\N	2026-05-15 17:21:24.458	2026-05-15 17:21:24.458	\N	\N	\N	\N	2026-03-09
2018	djxfdpr90zl2y7c7aezvyrg0	CO-225-30878	MAYRA DEGINER	1165	\N	2026-05-15 17:21:24.458	2026-05-15 17:21:24.458	2026-05-15 17:21:24.469	\N	\N	\N	2026-03-09
2019	umn39na39rf6bltv7zf4ewd8	CO-225-30879	vipul patel	2099	\N	2026-05-15 17:21:25.201	2026-05-15 17:21:25.201	\N	\N	\N	\N	2026-03-09
2020	umn39na39rf6bltv7zf4ewd8	CO-225-30879	vipul patel	2099	\N	2026-05-15 17:21:25.201	2026-05-15 17:21:25.201	2026-05-15 17:21:25.208	\N	\N	\N	2026-03-09
2023	kraujn86rrvxno5219sc8ky6	CO-225-30881	GINNY SHARMA	2099	\N	2026-05-15 17:21:26.306	2026-05-15 17:21:26.306	\N	\N	\N	\N	2026-03-09
2024	kraujn86rrvxno5219sc8ky6	CO-225-30881	GINNY SHARMA	2099	\N	2026-05-15 17:21:26.306	2026-05-15 17:21:26.306	2026-05-15 17:21:26.316	\N	\N	\N	2026-03-09
2027	gbf3kw2eqpq7h4elactc2dh4	CO-225-30883	PURVIBEN PRAJAPATI	4800	\N	2026-05-15 17:21:27.409	2026-05-15 17:21:27.409	\N	\N	\N	\N	2026-03-09
2028	gbf3kw2eqpq7h4elactc2dh4	CO-225-30883	PURVIBEN PRAJAPATI	4800	\N	2026-05-15 17:21:27.409	2026-05-15 17:21:27.409	2026-05-15 17:21:27.417	\N	\N	\N	2026-03-09
2031	oq0c49ojvtv23rpwa1m1fnt2	CO-225-30885	vipul	2000	\N	2026-05-15 17:21:28.817	2026-05-15 17:21:28.817	\N	\N	\N	\N	2026-03-09
2032	oq0c49ojvtv23rpwa1m1fnt2	CO-225-30885	vipul	2000	\N	2026-05-15 17:21:28.817	2026-05-15 17:21:28.817	2026-05-15 17:21:28.833	\N	\N	\N	2026-03-09
2047	ljxpaiemhhorekkqqi27n2i8	CO-225-30893	yashika	720	\N	2026-05-15 17:21:33.937	2026-05-15 17:21:33.937	\N	\N	\N	\N	2026-03-09
2048	ljxpaiemhhorekkqqi27n2i8	CO-225-30893	yashika	720	\N	2026-05-15 17:21:33.937	2026-05-15 17:21:33.937	2026-05-15 17:21:33.946	\N	\N	\N	2026-03-09
2051	ssqer3qkiycrcrs66aoc6np7	CO-225-30895	SPURGE FOUNDATION	199	\N	2026-05-15 17:21:35.154	2026-05-15 17:21:35.154	\N	\N	\N	\N	2026-03-09
2052	ssqer3qkiycrcrs66aoc6np7	CO-225-30895	SPURGE FOUNDATION	199	\N	2026-05-15 17:21:35.154	2026-05-15 17:21:35.154	2026-05-15 17:21:35.168	\N	\N	\N	2026-03-09
2053	xsnn2sd04oafg45u0eu73wce	CO-225-30896	gaurang	272	\N	2026-05-15 17:21:35.857	2026-05-15 17:21:35.857	\N	\N	\N	\N	2026-03-09
2054	xsnn2sd04oafg45u0eu73wce	CO-225-30896	gaurang	272	\N	2026-05-15 17:21:35.857	2026-05-15 17:21:35.857	2026-05-15 17:21:35.869	\N	\N	\N	2026-03-09
2055	rwoxznt6kl3eetnndq2pxux5	CO-225-30897	parul patel	463	\N	2026-05-15 17:21:36.531	2026-05-15 17:21:36.531	\N	\N	\N	\N	2026-03-09
2056	rwoxznt6kl3eetnndq2pxux5	CO-225-30897	parul patel	463	\N	2026-05-15 17:21:36.531	2026-05-15 17:21:36.531	2026-05-15 17:21:36.546	\N	\N	\N	2026-03-09
2057	kar5ikuk9dgmpw2t94e79k17	CO-225-30898	dhruv	613	\N	2026-05-15 17:21:37.345	2026-05-15 17:21:37.345	\N	\N	\N	\N	2026-03-09
2058	kar5ikuk9dgmpw2t94e79k17	CO-225-30898	dhruv	613	\N	2026-05-15 17:21:37.345	2026-05-15 17:21:37.345	2026-05-15 17:21:37.352	\N	\N	\N	2026-03-09
2059	svgqtx4okw6prcb96mf0sq26	CO-225-30899	SAMIR JAIN	1900	\N	2026-05-15 17:21:38.381	2026-05-15 17:21:38.381	\N	\N	\N	\N	2026-03-09
2060	svgqtx4okw6prcb96mf0sq26	CO-225-30899	SAMIR JAIN	1900	\N	2026-05-15 17:21:38.381	2026-05-15 17:21:38.381	2026-05-15 17:21:38.394	\N	\N	\N	2026-03-09
2061	sg5epvfr87nuez7gyo5gley5	CO-225-30900	dhrumil	214	\N	2026-05-15 17:21:39.01	2026-05-15 17:21:39.01	\N	\N	\N	\N	2026-03-09
2062	sg5epvfr87nuez7gyo5gley5	CO-225-30900	dhrumil	214	\N	2026-05-15 17:21:39.01	2026-05-15 17:21:39.01	2026-05-15 17:21:39.018	\N	\N	\N	2026-03-09
2065	qxipke6nvzpuqixq13iighk7	CO-225-30902	sejuti mam	2338	\N	2026-05-15 17:21:40.12	2026-05-15 17:21:40.12	\N	\N	\N	\N	2026-03-10
2066	qxipke6nvzpuqixq13iighk7	CO-225-30902	sejuti mam	2338	\N	2026-05-15 17:21:40.12	2026-05-15 17:21:40.12	2026-05-15 17:21:40.129	\N	\N	\N	2026-03-10
2071	ti0g1e6ngfw4qt7qrbgwlnmu	CO-225-30905	simba parikh	1950	\N	2026-05-15 17:21:41.87	2026-05-15 17:21:41.87	\N	\N	\N	\N	2026-03-10
2072	ti0g1e6ngfw4qt7qrbgwlnmu	CO-225-30905	simba parikh	1950	\N	2026-05-15 17:21:41.87	2026-05-15 17:21:41.87	2026-05-15 17:21:41.883	\N	\N	\N	2026-03-10
2073	qlpu5wzj8btgmeh9hes9ioeg	CO-225-30906	jonshan	516	\N	2026-05-15 17:21:42.59	2026-05-15 17:21:42.59	\N	\N	\N	\N	2026-03-10
2074	qlpu5wzj8btgmeh9hes9ioeg	CO-225-30906	jonshan	516	\N	2026-05-15 17:21:42.59	2026-05-15 17:21:42.59	2026-05-15 17:21:42.6	\N	\N	\N	2026-03-10
2075	ft62z3kfxjnbo02z73ptuyih	CO-225-30907	SAHIL	846	\N	2026-05-15 17:21:43.166	2026-05-15 17:21:43.166	\N	\N	\N	\N	2026-03-10
2076	ft62z3kfxjnbo02z73ptuyih	CO-225-30907	SAHIL	846	\N	2026-05-15 17:21:43.166	2026-05-15 17:21:43.166	2026-05-15 17:21:43.174	\N	\N	\N	2026-03-10
2077	z3z2j8mlt3lf970g05l4v2p7	CO-225-30908	SAGAR	347	\N	2026-05-15 17:21:43.763	2026-05-15 17:21:43.763	\N	\N	\N	\N	2026-03-10
2078	z3z2j8mlt3lf970g05l4v2p7	CO-225-30908	SAGAR	347	\N	2026-05-15 17:21:43.763	2026-05-15 17:21:43.763	2026-05-15 17:21:43.77	\N	\N	\N	2026-03-10
2079	om86y7t4p2q6bguskn7ph18c	CO-225-30909	Aman Patel	4147	\N	2026-05-15 17:21:44.323	2026-05-15 17:21:44.323	\N	\N	\N	\N	2026-03-10
2080	om86y7t4p2q6bguskn7ph18c	CO-225-30909	Aman Patel	4147	\N	2026-05-15 17:21:44.323	2026-05-15 17:21:44.323	2026-05-15 17:21:44.332	\N	\N	\N	2026-03-10
2081	qsflr1wcprr40cqj545wobi8	CO-225-30910	anshi	770	\N	2026-05-15 17:21:44.901	2026-05-15 17:21:44.901	\N	\N	\N	\N	2026-03-10
2082	qsflr1wcprr40cqj545wobi8	CO-225-30910	anshi	770	\N	2026-05-15 17:21:44.901	2026-05-15 17:21:44.901	2026-05-15 17:21:44.913	\N	\N	\N	2026-03-10
2083	vuk5z54tjgq2lj9f0xex6m9f	CO-225-30911	ruchi gajjar	8533	\N	2026-05-15 17:21:45.461	2026-05-15 17:21:45.461	\N	\N	\N	\N	2026-03-10
2084	vuk5z54tjgq2lj9f0xex6m9f	CO-225-30911	ruchi gajjar	8533	\N	2026-05-15 17:21:45.461	2026-05-15 17:21:45.461	2026-05-15 17:21:45.47	\N	\N	\N	2026-03-10
2085	zxt1rn4f6x2wfmvefmi008kg	CO-225-30912	rahul shah	991	\N	2026-05-15 17:21:45.987	2026-05-15 17:21:45.987	\N	\N	\N	\N	2026-03-10
2086	zxt1rn4f6x2wfmvefmi008kg	CO-225-30912	rahul shah	991	\N	2026-05-15 17:21:45.987	2026-05-15 17:21:45.987	2026-05-15 17:21:45.996	\N	\N	\N	2026-03-10
2087	whfycq99irjfzv0fxgf4xz5w	CO-225-30913	chandni kapadiya	490	\N	2026-05-15 17:21:46.713	2026-05-15 17:21:46.713	\N	\N	\N	\N	2026-03-10
2088	whfycq99irjfzv0fxgf4xz5w	CO-225-30913	chandni kapadiya	490	\N	2026-05-15 17:21:46.713	2026-05-15 17:21:46.713	2026-05-15 17:21:46.723	\N	\N	\N	2026-03-10
2089	os40tem33yhcbl8bfwgx42lb	CO-225-30914	SEEMA MEHTA	2099	\N	2026-05-15 17:21:47.269	2026-05-15 17:21:47.269	\N	\N	\N	\N	2026-03-10
2090	os40tem33yhcbl8bfwgx42lb	CO-225-30914	SEEMA MEHTA	2099	\N	2026-05-15 17:21:47.269	2026-05-15 17:21:47.269	2026-05-15 17:21:47.279	\N	\N	\N	2026-03-10
2091	t8sx1bbx5m0y66xz2qy54w1j	CO-225-30915	punit chauhan	1800	\N	2026-05-15 17:21:47.827	2026-05-15 17:21:47.827	\N	\N	\N	\N	2026-03-10
2092	t8sx1bbx5m0y66xz2qy54w1j	CO-225-30915	punit chauhan	1800	\N	2026-05-15 17:21:47.827	2026-05-15 17:21:47.827	2026-05-15 17:21:47.837	\N	\N	\N	2026-03-10
2093	f3uhv53vn3ios1t6285bfoab	CO-225-30916	chandu bhojwani	2099	\N	2026-05-15 17:21:48.386	2026-05-15 17:21:48.386	\N	\N	\N	\N	2026-03-10
2094	f3uhv53vn3ios1t6285bfoab	CO-225-30916	chandu bhojwani	2099	\N	2026-05-15 17:21:48.386	2026-05-15 17:21:48.386	2026-05-15 17:21:48.394	\N	\N	\N	2026-03-10
2097	vybtyl8tkdbtqngfr9h499v0	CO-225-30918	ANERI SHAH	2000	\N	2026-05-15 17:21:49.478	2026-05-15 17:21:49.478	\N	\N	\N	\N	2026-03-10
2098	vybtyl8tkdbtqngfr9h499v0	CO-225-30918	ANERI SHAH	2000	\N	2026-05-15 17:21:49.478	2026-05-15 17:21:49.478	2026-05-15 17:21:49.49	\N	\N	\N	2026-03-10
2099	bta359dm08ryhjbx62dnprvk	CO-225-30919	ANERI SHAH	522	\N	2026-05-15 17:21:49.976	2026-05-15 17:21:49.976	\N	\N	\N	\N	2026-03-10
2100	bta359dm08ryhjbx62dnprvk	CO-225-30919	ANERI SHAH	522	\N	2026-05-15 17:21:49.976	2026-05-15 17:21:49.976	2026-05-15 17:21:49.987	\N	\N	\N	2026-03-10
2101	shn52udckgcflzpw1sij6m1l	CO-225-30920	DEVASH RAVAL	2099	\N	2026-05-15 17:21:50.691	2026-05-15 17:21:50.691	\N	\N	\N	\N	2026-03-10
2102	shn52udckgcflzpw1sij6m1l	CO-225-30920	DEVASH RAVAL	2099	\N	2026-05-15 17:21:50.691	2026-05-15 17:21:50.691	2026-05-15 17:21:50.701	\N	\N	\N	2026-03-10
2105	hzxm35swxj2b8znk8r7k4so4	CO-225-30922	krutika	984	\N	2026-05-15 17:21:51.807	2026-05-15 17:21:51.807	\N	\N	\N	\N	2026-03-10
2106	hzxm35swxj2b8znk8r7k4so4	CO-225-30922	krutika	984	\N	2026-05-15 17:21:51.807	2026-05-15 17:21:51.807	2026-05-15 17:21:51.818	\N	\N	\N	2026-03-10
2107	a083289y3hakhk7ilw1xzogs	CO-225-30923	raja panchal	537	\N	2026-05-15 17:21:52.369	2026-05-15 17:21:52.369	\N	\N	\N	\N	2026-03-10
2108	a083289y3hakhk7ilw1xzogs	CO-225-30923	raja panchal	537	\N	2026-05-15 17:21:52.369	2026-05-15 17:21:52.369	2026-05-15 17:21:52.38	\N	\N	\N	2026-03-10
2119	qs9yu0x4s9zkusof2bvsixyb	CO-225-30929	PAVAN	890	\N	2026-05-15 17:21:56.198	2026-05-15 17:21:56.198	\N	\N	\N	\N	2026-03-10
2120	qs9yu0x4s9zkusof2bvsixyb	CO-225-30929	PAVAN	890	\N	2026-05-15 17:21:56.198	2026-05-15 17:21:56.198	2026-05-15 17:21:56.208	\N	\N	\N	2026-03-10
2121	agxp415spk6qjua7l9x1wowt	CO-225-30930	hina shah	881	\N	2026-05-15 17:21:56.697	2026-05-15 17:21:56.697	\N	\N	\N	\N	2026-03-10
2122	agxp415spk6qjua7l9x1wowt	CO-225-30930	hina shah	881	\N	2026-05-15 17:21:56.697	2026-05-15 17:21:56.697	2026-05-15 17:21:56.709	\N	\N	\N	2026-03-10
2125	esgvvokbalpajr6gxe3xakue	CO-225-30932	shreya	2070	\N	2026-05-15 17:21:58.004	2026-05-15 17:21:58.004	\N	\N	\N	\N	2026-03-10
2126	esgvvokbalpajr6gxe3xakue	CO-225-30932	shreya	2070	\N	2026-05-15 17:21:58.004	2026-05-15 17:21:58.004	2026-05-15 17:21:58.019	\N	\N	\N	2026-03-10
2129	fc8bstl7nw2hilzs9mrelsnk	CO-225-30934	jp pandya	633	\N	2026-05-15 17:21:59.465	2026-05-15 17:21:59.465	\N	\N	\N	\N	2026-03-10
2130	fc8bstl7nw2hilzs9mrelsnk	CO-225-30934	jp pandya	633	\N	2026-05-15 17:21:59.465	2026-05-15 17:21:59.465	2026-05-15 17:21:59.474	\N	\N	\N	2026-03-10
2131	nuc9x6nsndzxkycstbsii5ag	CO-225-30935	ANU	1560	\N	2026-05-15 17:22:00.048	2026-05-15 17:22:00.048	\N	\N	\N	\N	2026-03-10
2132	nuc9x6nsndzxkycstbsii5ag	CO-225-30935	ANU	1560	\N	2026-05-15 17:22:00.048	2026-05-15 17:22:00.048	2026-05-15 17:22:00.056	\N	\N	\N	2026-03-10
2133	sz9vzru9xiqj68w883mpbgm2	CO-225-30936	NARESH	54	\N	2026-05-15 17:22:00.608	2026-05-15 17:22:00.608	\N	\N	\N	\N	2026-03-10
2134	sz9vzru9xiqj68w883mpbgm2	CO-225-30936	NARESH	54	\N	2026-05-15 17:22:00.608	2026-05-15 17:22:00.608	2026-05-15 17:22:00.618	\N	\N	\N	2026-03-10
2135	t85voj5und43za3ma455yl4j	CO-225-30937	SUJATA MAHETA	633	\N	2026-05-15 17:22:01.199	2026-05-15 17:22:01.199	\N	\N	\N	\N	2026-03-10
2136	t85voj5und43za3ma455yl4j	CO-225-30937	SUJATA MAHETA	633	\N	2026-05-15 17:22:01.199	2026-05-15 17:22:01.199	2026-05-15 17:22:01.206	\N	\N	\N	2026-03-10
2137	h7b0v5ee9x85mw15a9wbj8e2	CO-225-30938	AMIT LAB WIFE	2184	\N	2026-05-15 17:22:01.722	2026-05-15 17:22:01.722	\N	\N	\N	\N	2026-03-10
2138	h7b0v5ee9x85mw15a9wbj8e2	CO-225-30938	AMIT LAB WIFE	2184	\N	2026-05-15 17:22:01.722	2026-05-15 17:22:01.722	2026-05-15 17:22:01.735	\N	\N	\N	2026-03-10
2139	deydkfgt3sbu2wh5y9i9s4jy	CO-225-30939	hitesh	8598	\N	2026-05-15 17:22:02.435	2026-05-15 17:22:02.435	\N	\N	\N	\N	2026-03-10
2140	deydkfgt3sbu2wh5y9i9s4jy	CO-225-30939	hitesh	8598	\N	2026-05-15 17:22:02.435	2026-05-15 17:22:02.435	2026-05-15 17:22:02.445	\N	\N	\N	2026-03-10
2141	z857ydwm667votlxspcli09u	CO-225-30940	ananya	40	\N	2026-05-15 17:22:03.027	2026-05-15 17:22:03.027	\N	\N	\N	\N	2026-03-10
2142	z857ydwm667votlxspcli09u	CO-225-30940	ananya	40	\N	2026-05-15 17:22:03.027	2026-05-15 17:22:03.027	2026-05-15 17:22:03.034	\N	\N	\N	2026-03-10
2143	j9fqy0qrawm672jydkj4s8xs	CO-225-30941	dishank	10955	\N	2026-05-15 17:22:03.579	2026-05-15 17:22:03.579	\N	\N	\N	\N	2026-03-10
2144	j9fqy0qrawm672jydkj4s8xs	CO-225-30941	dishank	10955	\N	2026-05-15 17:22:03.579	2026-05-15 17:22:03.579	2026-05-15 17:22:03.587	\N	\N	\N	2026-03-10
2145	iv2k70msftwchcdjcyqzyull	CO-225-30942	LALIT	217	\N	2026-05-15 17:22:04.128	2026-05-15 17:22:04.128	\N	\N	\N	\N	2026-03-10
2146	iv2k70msftwchcdjcyqzyull	CO-225-30942	LALIT	217	\N	2026-05-15 17:22:04.128	2026-05-15 17:22:04.128	2026-05-15 17:22:04.135	\N	\N	\N	2026-03-10
2147	gt7nvpp1dh3rqk5eh6zbv6yp	CO-225-30943	VIDHI MAM	2746	\N	2026-05-15 17:22:04.618	2026-05-15 17:22:04.618	\N	\N	\N	\N	2026-03-10
2148	gt7nvpp1dh3rqk5eh6zbv6yp	CO-225-30943	VIDHI MAM	2746	\N	2026-05-15 17:22:04.618	2026-05-15 17:22:04.618	2026-05-15 17:22:04.628	\N	\N	\N	2026-03-10
2149	lr6ihpv0ryaf4hrk9ot76oyg	CO-225-30944	Yash wadhwani	2960	\N	2026-05-15 17:22:05.348	2026-05-15 17:22:05.348	\N	\N	\N	\N	2026-03-10
2150	lr6ihpv0ryaf4hrk9ot76oyg	CO-225-30944	Yash wadhwani	2960	\N	2026-05-15 17:22:05.348	2026-05-15 17:22:05.348	2026-05-15 17:22:05.357	\N	\N	\N	2026-03-10
2151	mcpcjtd9w0f2oztu2o6qwsy8	CO-225-30945	Hardik Parab lab	3128	\N	2026-05-15 17:22:05.904	2026-05-15 17:22:05.904	\N	\N	\N	\N	2026-03-10
2152	mcpcjtd9w0f2oztu2o6qwsy8	CO-225-30945	Hardik Parab lab	3128	\N	2026-05-15 17:22:05.904	2026-05-15 17:22:05.904	2026-05-15 17:22:05.913	\N	\N	\N	2026-03-10
2153	pnygohany0fp72oh7xnws680	CO-225-30946	rajan parikh	25200	\N	2026-05-15 17:22:06.463	2026-05-15 17:22:06.463	\N	\N	\N	\N	2026-03-10
2154	pnygohany0fp72oh7xnws680	CO-225-30946	rajan parikh	25200	\N	2026-05-15 17:22:06.463	2026-05-15 17:22:06.463	2026-05-15 17:22:06.474	\N	\N	\N	2026-03-10
2155	syf7fsg6vz4bvb2e2hp6q24b	CO-225-30947	prisha	357	\N	2026-05-15 17:22:07.095	2026-05-15 17:22:07.095	\N	\N	\N	\N	2026-03-10
2156	syf7fsg6vz4bvb2e2hp6q24b	CO-225-30947	prisha	357	\N	2026-05-15 17:22:07.095	2026-05-15 17:22:07.095	2026-05-15 17:22:07.105	\N	\N	\N	2026-03-10
2095	wrxcifjmt0csyb48y0oam612	CO-225-30917	MEGHNA SHUKLA	1782	\N	2026-05-15 17:21:48.933	2026-05-15 17:21:48.933	\N	\N	\N	\N	2026-03-10
2096	wrxcifjmt0csyb48y0oam612	CO-225-30917	MEGHNA SHUKLA	1782	\N	2026-05-15 17:21:48.933	2026-05-15 17:21:48.933	2026-05-15 17:21:48.942	\N	\N	\N	2026-03-10
2103	iipouq3bowpk9bugx883wfej	CO-225-30921	CHINTAN PATEL	1625	\N	2026-05-15 17:21:51.241	2026-05-15 17:21:51.241	\N	\N	\N	\N	2026-03-10
2104	iipouq3bowpk9bugx883wfej	CO-225-30921	CHINTAN PATEL	1625	\N	2026-05-15 17:21:51.241	2026-05-15 17:21:51.241	2026-05-15 17:21:51.251	\N	\N	\N	2026-03-10
2109	nmy5dih4w74pjibpfebegw0d	CO-225-30924	Mohit Sir advocate - Adani	2099	\N	2026-05-15 17:21:52.935	2026-05-15 17:21:52.935	\N	\N	\N	\N	2026-03-10
2110	nmy5dih4w74pjibpfebegw0d	CO-225-30924	Mohit Sir advocate - Adani	2099	\N	2026-05-15 17:21:52.935	2026-05-15 17:21:52.935	2026-05-15 17:21:52.945	\N	\N	\N	2026-03-10
2111	gswy4w6b82lmdhcpm6y5gr0k	CO-225-30925	NIRALI	1099	\N	2026-05-15 17:21:53.525	2026-05-15 17:21:53.525	\N	\N	\N	\N	2026-03-10
2112	gswy4w6b82lmdhcpm6y5gr0k	CO-225-30925	NIRALI	1099	\N	2026-05-15 17:21:53.525	2026-05-15 17:21:53.525	2026-05-15 17:21:53.546	\N	\N	\N	2026-03-10
2113	pfp0w44uypv10m958worb662	CO-225-30926	GOPI	2270	\N	2026-05-15 17:21:54.445	2026-05-15 17:21:54.445	\N	\N	\N	\N	2026-03-10
2114	pfp0w44uypv10m958worb662	CO-225-30926	GOPI	2270	\N	2026-05-15 17:21:54.445	2026-05-15 17:21:54.445	2026-05-15 17:21:54.456	\N	\N	\N	2026-03-10
2115	cwy4kazljipgcoitij0dcg84	CO-225-30927	harsh	395	\N	2026-05-15 17:21:55.072	2026-05-15 17:21:55.072	\N	\N	\N	\N	2026-03-10
2116	cwy4kazljipgcoitij0dcg84	CO-225-30927	harsh	395	\N	2026-05-15 17:21:55.072	2026-05-15 17:21:55.072	2026-05-15 17:21:55.081	\N	\N	\N	2026-03-10
2117	jowr2c73sqh1nc49af9qnpos	CO-225-30928	MOKASH	109	\N	2026-05-15 17:21:55.639	2026-05-15 17:21:55.639	\N	\N	\N	\N	2026-03-10
2118	jowr2c73sqh1nc49af9qnpos	CO-225-30928	MOKASH	109	\N	2026-05-15 17:21:55.639	2026-05-15 17:21:55.639	2026-05-15 17:21:55.647	\N	\N	\N	2026-03-10
2123	ategxz6jjhq20v91wu5sp7vy	CO-225-30931	bina	92	\N	2026-05-15 17:21:57.412	2026-05-15 17:21:57.412	\N	\N	\N	\N	2026-03-10
2124	ategxz6jjhq20v91wu5sp7vy	CO-225-30931	bina	92	\N	2026-05-15 17:21:57.412	2026-05-15 17:21:57.412	2026-05-15 17:21:57.423	\N	\N	\N	2026-03-10
2127	akg5jsk6004kn6pvatczlwxw	CO-225-30933	REEMA	1507	\N	2026-05-15 17:21:58.815	2026-05-15 17:21:58.815	\N	\N	\N	\N	2026-03-10
2128	akg5jsk6004kn6pvatczlwxw	CO-225-30933	REEMA	1507	\N	2026-05-15 17:21:58.815	2026-05-15 17:21:58.815	2026-05-15 17:21:58.825	\N	\N	\N	2026-03-10
2157	a5tnfafvj4kixzu5yldel1x1	CO-225-30948	JYOTI	3634	\N	2026-05-15 17:22:07.662	2026-05-15 17:22:07.662	\N	\N	\N	\N	2026-03-10
2158	a5tnfafvj4kixzu5yldel1x1	CO-225-30948	JYOTI	3634	\N	2026-05-15 17:22:07.662	2026-05-15 17:22:07.662	2026-05-15 17:22:07.672	\N	\N	\N	2026-03-10
2159	py8unetjj6pqkn3n3709sok9	CO-225-30949	hirdesh yadav	353	\N	2026-05-15 17:22:08.204	2026-05-15 17:22:08.204	\N	\N	\N	\N	2026-03-10
2160	py8unetjj6pqkn3n3709sok9	CO-225-30949	hirdesh yadav	353	\N	2026-05-15 17:22:08.204	2026-05-15 17:22:08.204	2026-05-15 17:22:08.211	\N	\N	\N	2026-03-10
\.


--
-- Data for Name: follow_up_lists_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_customer_lnk (id, follow_up_list_id, customer_id, follow_up_list_ord) FROM stdin;
2643	1673	2527	1
2954	1877	2823	1
2645	1674	2529	1
2646	1675	2530	1
3255	2070	3095	1
2648	1676	2532	1
2649	1677	2533	1
2959	1880	2828	1
2651	1678	2535	1
2652	1679	2536	1
2960	1881	2829	1
3265	2076	3102	1
2655	1681	2539	1
3266	2077	3103	1
2658	1683	2542	1
3268	2078	3105	1
2660	1684	2544	1
2661	1685	2545	1
3271	2080	3108	1
3272	2081	3109	1
2664	1687	2548	1
2666	1688	2550	1
2667	1689	2551	1
3277	2084	3114	1
2669	1690	2553	1
2670	1691	2554	1
2672	1692	2556	1
2673	1693	2557	1
2675	1694	2559	1
2676	1695	2560	1
2679	1697	2563	1
2681	1698	2565	1
2682	1699	2566	1
2684	1700	2568	1
2685	1701	2569	1
2687	1702	2571	1
2688	1703	2572	1
2690	1704	2574	1
2691	1705	2575	1
2694	1707	2578	1
2696	1708	2580	1
2697	1709	2581	1
2699	1710	2583	1
2700	1711	2584	1
2702	1712	2586	1
2703	1713	2587	1
2705	1714	2589	1
2706	1715	2590	1
2708	1716	2592	1
2709	1717	2593	1
2711	1718	2595	1
2712	1719	2596	1
2714	1720	2598	1
2715	1721	2599	1
2717	1722	2601	1
2718	1723	2602	1
2720	1724	2604	1
2721	1725	2605	1
2723	1726	2607	1
2724	1727	2608	1
2726	1728	2610	1
2727	1729	2611	1
2729	1730	2613	1
2730	1731	2614	1
2732	1732	2616	1
2733	1733	2617	1
2735	1734	2619	1
2736	1735	2620	1
2738	1736	2622	1
2739	1737	2623	1
2741	1738	2625	1
2742	1739	2626	1
2744	1740	2628	1
2745	1741	2629	1
2747	1742	2631	1
2748	1743	2632	1
2750	1744	2634	1
2751	1745	2635	1
2754	1747	2638	1
2756	1748	2640	1
2757	1749	2641	1
2760	1751	2644	1
2762	1752	2646	1
2763	1753	2647	1
2765	1754	2649	1
2766	1755	2650	1
2768	1756	2652	1
2769	1757	2653	1
2771	1758	2655	1
2772	1759	2656	1
2774	1760	2658	1
2775	1761	2659	1
2778	1763	2662	1
2780	1764	2664	1
2781	1765	2665	1
2783	1766	2667	1
2784	1767	2668	1
2786	1768	2670	1
2787	1769	2671	1
2790	1771	2674	1
2792	1772	2676	1
2793	1773	2677	1
2796	1775	2680	1
2798	1776	2682	1
2799	1777	2683	1
2801	1778	2685	1
2802	1779	2659	2
2804	1762	2686	1
2805	1780	2686	2
2806	1781	2687	1
2808	1782	2689	1
2809	1783	2536	2
2811	1680	2690	1
2812	1784	2690	2
2813	1785	2691	1
2815	1786	2693	1
2816	1787	2694	1
2818	1788	2696	1
2819	1789	2697	1
2821	1790	2699	1
2822	1791	2700	1
2825	1793	2703	1
2827	1794	2705	1
2828	1795	2706	1
2830	1796	2708	1
2831	1797	2709	1
2833	1798	2711	1
2834	1799	2712	1
2837	1801	2715	1
2839	1802	2717	1
2840	1803	2718	1
2843	1805	2721	1
2845	1806	2723	1
2846	1807	2724	1
2848	1808	2726	1
2849	1809	2727	1
2851	1810	2729	1
2852	1811	2730	1
2854	1812	2732	1
2855	1813	2733	1
2857	1814	2735	1
2858	1815	2736	1
2860	1816	2738	1
2861	1817	2739	1
2863	1818	2741	1
2864	1819	2742	1
2866	1820	2744	1
2867	1821	2745	1
2869	1822	2747	1
2870	1823	2748	1
2956	1878	2825	1
2900	1842	2775	1
2901	1843	2776	1
2957	1879	2826	1
2916	1853	2545	2
3256	2071	2641	2
2918	1686	2791	1
2919	1854	2791	2
2920	1855	2792	1
3034	1928	2894	1
2922	1856	2794	1
2923	1857	2795	1
3035	1929	2895	1
2925	1858	2797	1
2926	1859	2798	1
2928	1860	2800	1
2929	1861	2801	1
3040	1932	2900	1
2931	1862	2803	1
2932	1863	2804	1
3041	1933	2901	1
2934	1864	2806	1
2935	1865	2807	1
3258	1750	3096	1
2937	1866	2809	1
2938	1867	2810	1
3043	1934	2903	1
2940	1868	2812	1
2941	1869	2813	1
3044	1935	2904	1
2943	1870	2815	1
2944	1871	2816	1
3259	2072	3096	2
3049	1938	2909	1
3050	1939	2910	1
3260	2073	3097	1
3055	1942	2915	1
3056	1943	2916	1
3061	1946	2921	1
3062	1947	2922	1
3262	2074	3099	1
3067	1950	2927	1
3068	1951	2928	1
3263	2075	3100	1
3073	1954	2933	1
3074	1955	2934	1
3079	1958	2939	1
3080	1959	2940	1
3269	2079	3106	1
3085	1962	2945	1
3086	1963	2946	1
3094	1968	2954	1
3095	1969	2955	1
3274	2082	3111	1
3098	1971	2718	2
3275	2083	3112	1
3100	1804	2958	1
3101	1972	2958	2
3108	1976	2962	1
3109	1977	2963	1
3114	1980	2968	1
3115	1981	2969	1
3278	2085	2539	3
3120	1984	2974	1
3121	1985	2975	1
3201	2034	3041	1
3202	2035	3042	1
3280	1682	3115	1
3210	2040	3050	1
3211	2041	3051	1
3281	1876	3115	2
3216	2044	3056	1
3217	2045	3057	1
3282	2086	3115	3
3222	2048	3062	1
3223	2049	3063	1
3283	2087	3116	1
3243	2062	3083	1
3244	2063	3084	1
3249	2066	3089	1
3250	2067	3090	1
3288	2090	3121	1
3252	2068	3092	1
3253	2069	3093	1
3289	2091	3122	1
3331	2118	3161	1
3332	2119	3162	1
3335	2121	2575	2
3341	2124	3168	1
3342	2125	3169	1
3347	2128	3174	1
3348	2129	3175	1
3353	2132	3180	1
3354	2133	3181	1
3359	2136	3186	1
3366	2140	3190	1
3367	2141	3191	1
3372	2144	3196	1
3373	2145	3197	1
3376	2147	3001	2
3378	2006	3200	1
3379	2148	3200	2
3380	2149	3201	1
3388	2154	3209	1
3389	2155	3210	1
3397	2160	3218	1
2872	1824	2750	1
2897	1840	2772	1
2898	1841	2773	1
3285	2088	3118	1
2903	1844	2778	1
2904	1845	2779	1
2965	1884	2834	1
2906	1846	2781	1
2907	1847	2782	1
2966	1885	2835	1
2909	1848	2784	1
2910	1849	2785	1
3286	2089	3119	1
2912	1850	2787	1
2913	1851	2788	1
2968	1886	2837	1
2915	1852	2790	1
2946	1872	2818	1
2947	1873	2819	1
2969	1887	2838	1
2950	1875	2539	2
2974	1890	2843	1
2975	1891	2844	1
3294	2094	3127	1
2980	1894	2849	1
2981	1895	2850	1
3295	2095	3128	1
2983	1896	2852	1
2984	1897	2853	1
2987	1899	2700	2
2996	1904	2862	1
2997	1905	2863	1
3307	2102	3137	1
3000	1907	2671	2
3308	2103	3138	1
3316	2108	3146	1
3004	1909	2867	1
3317	2109	3147	1
3009	1912	2872	1
3010	1913	2873	1
3015	1916	2878	1
3016	1917	2879	1
3319	2110	3149	1
3021	1920	2884	1
3028	1924	2888	1
3029	1925	2889	1
3320	2111	3150	1
3124	1987	2712	3
3126	1800	2978	1
3127	1974	2978	2
3128	1988	2978	3
3129	1989	2979	1
3322	2112	3152	1
3132	1991	2671	3
3323	2113	3153	1
3139	1994	2985	1
3140	1995	2986	1
3145	1998	2991	1
3146	1999	2992	1
3325	2114	3155	1
3151	2002	2997	1
3152	2003	2998	1
3326	2115	3156	1
3158	2007	3004	1
3161	2009	2635	2
3328	2116	3158	1
3167	2012	3010	1
3168	2013	3011	1
3329	2117	3159	1
3174	2017	2677	2
3176	1774	3017	1
3177	2018	3017	2
3178	2019	3018	1
3334	2120	3164	1
3183	2022	3023	1
3184	2023	3024	1
3337	1706	3165	1
3189	2026	3029	1
3190	2027	3030	1
3338	2122	3165	2
3195	2030	3035	1
3196	2031	3036	1
3339	2123	3166	1
3219	2046	3059	1
3220	2047	3060	1
3225	2050	3065	1
3226	2051	3066	1
3344	2126	3171	1
3228	2052	3068	1
3229	2053	3069	1
3345	2127	3172	1
3231	2054	3071	1
3232	2055	3072	1
3234	2056	3074	1
3235	2057	3075	1
3391	2156	3212	1
3237	2058	3077	1
3238	2059	3078	1
3392	2157	3213	1
3240	2060	3080	1
3241	2061	3081	1
3246	2064	3086	1
3247	2065	3087	1
3394	2158	3215	1
3395	2159	3216	1
2873	1825	2560	2
2962	1882	2831	1
2875	1696	2751	1
2876	1826	2751	2
2877	1827	2752	1
2963	1883	2832	1
2879	1828	2754	1
2880	1829	2755	1
3291	2092	3124	1
3292	2093	3125	1
2883	1831	2758	1
2971	1888	2840	1
2885	1832	2760	1
2886	1833	2761	1
2972	1889	2841	1
2888	1834	2763	1
2889	1835	2764	1
2891	1836	2766	1
2892	1837	2767	1
2977	1892	2846	1
2894	1838	2769	1
2895	1839	2770	1
2978	1893	2847	1
3297	2096	3130	1
2986	1898	2855	1
2989	1792	2856	1
2990	1900	2856	2
2991	1901	2857	1
3298	2097	3131	1
2993	1902	2859	1
2994	1903	2860	1
2999	1906	2865	1
3006	1910	2869	1
3007	1911	2870	1
3301	2099	3131	2
3012	1914	2875	1
3013	1915	2876	1
3018	1918	2881	1
3019	1919	2882	1
3303	2098	3134	1
3022	1921	2755	2
3304	2100	3134	2
3024	1830	2885	1
3025	1922	2885	2
3026	1923	2886	1
3305	2101	3135	1
3031	1926	2891	1
3032	1927	2892	1
3037	1930	2897	1
3038	1931	2898	1
3310	2104	3140	1
3046	1936	2906	1
3047	1937	2907	1
3311	2105	3141	1
3052	1940	2912	1
3053	1941	2913	1
3058	1944	2918	1
3059	1945	2919	1
3313	2106	3143	1
3064	1948	2924	1
3065	1949	2925	1
3314	2107	3144	1
3070	1952	2930	1
3071	1953	2931	1
3076	1956	2936	1
3077	1957	2937	1
3350	2130	3177	1
3082	1960	2942	1
3083	1961	2943	1
3351	2131	3178	1
3088	1964	2948	1
3089	1965	2949	1
3091	1966	2951	1
3092	1967	2952	1
3356	2134	3183	1
3097	1970	2957	1
3102	1973	2712	2
3357	2135	3184	1
3360	2137	2819	2
3106	1975	2960	1
3111	1978	2965	1
3112	1979	2966	1
3362	1874	3187	1
3117	1982	2971	1
3118	1983	2972	1
3363	2138	3187	2
3123	1986	2977	1
3131	1990	2981	1
3134	1770	2982	1
3135	1908	2982	2
3136	1992	2982	3
3137	1993	2983	1
3364	2139	3188	1
3142	1996	2988	1
3143	1997	2989	1
3148	2000	2994	1
3149	2001	2995	1
3369	2142	3193	1
3154	2004	3000	1
3155	2005	3001	1
3370	2143	3194	1
3160	2008	3006	1
3163	1746	3007	1
3164	2010	3007	2
3165	2011	3008	1
3170	2014	3013	1
3171	2015	3014	1
3375	2146	3199	1
3173	2016	3016	1
3180	2020	3020	1
3181	2021	3021	1
3382	2150	3203	1
3186	2024	3026	1
3187	2025	3027	1
3383	2151	3204	1
3192	2028	3032	1
3193	2029	3033	1
3198	2032	3038	1
3199	2033	3039	1
3385	2152	3206	1
3204	2036	3044	1
3205	2037	3045	1
3386	2153	3207	1
3207	2038	3047	1
3208	2039	3048	1
3213	2042	3053	1
3214	2043	3054	1
\.


--
-- Data for Name: follow_up_lists_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_store_lnk (id, follow_up_list_id, store_id) FROM stdin;
1673	1673	9
1674	1674	10
1675	1675	9
1676	1676	10
1677	1677	9
1678	1678	10
1679	1679	9
1680	1680	10
1681	1681	9
1682	1682	10
1683	1683	9
1684	1684	10
1685	1685	9
1686	1686	10
1687	1687	9
1688	1688	10
1689	1689	9
1690	1690	10
1691	1691	9
1692	1692	10
1693	1693	9
1694	1694	10
1695	1695	9
1696	1696	10
1697	1697	9
1698	1698	10
1699	1699	9
1700	1700	10
1701	1701	9
1702	1702	10
1703	1703	9
1704	1704	10
1705	1705	9
1706	1706	10
1707	1707	9
1708	1708	10
1709	1709	9
1710	1710	10
1711	1711	9
1712	1712	10
1713	1713	9
1714	1714	10
1715	1715	9
1716	1716	10
1717	1717	9
1718	1718	10
1719	1719	9
1720	1720	10
1721	1721	9
1722	1722	10
1723	1723	9
1724	1724	10
1725	1725	9
1726	1726	10
1727	1727	9
1728	1728	10
1729	1729	9
1730	1730	10
1731	1731	9
1732	1732	10
1733	1733	9
1734	1734	10
1735	1735	9
1736	1736	10
1737	1737	9
1738	1738	10
1739	1739	9
1740	1740	10
1741	1741	9
1742	1742	10
1743	1743	9
1744	1744	10
1745	1745	9
1746	1746	10
1747	1747	9
1748	1748	10
1749	1749	9
1750	1750	10
1751	1751	9
1752	1752	10
1753	1753	9
1754	1754	10
1755	1755	9
1756	1756	10
1757	1757	9
1758	1758	10
1759	1759	9
1760	1760	10
1761	1761	9
1762	1762	10
1763	1763	9
1764	1764	10
1765	1765	9
1766	1766	10
1767	1767	9
1768	1768	10
1769	1769	9
1770	1770	10
1771	1771	9
1772	1772	10
1773	1773	9
1774	1774	10
1775	1775	9
1776	1776	10
1777	1777	9
1778	1778	10
1779	1779	9
1780	1780	10
1781	1781	9
1782	1782	10
1783	1783	9
1784	1784	10
1785	1785	9
1786	1786	10
1787	1787	9
1788	1788	10
1789	1789	9
1790	1790	10
1791	1791	9
1792	1792	10
1793	1793	9
1794	1794	10
1795	1795	9
1796	1796	10
1797	1797	9
1798	1798	10
1799	1799	9
1800	1800	10
1801	1801	9
1802	1802	10
1803	1803	9
1804	1804	10
1805	1805	9
1806	1806	10
1807	1807	9
1808	1808	10
1809	1809	9
1810	1810	10
1811	1811	9
1812	1812	10
1813	1813	9
1814	1814	10
1815	1815	9
1816	1816	10
1817	1817	9
1818	1818	10
1819	1819	9
1820	1820	10
1821	1821	9
1822	1822	10
1823	1823	9
1824	1824	10
1825	1825	9
1826	1826	10
1827	1827	9
1828	1828	10
1829	1829	9
1830	1830	10
1831	1831	9
1832	1832	10
1833	1833	9
1834	1834	10
1835	1835	9
1836	1836	10
1837	1837	9
1838	1838	10
1839	1839	9
1840	1840	10
1841	1841	9
1842	1842	10
1843	1843	9
1844	1844	10
1845	1845	9
1846	1846	10
1847	1847	9
1848	1848	10
1849	1849	9
1850	1850	10
1851	1851	9
1852	1852	10
1853	1853	9
1854	1854	10
1855	1855	9
1856	1856	10
1857	1857	9
1858	1858	10
1859	1859	9
1860	1860	10
1861	1861	9
1862	1862	10
1863	1863	9
1864	1864	10
1865	1865	9
1866	1866	10
1867	1867	9
1868	1868	10
1869	1869	9
1870	1870	10
1871	1871	9
1872	1872	10
1873	1873	9
1874	1874	10
1875	1875	9
1876	1876	10
1877	1877	9
1878	1878	10
1879	1879	9
1880	1880	10
1881	1881	9
1882	1882	10
1883	1883	9
1884	1884	10
1885	1885	9
1886	1886	10
1887	1887	9
1888	1888	10
1889	1889	9
1890	1890	10
1891	1891	9
1892	1892	10
1893	1893	9
1894	1894	10
1895	1895	9
1896	1896	10
1897	1897	9
1898	1898	10
1899	1899	9
1900	1900	10
1901	1901	9
1902	1902	10
1903	1903	9
1904	1904	10
1905	1905	9
1906	1906	10
1907	1907	9
1908	1908	10
1909	1909	9
1910	1910	10
1911	1911	9
1912	1912	10
1913	1913	9
1914	1914	10
1915	1915	9
1916	1916	10
1917	1917	9
1918	1918	10
1919	1919	9
1920	1920	10
1921	1921	9
1922	1922	10
1923	1923	9
1924	1924	10
1925	1925	9
1926	1926	10
1927	1927	9
1928	1928	10
1929	1929	9
1930	1930	10
1931	1931	9
1932	1932	10
1933	1933	9
1934	1934	10
1935	1935	9
1936	1936	10
1937	1937	9
1938	1938	10
1939	1939	9
1940	1940	10
1941	1941	9
1942	1942	10
1943	1943	9
1944	1944	10
1945	1945	9
1946	1946	10
1947	1947	9
1948	1948	10
1949	1949	9
1950	1950	10
1951	1951	9
1952	1952	10
1953	1953	9
1954	1954	10
1955	1955	9
1956	1956	10
1957	1957	9
1958	1958	10
1959	1959	9
1960	1960	10
1961	1961	9
1962	1962	10
1963	1963	9
1964	1964	10
1965	1965	9
1966	1966	10
1967	1967	9
1968	1968	10
1969	1969	9
1970	1970	10
1971	1971	9
1972	1972	10
1973	1973	9
1974	1974	10
1975	1975	9
1976	1976	10
1977	1977	9
1978	1978	10
1979	1979	9
1980	1980	10
1981	1981	9
1982	1982	10
1983	1983	9
1984	1984	10
1985	1985	9
1986	1986	10
1987	1987	9
1988	1988	10
1989	1989	9
1990	1990	10
1991	1991	9
1992	1992	10
1993	1993	9
1994	1994	10
1995	1995	9
1996	1996	10
1997	1997	9
1998	1998	10
1999	1999	9
2000	2000	10
2001	2001	9
2002	2002	10
2003	2003	9
2004	2004	10
2005	2005	9
2006	2006	10
2007	2007	9
2008	2008	10
2009	2009	9
2010	2010	10
2011	2011	9
2012	2012	10
2013	2013	9
2014	2014	10
2015	2015	9
2016	2016	10
2017	2017	9
2018	2018	10
2019	2019	9
2020	2020	10
2021	2021	9
2022	2022	10
2023	2023	9
2024	2024	10
2025	2025	9
2026	2026	10
2027	2027	9
2028	2028	10
2029	2029	9
2030	2030	10
2031	2031	9
2032	2032	10
2033	2033	9
2034	2034	10
2035	2035	9
2036	2036	10
2037	2037	9
2038	2038	10
2039	2039	9
2040	2040	10
2041	2041	9
2042	2042	10
2043	2043	9
2044	2044	10
2045	2045	9
2046	2046	10
2047	2047	9
2048	2048	10
2049	2049	9
2050	2050	10
2051	2051	9
2052	2052	10
2053	2053	9
2054	2054	10
2055	2055	9
2056	2056	10
2057	2057	9
2058	2058	10
2059	2059	9
2060	2060	10
2061	2061	9
2062	2062	10
2065	2065	9
2066	2066	10
2063	2063	9
2064	2064	10
2067	2067	9
2068	2068	10
2069	2069	9
2070	2070	10
2071	2071	9
2072	2072	10
2073	2073	9
2074	2074	10
2075	2075	9
2076	2076	10
2077	2077	9
2078	2078	10
2079	2079	9
2080	2080	10
2081	2081	9
2082	2082	10
2083	2083	9
2084	2084	10
2085	2085	9
2086	2086	10
2087	2087	9
2088	2088	10
2089	2089	9
2090	2090	10
2091	2091	9
2092	2092	10
2093	2093	9
2094	2094	10
2095	2095	9
2096	2096	10
2097	2097	9
2098	2098	10
2099	2099	9
2100	2100	10
2101	2101	9
2102	2102	10
2103	2103	9
2104	2104	10
2105	2105	9
2106	2106	10
2107	2107	9
2108	2108	10
2109	2109	9
2110	2110	10
2111	2111	9
2112	2112	10
2113	2113	9
2114	2114	10
2115	2115	9
2116	2116	10
2117	2117	9
2118	2118	10
2119	2119	9
2120	2120	10
2121	2121	9
2122	2122	10
2123	2123	9
2124	2124	10
2125	2125	9
2126	2126	10
2127	2127	9
2128	2128	10
2129	2129	9
2130	2130	10
2131	2131	9
2132	2132	10
2133	2133	9
2134	2134	10
2135	2135	9
2136	2136	10
2137	2137	9
2138	2138	10
2139	2139	9
2140	2140	10
2141	2141	9
2142	2142	10
2143	2143	9
2144	2144	10
2145	2145	9
2146	2146	10
2147	2147	9
2148	2148	10
2149	2149	9
2150	2150	10
2151	2151	9
2152	2152	10
2153	2153	9
2154	2154	10
2155	2155	9
2156	2156	10
2157	2157	9
2158	2158	10
2159	2159	9
2160	2160	10
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
104	bnbbgja7p4c6dc4w9llr0okf	api::follow-status.follow-status.find	2026-05-15 13:40:05.4	2026-05-15 13:40:05.4	2026-05-15 13:40:05.401	\N	\N	\N
106	aybbsdpu5tt2ac1dmh1bnip8	api::follow-status.follow-status.create	2026-05-15 13:40:05.4	2026-05-15 13:40:05.4	2026-05-15 13:40:05.402	\N	\N	\N
107	g9asi3y618akgr0zc51r6r8s	api::follow-status.follow-status.update	2026-05-15 13:40:05.4	2026-05-15 13:40:05.4	2026-05-15 13:40:05.402	\N	\N	\N
108	v361lvqlg90sn772aah8lmnz	api::follow-status.follow-status.delete	2026-05-15 13:40:05.4	2026-05-15 13:40:05.4	2026-05-15 13:40:05.403	\N	\N	\N
105	nwhf60984ry7w8cdea2fmiqa	api::follow-status.follow-status.findOne	2026-05-15 13:40:05.4	2026-05-15 13:40:05.4	2026-05-15 13:40:05.401	\N	\N	\N
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
104	106	3	30
105	104	3	31
106	107	3	32
107	108	3	33
108	105	3	33
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vexl7tsbxhbul6wcsgzihz77	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	270697f0b8070b6e11c1e5fb510f6045e28a055244bf286aa4c63883fe54592ad2eb29e7fb0f6dd2af9b3bbbccfdfc1e734d4c1cc429171d9ebae68fa6ea3013	v1:04175fd068048820ee72f3b4fa1d990d:128984bf1494fa13705ed9395f4bf184d42a6f9d3531cedf43b60c678eb88820bcf8f820b284dbaa837831bad75402b9d6a16e83af0a8a44bdad480b9e5e0e3731732113f0f49bcee6bb8abd660a85e8687e2bddfa7df784f8d2c015a9e67217673034bd77890e8c113cb3029b3dcf65c9c38c4dbd3b10c22c9396c23d1d5d975507c2d913cce960a3fcc6551153628a7d5231aeaead7638651f0dfdac1fbd861ddecd39ef3703597192c8426bc1fe06beac24bd01fbace953f134a4295821573b02671060ab7d0cf7ada87fe8a5b0e3018830aad00d5cd95fd19264cf37ca114e5e268fd33aed1678f7d9ee12ac7f7dccc1b5fe507c9cf24e2c7c205c0c5ea6:513843890c18bfe3fdd762398de5c8af	\N	\N	\N	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	\N	\N	\N
2	du8k956jtmflnwkimdxp1neb	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	ca1091a8da7c9f4c65f3566a2690aba1356fe0beefedd03e86c5dfcc4fd41abd8c291c25c56c015ad47eeb0c249601982ed0622e6d41767e5a47dfaa359c26b5	v1:1a587af3b902fdb323167a10b08ad1e5:46cd52581cf2f50fe659afb82aa1362f9946815460cc8ef8baaf035ebda5ffd218c6658b587b49b3068a274fcf22a7be426e00fb76ac1c0c059b0a8ee88e5c71109ed5e60ea2f2e63a2096dda1bed483c17efcde04da5767de7746603f678d9bfe4575f410a83a7bfa27679d4b2a2c2aa3cbb8b2ca09a289b21aa9bd9869a2fb915fbccb0a74757d2bf1e4bc7c944ecdafe7d1161f168d3c2b76dd55d6c9bc2764c2aa3097468e2549485ca5d5907b9ce51c322cd8ae1e783066669b60032b464a4f68ef14b447375ded05aa74a728ecc1c8f377448d9aefb3bd05a570f110f6c171fd12c2f36e75067c639d98e701dccc0db072760017cca7b0a2ef68db3bc1:8f66226084b82464cefd1b852bcabc95	\N	\N	\N	2026-02-22 10:52:18.938	2026-02-22 10:52:18.938	2026-02-22 10:52:18.939	\N	\N	\N
3	hu4w0irlefv6ywk5i7xihs7l	pet-shop		custom	033008267c902af428d843ca64bd8e9af1cdf9c4e6febfef67995c6cc02d31acc7542cf9126a9fac6b4d803318ac2a2659e5a5cc9a1c7c76015e8b23b53dccdb	v1:8ea1075f905b281fc5ab1062e17ec737:b8451661e386ce1adce54edf07bd0c2847192fdb6f5ff19e656f32b6f0093b2213c5cd12a00a0f7f8a5fc6cd5ea534311c681c5df45cf20dd27dd2384e398a7e77eea4a673ae44b45a1c8433c02172e7c44d4b496f57c9d1781296814312d8b7fe3da4e556c61a6f8637904d3c446ac8cd0f067d2e2aa9a1d9056d835e703bd15581678b74adb7a974806a437b2171cf3f66c79c41138d7df8be5aeb50d95c06c13cea27b460ee474278391010833386402167294bbe43ed3933ec1ca00ab22481ce2af0f7ee006de27bc0ab9cbdbc19ff1bda31e9abc1461f8653bf9c33a24753f8372c06cc22f0b55d91bc5a8213ae096972adec0878d47bfaa2a777a25772:4754e4f317be3869558e3ddbab552d06	2026-05-15 16:57:37.929	\N	\N	2026-02-22 11:10:29.251	2026-05-15 16:57:37.93	2026-02-22 11:10:29.251	\N	\N	\N
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
3	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::area.area":{"kind":"collectionType","collectionName":"areas","info":{"singularName":"area","pluralName":"areas","displayName":"area"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"city":{"type":"relation","relation":"oneToOne","target":"api::city.city"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::area.area","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"areas"}}},"apiName":"area","globalId":"Area","uid":"api::area.area","modelType":"contentType","__schema__":{"collectionName":"areas","info":{"singularName":"area","pluralName":"areas","displayName":"area"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"city":{"type":"relation","relation":"oneToOne","target":"api::city.city"}},"kind":"collectionType"},"modelName":"area","actions":{},"lifecycles":{}},"api::breed.breed":{"kind":"collectionType","collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::breed.breed","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"breeds"}}},"apiName":"breed","globalId":"Breed","uid":"api::breed.breed","modelType":"contentType","__schema__":{"collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"breed","actions":{},"lifecycles":{}},"api::city.city":{"kind":"collectionType","collectionName":"cities","info":{"singularName":"city","pluralName":"cities","displayName":"city"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::city.city","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"cities"}}},"apiName":"city","globalId":"City","uid":"api::city.city","modelType":"contentType","__schema__":{"collectionName":"cities","info":{"singularName":"city","pluralName":"cities","displayName":"city"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"city","actions":{},"lifecycles":{}},"api::customer.customer":{"kind":"collectionType","collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customer.customer","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customers"}}},"apiName":"customer","globalId":"Customer","uid":"api::customer.customer","modelType":"contentType","__schema__":{"collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"}},"kind":"collectionType"},"modelName":"customer","actions":{},"lifecycles":{}},"api::customet-follow-up.customet-follow-up":{"kind":"collectionType","collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"follow_status":{"type":"relation","relation":"oneToOne","target":"api::follow-status.follow-status"},"shopping_category":{"type":"relation","relation":"oneToOne","target":"api::shopping-category.shopping-category"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-follow-up.customet-follow-up","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_follow_ups"}}},"apiName":"customet-follow-up","globalId":"CustometFollowUp","uid":"api::customet-follow-up.customet-follow-up","modelType":"contentType","__schema__":{"collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"follow_status":{"type":"relation","relation":"oneToOne","target":"api::follow-status.follow-status"},"shopping_category":{"type":"relation","relation":"oneToOne","target":"api::shopping-category.shopping-category"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"}},"kind":"collectionType"},"modelName":"customet-follow-up","actions":{},"lifecycles":{}},"api::customet-status.customet-status":{"kind":"collectionType","collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-status.customet-status","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_statuses"}}},"apiName":"customet-status","globalId":"CustometStatus","uid":"api::customet-status.customet-status","modelType":"contentType","__schema__":{"collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"}},"kind":"collectionType"},"modelName":"customet-status","actions":{},"lifecycles":{}},"api::follow-status.follow-status":{"kind":"collectionType","collectionName":"follow_statuses","info":{"singularName":"follow-status","pluralName":"follow-statuses","displayName":"followStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::follow-status.follow-status","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"follow_statuses"}}},"apiName":"follow-status","globalId":"FollowStatus","uid":"api::follow-status.follow-status","modelType":"contentType","__schema__":{"collectionName":"follow_statuses","info":{"singularName":"follow-status","pluralName":"follow-statuses","displayName":"followStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"}},"kind":"collectionType"},"modelName":"follow-status","actions":{},"lifecycles":{}},"api::follow-up-list.follow-up-list":{"kind":"collectionType","collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"follow_up_lists"}}},"apiName":"follow-up-list","globalId":"FollowUpList","uid":"api::follow-up-list.follow-up-list","modelType":"contentType","__schema__":{"collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"}},"kind":"collectionType"},"modelName":"follow-up-list","actions":{},"lifecycles":{}},"api::general-diary.general-diary":{"kind":"collectionType","collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::general-diary.general-diary","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"general_diaries"}}},"apiName":"general-diary","globalId":"GeneralDiary","uid":"api::general-diary.general-diary","modelType":"contentType","__schema__":{"collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"}},"kind":"collectionType"},"modelName":"general-diary","actions":{},"lifecycles":{}},"api::pet.pet":{"kind":"collectionType","collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","default":"Male","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pets"}}},"apiName":"pet","globalId":"Pet","uid":"api::pet.pet","modelType":"contentType","__schema__":{"collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","default":"Male","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"}},"kind":"collectionType"},"modelName":"pet","actions":{},"lifecycles":{}},"api::pet-type.pet-type":{"kind":"collectionType","collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet-type.pet-type","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pet_types"}}},"apiName":"pet-type","globalId":"PetType","uid":"api::pet-type.pet-type","modelType":"contentType","__schema__":{"collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"pet-type","actions":{},"lifecycles":{}},"api::shopping-category.shopping-category":{"kind":"collectionType","collectionName":"shopping_categories","info":{"singularName":"shopping-category","pluralName":"shopping-categories","displayName":"shoppingCategory"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"textColor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::shopping-category.shopping-category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"shopping_categories"}}},"apiName":"shopping-category","globalId":"ShoppingCategory","uid":"api::shopping-category.shopping-category","modelType":"contentType","__schema__":{"collectionName":"shopping_categories","info":{"singularName":"shopping-category","pluralName":"shopping-categories","displayName":"shoppingCategory"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"textColor":{"type":"string"}},"kind":"collectionType"},"modelName":"shopping-category","actions":{},"lifecycles":{}},"api::staff.staff":{"kind":"collectionType","collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::staff.staff","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"staffs"}}},"apiName":"staff","globalId":"Staff","uid":"api::staff.staff","modelType":"contentType","__schema__":{"collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"}},"kind":"collectionType"},"modelName":"staff","actions":{},"lifecycles":{}},"api::store.store":{"kind":"collectionType","collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::store.store","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stores"}}},"apiName":"store","globalId":"Store","uid":"api::store.store","modelType":"contentType","__schema__":{"collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"}},"kind":"collectionType"},"modelName":"store","actions":{},"lifecycles":{}},"api::working-hr.working-hr":{"kind":"singleType","collectionName":"working_hrs","info":{"singularName":"working-hr","pluralName":"working-hrs","displayName":"WorkingHr"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"inTime":{"type":"time","default":"08:00:00.000"},"outTime":{"type":"time","default":"19:00:00.000"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::working-hr.working-hr","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"working_hrs"}}},"apiName":"working-hr","globalId":"WorkingHr","uid":"api::working-hr.working-hr","modelType":"contentType","__schema__":{"collectionName":"working_hrs","info":{"singularName":"working-hr","pluralName":"working-hrs","displayName":"WorkingHr"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"inTime":{"type":"time","default":"08:00:00.000"},"outTime":{"type":"time","default":"19:00:00.000"}},"kind":"singleType"},"modelName":"working-hr","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
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
47	plugin_content_manager_configuration_content_types::api::store.store	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Location","defaultSortBy":"Location","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Location","Name","createdAt"],"edit":[[{"name":"Location","size":6},{"name":"Name","size":6}]]},"uid":"api::store.store"}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::working-hr.working-hr	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"inTime":{"edit":{"label":"inTime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"inTime","searchable":true,"sortable":true}},"outTime":{"edit":{"label":"outTime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"outTime","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","inTime","outTime","createdAt"],"edit":[[{"name":"inTime","size":4},{"name":"outTime","size":4}]]},"uid":"api::working-hr.working-hr"}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::city.city	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}]]},"uid":"api::city.city"}	object	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::shopping-category.shopping-category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","textColor"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}],[{"name":"textColor","size":6}]]},"uid":"api::shopping-category.shopping-category"}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::area.area	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"city","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}],[{"name":"city","size":6}]]},"uid":"api::area.area"}	object	\N	\N
66	plugin_content_manager_configuration_content_types::api::follow-status.follow-status	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","createdAt","updatedAt"],"edit":[[{"name":"label","size":6}]]},"uid":"api::follow-status.follow-status"}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::customet-follow-up.customet-follow-up	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"follow_ups":{"edit":{"label":"follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_ups","searchable":false,"sortable":false}},"staff":{"edit":{"label":"staff","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"staff","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"follow_status":{"edit":{"label":"follow_status","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"follow_status","searchable":true,"sortable":true}},"shopping_category":{"edit":{"label":"shopping_category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"shopping_category","searchable":true,"sortable":true}},"Count":{"edit":{"label":"Count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Count","searchable":true,"sortable":true}},"FollowUpDate":{"edit":{"label":"FollowUpDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FollowUpDate","searchable":true,"sortable":true}},"isFollowed":{"edit":{"label":"isFollowed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFollowed","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"customer","size":6},{"name":"follow_ups","size":6}],[{"name":"staff","size":6},{"name":"store","size":6}],[{"name":"follow_status","size":6},{"name":"shopping_category","size":6}],[{"name":"FollowUpDate","size":4},{"name":"Count","size":4},{"name":"isFollowed","size":4}],[{"name":"note","size":12}]],"list":["id","customer","createdAt","follow_ups"]},"uid":"api::customet-follow-up.customet-follow-up"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
91	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"areas","indexes":[{"name":"areas_documents_idx","columns":["document_id","locale","published_at"]},{"name":"areas_created_by_id_fk","columns":["created_by_id"]},{"name":"areas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"areas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"areas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"breeds","indexes":[{"name":"breeds_documents_idx","columns":["document_id","locale","published_at"]},{"name":"breeds_created_by_id_fk","columns":["created_by_id"]},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"breeds_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"cities","indexes":[{"name":"cities_documents_idx","columns":["document_id","locale","published_at"]},{"name":"cities_created_by_id_fk","columns":["created_by_id"]},{"name":"cities_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"cities_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"cities_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customers","indexes":[{"name":"customers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customers_created_by_id_fk","columns":["created_by_id"]},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_follow_ups","indexes":[{"name":"customet_follow_ups_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"follow_up_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_followed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_statuses","indexes":[{"name":"customet_statuses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"follow_statuses","indexes":[{"name":"follow_statuses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"follow_statuses_created_by_id_fk","columns":["created_by_id"]},{"name":"follow_statuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"follow_statuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"follow_statuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"follow_up_lists","indexes":[{"name":"follow_up_lists_documents_idx","columns":["document_id","locale","published_at"]},{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"till_sequence","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_amount","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"general_diaries","indexes":[{"name":"general_diaries_documents_idx","columns":["document_id","locale","published_at"]},{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"]},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pets","indexes":[{"name":"pets_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pets_created_by_id_fk","columns":["created_by_id"]},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pet_types","indexes":[{"name":"pet_types_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pet_types_created_by_id_fk","columns":["created_by_id"]},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pet_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"shopping_categories","indexes":[{"name":"shopping_categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"shopping_categories_created_by_id_fk","columns":["created_by_id"]},{"name":"shopping_categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"shopping_categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"shopping_categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"staffs","indexes":[{"name":"staffs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"staffs_created_by_id_fk","columns":["created_by_id"]},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"staffs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stores","indexes":[{"name":"stores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stores_created_by_id_fk","columns":["created_by_id"]},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"working_hrs","indexes":[{"name":"working_hrs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"working_hrs_created_by_id_fk","columns":["created_by_id"]},{"name":"working_hrs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"working_hrs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"working_hrs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"in_time","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"out_time","type":"time","args":[{"precision":3}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"areas_city_lnk","indexes":[{"name":"areas_city_lnk_fk","columns":["area_id"]},{"name":"areas_city_lnk_ifk","columns":["city_id"]},{"name":"areas_city_lnk_uq","columns":["area_id","city_id"],"type":"unique"}],"foreignKeys":[{"name":"areas_city_lnk_fk","columns":["area_id"],"referencedColumns":["id"],"referencedTable":"areas","onDelete":"CASCADE"},{"name":"areas_city_lnk_ifk","columns":["city_id"],"referencedColumns":["id"],"referencedTable":"cities","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"area_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"city_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_store_lnk","indexes":[{"name":"customers_store_lnk_fk","columns":["customer_id"]},{"name":"customers_store_lnk_ifk","columns":["store_id"]},{"name":"customers_store_lnk_uq","columns":["customer_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_store_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_pets_lnk","indexes":[{"name":"customers_pets_lnk_fk","columns":["customer_id"]},{"name":"customers_pets_lnk_ifk","columns":["pet_id"]},{"name":"customers_pets_lnk_uq","columns":["customer_id","pet_id"],"type":"unique"},{"name":"customers_pets_lnk_ofk","columns":["pet_ord"]}],"foreignKeys":[{"name":"customers_pets_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_pets_lnk_ifk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_customet_status_lnk","indexes":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"]},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"]},{"name":"customers_customet_status_lnk_uq","columns":["customer_id","customet_status_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"],"referencedColumns":["id"],"referencedTable":"customet_statuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_status_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_customer_lnk","indexes":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"]},{"name":"customet_follow_ups_customer_lnk_uq","columns":["customet_follow_up_id","customer_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_follow_ups_lnk","indexes":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"]},{"name":"customet_follow_ups_follow_ups_lnk_uq","columns":["customet_follow_up_id","follow_up_list_id"],"type":"unique"},{"name":"customet_follow_ups_follow_ups_lnk_ofk","columns":["follow_up_list_ord"]},{"name":"customet_follow_ups_follow_ups_lnk_oifk","columns":["customet_follow_up_ord"]}],"foreignKeys":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_follow_up_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_staff_lnk","indexes":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"]},{"name":"customet_follow_ups_staff_lnk_uq","columns":["customet_follow_up_id","staff_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_store_lnk","indexes":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"]},{"name":"customet_follow_ups_store_lnk_uq","columns":["customet_follow_up_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_follow_status_lnk","indexes":[{"name":"customet_follow_ups_follow_status_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_follow_status_lnk_ifk","columns":["follow_status_id"]},{"name":"customet_follow_ups_follow_status_lnk_uq","columns":["customet_follow_up_id","follow_status_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_follow_status_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_follow_status_lnk_ifk","columns":["follow_status_id"],"referencedColumns":["id"],"referencedTable":"follow_statuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_status_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_shopping_category_lnk","indexes":[{"name":"customet_follow_ups_shopping_category_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_shopping_category_lnk_ifk","columns":["shopping_category_id"]},{"name":"customet_follow_ups_shopping_category_lnk_uq","columns":["customet_follow_up_id","shopping_category_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_shopping_category_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_shopping_category_lnk_ifk","columns":["shopping_category_id"],"referencedColumns":["id"],"referencedTable":"shopping_categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"shopping_category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_store_lnk","indexes":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"]},{"name":"follow_up_lists_store_lnk_uq","columns":["follow_up_list_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_customer_lnk","indexes":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"]},{"name":"follow_up_lists_customer_lnk_uq","columns":["follow_up_list_id","customer_id"],"type":"unique"},{"name":"follow_up_lists_customer_lnk_oifk","columns":["follow_up_list_ord"]}],"foreignKeys":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"general_diaries_store_lnk","indexes":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"]},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"]},{"name":"general_diaries_store_lnk_uq","columns":["general_diary_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"],"referencedColumns":["id"],"referencedTable":"general_diaries","onDelete":"CASCADE"},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"general_diary_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_pet_type_lnk","indexes":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"]},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"]},{"name":"pets_pet_type_lnk_uq","columns":["pet_id","pet_type_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"],"referencedColumns":["id"],"referencedTable":"pet_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_breed_lnk","indexes":[{"name":"pets_breed_lnk_fk","columns":["pet_id"]},{"name":"pets_breed_lnk_ifk","columns":["breed_id"]},{"name":"pets_breed_lnk_uq","columns":["pet_id","breed_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_breed_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_breed_lnk_ifk","columns":["breed_id"],"referencedColumns":["id"],"referencedTable":"breeds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"breed_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"staffs_store_lnk","indexes":[{"name":"staffs_store_lnk_fk","columns":["staff_id"]},{"name":"staffs_store_lnk_ifk","columns":["store_id"]},{"name":"staffs_store_lnk_uq","columns":["staff_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"staffs_store_lnk_fk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"},{"name":"staffs_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-05-15 16:21:27.501	5cc3ee7810dda14187ca26d862edef64ab1893c29f1169f92c09178338d2321c
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
226	kd3hc4h3wq694dkv11ox6eg8	1	15b756daf8539cab9e3111e45463c39b	744b827d0752dc5262ad5542065f1805	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 21:18:10.335	2026-06-13 14:14:30.048	rotated	session	2026-05-14 19:18:10.336	2026-05-14 20:16:34.37	2026-05-14 19:18:10.34	\N	\N	\N
227	b7ya5oqnv2cuuekozhderbfl	1	744b827d0752dc5262ad5542065f1805	c57d7646d7b0d933cf5571fa06a4cb2d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 22:16:34.295	2026-06-13 14:14:30.048	rotated	session	2026-05-14 20:16:34.305	2026-05-14 20:58:57.251	2026-05-14 20:16:34.324	\N	\N	\N
229	jngm32irgynim30az2h7cumk	1	712ecb30f6cbdf03aaf21d66fdf5acde	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 00:08:41.916	2026-06-13 14:14:30.048	active	session	2026-05-14 22:08:41.925	2026-05-14 22:08:41.925	2026-05-14 22:08:41.962	\N	\N	\N
228	gib6zk1lp4vnlboqq84k21zm	1	c57d7646d7b0d933cf5571fa06a4cb2d	712ecb30f6cbdf03aaf21d66fdf5acde	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-14 22:58:57.195	2026-06-13 14:14:30.048	rotated	session	2026-05-14 20:58:57.198	2026-05-14 22:08:42.055	2026-05-14 20:58:57.208	\N	\N	\N
230	kdimoqjh8dr6z5sp74vj8z97	1	fe7c9cb4900d3cfbe4134bd796822e75	9f4aea05ff971aa2b032cf4681b9400b	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 10:06:11.173	2026-06-14 08:06:11.173	rotated	session	2026-05-15 08:06:11.174	2026-05-15 09:27:04.874	2026-05-15 08:06:11.181	\N	\N	\N
231	jvvfyz7hl4b2u2aq5a6jwrc6	1	9f4aea05ff971aa2b032cf4681b9400b	8ebf8071d797e75baa8abc8379cc972f	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 11:27:04.795	2026-06-14 08:06:11.173	rotated	session	2026-05-15 09:27:04.796	2026-05-15 11:14:44.336	2026-05-15 09:27:04.805	\N	\N	\N
232	uiurlxtre2pq6os6fo3xerpd	1	8ebf8071d797e75baa8abc8379cc972f	0a3995b1111d6e8c3b85fba6c3fa1f4d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 13:14:44.289	2026-06-14 08:06:11.173	rotated	session	2026-05-15 11:14:44.291	2026-05-15 12:17:06.99	2026-05-15 11:14:44.295	\N	\N	\N
233	v2jy0otb7hrp5dzxyeiupv57	1	0a3995b1111d6e8c3b85fba6c3fa1f4d	653267e9fe1d547c642121eb4731d901	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 14:17:06.931	2026-06-14 08:06:11.173	rotated	session	2026-05-15 12:17:06.932	2026-05-15 13:27:44.307	2026-05-15 12:17:06.937	\N	\N	\N
234	s3xihfrx2ne6kax3jc2m375s	1	653267e9fe1d547c642121eb4731d901	34d6eb50eaedf14d3730a3995078342a	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 15:27:44.25	2026-06-14 08:06:11.173	rotated	session	2026-05-15 13:27:44.253	2026-05-15 14:11:34.669	2026-05-15 13:27:44.261	\N	\N	\N
235	apitezq8qqwm8ag1qbeholwv	1	34d6eb50eaedf14d3730a3995078342a	b065e186cc91bae9c0f8599490482bc9	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 16:11:34.557	2026-06-14 08:06:11.173	rotated	session	2026-05-15 14:11:34.561	2026-05-15 14:44:59.977	2026-05-15 14:11:34.576	\N	\N	\N
236	rod4cvuxlq4rn6b648zxho3f	1	b065e186cc91bae9c0f8599490482bc9	145f106ffd9fb117ff240337519ca84a	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 16:44:59.901	2026-06-14 08:06:11.173	rotated	session	2026-05-15 14:44:59.902	2026-05-15 15:15:04.501	2026-05-15 14:44:59.907	\N	\N	\N
237	bh5n844zad3hwrgoriwv32uc	1	145f106ffd9fb117ff240337519ca84a	0d74d9de95cc6503fc12f28fd95a42d6	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 17:15:04.467	2026-06-14 08:06:11.173	rotated	session	2026-05-15 15:15:04.471	2026-05-15 15:50:51.37	2026-05-15 15:15:04.48	\N	\N	\N
238	dadc1y1mh14tt6h44uifkb0n	1	0d74d9de95cc6503fc12f28fd95a42d6	2b4700957058e86d40ccd337d576a1c9	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 17:50:51.26	2026-06-14 08:06:11.173	rotated	session	2026-05-15 15:50:51.271	2026-05-15 16:21:01.811	2026-05-15 15:50:51.316	\N	\N	\N
240	o8tgkwafvs2vdbyjh2umq05c	1	d03ee7ad5cb4eec14378294d3101819d	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 18:51:29.835	2026-06-14 08:06:11.173	active	session	2026-05-15 16:51:29.836	2026-05-15 16:51:29.836	2026-05-15 16:51:29.849	\N	\N	\N
239	hxxxo99kxglpjr13s78tid2t	1	2b4700957058e86d40ccd337d576a1c9	d03ee7ad5cb4eec14378294d3101819d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 18:21:01.761	2026-06-14 08:06:11.173	rotated	session	2026-05-15 16:21:01.762	2026-05-15 16:51:29.922	2026-05-15 16:21:01.773	\N	\N	\N
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
56	qmwixdp9so18o8sb941sf1p6	api::follow-status.follow-status.find	2026-05-15 14:29:10.436	2026-05-15 14:29:10.436	2026-05-15 14:29:10.441	\N	\N	\N
57	wfo300sf592ta4tazmcd9anh	api::follow-status.follow-status.findOne	2026-05-15 14:29:10.436	2026-05-15 14:29:10.436	2026-05-15 14:29:10.442	\N	\N	\N
58	x689vauoa1l28gbhbchqlmqq	api::follow-status.follow-status.create	2026-05-15 14:29:10.436	2026-05-15 14:29:10.436	2026-05-15 14:29:10.442	\N	\N	\N
59	c8b1hv9wy9ux1p3f4pgse9mk	api::follow-status.follow-status.update	2026-05-15 14:29:10.436	2026-05-15 14:29:10.436	2026-05-15 14:29:10.442	\N	\N	\N
60	vdfpdd6og4zdosyl3cl9srtj	api::follow-status.follow-status.delete	2026-05-15 14:29:10.436	2026-05-15 14:29:10.436	2026-05-15 14:29:10.442	\N	\N	\N
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
56	57	2	13
57	56	2	13
58	58	2	14
59	59	2	14
60	60	2	15
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ffxgos932gjemyhi1l3b2kfd	Authenticated	Default role given to authenticated user.	authenticated	2026-02-22 10:52:17.407	2026-04-29 22:45:03.128	2026-02-22 10:52:17.407	\N	\N	\N
2	ox2fvqcncsu876dpwsmp5p5x	Public	Default role given to unauthenticated user.	public	2026-02-22 10:52:17.411	2026-05-15 14:29:10.403	2026-02-22 10:52:17.411	\N	\N	\N
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

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 520, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 520, true);


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

SELECT pg_catalog.setval('public.customers_customet_status_lnk_id_seq', 25757, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 3218, true);


--
-- Name: customers_pets_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_pets_lnk_id_seq', 280, true);


--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_store_lnk_id_seq', 3280, true);


--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_customer_lnk_id_seq', 3333, true);


--
-- Name: customet_follow_ups_follow_status_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_follow_status_lnk_id_seq', 15, true);


--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_follow_ups_lnk_id_seq', 2601, true);


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_id_seq', 2235, true);


--
-- Name: customet_follow_ups_shopping_category_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_shopping_category_lnk_id_seq', 448, true);


--
-- Name: customet_follow_ups_staff_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_staff_lnk_id_seq', 127, true);


--
-- Name: customet_follow_ups_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_store_lnk_id_seq', 2174, true);


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
-- Name: follow_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_statuses_id_seq', 6, true);


--
-- Name: follow_up_lists_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_customer_lnk_id_seq', 3397, true);


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_id_seq', 2160, true);


--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_store_lnk_id_seq', 2160, true);


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

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 108, true);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 108, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 3, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 66, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 91, true);


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

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 240, true);


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

SELECT pg_catalog.setval('public.up_permissions_id_seq', 60, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 60, true);


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
-- Name: customet_follow_ups_follow_status_lnk customet_follow_ups_follow_status_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_status_lnk
    ADD CONSTRAINT customet_follow_ups_follow_status_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_follow_status_lnk customet_follow_ups_follow_status_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_status_lnk
    ADD CONSTRAINT customet_follow_ups_follow_status_lnk_uq UNIQUE (customet_follow_up_id, follow_status_id);


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
-- Name: customet_follow_ups_shopping_category_lnk customet_follow_ups_shopping_category_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_shopping_category_lnk
    ADD CONSTRAINT customet_follow_ups_shopping_category_lnk_pkey PRIMARY KEY (id);


--
-- Name: customet_follow_ups_shopping_category_lnk customet_follow_ups_shopping_category_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_shopping_category_lnk
    ADD CONSTRAINT customet_follow_ups_shopping_category_lnk_uq UNIQUE (customet_follow_up_id, shopping_category_id);


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
-- Name: follow_statuses follow_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_statuses
    ADD CONSTRAINT follow_statuses_pkey PRIMARY KEY (id);


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
-- Name: customet_follow_ups_follow_status_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_status_lnk_fk ON public.customet_follow_ups_follow_status_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_follow_status_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_follow_status_lnk_ifk ON public.customet_follow_ups_follow_status_lnk USING btree (follow_status_id);


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
-- Name: customet_follow_ups_shopping_category_lnk_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_shopping_category_lnk_fk ON public.customet_follow_ups_shopping_category_lnk USING btree (customet_follow_up_id);


--
-- Name: customet_follow_ups_shopping_category_lnk_ifk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customet_follow_ups_shopping_category_lnk_ifk ON public.customet_follow_ups_shopping_category_lnk USING btree (shopping_category_id);


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
-- Name: follow_statuses_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_statuses_created_by_id_fk ON public.follow_statuses USING btree (created_by_id);


--
-- Name: follow_statuses_documents_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_statuses_documents_idx ON public.follow_statuses USING btree (document_id, locale, published_at);


--
-- Name: follow_statuses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX follow_statuses_updated_by_id_fk ON public.follow_statuses USING btree (updated_by_id);


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
-- Name: customet_follow_ups_follow_status_lnk customet_follow_ups_follow_status_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_status_lnk
    ADD CONSTRAINT customet_follow_ups_follow_status_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_follow_status_lnk customet_follow_ups_follow_status_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_follow_status_lnk
    ADD CONSTRAINT customet_follow_ups_follow_status_lnk_ifk FOREIGN KEY (follow_status_id) REFERENCES public.follow_statuses(id) ON DELETE CASCADE;


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
-- Name: customet_follow_ups_shopping_category_lnk customet_follow_ups_shopping_category_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_shopping_category_lnk
    ADD CONSTRAINT customet_follow_ups_shopping_category_lnk_fk FOREIGN KEY (customet_follow_up_id) REFERENCES public.customet_follow_ups(id) ON DELETE CASCADE;


--
-- Name: customet_follow_ups_shopping_category_lnk customet_follow_ups_shopping_category_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customet_follow_ups_shopping_category_lnk
    ADD CONSTRAINT customet_follow_ups_shopping_category_lnk_ifk FOREIGN KEY (shopping_category_id) REFERENCES public.shopping_categories(id) ON DELETE CASCADE;


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
-- Name: follow_statuses follow_statuses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_statuses
    ADD CONSTRAINT follow_statuses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: follow_statuses follow_statuses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow_statuses
    ADD CONSTRAINT follow_statuses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


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

\unrestrict Moa8yLPI9rfs9piIs5wqseoWeoPFg4HhHGrn36esJ3wee7ufmlk7Oyv4GtCEyKK

