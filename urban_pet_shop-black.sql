--
-- PostgreSQL database dump
--

\restrict jkAs3HnIbnKptpQohloySiKmICMDhTPRQ5j0xXf4AaIitggC9P5ddzEnAkGeiao

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
\.


--
-- Data for Name: customers_customet_status_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customet_status_lnk (id, customer_id, customet_status_id) FROM stdin;
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
\.


--
-- Data for Name: customet_follow_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, count, follow_up_date, is_followed, note) FROM stdin;
\.


--
-- Data for Name: customet_follow_ups_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_customer_lnk (id, customet_follow_up_id, customer_id) FROM stdin;
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
\.


--
-- Data for Name: customet_follow_ups_shopping_category_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_shopping_category_lnk (id, customet_follow_up_id, shopping_category_id) FROM stdin;
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
\.


--
-- Data for Name: follow_up_lists_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_customer_lnk (id, follow_up_list_id, customer_id, follow_up_list_ord) FROM stdin;
\.


--
-- Data for Name: follow_up_lists_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_store_lnk (id, follow_up_list_id, store_id) FROM stdin;
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
239	hxxxo99kxglpjr13s78tid2t	1	2b4700957058e86d40ccd337d576a1c9	d03ee7ad5cb4eec14378294d3101819d	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 18:21:01.761	2026-06-14 08:06:11.173	rotated	session	2026-05-15 16:21:01.762	2026-05-15 16:51:29.922	2026-05-15 16:21:01.773	\N	\N	\N
241	g2r9fuxbgpuby9wtiowovb35	1	d9ecd9446f5ce964b5e9714f35e53ad1	\N	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 19:35:17.135	2026-06-14 08:06:11.173	active	session	2026-05-15 17:35:17.136	2026-05-15 17:35:17.136	2026-05-15 17:35:17.14	\N	\N	\N
240	o8tgkwafvs2vdbyjh2umq05c	1	d03ee7ad5cb4eec14378294d3101819d	d9ecd9446f5ce964b5e9714f35e53ad1	353ae534-7b4f-4cd9-98d0-09d0dcd50722	admin	2026-05-15 18:51:29.835	2026-06-14 08:06:11.173	rotated	session	2026-05-15 16:51:29.836	2026-05-15 17:35:17.158	2026-05-15 16:51:29.849	\N	\N	\N
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

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 241, true);


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

\unrestrict jkAs3HnIbnKptpQohloySiKmICMDhTPRQ5j0xXf4AaIitggC9P5ddzEnAkGeiao

