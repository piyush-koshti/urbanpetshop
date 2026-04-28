--
-- PostgreSQL database dump
--

\restrict viJgIFMMpmUSzSWuGoh59KdNr8htOI8DhJbtHI01dlQ44CJWXRvjXzD66BHUgcA

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
-- Name: breeds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds ALTER COLUMN id SET DEFAULT nextval('public.breeds_id_seq'::regclass);


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
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, instagram_id, address, area, city, zip, note, mobile_number, name, email) FROM stdin;
143	jrg8cn8a8k31dc8l8oijb9nm	2026-04-25 12:08:56.907	2026-04-25 12:08:56.907	\N	\N	\N	\N	Sit ullam exercitati	Ut eum exercitatione	Iste ut quas volupta	sadssafsd	15597	Veniam in mollit ve	8569585210	Noah Goff	\N
144	jrg8cn8a8k31dc8l8oijb9nm	2026-04-25 12:08:56.907	2026-04-25 12:08:56.907	2026-04-25 12:08:57.245	\N	\N	\N	Sit ullam exercitati	Ut eum exercitatione	Iste ut quas volupta	sadssafsd	15597	Veniam in mollit ve	8569585210	Noah Goff	\N
147	qmj0wjbk1c1gjfsx221ygwtl	2026-04-25 12:46:56.516	2026-04-25 12:46:56.516	\N	\N	\N	\N	Velit et autem quae	Sed enim nostrud min	Ducimus provident 	Nihil reiciendis inc	35155	Esse sed rerum qui t	8527410660	Mari Little	\N
148	qmj0wjbk1c1gjfsx221ygwtl	2026-04-25 12:46:56.516	2026-04-25 12:46:56.516	2026-04-25 12:46:56.674	\N	\N	\N	Velit et autem quae	Sed enim nostrud min	Ducimus provident 	Nihil reiciendis inc	35155	Esse sed rerum qui t	8527410660	Mari Little	\N
149	e6o1ngofeb71g8c3i60khk5f	2026-04-25 12:48:20.094	2026-04-25 12:48:20.094	\N	\N	\N	\N	Elit magna inventor	Ipsum et expedita al	Quos quia officia at	Tempor pariatur Mag	73357	Nam tempor rerum eaq	8527410520	Hiram Conrad	\N
150	e6o1ngofeb71g8c3i60khk5f	2026-04-25 12:48:20.094	2026-04-25 12:48:20.094	2026-04-25 12:48:20.148	\N	\N	\N	Elit magna inventor	Ipsum et expedita al	Quos quia officia at	Tempor pariatur Mag	73357	Nam tempor rerum eaq	8527410520	Hiram Conrad	\N
151	ytd68hqdg38bkg8suo1w5xhc	2026-04-25 12:50:21.601	2026-04-25 12:50:21.601	\N	\N	\N	\N	Quisquam excepturi s	Voluptas quibusdam a	Omnis fugiat proide	Laboris totam laboru	38543	Cum sed ex velit mol	7896541230	Lillith Gibbs	\N
152	ytd68hqdg38bkg8suo1w5xhc	2026-04-25 12:50:21.601	2026-04-25 12:50:21.601	2026-04-25 12:50:21.746	\N	\N	\N	Quisquam excepturi s	Voluptas quibusdam a	Omnis fugiat proide	Laboris totam laboru	38543	Cum sed ex velit mol	7896541230	Lillith Gibbs	\N
8	pdrbb88rvfakook3jnx9j3yw	2026-04-16 18:07:06.969	2026-04-28 08:17:02.296	\N	1	1	\N	Eum aut do dolores e	Deleniti temporibus 	Minim animi qui quo	Repudiandae ad volup	58964	2025-04-17	7688527410	Maxine Mcintyre ,,,	\N
153	v1ztaairaga0ki5mos2aq3oh	2026-04-25 13:08:25.986	2026-04-25 13:08:25.986	\N	\N	\N	\N	Sed unde incididunt 	Sed rem ea et nesciu	Laboris adipisci eum	Ut maiores atque est	78577	Voluptatem dolor exp	8598654712	Nola Walker	\N
154	v1ztaairaga0ki5mos2aq3oh	2026-04-25 13:08:25.986	2026-04-25 13:08:25.986	2026-04-25 13:08:26.447	\N	\N	\N	Sed unde incididunt 	Sed rem ea et nesciu	Laboris adipisci eum	Ut maiores atque est	78577	Voluptatem dolor exp	8598654712	Nola Walker	\N
155	ogj5d9frb62jxyf6r0ot9jen	2026-04-25 13:14:10.466	2026-04-25 13:14:10.466	\N	\N	\N	\N	fasdf	Vel deserunt veniam	Saepe enim consequun	Nisi sed dolorum eni	95820	Odio est quibusdam v	8523697410	Brody Hoffman	\N
156	ogj5d9frb62jxyf6r0ot9jen	2026-04-25 13:14:10.466	2026-04-25 13:14:10.466	2026-04-25 13:14:10.553	\N	\N	\N	fasdf	Vel deserunt veniam	Saepe enim consequun	Nisi sed dolorum eni	95820	Odio est quibusdam v	8523697410	Brody Hoffman	\N
157	wkaf34a53yghalo19tqz4e9v	2026-04-25 13:14:59.05	2026-04-25 13:14:59.05	\N	\N	\N	\N	Nulla	Asperiores labore od	Minima vel voluptate	Iure duis porro fugi	75053	Quo sit dolorem id m	9876543210	Inez Ellison	\N
158	wkaf34a53yghalo19tqz4e9v	2026-04-25 13:14:59.05	2026-04-25 13:14:59.05	2026-04-25 13:14:59.095	\N	\N	\N	Nulla	Asperiores labore od	Minima vel voluptate	Iure duis porro fugi	75053	Quo sit dolorem id m	9876543210	Inez Ellison	\N
159	soy5hjlo38jj6b0jguylths6	2026-04-25 13:17:31.794	2026-04-25 13:17:31.794	\N	\N	\N	\N	Voluptas modi dolore	Corrupti harum mole	Non itaque in saepe 	Exercitation tempori	50007	Ipsum ullamco vel et	8527419630	Cedric Dunlap	\N
439	w2r2wqda93gh3ct9jfkepg7i	2026-04-27 02:22:02.17	2026-04-27 02:22:02.542	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099390395	AMBUJA SOLVEX PVT LTD.	\N
160	soy5hjlo38jj6b0jguylths6	2026-04-25 13:17:31.794	2026-04-25 13:17:31.794	2026-04-25 13:17:31.897	\N	\N	\N	Voluptas modi dolore	Corrupti harum mole	Non itaque in saepe 	Exercitation tempori	50007	Ipsum ullamco vel et	8527419630	Cedric Dunlap	\N
161	evpdj6eho3x9e9wpagqf5nmp	2026-04-25 13:26:11.997	2026-04-25 13:26:11.997	\N	\N	\N	\N	Aut ut consequatur 	Porro atque fugit v	Adipisicing neque au	Aut dolores deleniti	45633	Adipisicing non erro	9658230147	Rooney Coffey	\N
162	evpdj6eho3x9e9wpagqf5nmp	2026-04-25 13:26:11.997	2026-04-25 13:26:11.997	2026-04-25 13:26:12.037	\N	\N	\N	Aut ut consequatur 	Porro atque fugit v	Adipisicing neque au	Aut dolores deleniti	45633	Adipisicing non erro	9658230147	Rooney Coffey	\N
163	rjrp0rhc6253uu1fe9enmwa5	2026-04-25 13:27:18.78	2026-04-25 13:27:18.78	\N	\N	\N	\N	Animi est adipisci 	Illo at illum non c	Repellendus Velit f	Pariatur Officia ve	89420	Tenetur cum dolorem 	8855223366	Quin Garner	\N
41	xjnik5ryroe0pd6zu6xt56b5	2026-04-18 09:53:39.266	2026-04-24 00:25:01.116	\N	\N	1	\N	fdsafsd	\N	\N	\N	\N	\N	9099728299	amar antav	\N
116	xjnik5ryroe0pd6zu6xt56b5	2026-04-18 09:53:39.266	2026-04-24 00:25:01.116	2026-04-24 00:25:01.727	\N	1	\N	fdsafsd	\N	\N	\N	\N	\N	9099728299	amar antav	\N
43	vshbh4tos50cuyxf3v95hvns	2026-04-18 09:53:44.093	2026-04-24 01:45:59.505	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
164	rjrp0rhc6253uu1fe9enmwa5	2026-04-25 13:27:18.78	2026-04-25 13:27:18.78	2026-04-25 13:27:18.822	\N	\N	\N	Animi est adipisci 	Illo at illum non c	Repellendus Velit f	Pariatur Officia ve	89420	Tenetur cum dolorem 	8855223366	Quin Garner	\N
131	vshbh4tos50cuyxf3v95hvns	2026-04-18 09:53:44.093	2026-04-24 01:45:59.505	2026-04-24 01:45:59.591	\N	1	\N	\N	\N	\N	\N	\N	\N	9426608008	D.P SHARMA	\N
165	rnsqerp1dwsivkstjam76d6c	2026-04-25 13:27:55.283	2026-04-25 13:27:55.283	\N	\N	\N	\N	Libero consequuntur 	Qui rem sit enim err	Et laboriosam conse	Rerum deleniti velit	20634	Hic dolorem exercita	9988556644	Ariel Terrell	\N
328	b34mkmb4kfr2p25gao85hocl	2026-04-27 02:20:16.268	2026-04-27 02:20:16.839	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099091695	ARFAAN	\N
330	b34mkmb4kfr2p25gao85hocl	2026-04-27 02:20:16.268	2026-04-27 02:20:16.839	2026-04-27 02:20:16.858	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099091695	ARFAAN	\N
45	vrqezjbevb7s7lhsntay48wp	2026-04-18 09:53:47.047	2026-04-24 01:49:46.242	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
334	htpbdmrptslbueh90heai0eb	2026-04-27 02:20:17.578	2026-04-27 02:20:18.003	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320408523	priti shah	\N
134	vrqezjbevb7s7lhsntay48wp	2026-04-18 09:53:47.047	2026-04-24 01:49:46.242	2026-04-24 01:49:46.323	\N	1	\N	\N	\N	\N	\N	\N	\N	9825611282	ruchi gajjar	\N
336	htpbdmrptslbueh90heai0eb	2026-04-27 02:20:17.578	2026-04-27 02:20:18.003	2026-04-27 02:20:18.014	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320408523	priti shah	\N
49	b7ysd3gqesqd8r7zhbkyekgq	2026-04-18 09:53:52.304	2026-04-24 02:00:27.323	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	9825011103	JAILESH MODI	\N
141	b7ysd3gqesqd8r7zhbkyekgq	2026-04-18 09:53:52.304	2026-04-24 02:00:27.323	2026-04-24 02:00:27.389	\N	1	\N	\N	\N	\N	\N	\N	\N	9825011103	JAILESH MODI	\N
51	y5zyr5vn6a5r3do8z6eceop6	2026-04-18 09:53:55.393	2026-04-24 02:00:56.687	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	8799149891	PRAGNESH BHAI	\N
142	y5zyr5vn6a5r3do8z6eceop6	2026-04-18 09:53:55.393	2026-04-24 02:00:56.687	2026-04-24 02:00:56.769	\N	1	\N	\N	\N	\N	\N	\N	\N	8799149891	PRAGNESH BHAI	\N
166	rnsqerp1dwsivkstjam76d6c	2026-04-25 13:27:55.283	2026-04-25 13:27:55.283	2026-04-25 13:27:55.317	\N	\N	\N	Libero consequuntur 	Qui rem sit enim err	Et laboriosam conse	Rerum deleniti velit	20634	Hic dolorem exercita	9988556644	Ariel Terrell	\N
167	lj15cecjaphisijhm2va9gq5	2026-04-25 13:29:16.841	2026-04-25 13:29:16.841	\N	\N	\N	\N	Laborum Natus dolor	Aliquid in voluptas 	Fugiat nobis vel vel	Hic ratione rerum vo	39701	Sit excepturi simil	8877445566	Ocean Bridges	\N
168	lj15cecjaphisijhm2va9gq5	2026-04-25 13:29:16.841	2026-04-25 13:29:16.841	2026-04-25 13:29:16.88	\N	\N	\N	Laborum Natus dolor	Aliquid in voluptas 	Fugiat nobis vel vel	Hic ratione rerum vo	39701	Sit excepturi simil	8877445566	Ocean Bridges	\N
169	er55p3a0cp0nqbbgzefbzexs	2026-04-25 13:30:16.042	2026-04-25 19:32:09.211	\N	\N	\N	\N	Autem_itaque_tempore	Harum perspiciatis 	Duis ex sed ut tempo	Dolorem at suscipit 	91197	Libero saepe qui rer	7755886699	Orla Sweeney	\N
703	zwvwboe6nvpdf5upohg0gerh	2026-04-27 02:23:04.44	2026-04-27 02:23:05.049	2026-04-27 02:23:05.066	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698358237	rocky	\N
432	gx517mucftj3hg77nn300j6f	2026-04-27 02:22:00.302	2026-04-27 02:22:01.515	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
961	jvszan3sngybjmk2j19m2ip2	2026-04-25 14:53:16.993	2026-04-28 08:02:03.393	2026-04-28 08:02:03.467	\N	1	\N	sdfa	asdfsad	swdfsd	dfvdf	984524	fddcx	8521479630	ewfas	\N
436	btmadu0wrs7gkk2hiu37kwqy	2026-04-27 02:22:01.668	2026-04-27 02:22:02.025	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9920912667	PREETY	\N
438	btmadu0wrs7gkk2hiu37kwqy	2026-04-27 02:22:01.668	2026-04-27 02:22:02.025	2026-04-27 02:22:02.037	\N	\N	\N	\N	\N	\N	\N	\N	\N	9920912667	PREETY	\N
312	zroah0iysowgcrytvywus4ki	2026-04-27 02:10:26.631	2026-04-27 02:10:31.151	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510092505	karan	\N
325	zroah0iysowgcrytvywus4ki	2026-04-27 02:10:26.631	2026-04-27 02:10:31.151	2026-04-27 02:10:31.165	\N	\N	\N	\N	\N	\N	\N	\N	\N	9510092505	karan	\N
327	y9n6xjpj2nlc4e7tnl44bwcs	2026-04-27 02:10:27.89	2026-04-27 02:10:32.29	2026-04-27 02:10:32.302	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998902862	SIMRAN	\N
331	y3i22d76qbj7v1mxcpftcplw	2026-04-27 02:20:16.994	2026-04-27 02:20:17.426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
333	y3i22d76qbj7v1mxcpftcplw	2026-04-27 02:20:16.994	2026-04-27 02:20:17.426	2026-04-27 02:20:17.443	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327016724	electronic junction	\N
461	frg10x9ahrb8wc21n5cc8yq7	2026-04-27 02:22:06.104	2026-04-27 02:23:08.041	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099903137	MURUGN	\N
337	httb2373oztxrdrp7z4ma0p2	2026-04-27 02:20:18.134	2026-04-27 02:20:18.576	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727001234	HIRAL MAM	\N
339	httb2373oztxrdrp7z4ma0p2	2026-04-27 02:20:18.134	2026-04-27 02:20:18.576	2026-04-27 02:20:18.591	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727001234	HIRAL MAM	\N
445	gkce99h1vawmjacevawx4r3k	2026-04-27 02:22:03.155	2026-04-27 02:22:03.511	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141411149	virat sir	\N
349	v6s2aon3xlhhveku1j4vo5u5	2026-04-27 02:20:20.205	2026-04-27 02:20:20.561	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
351	v6s2aon3xlhhveku1j4vo5u5	2026-04-27 02:20:20.205	2026-04-27 02:20:20.561	2026-04-27 02:20:20.575	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820131021	harshad patel	\N
447	gkce99h1vawmjacevawx4r3k	2026-04-27 02:22:03.155	2026-04-27 02:22:03.511	2026-04-27 02:22:03.524	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141411149	virat sir	\N
355	x4dtr65jcfewuvyqtro8jh7w	2026-04-27 02:20:21.165	2026-04-27 02:20:21.533	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825901508	TARANG ROGHELIA	\N
357	x4dtr65jcfewuvyqtro8jh7w	2026-04-27 02:20:21.165	2026-04-27 02:20:21.533	2026-04-27 02:20:21.547	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825901508	TARANG ROGHELIA	\N
364	gpf2qmu08d8y87puhfthdokm	2026-04-27 02:20:22.601	2026-04-27 02:20:22.944	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9067880002	khushali patel	\N
366	gpf2qmu08d8y87puhfthdokm	2026-04-27 02:20:22.601	2026-04-27 02:20:22.944	2026-04-27 02:20:22.957	\N	\N	\N	\N	\N	\N	\N	\N	\N	9067880002	khushali patel	\N
373	xyy3uuc658rz2p4luphvtjv4	2026-04-27 02:20:24.013	2026-04-27 02:20:24.364	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9228896012	VIKRAMBHAI MISTRY	\N
375	xyy3uuc658rz2p4luphvtjv4	2026-04-27 02:20:24.013	2026-04-27 02:20:24.364	2026-04-27 02:20:24.378	\N	\N	\N	\N	\N	\N	\N	\N	\N	9228896012	VIKRAMBHAI MISTRY	\N
452	pv170s77nnv911ihyz2zn0kn	2026-04-27 02:22:04.673	2026-04-27 02:22:05.03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662161739	VIRENDRA	\N
382	qgwy5ur3hl17zikf94ehom57	2026-04-27 02:20:25.499	2026-04-27 02:20:25.84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9993065066	mansi	\N
384	qgwy5ur3hl17zikf94ehom57	2026-04-27 02:20:25.499	2026-04-27 02:20:25.84	2026-04-27 02:20:25.856	\N	\N	\N	\N	\N	\N	\N	\N	\N	9993065066	mansi	\N
454	pv170s77nnv911ihyz2zn0kn	2026-04-27 02:22:04.673	2026-04-27 02:22:05.03	2026-04-27 02:22:05.044	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662161739	VIRENDRA	\N
391	cko2joypahf5udflt5g9nfl6	2026-04-27 02:20:26.916	2026-04-27 02:20:27.274	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825778282	bhumi	\N
393	cko2joypahf5udflt5g9nfl6	2026-04-27 02:20:26.916	2026-04-27 02:20:27.274	2026-04-27 02:20:27.289	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825778282	bhumi	\N
400	cvw7qv2vw68hgdc7lrfyr9gc	2026-04-27 02:20:28.306	2026-04-27 02:20:28.65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328243341	arpita	\N
402	cvw7qv2vw68hgdc7lrfyr9gc	2026-04-27 02:20:28.306	2026-04-27 02:20:28.65	2026-04-27 02:20:28.663	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328243341	arpita	\N
409	y22yvg2rxi6weptfjxo5jzvz	2026-04-27 02:20:29.767	2026-04-27 02:20:30.112	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8641081750	sanjayy patel	\N
411	y22yvg2rxi6weptfjxo5jzvz	2026-04-27 02:20:29.767	2026-04-27 02:20:30.112	2026-04-27 02:20:30.126	\N	\N	\N	\N	\N	\N	\N	\N	\N	8641081750	sanjayy patel	\N
418	q5bw6j3moeeqgani2knokh5d	2026-04-27 02:20:31.178	2026-04-27 02:20:31.523	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909009752	shiana shah	\N
420	q5bw6j3moeeqgani2knokh5d	2026-04-27 02:20:31.178	2026-04-27 02:20:31.523	2026-04-27 02:20:31.537	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909009752	shiana shah	\N
424	bucsmmsr2k5ngmyrwnt5iz3c	2026-04-27 02:20:32.202	2026-04-27 02:20:32.785	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7069854990	KANCHI	\N
426	bucsmmsr2k5ngmyrwnt5iz3c	2026-04-27 02:20:32.202	2026-04-27 02:20:32.785	2026-04-27 02:20:32.816	\N	\N	\N	\N	\N	\N	\N	\N	\N	7069854990	KANCHI	\N
430	zyhexa6aukphkzfl5pzlu0z4	2026-04-27 02:20:33.721	2026-04-27 02:20:33.721	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238911166	LABHSHRI	\N
431	zyhexa6aukphkzfl5pzlu0z4	2026-04-27 02:20:33.721	2026-04-27 02:20:33.721	2026-04-27 02:20:33.738	\N	\N	\N	\N	\N	\N	\N	\N	\N	8238911166	LABHSHRI	\N
467	u0t8uur0x5dbhm3f9bf3xnj5	2026-04-27 02:22:07.056	2026-04-27 02:22:07.411	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426863247	PRIYA	\N
469	u0t8uur0x5dbhm3f9bf3xnj5	2026-04-27 02:22:07.056	2026-04-27 02:22:07.411	2026-04-27 02:22:07.424	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426863247	PRIYA	\N
470	m5m5oznapsxkeiztzkf8v8m0	2026-04-27 02:22:07.527	2026-04-27 02:22:08.037	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979965417	hiranbhai	\N
472	m5m5oznapsxkeiztzkf8v8m0	2026-04-27 02:22:07.527	2026-04-27 02:22:08.037	2026-04-27 02:22:08.054	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979965417	hiranbhai	\N
473	vk9zhsymfgth57jhmihyniq6	2026-04-27 02:22:08.189	2026-04-27 02:22:08.601	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
475	vk9zhsymfgth57jhmihyniq6	2026-04-27 02:22:08.189	2026-04-27 02:22:08.601	2026-04-27 02:22:08.619	\N	\N	\N	\N	\N	\N	\N	\N	\N	9558533391	MAYRA DEGINER	\N
479	mq6lzy72jf6f30et3ogl46lc	2026-04-27 02:22:09.358	2026-04-27 02:22:09.836	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
481	mq6lzy72jf6f30et3ogl46lc	2026-04-27 02:22:09.358	2026-04-27 02:22:09.836	2026-04-27 02:22:09.848	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824371581	bina	\N
482	ze7r0b3j9kr5a76ob3v65c8c	2026-04-27 01:32:21.675	2026-04-27 02:22:10.345	2026-04-27 02:22:10.356	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141182035	SATYAM	\N
486	n1amfkxfw7pcusadxv4g5f7b	2026-04-27 02:22:10.871	2026-04-27 02:22:11.255	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990082884	YASH	\N
488	n1amfkxfw7pcusadxv4g5f7b	2026-04-27 02:22:10.871	2026-04-27 02:22:11.255	2026-04-27 02:22:11.269	\N	\N	\N	\N	\N	\N	\N	\N	\N	7990082884	YASH	\N
489	nki6ewqq71r7dhgvo8bnj0am	2026-04-27 02:22:11.38	2026-04-27 02:22:11.897	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825095318	Jignesh acharya	\N
491	nki6ewqq71r7dhgvo8bnj0am	2026-04-27 02:22:11.38	2026-04-27 02:22:11.897	2026-04-27 02:22:11.916	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825095318	Jignesh acharya	\N
495	z46yswsxuvugfnrnkz3jeplo	2026-04-27 01:32:11.085	2026-04-27 02:22:12.812	2026-04-27 02:22:12.823	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099010302	shital mam	\N
496	bm5ii71qkyin0zsf4ox4qtpt	2026-04-27 02:22:12.917	2026-04-27 02:22:13.197	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998050158	CHANDAN	\N
498	bm5ii71qkyin0zsf4ox4qtpt	2026-04-27 02:22:12.917	2026-04-27 02:22:13.197	2026-04-27 02:22:13.208	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998050158	CHANDAN	\N
499	jn0g5uu7xcs2a8urr6wjydlo	2026-04-27 02:22:13.303	2026-04-27 02:22:13.602	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7389340051	SARTHAK SAPRE	\N
501	jn0g5uu7xcs2a8urr6wjydlo	2026-04-27 02:22:13.303	2026-04-27 02:22:13.602	2026-04-27 02:22:13.613	\N	\N	\N	\N	\N	\N	\N	\N	\N	7389340051	SARTHAK SAPRE	\N
502	xzhro4ru48ykjju9py621ik6	2026-04-27 02:22:13.714	2026-04-27 02:22:14.164	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879794028	Riddhi Steel and Tube Limited	\N
507	mh7aeyahebuqbz8qacs1vgtk	2026-04-27 02:22:14.378	2026-04-27 02:22:15.203	2026-04-27 02:22:15.225	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320440868	vrushang	\N
458	t60ypu5foc017t59fr1j6goq	2026-04-27 02:22:05.614	2026-04-27 02:22:20.762	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
171	dt0qg36qbdtrt1gzftgks3ja	2026-04-25 13:52:00.761	2026-04-25 13:52:00.761	\N	\N	\N	\N	Nihil officia sed co	Necessitatibus dolor	Nulla voluptatum ips	Sunt incididunt magn	43967	Velit pariatur Face	9988998899	Kylynn Reed	\N
172	dt0qg36qbdtrt1gzftgks3ja	2026-04-25 13:52:00.761	2026-04-25 13:52:00.761	2026-04-25 13:52:00.871	\N	\N	\N	Nihil officia sed co	Necessitatibus dolor	Nulla voluptatum ips	Sunt incididunt magn	43967	Velit pariatur Face	9988998899	Kylynn Reed	\N
173	nhq5holze5iseomx5poaqfcp	2026-04-25 13:54:57.118	2026-04-25 13:54:57.118	\N	\N	\N	\N	Quia eveniet adipis	Dolorum omnis dolore	Pariatur Nam id rep	Aliqua Nam eum sunt	12461	Impedit tenetur vol	8888888888	Gretchen David	\N
174	nhq5holze5iseomx5poaqfcp	2026-04-25 13:54:57.118	2026-04-25 13:54:57.118	2026-04-25 13:54:57.172	\N	\N	\N	Quia eveniet adipis	Dolorum omnis dolore	Pariatur Nam id rep	Aliqua Nam eum sunt	12461	Impedit tenetur vol	8888888888	Gretchen David	\N
175	a0ycbp84u0f2d53t0o1zdq7s	2026-04-25 14:47:43.876	2026-04-25 14:47:43.876	\N	\N	\N	\N	Molestiae labore ut 	Ab accusantium qui e	Quia unde voluptatem	Et rerum nisi conseq	79942	Nam est doloribus ut	9999977777	Avram Kline	\N
176	a0ycbp84u0f2d53t0o1zdq7s	2026-04-25 14:47:43.876	2026-04-25 14:47:43.876	2026-04-25 14:47:44.006	\N	\N	\N	Molestiae labore ut 	Ab accusantium qui e	Quia unde voluptatem	Et rerum nisi conseq	79942	Nam est doloribus ut	9999977777	Avram Kline	\N
435	gx517mucftj3hg77nn300j6f	2026-04-27 02:22:00.302	2026-04-27 02:22:01.515	2026-04-27 02:22:01.531	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427305534	PRITI SHAH	\N
181	gz5lqyhg3u7tyt3phlu1saxk	2026-04-25 15:00:35.816	2026-04-25 15:00:35.816	\N	\N	\N	\N	fdgsdq	fsdgs	dfgd	dfbdf	987754	mnb	9517538520	fgdf	\N
182	gz5lqyhg3u7tyt3phlu1saxk	2026-04-25 15:00:35.816	2026-04-25 15:00:35.816	2026-04-25 15:00:35.932	\N	\N	\N	fdgsdq	fsdgs	dfgd	dfbdf	987754	mnb	9517538520	fgdf	\N
185	skqe3yu92amfi2yah3c60ayp	2026-04-25 15:02:04.426	2026-04-25 15:02:04.426	\N	\N	\N	\N	Eum incididunt repud	Tempor consequatur 	Doloremque aut nostr	Eum reiciendis sapie	60793	Aliquid beatae ipsa	6626784834	Allistair Barron	\N
186	skqe3yu92amfi2yah3c60ayp	2026-04-25 15:02:04.426	2026-04-25 15:02:04.426	2026-04-25 15:02:04.468	\N	\N	\N	Eum incididunt repud	Tempor consequatur 	Doloremque aut nostr	Eum reiciendis sapie	60793	Aliquid beatae ipsa	6626784834	Allistair Barron	\N
187	mtd40ae24q0kzdc4z02rqma7	2026-04-25 15:03:02.314	2026-04-25 15:03:02.314	\N	\N	\N	\N	Cum itaque et quos e	Rem et in aut illo c	Iste dolore enim obc	Vero ut quia qui aut	39934	Sed vel quod libero 	8964585474	Autumn Morton	\N
188	mtd40ae24q0kzdc4z02rqma7	2026-04-25 15:03:02.314	2026-04-25 15:03:02.314	2026-04-25 15:03:02.423	\N	\N	\N	Cum itaque et quos e	Rem et in aut illo c	Iste dolore enim obc	Vero ut quia qui aut	39934	Sed vel quod libero 	8964585474	Autumn Morton	\N
183	lbp47q3gw6d6nehi0d6jmczf	2026-04-25 15:01:23.13	2026-04-25 18:44:54.398	\N	\N	1	\N	\N	817-A-25,NANPURA NI CHAL Nr.VEDMANDIR ROAD	AHMEDABAD	AHMEDABAD	380022	kbn	6549873210	KOSHTI PIYUSH PRAKASHBHAI	\N
179	jvszan3sngybjmk2j19m2ip2	2026-04-25 14:53:16.993	2026-04-28 08:02:03.393	\N	\N	1	\N	sdfa	asdfsad	swdfsd	dfvdf	984524	fddcx	8521479630	ewfas	\N
376	s3zh6v7zl164kmdbut3xa8sf	2026-04-27 02:20:24.492	2026-04-27 02:20:24.885	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7202005766	JIGAR	\N
177	ldf2rc1jxyl7uvz6tlxzukwi	2026-04-25 14:49:52.556	2026-04-25 19:29:57.862	\N	\N	\N	\N	Libero cumque libero	Veniam pariatur Vo	Autem facere reprehe	Corporis quae dolore	34213	Velit obcaecati vol	8546219223	Victor Spencer	hugh@gmail.com
378	s3zh6v7zl164kmdbut3xa8sf	2026-04-27 02:20:24.492	2026-04-27 02:20:24.885	2026-04-27 02:20:24.9	\N	\N	\N	\N	\N	\N	\N	\N	\N	7202005766	JIGAR	\N
704	ac4zwsk0b481n67deteci7i0	2026-04-27 02:23:05.233	2026-04-27 02:23:05.998	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
455	k4fdzkhj4wgls3js4f0ecoxz	2026-04-27 02:22:05.154	2026-04-27 02:23:24.299	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909947512	riddhi pandya	\N
442	zeaf9q45mjj4o5f2pb0ves83	2026-04-27 02:22:02.682	2026-04-27 02:23:43.798	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
145	vtpx0q7c044ffvjpbdwe8byg	2026-04-25 12:30:22.725	2026-04-28 08:02:25.591	\N	\N	1	\N	Enim hic consequatur	Perspiciatis perspi	Duis id esse est fug	Sit sunt tempora am	54198	Sit accusantium eius	8527413690	Hannah Sears	\N
385	nfhq40ez7hkq0pupx8drb9vh	2026-04-27 02:20:25.964	2026-04-27 02:20:26.305	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000019449	Diza	\N
962	vtpx0q7c044ffvjpbdwe8byg	2026-04-25 12:30:22.725	2026-04-28 08:02:25.591	2026-04-28 08:02:25.631	\N	1	\N	Enim hic consequatur	Perspiciatis perspi	Duis id esse est fug	Sit sunt tempora am	54198	Sit accusantium eius	8527413690	Hannah Sears	\N
315	dxtr499jwgrj3sf3qmpnsgv0	2026-04-27 02:10:27.358	2026-04-27 02:10:27.761	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7211111231	urvesh raval	\N
317	dxtr499jwgrj3sf3qmpnsgv0	2026-04-27 02:10:27.358	2026-04-27 02:10:27.761	2026-04-27 02:10:27.776	\N	\N	\N	\N	\N	\N	\N	\N	\N	7211111231	urvesh raval	\N
340	rlcxuo76e807otoklf0yse9m	2026-04-27 02:20:18.715	2026-04-27 02:20:19.093	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9574606923	unnati dave	\N
342	rlcxuo76e807otoklf0yse9m	2026-04-27 02:20:18.715	2026-04-27 02:20:19.093	2026-04-27 02:20:19.108	\N	\N	\N	\N	\N	\N	\N	\N	\N	9574606923	unnati dave	\N
464	i6hx7bsodl0nxpp6wxc4t826	2026-04-27 02:22:06.584	2026-04-27 02:22:06.925	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9601444260	KARNAV	\N
346	ed8u96ahyu8r6vdgmnc8u589	2026-04-27 02:20:19.707	2026-04-27 02:20:20.073	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866558526	Anjaneya Veterinary Services	\N
348	ed8u96ahyu8r6vdgmnc8u589	2026-04-27 02:20:19.707	2026-04-27 02:20:20.073	2026-04-27 02:20:20.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866558526	Anjaneya Veterinary Services	\N
466	i6hx7bsodl0nxpp6wxc4t826	2026-04-27 02:22:06.584	2026-04-27 02:22:06.925	2026-04-27 02:22:06.941	\N	\N	\N	\N	\N	\N	\N	\N	\N	9601444260	KARNAV	\N
358	ws44tfywqvkuv0actf7n30hj	2026-04-27 02:20:21.657	2026-04-27 02:20:22.013	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
360	ws44tfywqvkuv0actf7n30hj	2026-04-27 02:20:21.657	2026-04-27 02:20:22.013	2026-04-27 02:20:22.025	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041297129	AASHKA	\N
367	bkpvp738jrmrwfnqzsynwntc	2026-04-27 02:20:23.065	2026-04-27 02:20:23.412	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825023299	PARULBEN ZAVERI	\N
369	bkpvp738jrmrwfnqzsynwntc	2026-04-27 02:20:23.065	2026-04-27 02:20:23.412	2026-04-27 02:20:23.43	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825023299	PARULBEN ZAVERI	\N
387	nfhq40ez7hkq0pupx8drb9vh	2026-04-27 02:20:25.964	2026-04-27 02:20:26.305	2026-04-27 02:20:26.317	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000019449	Diza	\N
394	hktdj7uiuu901ab0qaho8ikm	2026-04-27 02:20:27.393	2026-04-27 02:20:27.729	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033633631	parth chauhan	\N
396	hktdj7uiuu901ab0qaho8ikm	2026-04-27 02:20:27.393	2026-04-27 02:20:27.729	2026-04-27 02:20:27.743	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033633631	parth chauhan	\N
476	smqwruxcisbpxddtl0xk9q4g	2026-04-27 02:22:08.774	2026-04-27 02:22:09.204	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429202346	sushma kumari indian	\N
403	gi47rugvbt57r01szb1jaokk	2026-04-27 02:20:28.774	2026-04-27 02:20:29.129	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979974084	PARTH BAWA	\N
405	gi47rugvbt57r01szb1jaokk	2026-04-27 02:20:28.774	2026-04-27 02:20:29.129	2026-04-27 02:20:29.144	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979974084	PARTH BAWA	\N
478	smqwruxcisbpxddtl0xk9q4g	2026-04-27 02:22:08.774	2026-04-27 02:22:09.204	2026-04-27 02:22:09.22	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429202346	sushma kumari indian	\N
412	kl76mnkzz5fkp0f0p76itonp	2026-04-27 02:20:30.236	2026-04-27 02:20:30.604	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909946833	DISHEN	\N
414	kl76mnkzz5fkp0f0p76itonp	2026-04-27 02:20:30.236	2026-04-27 02:20:30.604	2026-04-27 02:20:30.617	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909946833	DISHEN	\N
421	dwd5fqpiy5ghjtfh7tekkvec	2026-04-27 02:20:31.658	2026-04-27 02:20:31.991	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898284888	kartik a shah	\N
423	dwd5fqpiy5ghjtfh7tekkvec	2026-04-27 02:20:31.658	2026-04-27 02:20:31.991	2026-04-27 02:20:32.004	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898284888	kartik a shah	\N
427	zywcwc1v7j1tdfiqz9stu07k	2026-04-27 02:20:33.035	2026-04-27 02:20:33.543	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000129129	DR.RUPIN TRIVEDI	\N
429	zywcwc1v7j1tdfiqz9stu07k	2026-04-27 02:20:33.035	2026-04-27 02:20:33.543	2026-04-27 02:20:33.564	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000129129	DR.RUPIN TRIVEDI	\N
483	gsfkhdroblyvmh0olfonplnb	2026-04-27 02:22:10.463	2026-04-27 02:22:10.766	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7862882782	SAILESH	\N
485	gsfkhdroblyvmh0olfonplnb	2026-04-27 02:22:10.463	2026-04-27 02:22:10.766	2026-04-27 02:22:10.78	\N	\N	\N	\N	\N	\N	\N	\N	\N	7862882782	SAILESH	\N
492	q1z14z1hj0v6fi4zt1de8f9f	2026-04-27 02:22:12.022	2026-04-27 02:22:12.332	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9156045916	VICKY	\N
494	q1z14z1hj0v6fi4zt1de8f9f	2026-04-27 02:22:12.022	2026-04-27 02:22:12.332	2026-04-27 02:22:12.342	\N	\N	\N	\N	\N	\N	\N	\N	\N	9156045916	VICKY	\N
318	y9n6xjpj2nlc4e7tnl44bwcs	2026-04-27 02:10:27.89	2026-04-27 02:10:32.29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998902862	SIMRAN	\N
191	lbp47q3gw6d6nehi0d6jmczf	2026-04-25 15:01:23.13	2026-04-25 18:44:54.398	2026-04-25 18:44:54.496	\N	1	\N	\N	817-A-25,NANPURA NI CHAL Nr.VEDMANDIR ROAD	AHMEDABAD	AHMEDABAD	380022	kbn	6549873210	KOSHTI PIYUSH PRAKASHBHAI	\N
706	ac4zwsk0b481n67deteci7i0	2026-04-27 02:23:05.233	2026-04-27 02:23:05.998	2026-04-27 02:23:06.019	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727194095	JIGNESHBHAI	\N
441	w2r2wqda93gh3ct9jfkepg7i	2026-04-27 02:22:02.17	2026-04-27 02:22:02.542	2026-04-27 02:22:02.559	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099390395	AMBUJA SOLVEX PVT LTD.	\N
196	ldf2rc1jxyl7uvz6tlxzukwi	2026-04-25 14:49:52.556	2026-04-25 19:29:57.862	2026-04-25 19:29:57.94	\N	\N	\N	Libero cumque libero	Veniam pariatur Vo	Autem facere reprehe	Corporis quae dolore	34213	Velit obcaecati vol	8546219223	Victor Spencer	hugh@gmail.com
197	er55p3a0cp0nqbbgzefbzexs	2026-04-25 13:30:16.042	2026-04-25 19:32:09.211	2026-04-25 19:32:09.347	\N	\N	\N	Autem_itaque_tempore	Harum perspiciatis 	Duis ex sed ut tempo	Dolorem at suscipit 	91197	Libero saepe qui rer	7755886699	Orla Sweeney	\N
343	hm35h8axlkh38lt0g6ayzxp7	2026-04-27 02:20:19.223	2026-04-27 02:20:19.58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925513333	jitu bhai pignis	\N
345	hm35h8axlkh38lt0g6ayzxp7	2026-04-27 02:20:19.223	2026-04-27 02:20:19.58	2026-04-27 02:20:19.597	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925513333	jitu bhai pignis	\N
448	a21c2ml2vd5bc2ka90j8egvg	2026-04-27 02:22:03.627	2026-04-27 02:22:03.968	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9374944484	falak	\N
450	a21c2ml2vd5bc2ka90j8egvg	2026-04-27 02:22:03.627	2026-04-27 02:22:03.968	2026-04-27 02:22:03.982	\N	\N	\N	\N	\N	\N	\N	\N	\N	9374944484	falak	\N
370	ql8ado58okv0zsxwfmie2sb5	2026-04-27 02:20:23.539	2026-04-27 02:20:23.894	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328678486	devang	\N
255	zqu7z8ors0mu8zg5099tt052	2026-04-27 01:32:13.299	2026-04-27 02:22:04.533	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
249	xia398hife4ol34qiwzr6klf	2026-04-27 01:32:12.191	2026-04-27 02:10:31.725	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600432743	prakash	\N
326	xia398hife4ol34qiwzr6klf	2026-04-27 01:32:12.191	2026-04-27 02:10:31.725	2026-04-27 02:10:31.738	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600432743	prakash	\N
451	zqu7z8ors0mu8zg5099tt052	2026-04-27 01:32:13.299	2026-04-27 02:22:04.533	2026-04-27 02:22:04.548	\N	\N	\N	\N	\N	\N	\N	\N	\N	6280670171	SHUBHRA	\N
293	qw6lc5vw5jlt0z98y5sfa0qn	2026-04-27 01:32:22.932	2026-04-27 02:23:41.223	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825011242	dhavnit shah	\N
963	pdrbb88rvfakook3jnx9j3yw	2026-04-16 18:07:06.969	2026-04-28 08:17:02.296	2026-04-28 08:17:02.561	1	1	\N	Eum aut do dolores e	Deleniti temporibus 	Minim animi qui quo	Repudiandae ad volup	58964	2025-04-17	7688527410	Maxine Mcintyre ,,,	\N
361	s4jx8q9xi27wtkjmzpfuveos	2026-04-27 02:20:22.133	2026-04-27 02:20:22.478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824777165	BABLU SINGH	\N
363	s4jx8q9xi27wtkjmzpfuveos	2026-04-27 02:20:22.133	2026-04-27 02:20:22.478	2026-04-27 02:20:22.491	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824777165	BABLU SINGH	\N
372	ql8ado58okv0zsxwfmie2sb5	2026-04-27 02:20:23.539	2026-04-27 02:20:23.894	2026-04-27 02:20:23.908	\N	\N	\N	\N	\N	\N	\N	\N	\N	9328678486	devang	\N
717	clmstvjzvb0khsuvypepbzzf	2026-04-27 02:23:09.715	2026-04-27 02:23:10.109	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866408907	URVASHI	\N
379	ioamkszh3810enxfeqws0m6o	2026-04-27 02:20:25.013	2026-04-27 02:20:25.363	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200656365	KAPIL	\N
381	ioamkszh3810enxfeqws0m6o	2026-04-27 02:20:25.013	2026-04-27 02:20:25.363	2026-04-27 02:20:25.377	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200656365	KAPIL	\N
289	ze7r0b3j9kr5a76ob3v65c8c	2026-04-27 01:32:21.675	2026-04-27 02:22:10.345	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141182035	SATYAM	\N
352	w5j0vo56mo8ooxo95j5fmq61	2026-04-27 02:20:20.683	2026-04-27 02:23:31.37	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160571617	masoom charitable trust	\N
243	z46yswsxuvugfnrnkz3jeplo	2026-04-27 01:32:11.085	2026-04-27 02:22:12.812	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099010302	shital mam	\N
397	p8vq3w9odm5ytnfbzell7wy8	2026-04-27 02:20:27.847	2026-04-27 02:20:28.181	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998541097	mega vyas	\N
399	p8vq3w9odm5ytnfbzell7wy8	2026-04-27 02:20:27.847	2026-04-27 02:20:28.181	2026-04-27 02:20:28.194	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998541097	mega vyas	\N
230	ens6gy84sf8r2zhx34h3m4nl	2026-04-25 21:32:05.983	2026-04-25 21:32:05.983	\N	\N	\N	\N	-	-	-	-	11111	\N	6549873211	test	test@gma.com
231	ens6gy84sf8r2zhx34h3m4nl	2026-04-25 21:32:05.983	2026-04-25 21:32:05.983	2026-04-25 21:32:06.076	\N	\N	\N	-	-	-	-	11111	\N	6549873211	test	test@gma.com
47	sq3gg2w9a4sj4giegjlzh7g9	2026-04-18 09:53:49.711	2026-04-26 00:11:28.24	\N	\N	1	\N	kjnkjjn	\N	\N	\N	\N	\N	7575051516	FALGUNI	\N
233	sq3gg2w9a4sj4giegjlzh7g9	2026-04-18 09:53:49.711	2026-04-26 00:11:28.24	2026-04-26 00:11:28.271	\N	1	\N	kjnkjjn	\N	\N	\N	\N	\N	7575051516	FALGUNI	\N
388	ga25n7hwme3yn2e1l78zvgii	2026-04-27 02:20:26.429	2026-04-27 02:23:23.099	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866133579	mahesh raval	\N
406	lv3e94ufvf6x9qaj9sbqhcur	2026-04-27 02:20:29.269	2026-04-27 02:20:29.633	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879008809	ALAY PATEL	\N
234	bdar1esux7jalfceax5oh3ff	2026-04-26 01:27:32.191	2026-04-26 03:08:12.92	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	9099712125	amar antav	\N
236	bdar1esux7jalfceax5oh3ff	2026-04-26 01:27:32.191	2026-04-26 03:08:12.92	2026-04-26 03:08:12.972	\N	1	\N	\N	\N	\N	\N	\N	\N	9099712125	amar antav	\N
408	lv3e94ufvf6x9qaj9sbqhcur	2026-04-27 02:20:29.269	2026-04-27 02:20:29.633	2026-04-27 02:20:29.645	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879008809	ALAY PATEL	\N
237	vyngtd7xnxvseonmk58uxuud	2026-04-27 01:32:09.375	2026-04-27 01:32:10.292	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8585956162	INDRAPAL SINGH SONI	\N
239	vyngtd7xnxvseonmk58uxuud	2026-04-27 01:32:09.375	2026-04-27 01:32:10.292	2026-04-27 01:32:10.326	\N	\N	\N	\N	\N	\N	\N	\N	\N	8585956162	INDRAPAL SINGH SONI	\N
415	mi8z0y6t972unx31xoc7yw0i	2026-04-27 02:20:30.723	2026-04-27 02:20:31.065	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7778889446	rohit.	\N
417	mi8z0y6t972unx31xoc7yw0i	2026-04-27 02:20:30.723	2026-04-27 02:20:31.065	2026-04-27 02:20:31.077	\N	\N	\N	\N	\N	\N	\N	\N	\N	7778889446	rohit.	\N
246	vktsbx8o54sqathzbtb7uwxn	2026-04-27 01:32:11.654	2026-04-27 01:32:12.056	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824051514	Girish	\N
248	vktsbx8o54sqathzbtb7uwxn	2026-04-27 01:32:11.654	2026-04-27 01:32:12.056	2026-04-27 01:32:12.071	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824051514	Girish	\N
252	p6ig9itlg3a0k4gmhd9ke502	2026-04-27 01:32:12.74	2026-04-27 01:32:13.16	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825784963	radhika	\N
254	p6ig9itlg3a0k4gmhd9ke502	2026-04-27 01:32:12.74	2026-04-27 01:32:13.16	2026-04-27 01:32:13.174	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825784963	radhika	\N
258	rp12nz3s567csvmk9yruuvle	2026-04-27 01:32:13.866	2026-04-27 01:32:14.273	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824093830	JEET INAMDAR	\N
260	rp12nz3s567csvmk9yruuvle	2026-04-27 01:32:13.866	2026-04-27 01:32:14.273	2026-04-27 01:32:14.287	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824093830	JEET INAMDAR	\N
262	u796ezunwit0cnta0hwb19qj	2026-04-27 01:32:15.063	2026-04-27 01:32:15.464	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141167460	chandani	\N
264	u796ezunwit0cnta0hwb19qj	2026-04-27 01:32:15.063	2026-04-27 01:32:15.464	2026-04-27 01:32:15.48	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141167460	chandani	\N
265	d8d9qzd7l04ptgnczuccp5e6	2026-04-27 01:32:15.609	2026-04-27 01:32:16.026	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7211102211	PRANJAL	\N
267	d8d9qzd7l04ptgnczuccp5e6	2026-04-27 01:32:15.609	2026-04-27 01:32:16.026	2026-04-27 01:32:16.042	\N	\N	\N	\N	\N	\N	\N	\N	\N	7211102211	PRANJAL	\N
272	kp3p4l3pfd7u7ocyxaj6ilju	2026-04-27 01:32:17.443	2026-04-27 01:32:17.941	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7843098219	althap	\N
274	kp3p4l3pfd7u7ocyxaj6ilju	2026-04-27 01:32:17.443	2026-04-27 01:32:17.941	2026-04-27 01:32:17.956	\N	\N	\N	\N	\N	\N	\N	\N	\N	7843098219	althap	\N
276	cm1t8x6v3nl10e9wp7vgw84w	2026-04-27 01:32:18.742	2026-04-27 01:32:19.16	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979899550	KRUPA PATEL	\N
278	cm1t8x6v3nl10e9wp7vgw84w	2026-04-27 01:32:18.742	2026-04-27 01:32:19.16	2026-04-27 01:32:19.175	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979899550	KRUPA PATEL	\N
279	koky1a89i5c7f8mjwvkxpdk1	2026-04-27 01:32:19.311	2026-04-27 01:32:19.729	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
281	koky1a89i5c7f8mjwvkxpdk1	2026-04-27 01:32:19.311	2026-04-27 01:32:19.729	2026-04-27 01:32:19.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725580973	kusum parmar	\N
282	fa5jm9hi5gdlnw4cmnt69clb	2026-04-27 01:32:19.88	2026-04-27 01:32:20.291	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825604944	satish agrawl	\N
284	fa5jm9hi5gdlnw4cmnt69clb	2026-04-27 01:32:19.88	2026-04-27 01:32:20.291	2026-04-27 01:32:20.307	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825604944	satish agrawl	\N
285	q5fi3qa7jmdkxdses0j9nz4d	2026-04-27 01:32:20.459	2026-04-27 01:32:20.872	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
287	q5fi3qa7jmdkxdses0j9nz4d	2026-04-27 01:32:20.459	2026-04-27 01:32:20.872	2026-04-27 01:32:20.889	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866005733	punit chauhan	\N
504	xzhro4ru48ykjju9py621ik6	2026-04-27 02:22:13.714	2026-04-27 02:22:14.164	2026-04-27 02:22:14.185	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879794028	Riddhi Steel and Tube Limited	\N
505	mh7aeyahebuqbz8qacs1vgtk	2026-04-27 02:22:14.378	2026-04-27 02:22:15.203	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320440868	vrushang	\N
508	gk0m36wi0gxxyqb3u8zsr355	2026-04-27 02:22:15.367	2026-04-27 02:22:15.805	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099550744	ANIL KARYA	\N
510	gk0m36wi0gxxyqb3u8zsr355	2026-04-27 02:22:15.367	2026-04-27 02:22:15.805	2026-04-27 02:22:15.818	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099550744	ANIL KARYA	\N
520	m9h0yn4lrs8hibccgrjuca25	2026-04-27 02:22:18.421	2026-04-27 02:22:18.881	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
522	m9h0yn4lrs8hibccgrjuca25	2026-04-27 02:22:18.421	2026-04-27 02:22:18.881	2026-04-27 02:22:18.894	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825431336	NILESH SHAH	\N
711	s00ziinv65crii92i7f5ltwy	2026-04-27 02:23:08.227	2026-04-27 02:23:08.77	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879031144	TORAL VYAS	\N
533	ksl9rrro1eabb8g40y90yswh	2026-04-27 02:22:21.59	2026-04-27 02:22:22.068	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714505192	konark	\N
535	ksl9rrro1eabb8g40y90yswh	2026-04-27 02:22:21.59	2026-04-27 02:22:22.068	2026-04-27 02:22:22.089	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714505192	konark	\N
713	s00ziinv65crii92i7f5ltwy	2026-04-27 02:23:08.227	2026-04-27 02:23:08.77	2026-04-27 02:23:08.795	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879031144	TORAL VYAS	\N
548	dv0gl4exti5k10z0311g3igu	2026-04-27 02:22:25.48	2026-04-27 02:22:25.972	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
550	dv0gl4exti5k10z0311g3igu	2026-04-27 02:22:25.48	2026-04-27 02:22:25.972	2026-04-27 02:22:25.99	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825211390	dhruv	\N
552	sstukfkn7jdngss79scabumy	2026-04-27 02:22:26.927	2026-04-27 02:22:27.503	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427141270	madhuri soni	\N
554	sstukfkn7jdngss79scabumy	2026-04-27 02:22:26.927	2026-04-27 02:22:27.503	2026-04-27 02:22:27.521	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427141270	madhuri soni	\N
561	qttfm9hf083fyydmuj1lr5t4	2026-04-27 02:22:28.963	2026-04-27 02:22:29.6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849115064	Jyoti Vaghela - Shivranjani	\N
563	qttfm9hf083fyydmuj1lr5t4	2026-04-27 02:22:28.963	2026-04-27 02:22:29.6	2026-04-27 02:22:29.618	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849115064	Jyoti Vaghela - Shivranjani	\N
726	hzl0dl1o4cpe3zmedk0ook06	2026-04-27 02:23:11.438	2026-04-27 02:23:11.884	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924184609	ARSHEEN	\N
570	mv5inekbkp4t9l4x4jrcupqy	2026-04-27 02:22:30.992	2026-04-27 02:22:31.379	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698669422	rahul	\N
572	mv5inekbkp4t9l4x4jrcupqy	2026-04-27 02:22:30.992	2026-04-27 02:22:31.379	2026-04-27 02:22:31.394	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698669422	rahul	\N
728	hzl0dl1o4cpe3zmedk0ook06	2026-04-27 02:23:11.438	2026-04-27 02:23:11.884	2026-04-27 02:23:11.897	\N	\N	\N	\N	\N	\N	\N	\N	\N	9924184609	ARSHEEN	\N
576	v3l7hoclnonqw6zxs5rgzfmh	2026-04-27 02:22:32.057	2026-04-27 02:22:32.65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033007079	STUTI	\N
578	v3l7hoclnonqw6zxs5rgzfmh	2026-04-27 02:22:32.057	2026-04-27 02:22:32.65	2026-04-27 02:22:32.672	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033007079	STUTI	\N
587	t5nb391ntu3fixqgppraefon	2026-04-27 02:22:34.43	2026-04-27 02:22:35.003	2026-04-27 02:22:35.024	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727396334	jay patel condro	\N
594	hu8rdsg6leu5bx2439i6c35v	2026-04-27 02:22:37.614	2026-04-27 02:22:38.26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898272082	sumitaben	\N
596	hu8rdsg6leu5bx2439i6c35v	2026-04-27 02:22:37.614	2026-04-27 02:22:38.26	2026-04-27 02:22:38.282	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898272082	sumitaben	\N
600	cc8nyn4o8ci1oljand58ic3z	2026-04-27 02:22:39.162	2026-04-27 02:22:39.711	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
602	cc8nyn4o8ci1oljand58ic3z	2026-04-27 02:22:39.162	2026-04-27 02:22:39.711	2026-04-27 02:22:39.732	\N	\N	\N	\N	\N	\N	\N	\N	\N	9662004078	krishna	\N
611	j08il2orifffcd50weujdd0k	2026-04-27 02:22:41.805	2026-04-27 02:22:42.312	2026-04-27 02:22:42.329	\N	\N	\N	\N	\N	\N	\N	\N	\N	9624080055	ADITI	\N
735	zz6xc1x7h2lba3w9tupyk041	2026-04-27 02:23:12.984	2026-04-27 02:23:13.316	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000486333	deval ben	\N
618	li6fst4iqcqzohalyiai53m9	2026-04-27 02:22:44.012	2026-04-27 02:22:44.755	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825009970	sailesh bhrambhatt	\N
620	li6fst4iqcqzohalyiai53m9	2026-04-27 02:22:44.012	2026-04-27 02:22:44.755	2026-04-27 02:22:44.776	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825009970	sailesh bhrambhatt	\N
737	zz6xc1x7h2lba3w9tupyk041	2026-04-27 02:23:12.984	2026-04-27 02:23:13.316	2026-04-27 02:23:13.328	\N	\N	\N	\N	\N	\N	\N	\N	\N	8000486333	deval ben	\N
744	fs5yhs0jr8f1iorszvm84ko9	2026-04-27 02:23:14.864	2026-04-27 02:23:15.167	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974388557	akshay	\N
636	ry9xi9flko2z76q1i4pk44rm	2026-04-27 02:22:47.589	2026-04-27 02:22:47.899	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9664902475	rohit parmar	\N
638	ry9xi9flko2z76q1i4pk44rm	2026-04-27 02:22:47.589	2026-04-27 02:22:47.899	2026-04-27 02:22:47.913	\N	\N	\N	\N	\N	\N	\N	\N	\N	9664902475	rohit parmar	\N
746	fs5yhs0jr8f1iorszvm84ko9	2026-04-27 02:23:14.864	2026-04-27 02:23:15.167	2026-04-27 02:23:15.177	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974388557	akshay	\N
654	vq3j5qw514a2fylrkcshwrpj	2026-04-27 02:22:50.41	2026-04-27 02:22:50.745	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998236606	smita	\N
656	vq3j5qw514a2fylrkcshwrpj	2026-04-27 02:22:50.41	2026-04-27 02:22:50.745	2026-04-27 02:22:50.765	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998236606	smita	\N
660	ih3dnps5xtns221cootzz79e	2026-04-27 02:22:51.508	2026-04-27 02:22:51.895	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327057793	MENKA	\N
662	ih3dnps5xtns221cootzz79e	2026-04-27 02:22:51.508	2026-04-27 02:22:51.895	2026-04-27 02:22:51.911	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327057793	MENKA	\N
753	jm6gu56h4eh0hbhom8wkf8b9	2026-04-27 02:23:16.192	2026-04-27 02:23:16.491	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537218238	KALP	\N
669	jkqtreiaal74xlj7fz5x3t8l	2026-04-27 02:22:53.174	2026-04-27 02:22:53.478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077907	vruxi	\N
671	jkqtreiaal74xlj7fz5x3t8l	2026-04-27 02:22:53.174	2026-04-27 02:22:53.478	2026-04-27 02:22:53.489	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316077907	vruxi	\N
755	jm6gu56h4eh0hbhom8wkf8b9	2026-04-27 02:23:16.192	2026-04-27 02:23:16.491	2026-04-27 02:23:16.502	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537218238	KALP	\N
675	r39d34amjfasfp3is4zc8pun	2026-04-27 02:22:54.101	2026-04-27 02:22:54.495	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879550884	Anuja Shah	\N
677	r39d34amjfasfp3is4zc8pun	2026-04-27 02:22:54.101	2026-04-27 02:22:54.495	2026-04-27 02:22:54.509	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879550884	Anuja Shah	\N
681	bk99kixamwmlrtda3odlbitj	2026-04-27 02:22:55.339	2026-04-27 02:22:55.813	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898189296	RAMESH BHAi	\N
683	bk99kixamwmlrtda3odlbitj	2026-04-27 02:22:55.339	2026-04-27 02:22:55.813	2026-04-27 02:22:55.833	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898189296	RAMESH BHAi	\N
684	h66qtec9d1rqi8z7i0uvd8ba	2026-04-27 02:22:55.986	2026-04-27 02:22:56.493	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898541010	PANKAJ PATEL	\N
686	h66qtec9d1rqi8z7i0uvd8ba	2026-04-27 02:22:55.986	2026-04-27 02:22:56.493	2026-04-27 02:22:56.515	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898541010	PANKAJ PATEL	\N
645	uqei75qg65mxnl8m1eqp39hr	2026-04-27 02:22:49.076	2026-04-27 02:23:42.921	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
762	ofigi8c7mybhzujfsxr690qs	2026-04-27 02:23:17.378	2026-04-27 02:23:17.666	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7778029977	RAVINDRASINH ZALA	\N
698	utqp0kktkdnre21v7o25lnr6	2026-04-27 02:23:03.464	2026-04-27 02:23:04.207	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9375200920	BHARGAV	\N
700	utqp0kktkdnre21v7o25lnr6	2026-04-27 02:23:03.464	2026-04-27 02:23:04.207	2026-04-27 02:23:04.24	\N	\N	\N	\N	\N	\N	\N	\N	\N	9375200920	BHARGAV	\N
764	ofigi8c7mybhzujfsxr690qs	2026-04-27 02:23:17.378	2026-04-27 02:23:17.666	2026-04-27 02:23:17.676	\N	\N	\N	\N	\N	\N	\N	\N	\N	7778029977	RAVINDRASINH ZALA	\N
771	jfun1rranmxlmnh52zmci0kw	2026-04-27 02:23:18.919	2026-04-27 02:23:19.296	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355561852	mamta	\N
773	jfun1rranmxlmnh52zmci0kw	2026-04-27 02:23:18.919	2026-04-27 02:23:19.296	2026-04-27 02:23:19.311	\N	\N	\N	\N	\N	\N	\N	\N	\N	6355561852	mamta	\N
775	xbznc89odrj3u5kb1dg1hikf	2026-04-27 02:23:20.182	2026-04-27 02:23:20.681	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041057290	MAHI PANCHAL	\N
777	xbznc89odrj3u5kb1dg1hikf	2026-04-27 02:23:20.182	2026-04-27 02:23:20.681	2026-04-27 02:23:20.7	\N	\N	\N	\N	\N	\N	\N	\N	\N	7041057290	MAHI PANCHAL	\N
795	k37sm8mufy7t3afatvm8as3q	2026-04-27 02:23:24.905	2026-04-27 02:23:25.255	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726524667	jagdishbbhai	\N
797	k37sm8mufy7t3afatvm8as3q	2026-04-27 02:23:24.905	2026-04-27 02:23:25.255	2026-04-27 02:23:25.268	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726524667	jagdishbbhai	\N
804	z2qoo5mmkottg69b59phvn5u	2026-04-27 02:22:16.94	2026-04-27 02:23:26.625	2026-04-27 02:23:26.638	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427208296	ami damodiya	\N
807	og9ervzbzd3md7o2enuk3w0h	2026-04-27 02:23:26.741	2026-04-27 02:23:27.046	2026-04-27 02:23:27.057	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974526432	Chaitali Kothari	\N
808	er8mcrii9kqvk90k5ffk5z9k	2026-04-27 02:23:27.165	2026-04-27 02:23:27.491	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
810	er8mcrii9kqvk90k5ffk5z9k	2026-04-27 02:23:27.165	2026-04-27 02:23:27.491	2026-04-27 02:23:27.506	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725985555	HIMANI	\N
627	iex2gidjrjy3ngrk4d6153bh	2026-04-27 02:22:46.26	2026-04-27 02:23:34.089	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925008880	MAHIMA	\N
707	wbclp49jgq364541f2umgpzq	2026-04-27 02:23:06.266	2026-04-27 02:23:07.012	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
709	wbclp49jgq364541f2umgpzq	2026-04-27 02:23:06.266	2026-04-27 02:23:07.012	2026-04-27 02:23:07.039	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141880557	swati sharma	\N
710	frg10x9ahrb8wc21n5cc8yq7	2026-04-27 02:22:06.104	2026-04-27 02:23:08.041	2026-04-27 02:23:08.06	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099903137	MURUGN	\N
523	kckxzdqt5ymr81yyoubuzviv	2026-04-27 02:22:19.021	2026-04-27 02:22:19.496	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825507047	diya khurana	\N
525	kckxzdqt5ymr81yyoubuzviv	2026-04-27 02:22:19.021	2026-04-27 02:22:19.496	2026-04-27 02:22:19.512	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825507047	diya khurana	\N
530	yxmqdovgslfhq45u126w7kh0	2026-04-27 02:22:20.898	2026-04-27 02:22:21.397	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7434040494	vishakha	\N
532	yxmqdovgslfhq45u126w7kh0	2026-04-27 02:22:20.898	2026-04-27 02:22:21.397	2026-04-27 02:22:21.418	\N	\N	\N	\N	\N	\N	\N	\N	\N	7434040494	vishakha	\N
539	yzacwdf2g2nls6wvycz98qwy	2026-04-27 02:22:23.38	2026-04-27 02:22:23.961	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849821725	DAKSH	\N
541	yzacwdf2g2nls6wvycz98qwy	2026-04-27 02:22:23.38	2026-04-27 02:22:23.961	2026-04-27 02:22:23.979	\N	\N	\N	\N	\N	\N	\N	\N	\N	8849821725	DAKSH	\N
544	dwwypsnot1cgs4rk16d7wypn	2026-04-27 02:22:24.125	2026-04-27 02:22:24.647	2026-04-27 02:22:24.665	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723821004	RANI BAGGA	\N
511	jpoqy1pu8jufvb9f9c8pc0ys	2026-04-27 02:22:16.003	2026-04-27 02:22:26.762	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099710353	Urja	\N
551	jpoqy1pu8jufvb9f9c8pc0ys	2026-04-27 02:22:16.003	2026-04-27 02:22:26.762	2026-04-27 02:22:26.781	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099710353	Urja	\N
714	cc6sfe7q3sz6dmyyrngp1a0b	2026-04-27 02:23:08.991	2026-04-27 02:23:09.548	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909980440	Pallavi mam - Godrej	\N
558	i2nlezrh3fc72wqbnzsphdu9	2026-04-27 02:22:28.33	2026-04-27 02:22:28.805	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879529881	Pinki Gajjar	\N
560	i2nlezrh3fc72wqbnzsphdu9	2026-04-27 02:22:28.33	2026-04-27 02:22:28.805	2026-04-27 02:22:28.822	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879529881	Pinki Gajjar	\N
716	cc6sfe7q3sz6dmyyrngp1a0b	2026-04-27 02:23:08.991	2026-04-27 02:23:09.548	2026-04-27 02:23:09.578	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909980440	Pallavi mam - Godrej	\N
567	b2qvi84dqnzqluxisqiu9i2e	2026-04-27 02:22:30.328	2026-04-27 02:22:30.852	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898551382	MM MACHINERY PRIVATE LIMITED	\N
569	b2qvi84dqnzqluxisqiu9i2e	2026-04-27 02:22:30.328	2026-04-27 02:22:30.852	2026-04-27 02:22:30.868	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898551382	MM MACHINERY PRIVATE LIMITED	\N
582	ztbw0ej14wrklt23jdp7jinh	2026-04-27 02:22:33.622	2026-04-27 02:22:34.244	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
585	t5nb391ntu3fixqgppraefon	2026-04-27 02:22:34.43	2026-04-27 02:22:35.003	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727396334	jay patel condro	\N
720	qu66ae1ogbqfm15pvvcg3jbi	2026-04-27 02:23:10.249	2026-04-27 02:23:10.63	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9680635622	arpita	\N
588	nicghkmgvjtu15pnrbtyon9y	2026-04-27 02:22:35.178	2026-04-27 02:22:35.753	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727748807	sanjay	\N
590	nicghkmgvjtu15pnrbtyon9y	2026-04-27 02:22:35.178	2026-04-27 02:22:35.753	2026-04-27 02:22:35.787	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727748807	sanjay	\N
722	qu66ae1ogbqfm15pvvcg3jbi	2026-04-27 02:23:10.249	2026-04-27 02:23:10.63	2026-04-27 02:23:10.646	\N	\N	\N	\N	\N	\N	\N	\N	\N	9680635622	arpita	\N
597	j5n8czxp28hfbukfnnb0t59z	2026-04-27 02:22:38.432	2026-04-27 02:22:38.95	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033947421	Usha patel lab f	\N
599	j5n8czxp28hfbukfnnb0t59z	2026-04-27 02:22:38.432	2026-04-27 02:22:38.95	2026-04-27 02:22:38.973	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033947421	Usha patel lab f	\N
606	igix93n31xhp73cenlr4cs84	2026-04-27 02:22:40.565	2026-04-27 02:22:41.403	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316277907	VIKKY	\N
608	igix93n31xhp73cenlr4cs84	2026-04-27 02:22:40.565	2026-04-27 02:22:41.403	2026-04-27 02:22:41.44	\N	\N	\N	\N	\N	\N	\N	\N	\N	9316277907	VIKKY	\N
621	hg1vdqbi27qi7590363g5bg0	2026-04-27 02:22:44.994	2026-04-27 02:22:45.545	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714226611	AAMAR	\N
623	hg1vdqbi27qi7590363g5bg0	2026-04-27 02:22:44.994	2026-04-27 02:22:45.545	2026-04-27 02:22:45.561	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714226611	AAMAR	\N
729	tgrgjilzgnv2628ck730w71d	2026-04-27 02:23:12.003	2026-04-27 02:23:12.357	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
630	jzx5sx7r7hehqve7woo70l3s	2026-04-27 02:22:46.738	2026-04-27 02:22:47.041	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8588892742	SONIA	\N
632	jzx5sx7r7hehqve7woo70l3s	2026-04-27 02:22:46.738	2026-04-27 02:22:47.041	2026-04-27 02:22:47.056	\N	\N	\N	\N	\N	\N	\N	\N	\N	8588892742	SONIA	\N
731	tgrgjilzgnv2628ck730w71d	2026-04-27 02:23:12.003	2026-04-27 02:23:12.357	2026-04-27 02:23:12.37	\N	\N	\N	\N	\N	\N	\N	\N	\N	9409656436	AMIT LAB WIFE	\N
639	im4srogmhga3lyb7d6qmipad	2026-04-27 02:22:48.02	2026-04-27 02:22:48.447	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8511171191	KALYANI	\N
641	im4srogmhga3lyb7d6qmipad	2026-04-27 02:22:48.02	2026-04-27 02:22:48.447	2026-04-27 02:22:48.46	\N	\N	\N	\N	\N	\N	\N	\N	\N	8511171191	KALYANI	\N
648	hjti1rzbrc9m2wqr3z37qayl	2026-04-27 02:22:49.514	2026-04-27 02:22:49.83	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567717426	KINJAL	\N
650	hjti1rzbrc9m2wqr3z37qayl	2026-04-27 02:22:49.514	2026-04-27 02:22:49.83	2026-04-27 02:22:49.844	\N	\N	\N	\N	\N	\N	\N	\N	\N	7567717426	KINJAL	\N
657	ayv1rwj9t0ky4w389amkv5gg	2026-04-27 02:22:50.95	2026-04-27 02:22:51.376	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320596108	RUPESH	\N
659	ayv1rwj9t0ky4w389amkv5gg	2026-04-27 02:22:50.95	2026-04-27 02:22:51.376	2026-04-27 02:22:51.388	\N	\N	\N	\N	\N	\N	\N	\N	\N	8320596108	RUPESH	\N
738	klj6h6imnkxzxpgtscio4asl	2026-04-27 02:23:13.596	2026-04-27 02:23:14.255	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8758734509	MILONI	\N
666	fl1no4bmne4wtgoljg0veydo	2026-04-27 02:22:52.564	2026-04-27 02:22:53.021	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980530775	NIKKI	\N
668	fl1no4bmne4wtgoljg0veydo	2026-04-27 02:22:52.564	2026-04-27 02:22:53.021	2026-04-27 02:22:53.058	\N	\N	\N	\N	\N	\N	\N	\N	\N	8980530775	NIKKI	\N
678	d2jabrkywg0bfp1rnvh7cexz	2026-04-27 02:22:54.678	2026-04-27 02:22:55.172	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828433	ira parikh	\N
680	d2jabrkywg0bfp1rnvh7cexz	2026-04-27 02:22:54.678	2026-04-27 02:22:55.172	2026-04-27 02:22:55.189	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905828433	ira parikh	\N
687	e7hxcsgbn886wlfxy4l3sg63	2026-04-27 02:22:56.684	2026-04-27 02:22:57.268	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879204461	Pinky Thakkar	\N
689	e7hxcsgbn886wlfxy4l3sg63	2026-04-27 02:22:56.684	2026-04-27 02:22:57.268	2026-04-27 02:22:57.306	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879204461	Pinky Thakkar	\N
694	x7a3nvavue3dhixhy89hedbf	2026-04-27 02:23:01.381	2026-04-27 02:23:02.394	2026-04-27 02:23:02.472	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712831249	HIMANSHU RAVAT	\N
741	kd5k45mn5aabkc8xq7yyw2c3	2026-04-27 02:23:14.401	2026-04-27 02:23:14.756	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537206930	HETAL MAM	\N
743	kd5k45mn5aabkc8xq7yyw2c3	2026-04-27 02:23:14.401	2026-04-27 02:23:14.756	2026-04-27 02:23:14.769	\N	\N	\N	\N	\N	\N	\N	\N	\N	9537206930	HETAL MAM	\N
750	ldwthnuu2awkuh57dhhrsfwp	2026-04-27 02:23:15.718	2026-04-27 02:23:16.07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9414192369	DIPAK SHAH	\N
752	ldwthnuu2awkuh57dhhrsfwp	2026-04-27 02:23:15.718	2026-04-27 02:23:16.07	2026-04-27 02:23:16.083	\N	\N	\N	\N	\N	\N	\N	\N	\N	9414192369	DIPAK SHAH	\N
759	smf2ym8kw42rkx90eqc2xoc2	2026-04-27 02:23:16.989	2026-04-27 02:23:17.281	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825054552	abhishek	\N
761	smf2ym8kw42rkx90eqc2xoc2	2026-04-27 02:23:16.989	2026-04-27 02:23:17.281	2026-04-27 02:23:17.292	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825054552	abhishek	\N
768	tsc6hfy7fktjuev5aufaiw4g	2026-04-27 02:23:18.412	2026-04-27 02:23:18.791	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824116544	deepika ben	\N
770	tsc6hfy7fktjuev5aufaiw4g	2026-04-27 02:23:18.412	2026-04-27 02:23:18.791	2026-04-27 02:23:18.804	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824116544	deepika ben	\N
778	jtuwm7qdsgptb3l1gj2d7rye	2026-04-27 02:23:20.823	2026-04-27 02:23:21.26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898163901	mahi rajput	\N
780	jtuwm7qdsgptb3l1gj2d7rye	2026-04-27 02:23:20.823	2026-04-27 02:23:21.26	2026-04-27 02:23:21.277	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898163901	mahi rajput	\N
784	emc53ctx7he6mjxil75q1e38	2026-04-27 02:23:21.957	2026-04-27 02:23:22.38	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
786	emc53ctx7he6mjxil75q1e38	2026-04-27 02:23:21.957	2026-04-27 02:23:22.38	2026-04-27 02:23:22.398	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825082800	HEENA RANA	\N
787	ga25n7hwme3yn2e1l78zvgii	2026-04-27 02:20:26.429	2026-04-27 02:23:23.099	2026-04-27 02:23:23.116	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866133579	mahesh raval	\N
792	e8om0krbc7zyntg3s024kh5a	2026-04-27 02:23:24.42	2026-04-27 02:23:24.78	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600532582	TUSHAR	\N
794	e8om0krbc7zyntg3s024kh5a	2026-04-27 02:23:24.42	2026-04-27 02:23:24.78	2026-04-27 02:23:24.793	\N	\N	\N	\N	\N	\N	\N	\N	\N	7600532582	TUSHAR	\N
801	p1cx8nd4w5hcdtrip68vk275	2026-04-27 02:23:25.792	2026-04-27 02:23:26.106	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
803	p1cx8nd4w5hcdtrip68vk275	2026-04-27 02:23:25.792	2026-04-27 02:23:26.106	2026-04-27 02:23:26.118	\N	\N	\N	\N	\N	\N	\N	\N	\N	9327024934	ANUPAMA	\N
514	z2qoo5mmkottg69b59phvn5u	2026-04-27 02:22:16.94	2026-04-27 02:23:26.625	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427208296	ami damodiya	\N
805	og9ervzbzd3md7o2enuk3w0h	2026-04-27 02:23:26.741	2026-04-27 02:23:27.046	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974526432	Chaitali Kothari	\N
701	zwvwboe6nvpdf5upohg0gerh	2026-04-27 02:23:04.44	2026-04-27 02:23:05.049	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7698358237	rocky	\N
719	clmstvjzvb0khsuvypepbzzf	2026-04-27 02:23:09.715	2026-04-27 02:23:10.109	2026-04-27 02:23:10.127	\N	\N	\N	\N	\N	\N	\N	\N	\N	8866408907	URVASHI	\N
517	r29mgq2mmdjxan1x4c3h751u	2026-04-27 02:22:17.82	2026-04-27 02:22:18.229	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9116991111	devanshu lalwani	\N
519	r29mgq2mmdjxan1x4c3h751u	2026-04-27 02:22:17.82	2026-04-27 02:22:18.229	2026-04-27 02:22:18.241	\N	\N	\N	\N	\N	\N	\N	\N	\N	9116991111	devanshu lalwani	\N
526	lg29818l7mf8itmtwd2pg1kt	2026-04-27 02:22:19.642	2026-04-27 02:22:20.063	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925223164	SOUTH BOPAL MED	\N
528	lg29818l7mf8itmtwd2pg1kt	2026-04-27 02:22:19.642	2026-04-27 02:22:20.063	2026-04-27 02:22:20.078	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925223164	SOUTH BOPAL MED	\N
529	t60ypu5foc017t59fr1j6goq	2026-04-27 02:22:05.614	2026-04-27 02:22:20.762	2026-04-27 02:22:20.777	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925043000	rupal	\N
536	qgolq11n15yx8bw8yjg1ctwn	2026-04-27 02:22:22.234	2026-04-27 02:22:23.145	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7034856702	BABITA SHARMA	\N
538	qgolq11n15yx8bw8yjg1ctwn	2026-04-27 02:22:22.234	2026-04-27 02:22:23.145	2026-04-27 02:22:23.176	\N	\N	\N	\N	\N	\N	\N	\N	\N	7034856702	BABITA SHARMA	\N
723	i9bs9c1zoetkczbzic8puoqx	2026-04-27 02:23:10.764	2026-04-27 02:23:11.274	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429905509	seema	\N
542	dwwypsnot1cgs4rk16d7wypn	2026-04-27 02:22:24.125	2026-04-27 02:22:24.647	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9723821004	RANI BAGGA	\N
725	i9bs9c1zoetkczbzic8puoqx	2026-04-27 02:23:10.764	2026-04-27 02:23:11.274	2026-04-27 02:23:11.294	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429905509	seema	\N
545	otrxidra4952en9xrj0okpdg	2026-04-27 02:22:24.812	2026-04-27 02:22:25.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998353055	RISHABH	\N
547	otrxidra4952en9xrj0okpdg	2026-04-27 02:22:24.812	2026-04-27 02:22:25.32	2026-04-27 02:22:25.339	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998353055	RISHABH	\N
555	fcu49azjlyjcf8fwb8g9gmli	2026-04-27 02:22:27.66	2026-04-27 02:22:28.165	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
557	fcu49azjlyjcf8fwb8g9gmli	2026-04-27 02:22:27.66	2026-04-27 02:22:28.165	2026-04-27 02:22:28.182	\N	\N	\N	\N	\N	\N	\N	\N	\N	9586939933	SCOOBY	\N
564	gisy0k6ztl4f9asd4651cok9	2026-04-27 02:22:29.756	2026-04-27 02:22:30.182	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033643803	SIDDHI	\N
566	gisy0k6ztl4f9asd4651cok9	2026-04-27 02:22:29.756	2026-04-27 02:22:30.182	2026-04-27 02:22:30.199	\N	\N	\N	\N	\N	\N	\N	\N	\N	9033643803	SIDDHI	\N
732	yefr8igxctnmkgd36mx3nobf	2026-04-27 02:23:12.484	2026-04-27 02:23:12.875	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824410222	ashvin singh rana	\N
573	e2fztxkcxm0womhchl2r1xmz	2026-04-27 02:22:31.506	2026-04-27 02:22:31.895	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687955755	AARCHI	\N
575	e2fztxkcxm0womhchl2r1xmz	2026-04-27 02:22:31.506	2026-04-27 02:22:31.895	2026-04-27 02:22:31.914	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687955755	AARCHI	\N
734	yefr8igxctnmkgd36mx3nobf	2026-04-27 02:23:12.484	2026-04-27 02:23:12.875	2026-04-27 02:23:12.887	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824410222	ashvin singh rana	\N
579	jydn2mwij4ohdbw80zkhxr4e	2026-04-27 02:22:32.824	2026-04-27 02:22:33.416	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7859981750	icy	\N
581	jydn2mwij4ohdbw80zkhxr4e	2026-04-27 02:22:32.824	2026-04-27 02:22:33.416	2026-04-27 02:22:33.439	\N	\N	\N	\N	\N	\N	\N	\N	\N	7859981750	icy	\N
584	ztbw0ej14wrklt23jdp7jinh	2026-04-27 02:22:33.622	2026-04-27 02:22:34.244	2026-04-27 02:22:34.265	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712940916	KALINDI SHAH	\N
740	klj6h6imnkxzxpgtscio4asl	2026-04-27 02:23:13.596	2026-04-27 02:23:14.255	2026-04-27 02:23:14.27	\N	\N	\N	\N	\N	\N	\N	\N	\N	8758734509	MILONI	\N
591	rpl6rxhtgofcyr5xmlh2tsdl	2026-04-27 02:22:36.247	2026-04-27 02:22:37.292	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
593	rpl6rxhtgofcyr5xmlh2tsdl	2026-04-27 02:22:36.247	2026-04-27 02:22:37.292	2026-04-27 02:22:37.338	\N	\N	\N	\N	\N	\N	\N	\N	\N	8200272987	DINESH SAXENA	\N
603	r08dkvkcp8y3adk0pu3skpr0	2026-04-27 02:22:39.882	2026-04-27 02:22:40.388	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727584462	dipanti	\N
605	r08dkvkcp8y3adk0pu3skpr0	2026-04-27 02:22:39.882	2026-04-27 02:22:40.388	2026-04-27 02:22:40.411	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727584462	dipanti	\N
609	j08il2orifffcd50weujdd0k	2026-04-27 02:22:41.805	2026-04-27 02:22:42.312	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9624080055	ADITI	\N
818	iny8tutwr8lc94bibhddwnn4	2026-04-27 02:23:29.196	2026-04-27 02:23:29.603	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7284095245	MIHIR SONI	\N
612	rkmgag0abm6elwwtvp7g79hg	2026-04-27 02:22:42.454	2026-04-27 02:22:43.059	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099303141	truffle	\N
614	rkmgag0abm6elwwtvp7g79hg	2026-04-27 02:22:42.454	2026-04-27 02:22:43.059	2026-04-27 02:22:43.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099303141	truffle	\N
615	zkbs2fr26azo5w7wb9o1mze5	2026-04-27 02:22:43.283	2026-04-27 02:22:43.819	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825031972	SHYAMAL SODHAN	\N
617	zkbs2fr26azo5w7wb9o1mze5	2026-04-27 02:22:43.283	2026-04-27 02:22:43.819	2026-04-27 02:22:43.842	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825031972	SHYAMAL SODHAN	\N
624	btqfm2sm44jtpylkk5z1vthn	2026-04-27 02:22:45.686	2026-04-27 02:22:46.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905406785	ankit	\N
626	btqfm2sm44jtpylkk5z1vthn	2026-04-27 02:22:45.686	2026-04-27 02:22:46.087	2026-04-27 02:22:46.107	\N	\N	\N	\N	\N	\N	\N	\N	\N	8905406785	ankit	\N
633	vvnk9cjvy614lphwtwevt2o9	2026-04-27 02:22:47.157	2026-04-27 02:22:47.475	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383195511	devansh	\N
635	vvnk9cjvy614lphwtwevt2o9	2026-04-27 02:22:47.157	2026-04-27 02:22:47.475	2026-04-27 02:22:47.49	\N	\N	\N	\N	\N	\N	\N	\N	\N	7383195511	devansh	\N
756	ptc7iicfe1b4odpy9il9x6vm	2026-04-27 02:23:16.589	2026-04-27 02:23:16.874	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820592402	seema mehta	\N
642	ztoy40hbbv8xp11d2evhzwo8	2026-04-27 02:22:48.556	2026-04-27 02:22:48.956	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099960667	pooja	\N
644	ztoy40hbbv8xp11d2evhzwo8	2026-04-27 02:22:48.556	2026-04-27 02:22:48.956	2026-04-27 02:22:48.972	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099960667	pooja	\N
758	ptc7iicfe1b4odpy9il9x6vm	2026-04-27 02:23:16.589	2026-04-27 02:23:16.874	2026-04-27 02:23:16.887	\N	\N	\N	\N	\N	\N	\N	\N	\N	9820592402	seema mehta	\N
781	rg6rmiht47p6ud02qqlgbtd4	2026-04-27 02:23:21.4	2026-04-27 02:23:21.809	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
663	cjmiaqien5dsgb22gxizjfle	2026-04-27 02:22:52.029	2026-04-27 02:22:52.428	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714714400	mamtaben	\N
665	cjmiaqien5dsgb22gxizjfle	2026-04-27 02:22:52.029	2026-04-27 02:22:52.428	2026-04-27 02:22:52.443	\N	\N	\N	\N	\N	\N	\N	\N	\N	9714714400	mamtaben	\N
672	e729ldl5wj0u6kxq2560mrdy	2026-04-27 02:22:53.584	2026-04-27 02:22:53.928	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925833311	KUSUM GUPTA	\N
674	e729ldl5wj0u6kxq2560mrdy	2026-04-27 02:22:53.584	2026-04-27 02:22:53.928	2026-04-27 02:22:53.94	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925833311	KUSUM GUPTA	\N
765	kiig3m31taxdf2i2m61dj1fv	2026-04-27 02:23:17.785	2026-04-27 02:23:18.27	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727588999	Ashok Patel	\N
692	x7a3nvavue3dhixhy89hedbf	2026-04-27 02:23:01.381	2026-04-27 02:23:02.394	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712831249	HIMANSHU RAVAT	\N
767	kiig3m31taxdf2i2m61dj1fv	2026-04-27 02:23:17.785	2026-04-27 02:23:18.27	2026-04-27 02:23:18.285	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727588999	Ashok Patel	\N
695	yy6z9qpa9hezz5g4uq4j1jy0	2026-04-27 02:23:02.708	2026-04-27 02:23:03.301	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971735111	LALIT	\N
697	yy6z9qpa9hezz5g4uq4j1jy0	2026-04-27 02:23:02.708	2026-04-27 02:23:03.301	2026-04-27 02:23:03.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	9971735111	LALIT	\N
651	vxev5yzboj8ok1g9rshxb3pj	2026-04-27 02:22:49.979	2026-04-27 02:23:20.017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712745736	prashant udani	\N
774	vxev5yzboj8ok1g9rshxb3pj	2026-04-27 02:22:49.979	2026-04-27 02:23:20.017	2026-04-27 02:23:20.034	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712745736	prashant udani	\N
783	rg6rmiht47p6ud02qqlgbtd4	2026-04-27 02:23:21.4	2026-04-27 02:23:21.809	2026-04-27 02:23:21.825	\N	\N	\N	\N	\N	\N	\N	\N	\N	9824300707	vikram veri	\N
788	i35oo3o7i66zkkz0tcfspd6k	2026-04-27 02:23:23.235	2026-04-27 02:23:23.706	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879694741	dharmendra giri	\N
790	i35oo3o7i66zkkz0tcfspd6k	2026-04-27 02:23:23.235	2026-04-27 02:23:23.706	2026-04-27 02:23:23.721	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879694741	dharmendra giri	\N
791	k4fdzkhj4wgls3js4f0ecoxz	2026-04-27 02:22:05.154	2026-04-27 02:23:24.299	2026-04-27 02:23:24.314	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909947512	riddhi pandya	\N
798	ukoz4hlmbp7044dykhr8udbl	2026-04-27 02:23:25.368	2026-04-27 02:23:25.682	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998361500	RAJSHREE	\N
800	ukoz4hlmbp7044dykhr8udbl	2026-04-27 02:23:25.368	2026-04-27 02:23:25.682	2026-04-27 02:23:25.693	\N	\N	\N	\N	\N	\N	\N	\N	\N	9998361500	RAJSHREE	\N
811	k3tr8p68getgu4tvmdqq7ilr	2026-04-27 02:23:27.626	2026-04-27 02:23:27.952	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978765498	aashman	\N
813	k3tr8p68getgu4tvmdqq7ilr	2026-04-27 02:23:27.626	2026-04-27 02:23:27.952	2026-04-27 02:23:27.965	\N	\N	\N	\N	\N	\N	\N	\N	\N	9978765498	aashman	\N
814	cngjq0pu5xh2hjyxl7bt4xlx	2026-04-27 02:23:28.079	2026-04-27 02:23:28.501	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9624228993	lala khan	\N
816	cngjq0pu5xh2hjyxl7bt4xlx	2026-04-27 02:23:28.079	2026-04-27 02:23:28.501	2026-04-27 02:23:28.513	\N	\N	\N	\N	\N	\N	\N	\N	\N	9624228993	lala khan	\N
747	hoz5ugezfy7cf2v3ovojwk3r	2026-04-27 02:23:15.28	2026-04-27 02:23:29.038	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
817	hoz5ugezfy7cf2v3ovojwk3r	2026-04-27 02:23:15.28	2026-04-27 02:23:29.038	2026-04-27 02:23:29.053	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879793623	rekha ben	\N
820	iny8tutwr8lc94bibhddwnn4	2026-04-27 02:23:29.196	2026-04-27 02:23:29.603	2026-04-27 02:23:29.615	\N	\N	\N	\N	\N	\N	\N	\N	\N	7284095245	MIHIR SONI	\N
821	fjty67m8l25l2oo0ydpxcel6	2026-04-27 02:23:29.719	2026-04-27 02:23:30.03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016080395	RAHUL PANCHAL	\N
823	fjty67m8l25l2oo0ydpxcel6	2026-04-27 02:23:29.719	2026-04-27 02:23:30.03	2026-04-27 02:23:30.042	\N	\N	\N	\N	\N	\N	\N	\N	\N	9016080395	RAHUL PANCHAL	\N
834	uix6bxy55i9636m2wuhqch2y	2026-04-27 02:23:31.89	2026-04-27 02:23:32.22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974197719	HET VAIDYA	\N
836	uix6bxy55i9636m2wuhqch2y	2026-04-27 02:23:31.89	2026-04-27 02:23:32.22	2026-04-27 02:23:32.232	\N	\N	\N	\N	\N	\N	\N	\N	\N	9974197719	HET VAIDYA	\N
843	g0grh3jckec52beznizb1jt3	2026-04-27 02:23:33.283	2026-04-27 02:23:33.595	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825074117	LOVE SHAH	\N
845	g0grh3jckec52beznizb1jt3	2026-04-27 02:23:33.283	2026-04-27 02:23:33.595	2026-04-27 02:23:33.607	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825074117	LOVE SHAH	\N
847	eao9t5ftvzq3m50bgu1y5ukm	2026-04-27 02:23:34.206	2026-04-27 02:23:34.519	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141493939	ANIL CHAUHAN	\N
849	eao9t5ftvzq3m50bgu1y5ukm	2026-04-27 02:23:34.206	2026-04-27 02:23:34.519	2026-04-27 02:23:34.531	\N	\N	\N	\N	\N	\N	\N	\N	\N	8141493939	ANIL CHAUHAN	\N
856	gu0a1l849k184s220zjs072b	2026-04-27 02:23:35.456	2026-04-27 02:23:35.875	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
858	gu0a1l849k184s220zjs072b	2026-04-27 02:23:35.456	2026-04-27 02:23:35.875	2026-04-27 02:23:35.889	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426561178	Satish Hosiery Mart	\N
865	b1d9sc60dbmw8sj3yh5mgck6	2026-04-27 02:23:36.848	2026-04-27 02:23:37.214	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879845619	sapna	\N
867	b1d9sc60dbmw8sj3yh5mgck6	2026-04-27 02:23:36.848	2026-04-27 02:23:37.214	2026-04-27 02:23:37.226	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879845619	sapna	\N
874	wdlf6407xbnfm4lynccdx9bg	2026-04-27 02:23:38.161	2026-04-27 02:23:38.457	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825016858	eva	\N
876	wdlf6407xbnfm4lynccdx9bg	2026-04-27 02:23:38.161	2026-04-27 02:23:38.457	2026-04-27 02:23:38.47	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825016858	eva	\N
880	x9t3qdig3rduo8x9s2hlgkxy	2026-04-27 02:23:39.108	2026-04-27 02:23:39.403	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
882	x9t3qdig3rduo8x9s2hlgkxy	2026-04-27 02:23:39.108	2026-04-27 02:23:39.403	2026-04-27 02:23:39.415	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979307788	Pruthvi Foundation	\N
889	ib0fh1a9n4qs80q6541qoo4q	2026-04-27 02:23:40.392	2026-04-27 02:23:40.7	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426331366	sanjays wife	\N
891	ib0fh1a9n4qs80q6541qoo4q	2026-04-27 02:23:40.392	2026-04-27 02:23:40.7	2026-04-27 02:23:40.712	\N	\N	\N	\N	\N	\N	\N	\N	\N	9426331366	sanjays wife	\N
893	v8j4pag6avrnih3w44no7nwi	2026-04-27 02:23:41.324	2026-04-27 02:23:41.606	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6354771728	SUJATA	\N
895	v8j4pag6avrnih3w44no7nwi	2026-04-27 02:23:41.324	2026-04-27 02:23:41.606	2026-04-27 02:23:41.619	\N	\N	\N	\N	\N	\N	\N	\N	\N	6354771728	SUJATA	\N
910	h1bve8n607li38msq9hiuckq	2026-04-27 02:23:44.317	2026-04-27 02:23:44.622	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898028962	DOGDOM TRUST	\N
912	h1bve8n607li38msq9hiuckq	2026-04-27 02:23:44.317	2026-04-27 02:23:44.622	2026-04-27 02:23:44.633	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898028962	DOGDOM TRUST	\N
919	r6m8d60233oc47goxjp1y4o7	2026-04-27 02:23:45.555	2026-04-27 02:23:45.852	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825032267	SARIKA BHATT	\N
921	r6m8d60233oc47goxjp1y4o7	2026-04-27 02:23:45.555	2026-04-27 02:23:45.852	2026-04-27 02:23:45.864	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825032267	SARIKA BHATT	\N
928	kk5a132fs0k8gng2zfd81tox	2026-04-27 02:23:46.775	2026-04-27 02:23:47.199	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429230032	ravi joshi	\N
930	kk5a132fs0k8gng2zfd81tox	2026-04-27 02:23:46.775	2026-04-27 02:23:47.199	2026-04-27 02:23:47.211	\N	\N	\N	\N	\N	\N	\N	\N	\N	9429230032	ravi joshi	\N
933	alqb5s4rpnmx1ia7vlyy9g4f	2026-04-27 02:23:47.322	2026-04-27 02:23:47.634	2026-04-27 02:23:47.646	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841665	fram mam	\N
934	qn41a3ixv3zt78iacliobflx	2026-04-27 02:23:47.743	2026-04-27 02:23:48.058	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9601350802	gurucharan upadhyay	\N
936	qn41a3ixv3zt78iacliobflx	2026-04-27 02:23:47.743	2026-04-27 02:23:48.058	2026-04-27 02:23:48.072	\N	\N	\N	\N	\N	\N	\N	\N	\N	9601350802	gurucharan upadhyay	\N
949	li31o1bkmdsuevxf0ofo3po2	2026-04-27 02:23:49.961	2026-04-27 02:23:50.277	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727704101	rachana daga	\N
951	li31o1bkmdsuevxf0ofo3po2	2026-04-27 02:23:49.961	2026-04-27 02:23:50.277	2026-04-27 02:23:50.289	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727704101	rachana daga	\N
958	ovsd1qz8tg3ccdsqp5k55jak	2026-04-27 02:23:51.17	2026-04-27 02:23:51.455	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879391224	NANDITA GHOSH	\N
960	ovsd1qz8tg3ccdsqp5k55jak	2026-04-27 02:23:51.17	2026-04-27 02:23:51.455	2026-04-27 02:23:51.465	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879391224	NANDITA GHOSH	\N
824	altr0or6wkmngu50qo00yrri	2026-04-27 02:23:30.141	2026-04-27 02:23:30.441	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874730432	amit parmar	\N
826	altr0or6wkmngu50qo00yrri	2026-04-27 02:23:30.141	2026-04-27 02:23:30.441	2026-04-27 02:23:30.452	\N	\N	\N	\N	\N	\N	\N	\N	\N	7874730432	amit parmar	\N
831	gpb3g8uqwpvkpffvvlqmpb8t	2026-04-27 02:23:31.476	2026-04-27 02:23:31.771	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925054051	pooja	\N
833	gpb3g8uqwpvkpffvvlqmpb8t	2026-04-27 02:23:31.476	2026-04-27 02:23:31.771	2026-04-27 02:23:31.782	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925054051	pooja	\N
840	rdy2zlv9g0616xu2tm6qx1tn	2026-04-27 02:23:32.854	2026-04-27 02:23:33.176	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
842	rdy2zlv9g0616xu2tm6qx1tn	2026-04-27 02:23:32.854	2026-04-27 02:23:33.176	2026-04-27 02:23:33.188	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825656788	JYOTI RAJGOR	\N
850	uau0q8b8xbc15yeem46z1bkq	2026-04-27 02:23:34.625	2026-04-27 02:23:34.931	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
852	uau0q8b8xbc15yeem46z1bkq	2026-04-27 02:23:34.625	2026-04-27 02:23:34.931	2026-04-27 02:23:34.942	\N	\N	\N	\N	\N	\N	\N	\N	\N	9879797828	niti dave	\N
859	wpq3w8sovxtr0ukz0g49jfwu	2026-04-27 02:23:36.001	2026-04-27 02:23:36.312	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898001888	jaymin	\N
861	wpq3w8sovxtr0ukz0g49jfwu	2026-04-27 02:23:36.001	2026-04-27 02:23:36.312	2026-04-27 02:23:36.323	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898001888	jaymin	\N
868	x5kbiecxu7w15m6eel8ecoz8	2026-04-27 02:23:37.328	2026-04-27 02:23:37.646	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687991792	raj	\N
870	x5kbiecxu7w15m6eel8ecoz8	2026-04-27 02:23:37.328	2026-04-27 02:23:37.646	2026-04-27 02:23:37.658	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687991792	raj	\N
883	zuzx3b3smp3y3aoywx88rhsn	2026-04-27 02:23:39.512	2026-04-27 02:23:39.797	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726631317	paridhi	\N
885	zuzx3b3smp3y3aoywx88rhsn	2026-04-27 02:23:39.512	2026-04-27 02:23:39.797	2026-04-27 02:23:39.808	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726631317	paridhi	\N
892	qw6lc5vw5jlt0z98y5sfa0qn	2026-04-27 01:32:22.932	2026-04-27 02:23:41.223	2026-04-27 02:23:41.233	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825011242	dhavnit shah	\N
899	vvqy3q457sykpka5cuk9w02n	2026-04-27 02:23:42.126	2026-04-27 02:23:42.426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
901	vvqy3q457sykpka5cuk9w02n	2026-04-27 02:23:42.126	2026-04-27 02:23:42.426	2026-04-27 02:23:42.44	\N	\N	\N	\N	\N	\N	\N	\N	\N	9823468705	BHAVNA PUROHIT	\N
902	uqei75qg65mxnl8m1eqp39hr	2026-04-27 02:22:49.076	2026-04-27 02:23:42.921	2026-04-27 02:23:42.931	\N	\N	\N	\N	\N	\N	\N	\N	\N	9512976003	MONIKA PANCHOLI	\N
907	xy6udnfp8oeem55ciop96vp5	2026-04-27 02:23:43.905	2026-04-27 02:23:44.198	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
909	xy6udnfp8oeem55ciop96vp5	2026-04-27 02:23:43.905	2026-04-27 02:23:44.198	2026-04-27 02:23:44.21	\N	\N	\N	\N	\N	\N	\N	\N	\N	9727887963	shweta gulati	\N
916	p5yte2tlls4wpilq7o5i6x7o	2026-04-27 02:23:45.156	2026-04-27 02:23:45.447	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925542520	vrushil	\N
918	p5yte2tlls4wpilq7o5i6x7o	2026-04-27 02:23:45.156	2026-04-27 02:23:45.447	2026-04-27 02:23:45.459	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925542520	vrushil	\N
925	r6o14he44kfhnww4p8ge1z1x	2026-04-27 02:23:46.378	2026-04-27 02:23:46.673	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428018749	BIJAL KOTHARI	\N
927	r6o14he44kfhnww4p8ge1z1x	2026-04-27 02:23:46.378	2026-04-27 02:23:46.673	2026-04-27 02:23:46.685	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428018749	BIJAL KOTHARI	\N
937	q3kprl5b8ccf31hu69m9qwtf	2026-04-27 02:23:48.175	2026-04-27 02:23:48.465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8511995577	Dhawal Rajput	\N
939	q3kprl5b8ccf31hu69m9qwtf	2026-04-27 02:23:48.175	2026-04-27 02:23:48.465	2026-04-27 02:23:48.479	\N	\N	\N	\N	\N	\N	\N	\N	\N	8511995577	Dhawal Rajput	\N
946	ydtoi73idkoo1mzge0dfgkhp	2026-04-27 02:23:49.468	2026-04-27 02:23:49.847	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427454587	j,p pandya	\N
948	ydtoi73idkoo1mzge0dfgkhp	2026-04-27 02:23:49.468	2026-04-27 02:23:49.847	2026-04-27 02:23:49.859	\N	\N	\N	\N	\N	\N	\N	\N	\N	9427454587	j,p pandya	\N
955	zccdb7in2cvmm1a95yfvczj7	2026-04-27 02:23:50.784	2026-04-27 02:23:51.077	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
957	zccdb7in2cvmm1a95yfvczj7	2026-04-27 02:23:50.784	2026-04-27 02:23:51.077	2026-04-27 02:23:51.087	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712559505	VISHU VYAS	\N
827	gdaa6bjpmp4pqsrcbgi6wwrf	2026-04-27 02:23:30.545	2026-04-27 02:23:30.871	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9092705701	PRITA	\N
829	gdaa6bjpmp4pqsrcbgi6wwrf	2026-04-27 02:23:30.545	2026-04-27 02:23:30.871	2026-04-27 02:23:30.884	\N	\N	\N	\N	\N	\N	\N	\N	\N	9092705701	PRITA	\N
830	w5j0vo56mo8ooxo95j5fmq61	2026-04-27 02:20:20.683	2026-04-27 02:23:31.37	2026-04-27 02:23:31.382	\N	\N	\N	\N	\N	\N	\N	\N	\N	8160571617	masoom charitable trust	\N
837	bcwgykrkexdfnbhv9fovh9jc	2026-04-27 02:23:32.323	2026-04-27 02:23:32.713	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925123410	hitesh	\N
839	bcwgykrkexdfnbhv9fovh9jc	2026-04-27 02:23:32.323	2026-04-27 02:23:32.713	2026-04-27 02:23:32.726	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925123410	hitesh	\N
846	iex2gidjrjy3ngrk4d6153bh	2026-04-27 02:22:46.26	2026-04-27 02:23:34.089	2026-04-27 02:23:34.099	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925008880	MAHIMA	\N
853	xlyiinz6d16klmcf8pdiu953	2026-04-27 02:23:35.038	2026-04-27 02:23:35.33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925096105	devansh	\N
855	xlyiinz6d16klmcf8pdiu953	2026-04-27 02:23:35.038	2026-04-27 02:23:35.33	2026-04-27 02:23:35.341	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925096105	devansh	\N
862	ruk0f3wnd1q0d9gt5ch285hx	2026-04-27 02:23:36.414	2026-04-27 02:23:36.727	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725683891	jagdish	\N
864	ruk0f3wnd1q0d9gt5ch285hx	2026-04-27 02:23:36.414	2026-04-27 02:23:36.727	2026-04-27 02:23:36.739	\N	\N	\N	\N	\N	\N	\N	\N	\N	9725683891	jagdish	\N
871	lf04fj1bkka71uxm0houbjv5	2026-04-27 02:23:37.75	2026-04-27 02:23:38.055	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979094904	MISS SAIYAD	\N
873	lf04fj1bkka71uxm0houbjv5	2026-04-27 02:23:37.75	2026-04-27 02:23:38.055	2026-04-27 02:23:38.069	\N	\N	\N	\N	\N	\N	\N	\N	\N	9979094904	MISS SAIYAD	\N
877	skxyot9572p60odm326s3gsu	2026-04-27 02:23:38.58	2026-04-27 02:23:38.999	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016117707	tasmiyah	\N
879	skxyot9572p60odm326s3gsu	2026-04-27 02:23:38.58	2026-04-27 02:23:38.999	2026-04-27 02:23:39.01	\N	\N	\N	\N	\N	\N	\N	\N	\N	7016117707	tasmiyah	\N
886	m91sheyqhlqpkf2urp3bk2l1	2026-04-27 02:23:39.897	2026-04-27 02:23:40.28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712866736	alapna	\N
888	m91sheyqhlqpkf2urp3bk2l1	2026-04-27 02:23:39.897	2026-04-27 02:23:40.28	2026-04-27 02:23:40.293	\N	\N	\N	\N	\N	\N	\N	\N	\N	9712866736	alapna	\N
896	goimzok00n5y3cm9tqbieko9	2026-04-27 02:23:41.718	2026-04-27 02:23:42.021	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687654876	shipra zha	\N
898	goimzok00n5y3cm9tqbieko9	2026-04-27 02:23:41.718	2026-04-27 02:23:42.021	2026-04-27 02:23:42.034	\N	\N	\N	\N	\N	\N	\N	\N	\N	9687654876	shipra zha	\N
903	kwq199om2a50grezo0b95x2l	2026-04-27 02:23:43.022	2026-04-27 02:23:43.305	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898127979	joel	\N
905	kwq199om2a50grezo0b95x2l	2026-04-27 02:23:43.022	2026-04-27 02:23:43.305	2026-04-27 02:23:43.317	\N	\N	\N	\N	\N	\N	\N	\N	\N	9898127979	joel	\N
906	zeaf9q45mjj4o5f2pb0ves83	2026-04-27 02:22:02.682	2026-04-27 02:23:43.798	2026-04-27 02:23:43.81	\N	\N	\N	\N	\N	\N	\N	\N	\N	9825057419	VIDHI MAM	\N
913	gfgvvhsyiki2kxb9v3ltwniu	2026-04-27 02:23:44.734	2026-04-27 02:23:45.049	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
915	gfgvvhsyiki2kxb9v3ltwniu	2026-04-27 02:23:44.734	2026-04-27 02:23:45.049	2026-04-27 02:23:45.062	\N	\N	\N	\N	\N	\N	\N	\N	\N	8875197346	HITESHBHAI	\N
922	uuh4eb7w74rab2gt34ey6ph7	2026-04-27 02:23:45.969	2026-04-27 02:23:46.274	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099953164	rahul chauhan	\N
924	uuh4eb7w74rab2gt34ey6ph7	2026-04-27 02:23:45.969	2026-04-27 02:23:46.274	2026-04-27 02:23:46.286	\N	\N	\N	\N	\N	\N	\N	\N	\N	9099953164	rahul chauhan	\N
931	alqb5s4rpnmx1ia7vlyy9g4f	2026-04-27 02:23:47.322	2026-04-27 02:23:47.634	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9428841665	fram mam	\N
940	leupxi918h8difpv8czv66gt	2026-04-27 02:23:48.578	2026-04-27 02:23:48.894	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
942	leupxi918h8difpv8czv66gt	2026-04-27 02:23:48.578	2026-04-27 02:23:48.894	2026-04-27 02:23:48.906	\N	\N	\N	\N	\N	\N	\N	\N	\N	9909360682	Maulika Hely	\N
943	kk7syuq4k3nsfiustv1t1i2s	2026-04-27 02:23:49.05	2026-04-27 02:23:49.357	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726878225	umang	\N
945	kk7syuq4k3nsfiustv1t1i2s	2026-04-27 02:23:49.05	2026-04-27 02:23:49.357	2026-04-27 02:23:49.373	\N	\N	\N	\N	\N	\N	\N	\N	\N	9726878225	umang	\N
952	arffb1kgstg5xa9a8fd3m6cy	2026-04-27 02:23:50.394	2026-04-27 02:23:50.68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925025264	parth mehta	\N
954	arffb1kgstg5xa9a8fd3m6cy	2026-04-27 02:23:50.394	2026-04-27 02:23:50.68	2026-04-27 02:23:50.69	\N	\N	\N	\N	\N	\N	\N	\N	\N	9925025264	parth mehta	\N
\.


--
-- Data for Name: customers_customet_status_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_customet_status_lnk (id, customer_id, customet_status_id) FROM stdin;
1	8	5
3	41	5
70	116	34
62	51	1
5	47	7
85	131	34
88	134	34
64	49	11
66	45	5
96	142	35
68	43	5
98	234	1
99	236	35
100	237	11
101	239	25
104	243	11
106	246	11
107	248	25
110	252	11
111	254	25
112	255	11
114	258	11
115	260	25
118	262	11
119	264	25
120	265	11
121	267	25
126	272	11
127	274	25
130	276	11
131	278	25
132	279	11
133	281	25
134	282	11
135	284	25
136	285	11
137	287	25
140	289	11
95	141	25
144	293	11
97	233	33
168	315	7
169	317	33
172	249	7
180	312	9
181	325	32
183	326	33
184	318	1
185	327	35
186	328	11
187	330	25
188	331	11
189	333	25
190	334	11
191	336	25
192	337	11
193	339	25
194	340	11
195	342	25
196	343	11
197	345	25
198	346	11
199	348	25
200	349	11
201	351	25
202	352	11
204	355	11
205	357	25
206	358	11
207	360	25
208	361	11
209	363	25
210	364	11
211	366	25
212	367	11
213	369	25
214	370	11
215	372	25
216	373	11
217	375	25
218	376	11
219	378	25
220	379	11
221	381	25
222	382	11
223	384	25
224	385	11
225	387	25
226	388	11
228	391	11
229	393	25
230	394	11
231	396	25
232	397	11
233	399	25
234	400	11
235	402	25
236	403	11
237	405	25
238	406	11
239	408	25
240	409	11
241	411	25
242	412	11
243	414	25
244	415	11
245	417	25
246	418	11
247	420	25
248	421	11
249	423	25
250	424	11
251	426	25
252	427	11
253	429	25
254	432	11
257	435	25
258	436	11
259	438	25
260	439	11
261	441	25
262	442	11
264	445	11
265	447	25
266	448	11
267	450	25
269	451	25
270	452	11
271	454	25
272	455	11
274	458	11
276	461	11
278	464	11
279	466	25
280	467	11
281	469	25
282	470	11
283	472	25
284	473	11
285	475	25
286	476	11
287	478	25
288	479	11
289	481	25
291	482	25
292	483	11
293	485	25
294	486	11
295	488	25
296	489	11
297	491	25
298	492	11
299	494	25
301	495	25
302	496	11
303	498	25
304	499	11
305	501	25
306	502	11
307	504	25
308	505	11
309	507	25
310	508	11
311	510	25
312	511	11
314	514	11
316	517	11
317	519	25
318	520	11
319	522	25
320	523	11
328	533	11
321	525	25
326	530	11
327	532	25
332	539	11
333	541	25
334	542	11
335	544	25
341	551	25
346	558	11
347	560	25
352	567	11
353	569	25
366	588	11
367	590	25
372	597	11
373	599	25
378	606	11
379	608	25
388	621	11
389	623	25
394	630	11
395	632	25
400	639	11
401	641	25
406	648	11
407	650	25
412	657	11
413	659	25
418	666	11
419	668	25
426	678	11
427	680	25
432	687	11
433	689	25
438	692	11
439	694	25
322	526	11
323	528	25
325	529	25
330	536	11
331	538	25
336	545	11
337	547	25
344	555	11
345	557	25
350	564	11
351	566	25
356	573	11
357	575	25
360	579	11
361	581	25
362	582	11
363	584	25
368	591	11
369	593	25
376	603	11
377	605	25
382	612	11
383	614	25
384	615	11
385	617	25
390	624	11
391	626	25
396	633	11
397	635	25
402	642	11
403	644	25
408	651	11
416	663	11
417	665	25
422	672	11
423	674	25
440	695	11
441	697	25
329	535	25
338	548	11
339	550	25
342	552	11
343	554	25
348	561	11
349	563	25
354	570	11
355	572	25
358	576	11
359	578	25
364	585	11
365	587	25
370	594	11
371	596	25
374	600	11
375	602	25
380	609	11
381	611	25
386	618	11
387	620	25
392	627	11
398	636	11
399	638	25
404	645	11
410	654	11
411	656	25
414	660	11
415	662	25
420	669	11
421	671	25
424	675	11
425	677	25
428	681	11
429	683	25
430	684	11
431	686	25
442	698	11
443	700	25
444	701	11
445	703	25
446	704	11
447	706	25
448	707	11
449	709	25
451	710	25
452	711	11
453	713	25
454	714	11
455	716	25
456	717	11
457	719	25
458	720	11
459	722	25
460	723	11
461	725	25
462	726	11
463	728	25
464	729	11
465	731	25
466	732	11
467	734	25
468	735	11
469	737	25
470	738	11
471	740	25
472	741	11
473	743	25
474	744	11
475	746	25
476	747	11
478	750	11
479	752	25
480	753	11
481	755	25
482	756	11
483	758	25
484	759	11
485	761	25
486	762	11
487	764	25
488	765	11
489	767	25
490	768	11
491	770	25
492	771	11
493	773	25
495	774	25
496	775	11
497	777	25
498	778	11
499	780	25
500	781	11
501	783	25
502	784	11
503	786	25
505	787	25
506	788	11
507	790	25
509	791	25
510	792	11
511	794	25
512	795	11
513	797	25
514	798	11
515	800	25
516	801	11
517	803	25
519	804	25
520	805	11
521	807	25
522	808	11
523	810	25
524	811	11
525	813	25
526	814	11
527	816	25
529	817	25
530	818	11
531	820	25
532	821	11
533	823	25
534	824	11
535	826	25
536	827	11
537	829	25
539	830	25
540	831	11
541	833	25
542	834	11
543	836	25
544	837	11
545	839	25
546	840	11
547	842	25
548	843	11
549	845	25
551	846	25
552	847	11
553	849	25
554	850	11
555	852	25
556	853	11
557	855	25
558	856	11
559	858	25
560	859	11
561	861	25
562	862	11
563	864	25
564	865	11
565	867	25
566	868	11
567	870	25
568	871	11
569	873	25
570	874	11
571	876	25
572	877	11
573	879	25
574	880	11
575	882	25
576	883	11
577	885	25
578	886	11
579	888	25
580	889	11
581	891	25
583	892	25
584	893	11
585	895	25
586	896	11
587	898	25
588	899	11
589	901	25
591	902	25
592	903	11
593	905	25
595	906	25
596	907	11
597	909	25
598	910	11
599	912	25
600	913	11
601	915	25
602	916	11
603	918	25
608	925	11
609	927	25
616	937	11
617	939	25
622	946	11
623	948	25
628	955	11
629	957	25
604	919	11
605	921	25
610	928	11
611	930	25
612	931	11
613	933	25
614	934	11
615	936	25
624	949	11
625	951	25
630	958	11
631	960	25
606	922	11
607	924	25
618	940	11
619	942	25
620	943	11
621	945	25
626	952	11
627	954	25
632	963	34
\.


--
-- Data for Name: customers_pets_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_pets_lnk (id, customer_id, pet_id, pet_ord) FROM stdin;
106	41	86	1
107	116	87	1
237	230	189	1
238	230	191	2
239	230	193	3
240	231	190	1
241	231	192	2
242	231	194	3
138	45	104	1
143	134	107	1
244	233	85	2
245	961	155	1
246	962	121	1
243	233	195	1
99	8	69	1
248	963	195	1
144	49	108	1
157	141	115	1
158	51	116	1
159	142	117	1
160	143	118	1
161	144	119	1
162	145	120	1
101	47	69	1
103	47	84	2
164	147	122	1
165	148	123	1
166	149	124	1
167	150	125	1
168	151	126	1
169	152	127	1
170	153	128	1
171	154	129	1
172	155	130	1
173	156	131	1
174	157	132	1
175	158	133	1
176	159	134	1
108	43	88	1
137	131	103	1
177	160	135	1
178	161	136	1
179	162	137	1
180	163	138	1
181	164	139	1
182	165	140	1
183	166	141	1
184	167	142	1
185	168	143	1
188	171	146	1
189	172	147	1
190	173	148	1
191	174	149	1
192	175	150	1
193	176	151	1
196	179	154	1
198	181	156	1
199	182	157	1
200	183	158	1
202	185	160	1
203	186	161	1
204	187	162	1
205	188	163	1
206	191	159	1
194	177	152	1
210	177	166	2
215	196	168	1
216	196	169	2
186	169	144	1
218	197	170	1
\.


--
-- Data for Name: customers_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers_store_lnk (id, customer_id, store_id) FROM stdin;
755	703	2
759	707	1
763	711	1
77	8	2
175	41	2
176	116	2
177	43	2
364	312	1
367	315	1
369	317	2
370	318	3
206	131	2
207	45	2
377	325	2
212	134	2
213	49	2
378	326	2
379	327	4
380	328	1
382	330	2
383	331	1
226	141	2
227	51	2
228	142	2
229	143	2
230	144	2
231	145	2
233	147	2
234	148	2
235	149	2
236	150	2
237	151	2
238	152	2
239	153	2
240	154	2
241	155	2
242	156	2
243	157	2
244	158	2
245	159	2
246	160	2
385	333	2
247	161	2
248	162	2
249	163	2
250	164	2
251	165	2
252	166	2
253	167	2
254	168	2
255	169	2
386	334	1
257	171	2
258	172	2
259	173	2
260	174	2
261	175	2
262	176	2
263	177	2
265	179	2
267	181	2
268	182	2
269	183	2
388	336	2
271	185	2
272	186	2
273	187	2
274	188	2
275	191	2
389	337	1
281	196	2
283	197	2
284	47	3
285	233	4
286	234	3
391	339	2
288	236	4
289	237	1
392	340	1
291	239	2
394	342	2
295	243	3
395	343	1
298	246	3
300	248	4
301	249	1
397	345	2
398	346	1
304	252	1
306	254	2
307	255	1
400	348	2
310	258	1
401	349	1
312	260	2
314	262	3
403	351	2
316	264	4
317	265	3
404	352	1
319	267	4
407	355	1
324	272	3
326	274	4
328	276	3
409	357	2
330	278	4
331	279	3
410	358	1
333	281	4
334	282	3
336	284	4
337	285	3
412	360	2
339	287	4
341	289	1
413	361	1
345	293	1
415	363	2
416	364	1
418	366	2
419	367	1
421	369	2
422	370	1
424	372	2
425	373	1
427	375	2
428	376	1
430	378	2
431	379	1
433	381	2
434	382	1
436	384	2
437	385	1
439	387	2
440	388	1
443	391	1
445	393	2
446	394	1
448	396	2
449	397	1
451	399	2
452	400	1
454	402	2
455	403	1
457	405	2
458	406	1
460	408	2
461	409	1
463	411	2
464	412	1
466	414	2
467	415	1
469	417	2
470	418	1
472	420	2
473	421	1
475	423	2
476	424	1
478	426	2
479	427	1
481	429	2
482	430	1
483	431	2
484	432	1
487	435	2
488	436	1
490	438	2
491	439	1
493	441	2
494	442	1
497	445	1
507	455	1
756	704	1
499	447	2
504	452	1
506	454	2
513	461	1
758	706	2
522	470	1
769	717	1
525	473	1
527	475	2
538	486	1
771	719	2
540	488	2
547	495	4
554	502	1
775	723	1
556	504	2
557	505	1
560	508	1
777	725	2
562	510	2
572	520	1
784	732	1
574	522	2
585	533	1
587	535	2
600	548	1
786	734	2
602	550	2
604	552	1
792	740	2
606	554	2
613	561	1
799	747	1
615	563	2
622	570	1
624	572	2
628	576	1
630	578	2
639	587	2
646	594	1
808	756	1
648	596	2
652	600	1
654	602	2
663	611	2
670	618	1
810	758	2
672	620	2
679	627	1
817	765	1
688	636	1
819	767	2
690	638	2
697	645	1
826	774	2
706	654	1
833	781	1
708	656	2
712	660	1
714	662	2
721	669	1
835	783	2
723	671	2
727	675	1
840	788	1
729	677	2
733	681	1
735	683	2
736	684	1
842	790	2
738	686	2
750	698	1
843	791	2
752	700	2
850	798	1
852	800	2
866	814	1
868	816	2
873	821	1
875	823	2
886	834	1
888	836	2
895	843	1
897	845	2
899	847	1
901	849	2
908	856	1
910	858	2
917	865	1
919	867	2
926	874	1
928	876	2
932	880	1
934	882	2
941	889	1
943	891	2
945	893	1
947	895	2
962	910	1
964	912	2
971	919	1
973	921	2
980	928	1
982	930	2
985	933	2
986	934	1
988	936	2
1001	949	1
1003	951	2
1010	958	1
1012	960	2
1013	179	1
1014	961	2
500	448	1
761	709	2
502	450	2
503	451	2
510	458	1
762	710	2
766	714	1
519	467	1
521	469	2
524	472	2
531	479	1
768	716	2
533	481	2
534	482	2
541	489	1
772	720	1
543	491	2
551	499	1
553	501	2
559	507	2
566	514	1
774	722	2
569	517	1
781	729	1
571	519	2
578	526	1
580	528	2
581	529	2
588	536	1
783	731	2
590	538	2
594	542	1
790	738	1
597	545	1
599	547	2
607	555	1
793	741	1
609	557	2
616	564	1
618	566	2
625	573	1
795	743	2
627	575	2
631	579	1
802	750	1
633	581	2
636	584	2
643	591	1
645	593	2
655	603	1
804	752	2
657	605	2
661	609	1
811	759	1
664	612	1
666	614	2
667	615	1
813	761	2
669	617	2
676	624	1
820	768	1
678	626	2
685	633	1
687	635	2
694	642	1
822	770	2
696	644	2
703	651	1
830	778	1
715	663	1
717	665	2
724	672	1
832	780	2
726	674	2
744	692	1
836	784	1
747	695	1
749	697	2
753	701	1
838	786	2
839	787	2
844	792	1
846	794	2
853	801	1
855	803	2
857	805	1
859	807	2
863	811	1
865	813	2
869	817	2
876	824	1
878	826	2
883	831	1
885	833	2
892	840	1
894	842	2
902	850	1
904	852	2
911	859	1
913	861	2
920	868	1
922	870	2
935	883	1
937	885	2
944	892	2
951	899	1
953	901	2
954	902	2
959	907	1
961	909	2
968	916	1
970	918	2
977	925	1
979	927	2
989	937	1
991	939	2
998	946	1
1000	948	2
1007	955	1
1009	957	2
1015	145	1
1016	962	2
516	464	1
765	713	2
518	466	2
528	476	1
778	726	1
530	478	2
535	483	1
537	485	2
544	492	1
780	728	2
546	494	2
548	496	1
787	735	1
550	498	2
563	511	1
789	737	2
575	523	1
796	744	1
577	525	2
582	530	1
584	532	2
591	539	1
798	746	2
593	541	2
596	544	2
603	551	2
610	558	1
805	753	1
612	560	2
619	567	1
621	569	2
634	582	1
807	755	2
637	585	1
814	762	1
640	588	1
642	590	2
649	597	1
816	764	2
651	599	2
658	606	1
823	771	1
660	608	2
673	621	1
675	623	2
682	630	1
825	773	2
684	632	2
691	639	1
827	775	1
693	641	2
700	648	1
702	650	2
709	657	1
829	777	2
711	659	2
718	666	1
847	795	1
720	668	2
730	678	1
732	680	2
739	687	1
849	797	2
741	689	2
746	694	2
856	804	2
860	808	1
862	810	2
870	818	1
872	820	2
879	827	1
881	829	2
882	830	2
889	837	1
891	839	2
898	846	2
905	853	1
907	855	2
914	862	1
916	864	2
923	871	1
925	873	2
929	877	1
931	879	2
938	886	1
940	888	2
948	896	1
950	898	2
955	903	1
957	905	2
958	906	2
965	913	1
967	915	2
974	922	1
976	924	2
983	931	1
992	940	1
994	942	2
995	943	1
997	945	2
1004	952	1
1006	954	2
1018	963	2
\.


--
-- Data for Name: customet_follow_ups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, count, follow_up_date, is_followed, note) FROM stdin;
436	wrydu1gxxc60a089ru8kqayx	2026-04-27 02:23:04.615	2026-04-27 02:23:04.615	2026-04-27 02:23:04.638	\N	\N	\N	0	\N	f	\N
71	u70knba5pstkqsa5pml06nxb	2026-04-26 01:27:33.455	2026-04-26 11:49:38.081	\N	\N	\N	\N	0	2026-04-22	f	
85	u70knba5pstkqsa5pml06nxb	2026-04-26 01:27:33.455	2026-04-26 11:49:38.081	2026-04-26 11:49:38.236	\N	\N	\N	0	2026-04-22	f	
159	d5flqo7kla4ou39s67bf5y3a	2026-04-27 02:10:27.508	2026-04-27 02:10:27.508	\N	\N	\N	\N	0	\N	f	\N
437	t6telcbho340p4sklwxpu0y3	2026-04-27 02:23:05.536	2026-04-27 02:23:05.536	\N	\N	\N	\N	0	\N	f	\N
7	hijrbmd1xd9c8d6cqgq7tg4j	2026-04-18 09:53:50.828	2026-04-26 11:53:53.795	\N	\N	1	\N	0	2026-04-26	f	
87	hijrbmd1xd9c8d6cqgq7tg4j	2026-04-18 09:53:50.828	2026-04-26 11:53:53.795	2026-04-26 11:53:53.826	\N	1	\N	0	2026-04-26	f	
5	vz5c1r5iljw79ffqm0v8dzlt	2026-04-18 09:53:48.111	2026-04-26 13:50:41.704	\N	\N	1	\N	0	2026-03-05	f	
88	vz5c1r5iljw79ffqm0v8dzlt	2026-04-18 09:53:48.111	2026-04-26 13:50:41.704	2026-04-26 13:50:41.767	\N	1	\N	0	2026-03-05	f	
3	wd8mr23qzjs777xvdxeqcakr	2026-04-18 09:53:45.338	2026-04-26 13:53:10.811	\N	\N	1	\N	0	2026-02-15	f	
89	wd8mr23qzjs777xvdxeqcakr	2026-04-18 09:53:45.338	2026-04-26 13:53:10.811	2026-04-26 13:53:10.844	\N	1	\N	0	2026-02-15	f	
11	m6krylvamhaxovd213tkggma	2026-04-18 09:53:56.535	2026-04-26 14:02:03.831	\N	\N	1	\N	0	2026-02-01	f	
90	m6krylvamhaxovd213tkggma	2026-04-18 09:53:56.535	2026-04-26 14:02:03.831	2026-04-26 14:02:03.885	\N	1	\N	0	2026-02-01	f	
91	v1vrabqpz93ygwb8845ckt14	2026-04-27 01:32:09.905	2026-04-27 01:32:09.905	\N	\N	\N	\N	0	\N	f	\N
92	v1vrabqpz93ygwb8845ckt14	2026-04-27 01:32:09.905	2026-04-27 01:32:09.905	2026-04-27 01:32:09.964	\N	\N	\N	0	\N	f	\N
438	t6telcbho340p4sklwxpu0y3	2026-04-27 02:23:05.536	2026-04-27 02:23:05.536	2026-04-27 02:23:05.592	\N	\N	\N	0	\N	f	\N
443	udevh4ynbsjxmx75zk0m6ncy	2026-04-27 02:23:08.419	2026-04-27 02:23:08.419	\N	\N	\N	\N	0	\N	f	\N
444	udevh4ynbsjxmx75zk0m6ncy	2026-04-27 02:23:08.419	2026-04-27 02:23:08.419	2026-04-27 02:23:08.433	\N	\N	\N	0	\N	f	\N
453	jca35fnbks85dq4zr94uaapk	2026-04-27 02:23:11.633	2026-04-27 02:23:11.633	\N	\N	\N	\N	0	\N	f	\N
97	x2cezc4h76bvbrlbljn33l6k	2026-04-27 01:32:11.802	2026-04-27 02:53:17.259	\N	\N	\N	\N	0	2026-04-26	f	
109	iqochqiahusz4dh7ebylew1z	2026-04-27 01:32:15.21	2026-04-27 02:57:56.563	\N	\N	\N	\N	0	2026-04-22	f	
101	y0g0dyas9vm8s15vq8lryl2f	2026-04-27 01:32:12.884	2026-04-27 01:32:12.884	\N	\N	\N	\N	0	\N	f	\N
102	y0g0dyas9vm8s15vq8lryl2f	2026-04-27 01:32:12.884	2026-04-27 01:32:12.884	2026-04-27 01:32:12.898	\N	\N	\N	0	\N	f	\N
105	d20j1n13p98qo3iz67hnpg5s	2026-04-27 01:32:14.012	2026-04-27 01:32:14.012	\N	\N	\N	\N	0	\N	f	\N
106	d20j1n13p98qo3iz67hnpg5s	2026-04-27 01:32:14.012	2026-04-27 01:32:14.012	2026-04-27 01:32:14.024	\N	\N	\N	0	\N	f	\N
111	f7yrjbcwbank968vht3xsneg	2026-04-27 01:32:15.76	2026-04-27 01:32:15.76	\N	\N	\N	\N	0	\N	f	\N
112	f7yrjbcwbank968vht3xsneg	2026-04-27 01:32:15.76	2026-04-27 01:32:15.76	2026-04-27 01:32:15.773	\N	\N	\N	0	\N	f	\N
117	d2qafapl1b7dwm3whm6vynkp	2026-04-27 01:32:17.592	2026-04-27 01:32:17.592	\N	\N	\N	\N	0	\N	f	\N
118	d2qafapl1b7dwm3whm6vynkp	2026-04-27 01:32:17.592	2026-04-27 01:32:17.592	2026-04-27 01:32:17.605	\N	\N	\N	0	\N	f	\N
121	f4cuxeqy69mgvogvosi2eg65	2026-04-27 01:32:18.887	2026-04-27 01:32:18.887	\N	\N	\N	\N	0	\N	f	\N
122	f4cuxeqy69mgvogvosi2eg65	2026-04-27 01:32:18.887	2026-04-27 01:32:18.887	2026-04-27 01:32:18.904	\N	\N	\N	0	\N	f	\N
123	ywm3ooscow91tlo4jr54td3b	2026-04-27 01:32:19.454	2026-04-27 01:32:19.454	\N	\N	\N	\N	0	\N	f	\N
124	ywm3ooscow91tlo4jr54td3b	2026-04-27 01:32:19.454	2026-04-27 01:32:19.454	2026-04-27 01:32:19.468	\N	\N	\N	0	\N	f	\N
125	my282wgkptmty0u08djdhfgw	2026-04-27 01:32:20.025	2026-04-27 01:32:20.025	\N	\N	\N	\N	0	\N	f	\N
15	r3j3tmfqdow2sml8boczy0cs	2026-04-18 10:48:21.067	2026-04-26 01:44:30.574	\N	\N	1	\N	0	2026-04-19	f	bbbb
81	r3j3tmfqdow2sml8boczy0cs	2026-04-18 10:48:21.067	2026-04-26 01:44:30.574	2026-04-26 01:44:30.607	\N	1	\N	0	2026-04-19	f	bbbb
126	my282wgkptmty0u08djdhfgw	2026-04-27 01:32:20.025	2026-04-27 01:32:20.025	2026-04-27 01:32:20.039	\N	\N	\N	0	\N	f	\N
127	o1uyd700zfs9z2wrhy8x1hg2	2026-04-27 01:32:20.606	2026-04-27 01:32:20.606	\N	\N	\N	\N	0	\N	f	\N
128	o1uyd700zfs9z2wrhy8x1hg2	2026-04-27 01:32:20.606	2026-04-27 01:32:20.606	2026-04-27 01:32:20.619	\N	\N	\N	0	\N	f	\N
160	d5flqo7kla4ou39s67bf5y3a	2026-04-27 02:10:27.508	2026-04-27 02:10:27.508	2026-04-27 02:10:27.522	\N	\N	\N	0	\N	f	\N
171	ph9svd6f1fw4tidvr1gybur9	2026-04-27 02:10:30.914	2026-04-27 02:10:30.914	\N	\N	\N	\N	0	\N	f	\N
172	ph9svd6f1fw4tidvr1gybur9	2026-04-27 02:10:30.914	2026-04-27 02:10:30.914	2026-04-27 02:10:30.923	\N	\N	\N	0	\N	f	\N
173	qp2jhegs2nsg3qr6j3o8fdei	2026-04-27 02:10:31.482	2026-04-27 02:10:31.482	\N	\N	\N	\N	0	\N	f	\N
174	qp2jhegs2nsg3qr6j3o8fdei	2026-04-27 02:10:31.482	2026-04-27 02:10:31.482	2026-04-27 02:10:31.495	\N	\N	\N	0	\N	f	\N
175	pyr7pkga0wgsjsbo3r2aeuad	2026-04-27 02:10:32.055	2026-04-27 02:10:32.055	\N	\N	\N	\N	0	\N	f	\N
176	pyr7pkga0wgsjsbo3r2aeuad	2026-04-27 02:10:32.055	2026-04-27 02:10:32.055	2026-04-27 02:10:32.066	\N	\N	\N	0	\N	f	\N
177	i4s314clxcq83j9p2eau8sj7	2026-04-27 02:20:16.54	2026-04-27 02:20:16.54	\N	\N	\N	\N	0	\N	f	\N
178	i4s314clxcq83j9p2eau8sj7	2026-04-27 02:20:16.54	2026-04-27 02:20:16.54	2026-04-27 02:20:16.58	\N	\N	\N	0	\N	f	\N
179	ml5vd2l48hir4userwf74ubx	2026-04-27 02:20:17.141	2026-04-27 02:20:17.141	\N	\N	\N	\N	0	\N	f	\N
180	ml5vd2l48hir4userwf74ubx	2026-04-27 02:20:17.141	2026-04-27 02:20:17.141	2026-04-27 02:20:17.158	\N	\N	\N	0	\N	f	\N
181	u2u1hztq3l71mbw4xbk6vw5y	2026-04-27 02:20:17.723	2026-04-27 02:20:17.723	\N	\N	\N	\N	0	\N	f	\N
182	u2u1hztq3l71mbw4xbk6vw5y	2026-04-27 02:20:17.723	2026-04-27 02:20:17.723	2026-04-27 02:20:17.741	\N	\N	\N	0	\N	f	\N
183	h6fuhp3u6q4nyhmz6h6jqotv	2026-04-27 02:20:18.34	2026-04-27 02:20:18.34	\N	\N	\N	\N	0	\N	f	\N
184	h6fuhp3u6q4nyhmz6h6jqotv	2026-04-27 02:20:18.34	2026-04-27 02:20:18.34	2026-04-27 02:20:18.35	\N	\N	\N	0	\N	f	\N
185	a3f45qedoe8344nfu62s92pd	2026-04-27 02:20:18.846	2026-04-27 02:20:18.846	\N	\N	\N	\N	0	\N	f	\N
186	a3f45qedoe8344nfu62s92pd	2026-04-27 02:20:18.846	2026-04-27 02:20:18.846	2026-04-27 02:20:18.858	\N	\N	\N	0	\N	f	\N
187	oumracqvts4m2j37xjowfzlb	2026-04-27 02:20:19.349	2026-04-27 02:20:19.349	\N	\N	\N	\N	0	\N	f	\N
188	oumracqvts4m2j37xjowfzlb	2026-04-27 02:20:19.349	2026-04-27 02:20:19.349	2026-04-27 02:20:19.362	\N	\N	\N	0	\N	f	\N
189	p1ur3ednam6a545jn1dblin5	2026-04-27 02:20:19.839	2026-04-27 02:20:19.839	\N	\N	\N	\N	0	\N	f	\N
190	p1ur3ednam6a545jn1dblin5	2026-04-27 02:20:19.839	2026-04-27 02:20:19.839	2026-04-27 02:20:19.851	\N	\N	\N	0	\N	f	\N
191	fy97ki5ohljhhyec7npjvoyr	2026-04-27 02:20:20.338	2026-04-27 02:20:20.338	\N	\N	\N	\N	0	\N	f	\N
192	fy97ki5ohljhhyec7npjvoyr	2026-04-27 02:20:20.338	2026-04-27 02:20:20.338	2026-04-27 02:20:20.348	\N	\N	\N	0	\N	f	\N
195	rftd3pr70yhyyv4qq7l6u4c1	2026-04-27 02:20:21.305	2026-04-27 02:20:21.305	\N	\N	\N	\N	0	\N	f	\N
196	rftd3pr70yhyyv4qq7l6u4c1	2026-04-27 02:20:21.305	2026-04-27 02:20:21.305	2026-04-27 02:20:21.317	\N	\N	\N	0	\N	f	\N
197	jf7ruv7gbhkt5eo0ggpw29oa	2026-04-27 02:20:21.782	2026-04-27 02:20:21.782	\N	\N	\N	\N	0	\N	f	\N
198	jf7ruv7gbhkt5eo0ggpw29oa	2026-04-27 02:20:21.782	2026-04-27 02:20:21.782	2026-04-27 02:20:21.807	\N	\N	\N	0	\N	f	\N
199	k05evkttundxjf3z8lqy0h8l	2026-04-27 02:20:22.256	2026-04-27 02:20:22.256	\N	\N	\N	\N	0	\N	f	\N
200	k05evkttundxjf3z8lqy0h8l	2026-04-27 02:20:22.256	2026-04-27 02:20:22.256	2026-04-27 02:20:22.268	\N	\N	\N	0	\N	f	\N
201	phzqmwc7nvbovutbplsg228e	2026-04-27 02:20:22.723	2026-04-27 02:20:22.723	\N	\N	\N	\N	0	\N	f	\N
202	phzqmwc7nvbovutbplsg228e	2026-04-27 02:20:22.723	2026-04-27 02:20:22.723	2026-04-27 02:20:22.735	\N	\N	\N	0	\N	f	\N
203	tz325pwr72pmgakpgqtmhk4l	2026-04-27 02:20:23.189	2026-04-27 02:20:23.189	\N	\N	\N	\N	0	\N	f	\N
204	tz325pwr72pmgakpgqtmhk4l	2026-04-27 02:20:23.189	2026-04-27 02:20:23.189	2026-04-27 02:20:23.203	\N	\N	\N	0	\N	f	\N
205	fxrtg47i8a27yv7c6h5527yl	2026-04-27 02:20:23.663	2026-04-27 02:20:23.663	\N	\N	\N	\N	0	\N	f	\N
206	fxrtg47i8a27yv7c6h5527yl	2026-04-27 02:20:23.663	2026-04-27 02:20:23.663	2026-04-27 02:20:23.671	\N	\N	\N	0	\N	f	\N
207	fw044vb24v6vpmnipe4h1pis	2026-04-27 02:20:24.141	2026-04-27 02:20:24.141	\N	\N	\N	\N	0	\N	f	\N
208	fw044vb24v6vpmnipe4h1pis	2026-04-27 02:20:24.141	2026-04-27 02:20:24.141	2026-04-27 02:20:24.151	\N	\N	\N	0	\N	f	\N
213	sbwm3qlnutqi2c7walqrco8j	2026-04-27 02:20:25.622	2026-04-27 02:20:25.622	\N	\N	\N	\N	0	\N	f	\N
214	sbwm3qlnutqi2c7walqrco8j	2026-04-27 02:20:25.622	2026-04-27 02:20:25.622	2026-04-27 02:20:25.632	\N	\N	\N	0	\N	f	\N
219	z1316hje97pzx99cvqc81qsu	2026-04-27 02:20:27.039	2026-04-27 02:20:27.039	\N	\N	\N	\N	0	\N	f	\N
220	z1316hje97pzx99cvqc81qsu	2026-04-27 02:20:27.039	2026-04-27 02:20:27.039	2026-04-27 02:20:27.047	\N	\N	\N	0	\N	f	\N
225	lz98z2039ngjug9epqfyid2n	2026-04-27 02:20:28.427	2026-04-27 02:20:28.427	\N	\N	\N	\N	0	\N	f	\N
226	lz98z2039ngjug9epqfyid2n	2026-04-27 02:20:28.427	2026-04-27 02:20:28.427	2026-04-27 02:20:28.439	\N	\N	\N	0	\N	f	\N
231	vlw6dvi5idy5qy6rdvtkftwc	2026-04-27 02:20:29.892	2026-04-27 02:20:29.892	\N	\N	\N	\N	0	\N	f	\N
232	vlw6dvi5idy5qy6rdvtkftwc	2026-04-27 02:20:29.892	2026-04-27 02:20:29.892	2026-04-27 02:20:29.906	\N	\N	\N	0	\N	f	\N
237	yn2r18z376vvbcbxn3tl8puz	2026-04-27 02:20:31.305	2026-04-27 02:20:31.305	\N	\N	\N	\N	0	\N	f	\N
238	yn2r18z376vvbcbxn3tl8puz	2026-04-27 02:20:31.305	2026-04-27 02:20:31.305	2026-04-27 02:20:31.316	\N	\N	\N	0	\N	f	\N
241	lsnigv1gnjun7373831ofll5	2026-04-27 02:20:32.397	2026-04-27 02:20:32.397	\N	\N	\N	\N	0	\N	f	\N
242	lsnigv1gnjun7373831ofll5	2026-04-27 02:20:32.397	2026-04-27 02:20:32.397	2026-04-27 02:20:32.408	\N	\N	\N	0	\N	f	\N
439	ac8oq8legwfjc6mshvwa0ifs	2026-04-27 02:23:06.538	2026-04-27 02:23:06.538	\N	\N	\N	\N	0	\N	f	\N
440	ac8oq8legwfjc6mshvwa0ifs	2026-04-27 02:23:06.538	2026-04-27 02:23:06.538	2026-04-27 02:23:06.572	\N	\N	\N	0	\N	f	\N
441	rl9xyc8zyzdqbfyn6ma0gtsr	2026-04-27 02:23:07.642	2026-04-27 02:23:07.642	\N	\N	\N	\N	0	\N	f	\N
442	rl9xyc8zyzdqbfyn6ma0gtsr	2026-04-27 02:23:07.642	2026-04-27 02:23:07.642	2026-04-27 02:23:07.662	\N	\N	\N	0	\N	f	\N
445	gffqxauilv3hv1vlad28cwfi	2026-04-27 02:23:09.219	2026-04-27 02:23:09.219	\N	\N	\N	\N	0	\N	f	\N
446	gffqxauilv3hv1vlad28cwfi	2026-04-27 02:23:09.219	2026-04-27 02:23:09.219	2026-04-27 02:23:09.231	\N	\N	\N	0	\N	f	\N
449	hty6v0mhyugzpgf798y7nbhg	2026-04-27 02:23:10.382	2026-04-27 02:23:10.382	\N	\N	\N	\N	0	\N	f	\N
450	hty6v0mhyugzpgf798y7nbhg	2026-04-27 02:23:10.382	2026-04-27 02:23:10.382	2026-04-27 02:23:10.395	\N	\N	\N	0	\N	f	\N
455	ecth32yt61t77oafm3qye4tg	2026-04-27 02:23:12.124	2026-04-27 02:23:12.124	\N	\N	\N	\N	0	\N	f	\N
456	ecth32yt61t77oafm3qye4tg	2026-04-27 02:23:12.124	2026-04-27 02:23:12.124	2026-04-27 02:23:12.137	\N	\N	\N	0	\N	f	\N
461	e34dywjx2kf1pyamuiabxnwj	2026-04-27 02:23:13.917	2026-04-27 02:23:13.917	\N	\N	\N	\N	0	\N	f	\N
462	e34dywjx2kf1pyamuiabxnwj	2026-04-27 02:23:13.917	2026-04-27 02:23:13.917	2026-04-27 02:23:13.932	\N	\N	\N	0	\N	f	\N
465	rznuzoeihy3y50apmz1ou5ch	2026-04-27 02:23:14.975	2026-04-27 02:23:14.975	\N	\N	\N	\N	0	\N	f	\N
466	rznuzoeihy3y50apmz1ou5ch	2026-04-27 02:23:14.975	2026-04-27 02:23:14.975	2026-04-27 02:23:14.985	\N	\N	\N	0	\N	f	\N
471	bdt6eychusz1ns79hphmftgt	2026-04-27 02:23:16.295	2026-04-27 02:23:16.295	\N	\N	\N	\N	0	\N	f	\N
472	bdt6eychusz1ns79hphmftgt	2026-04-27 02:23:16.295	2026-04-27 02:23:16.295	2026-04-27 02:23:16.304	\N	\N	\N	0	\N	f	\N
477	teicrvn0e9qr8ygzdyhmnrmj	2026-04-27 02:23:17.479	2026-04-27 02:23:17.479	\N	\N	\N	\N	0	\N	f	\N
478	teicrvn0e9qr8ygzdyhmnrmj	2026-04-27 02:23:17.479	2026-04-27 02:23:17.479	2026-04-27 02:23:17.49	\N	\N	\N	0	\N	f	\N
483	ht488n8oruvflokj1r2t5wpg	2026-04-27 02:23:19.05	2026-04-27 02:23:19.05	\N	\N	\N	\N	0	\N	f	\N
484	ht488n8oruvflokj1r2t5wpg	2026-04-27 02:23:19.05	2026-04-27 02:23:19.05	2026-04-27 02:23:19.063	\N	\N	\N	0	\N	f	\N
489	dyht3mrjpw05iqpevk7aeo8x	2026-04-27 02:23:20.984	2026-04-27 02:23:20.984	\N	\N	\N	\N	0	\N	f	\N
490	dyht3mrjpw05iqpevk7aeo8x	2026-04-27 02:23:20.984	2026-04-27 02:23:20.984	2026-04-27 02:23:20.998	\N	\N	\N	0	\N	f	\N
495	khloluogz2mzby2p8dmdoabd	2026-04-27 02:23:22.8	2026-04-27 02:23:22.8	\N	\N	\N	\N	0	\N	f	\N
496	khloluogz2mzby2p8dmdoabd	2026-04-27 02:23:22.8	2026-04-27 02:23:22.8	2026-04-27 02:23:22.812	\N	\N	\N	0	\N	f	\N
503	bgpr3j6ng1911kot8n1or61u	2026-04-27 02:23:25.025	2026-04-27 02:23:25.025	\N	\N	\N	\N	0	\N	f	\N
504	bgpr3j6ng1911kot8n1or61u	2026-04-27 02:23:25.025	2026-04-27 02:23:25.025	2026-04-27 02:23:25.037	\N	\N	\N	0	\N	f	\N
511	rau64pi6o8sr69bu9t455z8g	2026-04-27 02:23:26.85	2026-04-27 02:23:26.85	\N	\N	\N	\N	0	\N	f	\N
512	rau64pi6o8sr69bu9t455z8g	2026-04-27 02:23:26.85	2026-04-27 02:23:26.85	2026-04-27 02:23:26.86	\N	\N	\N	0	\N	f	\N
515	a2rpzxtvsys6smj9jaix8o8q	2026-04-27 02:23:27.745	2026-04-27 02:23:27.745	\N	\N	\N	\N	0	\N	f	\N
516	a2rpzxtvsys6smj9jaix8o8q	2026-04-27 02:23:27.745	2026-04-27 02:23:27.745	2026-04-27 02:23:27.755	\N	\N	\N	0	\N	f	\N
521	ezg9p8rlb6li918eqkm4mccc	2026-04-27 02:23:29.307	2026-04-27 02:23:29.307	\N	\N	\N	\N	0	\N	f	\N
522	ezg9p8rlb6li918eqkm4mccc	2026-04-27 02:23:29.307	2026-04-27 02:23:29.307	2026-04-27 02:23:29.32	\N	\N	\N	0	\N	f	\N
527	ifnay3h8csdgspvlnosx0b2q	2026-04-27 02:23:30.649	2026-04-27 02:23:30.649	\N	\N	\N	\N	0	\N	f	\N
528	ifnay3h8csdgspvlnosx0b2q	2026-04-27 02:23:30.649	2026-04-27 02:23:30.649	2026-04-27 02:23:30.658	\N	\N	\N	0	\N	f	\N
531	fvfe5t0dqreywpydpbq5znps	2026-04-27 02:23:31.582	2026-04-27 02:23:31.582	\N	\N	\N	\N	0	\N	f	\N
532	fvfe5t0dqreywpydpbq5znps	2026-04-27 02:23:31.582	2026-04-27 02:23:31.582	2026-04-27 02:23:31.592	\N	\N	\N	0	\N	f	\N
537	sj9nug9fwp1jg55tajl21p9y	2026-04-27 02:23:32.971	2026-04-27 02:23:32.971	\N	\N	\N	\N	0	\N	f	\N
538	sj9nug9fwp1jg55tajl21p9y	2026-04-27 02:23:32.971	2026-04-27 02:23:32.971	2026-04-27 02:23:32.981	\N	\N	\N	0	\N	f	\N
541	cu1v0jknobgi681km92604mv	2026-04-27 02:23:33.884	2026-04-27 02:23:33.884	\N	\N	\N	\N	0	\N	f	\N
542	cu1v0jknobgi681km92604mv	2026-04-27 02:23:33.884	2026-04-27 02:23:33.884	2026-04-27 02:23:33.894	\N	\N	\N	0	\N	f	\N
547	q3olyrox67zt50f5wly16i4i	2026-04-27 02:23:35.142	2026-04-27 02:23:35.142	\N	\N	\N	\N	0	\N	f	\N
548	q3olyrox67zt50f5wly16i4i	2026-04-27 02:23:35.142	2026-04-27 02:23:35.142	2026-04-27 02:23:35.153	\N	\N	\N	0	\N	f	\N
553	prw5bsstsye7mdlwm43fqnhj	2026-04-27 02:23:36.515	2026-04-27 02:23:36.515	\N	\N	\N	\N	0	\N	f	\N
554	prw5bsstsye7mdlwm43fqnhj	2026-04-27 02:23:36.515	2026-04-27 02:23:36.515	2026-04-27 02:23:36.524	\N	\N	\N	0	\N	f	\N
559	qp4ihif7zah18cewmxndnqak	2026-04-27 02:23:37.855	2026-04-27 02:23:37.855	\N	\N	\N	\N	0	\N	f	\N
560	qp4ihif7zah18cewmxndnqak	2026-04-27 02:23:37.855	2026-04-27 02:23:37.855	2026-04-27 02:23:37.865	\N	\N	\N	0	\N	f	\N
563	phzk6x35850niwp63ofqykfx	2026-04-27 02:23:38.759	2026-04-27 02:23:38.759	\N	\N	\N	\N	0	\N	f	\N
564	phzk6x35850niwp63ofqykfx	2026-04-27 02:23:38.759	2026-04-27 02:23:38.759	2026-04-27 02:23:38.774	\N	\N	\N	0	\N	f	\N
569	j1pbxvoxd9fdj7o9jon72f6f	2026-04-27 02:23:39.992	2026-04-27 02:23:39.992	\N	\N	\N	\N	0	\N	f	\N
570	j1pbxvoxd9fdj7o9jon72f6f	2026-04-27 02:23:39.992	2026-04-27 02:23:39.992	2026-04-27 02:23:40.001	\N	\N	\N	0	\N	f	\N
573	k1v8c6fw6icfcacr2x3xarx1	2026-04-27 02:23:41.027	2026-04-27 02:23:41.027	\N	\N	\N	\N	0	\N	f	\N
574	k1v8c6fw6icfcacr2x3xarx1	2026-04-27 02:23:41.027	2026-04-27 02:23:41.027	2026-04-27 02:23:41.037	\N	\N	\N	0	\N	f	\N
579	op4kyq7v17w1y4u5sf9q24uo	2026-04-27 02:23:42.227	2026-04-27 02:23:42.227	\N	\N	\N	\N	0	\N	f	\N
580	op4kyq7v17w1y4u5sf9q24uo	2026-04-27 02:23:42.227	2026-04-27 02:23:42.227	2026-04-27 02:23:42.237	\N	\N	\N	0	\N	f	\N
583	zsspfg7ig83mm8oyz4t5i5v0	2026-04-27 02:23:43.12	2026-04-27 02:23:43.12	\N	\N	\N	\N	0	\N	f	\N
584	zsspfg7ig83mm8oyz4t5i5v0	2026-04-27 02:23:43.12	2026-04-27 02:23:43.12	2026-04-27 02:23:43.128	\N	\N	\N	0	\N	f	\N
587	o4z3rqyots09oqop2fqu2bxt	2026-04-27 02:23:44.004	2026-04-27 02:23:44.004	\N	\N	\N	\N	0	\N	f	\N
588	o4z3rqyots09oqop2fqu2bxt	2026-04-27 02:23:44.004	2026-04-27 02:23:44.004	2026-04-27 02:23:44.014	\N	\N	\N	0	\N	f	\N
593	qyvre6hfhq17d3bc3jborgag	2026-04-27 02:23:45.259	2026-04-27 02:23:45.259	\N	\N	\N	\N	0	\N	f	\N
594	qyvre6hfhq17d3bc3jborgag	2026-04-27 02:23:45.259	2026-04-27 02:23:45.259	2026-04-27 02:23:45.269	\N	\N	\N	0	\N	f	\N
599	otficgksf8eck40osa6r56fu	2026-04-27 02:23:46.479	2026-04-27 02:23:46.479	\N	\N	\N	\N	0	\N	f	\N
600	otficgksf8eck40osa6r56fu	2026-04-27 02:23:46.479	2026-04-27 02:23:46.479	2026-04-27 02:23:46.489	\N	\N	\N	0	\N	f	\N
613	k3t1gmjvw6tjkfdrey5b51b9	2026-04-27 02:23:49.596	2026-04-27 02:23:49.596	\N	\N	\N	\N	0	\N	f	\N
614	k3t1gmjvw6tjkfdrey5b51b9	2026-04-27 02:23:49.596	2026-04-27 02:23:49.596	2026-04-27 02:23:49.618	\N	\N	\N	0	\N	f	\N
609	ma924h90lvgrlvub1obr0ksg	2026-04-27 02:23:48.678	2026-04-27 02:59:14.592	\N	\N	\N	\N	0	2026-04-21	f	
626	ma924h90lvgrlvub1obr0ksg	2026-04-27 02:23:48.678	2026-04-27 02:59:14.592	2026-04-27 02:59:14.62	\N	\N	\N	0	2026-04-21	f	
619	kmud6qfclqzgmfqfm0zrn1qq	2026-04-27 02:23:50.896	2026-04-27 03:09:01.285	\N	\N	\N	\N	0	2026-04-26	f	
209	jf4v5w50lcemgb3b7o1yqb19	2026-04-27 02:20:24.651	2026-04-27 02:20:24.651	\N	\N	\N	\N	0	\N	f	\N
210	jf4v5w50lcemgb3b7o1yqb19	2026-04-27 02:20:24.651	2026-04-27 02:20:24.651	2026-04-27 02:20:24.663	\N	\N	\N	0	\N	f	\N
215	lrmg0ah2udjlcisc53dz2n8e	2026-04-27 02:20:26.085	2026-04-27 02:20:26.085	\N	\N	\N	\N	0	\N	f	\N
216	lrmg0ah2udjlcisc53dz2n8e	2026-04-27 02:20:26.085	2026-04-27 02:20:26.085	2026-04-27 02:20:26.096	\N	\N	\N	0	\N	f	\N
221	kln48669775kn7uv1w4do4gs	2026-04-27 02:20:27.512	2026-04-27 02:20:27.512	\N	\N	\N	\N	0	\N	f	\N
222	kln48669775kn7uv1w4do4gs	2026-04-27 02:20:27.512	2026-04-27 02:20:27.512	2026-04-27 02:20:27.523	\N	\N	\N	0	\N	f	\N
227	gn0uzs2scvq7vcigbwlxcuse	2026-04-27 02:20:28.891	2026-04-27 02:20:28.891	\N	\N	\N	\N	0	\N	f	\N
228	gn0uzs2scvq7vcigbwlxcuse	2026-04-27 02:20:28.891	2026-04-27 02:20:28.891	2026-04-27 02:20:28.903	\N	\N	\N	0	\N	f	\N
233	ujru0u0kf93xnkm6j2djzk35	2026-04-27 02:20:30.37	2026-04-27 02:20:30.37	\N	\N	\N	\N	0	\N	f	\N
234	ujru0u0kf93xnkm6j2djzk35	2026-04-27 02:20:30.37	2026-04-27 02:20:30.37	2026-04-27 02:20:30.377	\N	\N	\N	0	\N	f	\N
239	d7zsc86t8gx6josl9l4qpos2	2026-04-27 02:20:31.772	2026-04-27 02:20:31.772	\N	\N	\N	\N	0	\N	f	\N
240	d7zsc86t8gx6josl9l4qpos2	2026-04-27 02:20:31.772	2026-04-27 02:20:31.772	2026-04-27 02:20:31.784	\N	\N	\N	0	\N	f	\N
447	gojd28by3n8f8hwuvkyvshrt	2026-04-27 02:23:09.86	2026-04-27 02:23:09.86	\N	\N	\N	\N	0	\N	f	\N
448	gojd28by3n8f8hwuvkyvshrt	2026-04-27 02:23:09.86	2026-04-27 02:23:09.86	2026-04-27 02:23:09.871	\N	\N	\N	0	\N	f	\N
451	mxsoc6r9eg47rgnypougxh9b	2026-04-27 02:23:10.942	2026-04-27 02:23:10.942	\N	\N	\N	\N	0	\N	f	\N
452	mxsoc6r9eg47rgnypougxh9b	2026-04-27 02:23:10.942	2026-04-27 02:23:10.942	2026-04-27 02:23:10.979	\N	\N	\N	0	\N	f	\N
457	htzzby5yn2bmmauhc5isvxi9	2026-04-27 02:23:12.622	2026-04-27 02:23:12.622	\N	\N	\N	\N	0	\N	f	\N
458	htzzby5yn2bmmauhc5isvxi9	2026-04-27 02:23:12.622	2026-04-27 02:23:12.622	2026-04-27 02:23:12.637	\N	\N	\N	0	\N	f	\N
463	kvemj16v9vvdn6xqij00gzdy	2026-04-27 02:23:14.546	2026-04-27 02:23:14.546	\N	\N	\N	\N	0	\N	f	\N
464	kvemj16v9vvdn6xqij00gzdy	2026-04-27 02:23:14.546	2026-04-27 02:23:14.546	2026-04-27 02:23:14.557	\N	\N	\N	0	\N	f	\N
469	z4u16s0juwzrl4fdiublrvqf	2026-04-27 02:23:15.836	2026-04-27 02:23:15.836	\N	\N	\N	\N	0	\N	f	\N
470	z4u16s0juwzrl4fdiublrvqf	2026-04-27 02:23:15.836	2026-04-27 02:23:15.836	2026-04-27 02:23:15.847	\N	\N	\N	0	\N	f	\N
475	b3h8k9q3dqjjmvj86r6c0346	2026-04-27 02:23:17.093	2026-04-27 02:23:17.093	\N	\N	\N	\N	0	\N	f	\N
476	b3h8k9q3dqjjmvj86r6c0346	2026-04-27 02:23:17.093	2026-04-27 02:23:17.093	2026-04-27 02:23:17.103	\N	\N	\N	0	\N	f	\N
481	suo2gn591u9882el8i85mcqx	2026-04-27 02:23:18.548	2026-04-27 02:23:18.548	\N	\N	\N	\N	0	\N	f	\N
482	suo2gn591u9882el8i85mcqx	2026-04-27 02:23:18.548	2026-04-27 02:23:18.548	2026-04-27 02:23:18.558	\N	\N	\N	0	\N	f	\N
485	sfz37u54zx88rpobkybm4sw6	2026-04-27 02:23:19.682	2026-04-27 02:23:19.682	\N	\N	\N	\N	0	\N	f	\N
486	sfz37u54zx88rpobkybm4sw6	2026-04-27 02:23:19.682	2026-04-27 02:23:19.682	2026-04-27 02:23:19.706	\N	\N	\N	0	\N	f	\N
493	ropbeqmivcuhzhz0ylb4oqy4	2026-04-27 02:23:22.09	2026-04-27 02:23:22.09	\N	\N	\N	\N	0	\N	f	\N
494	ropbeqmivcuhzhz0ylb4oqy4	2026-04-27 02:23:22.09	2026-04-27 02:23:22.09	2026-04-27 02:23:22.099	\N	\N	\N	0	\N	f	\N
497	x5pm2mvhxk8a59rwho7do3b6	2026-04-27 02:23:23.43	2026-04-27 02:23:23.43	\N	\N	\N	\N	0	\N	f	\N
498	x5pm2mvhxk8a59rwho7do3b6	2026-04-27 02:23:23.43	2026-04-27 02:23:23.43	2026-04-27 02:23:23.448	\N	\N	\N	0	\N	f	\N
501	qvh6wn3r97p7xvav047p446q	2026-04-27 02:23:24.54	2026-04-27 02:23:24.54	\N	\N	\N	\N	0	\N	f	\N
502	qvh6wn3r97p7xvav047p446q	2026-04-27 02:23:24.54	2026-04-27 02:23:24.54	2026-04-27 02:23:24.549	\N	\N	\N	0	\N	f	\N
507	coi966badysqwk418yf7etgo	2026-04-27 02:23:25.899	2026-04-27 02:23:25.899	\N	\N	\N	\N	0	\N	f	\N
508	coi966badysqwk418yf7etgo	2026-04-27 02:23:25.899	2026-04-27 02:23:25.899	2026-04-27 02:23:25.909	\N	\N	\N	0	\N	f	\N
517	qfk5qo1fs1qbi7vd6t1orjsl	2026-04-27 02:23:28.297	2026-04-27 02:23:28.297	\N	\N	\N	\N	0	\N	f	\N
518	qfk5qo1fs1qbi7vd6t1orjsl	2026-04-27 02:23:28.297	2026-04-27 02:23:28.297	2026-04-27 02:23:28.307	\N	\N	\N	0	\N	f	\N
519	qqfzierstpis14mctudx5n9q	2026-04-27 02:23:28.807	2026-04-27 02:23:28.807	\N	\N	\N	\N	0	\N	f	\N
520	qqfzierstpis14mctudx5n9q	2026-04-27 02:23:28.807	2026-04-27 02:23:28.807	2026-04-27 02:23:28.815	\N	\N	\N	0	\N	f	\N
525	t97rtdq616xpp1d6fpwr4jhx	2026-04-27 02:23:30.25	2026-04-27 02:23:30.25	\N	\N	\N	\N	0	\N	f	\N
526	t97rtdq616xpp1d6fpwr4jhx	2026-04-27 02:23:30.25	2026-04-27 02:23:30.25	2026-04-27 02:23:30.26	\N	\N	\N	0	\N	f	\N
533	utfzbame2dcr35401uanabb5	2026-04-27 02:23:32.014	2026-04-27 02:23:32.014	\N	\N	\N	\N	0	\N	f	\N
534	utfzbame2dcr35401uanabb5	2026-04-27 02:23:32.014	2026-04-27 02:23:32.014	2026-04-27 02:23:32.024	\N	\N	\N	0	\N	f	\N
539	q48oi78a65ds303n63760okr	2026-04-27 02:23:33.39	2026-04-27 02:23:33.39	\N	\N	\N	\N	0	\N	f	\N
540	q48oi78a65ds303n63760okr	2026-04-27 02:23:33.39	2026-04-27 02:23:33.39	2026-04-27 02:23:33.4	\N	\N	\N	0	\N	f	\N
545	w5wd2mxvis3s8gw4mfv84amr	2026-04-27 02:23:34.735	2026-04-27 02:23:34.735	\N	\N	\N	\N	0	\N	f	\N
546	w5wd2mxvis3s8gw4mfv84amr	2026-04-27 02:23:34.735	2026-04-27 02:23:34.735	2026-04-27 02:23:34.745	\N	\N	\N	0	\N	f	\N
551	o4sxag85qxigdtumnonbmjx6	2026-04-27 02:23:36.111	2026-04-27 02:23:36.111	\N	\N	\N	\N	0	\N	f	\N
552	o4sxag85qxigdtumnonbmjx6	2026-04-27 02:23:36.111	2026-04-27 02:23:36.111	2026-04-27 02:23:36.121	\N	\N	\N	0	\N	f	\N
557	witlr0cldbmpwste55r41mdg	2026-04-27 02:23:37.435	2026-04-27 02:23:37.435	\N	\N	\N	\N	0	\N	f	\N
558	witlr0cldbmpwste55r41mdg	2026-04-27 02:23:37.435	2026-04-27 02:23:37.435	2026-04-27 02:23:37.445	\N	\N	\N	0	\N	f	\N
567	f4qyy65tcmki5t6vxclva8qc	2026-04-27 02:23:39.612	2026-04-27 02:23:39.612	\N	\N	\N	\N	0	\N	f	\N
568	f4qyy65tcmki5t6vxclva8qc	2026-04-27 02:23:39.612	2026-04-27 02:23:39.612	2026-04-27 02:23:39.622	\N	\N	\N	0	\N	f	\N
575	xhcnsd7imdgacagseutcditz	2026-04-27 02:23:41.42	2026-04-27 02:23:41.42	\N	\N	\N	\N	0	\N	f	\N
576	xhcnsd7imdgacagseutcditz	2026-04-27 02:23:41.42	2026-04-27 02:23:41.42	2026-04-27 02:23:41.43	\N	\N	\N	0	\N	f	\N
581	bytx1raxmjsw3qtykakwaf5b	2026-04-27 02:23:42.721	2026-04-27 02:23:42.721	\N	\N	\N	\N	0	\N	f	\N
582	bytx1raxmjsw3qtykakwaf5b	2026-04-27 02:23:42.721	2026-04-27 02:23:42.721	2026-04-27 02:23:42.731	\N	\N	\N	0	\N	f	\N
589	vdk1hj246y5vdxmr4l818oih	2026-04-27 02:23:44.417	2026-04-27 02:23:44.417	\N	\N	\N	\N	0	\N	f	\N
590	vdk1hj246y5vdxmr4l818oih	2026-04-27 02:23:44.417	2026-04-27 02:23:44.417	2026-04-27 02:23:44.426	\N	\N	\N	0	\N	f	\N
595	u7chk0rgj01bbkpwdlk2idhb	2026-04-27 02:23:45.658	2026-04-27 02:23:45.658	\N	\N	\N	\N	0	\N	f	\N
596	u7chk0rgj01bbkpwdlk2idhb	2026-04-27 02:23:45.658	2026-04-27 02:23:45.658	2026-04-27 02:23:45.669	\N	\N	\N	0	\N	f	\N
601	m53oavqdz89t3trtbpya2vn0	2026-04-27 02:23:46.878	2026-04-27 02:23:46.878	\N	\N	\N	\N	0	\N	f	\N
602	m53oavqdz89t3trtbpya2vn0	2026-04-27 02:23:46.878	2026-04-27 02:23:46.878	2026-04-27 02:23:46.887	\N	\N	\N	0	\N	f	\N
603	mtfy996gzc3wgtgjg3k3dqp4	2026-04-27 02:23:47.431	2026-04-27 02:23:47.431	\N	\N	\N	\N	0	\N	f	\N
604	mtfy996gzc3wgtgjg3k3dqp4	2026-04-27 02:23:47.431	2026-04-27 02:23:47.431	2026-04-27 02:23:47.442	\N	\N	\N	0	\N	f	\N
607	ter6gxq9jprr25w7t9tc3afy	2026-04-27 02:23:48.277	2026-04-27 02:23:48.277	\N	\N	\N	\N	0	\N	f	\N
608	ter6gxq9jprr25w7t9tc3afy	2026-04-27 02:23:48.277	2026-04-27 02:23:48.277	2026-04-27 02:23:48.286	\N	\N	\N	0	\N	f	\N
615	dc005ifbf444mvvna0hxllrr	2026-04-27 02:23:50.074	2026-04-27 02:23:50.074	\N	\N	\N	\N	0	\N	f	\N
616	dc005ifbf444mvvna0hxllrr	2026-04-27 02:23:50.074	2026-04-27 02:23:50.074	2026-04-27 02:23:50.084	\N	\N	\N	0	\N	f	\N
621	cpdqctlh7p7ppyjc83elhy2v	2026-04-27 02:23:51.266	2026-04-27 02:23:51.266	\N	\N	\N	\N	0	\N	f	\N
622	cpdqctlh7p7ppyjc83elhy2v	2026-04-27 02:23:51.266	2026-04-27 02:23:51.266	2026-04-27 02:23:51.276	\N	\N	\N	0	\N	f	\N
627	o8dc29fm2wujbwpy7zyxf49g	2026-04-27 02:23:49.153	2026-04-27 03:00:00.371	2026-04-27 03:00:00.385	\N	\N	\N	0	2026-04-27	f	
211	b503cl5lydg3wimejvato0ya	2026-04-27 02:20:25.134	2026-04-27 02:20:25.134	\N	\N	\N	\N	0	\N	f	\N
212	b503cl5lydg3wimejvato0ya	2026-04-27 02:20:25.134	2026-04-27 02:20:25.134	2026-04-27 02:20:25.148	\N	\N	\N	0	\N	f	\N
223	vmbebzzrdgp8r3smt60s42js	2026-04-27 02:20:27.962	2026-04-27 02:20:27.962	\N	\N	\N	\N	0	\N	f	\N
224	vmbebzzrdgp8r3smt60s42js	2026-04-27 02:20:27.962	2026-04-27 02:20:27.962	2026-04-27 02:20:27.973	\N	\N	\N	0	\N	f	\N
229	gfc58m7aecqcuy0t0exj6nty	2026-04-27 02:20:29.402	2026-04-27 02:20:29.402	\N	\N	\N	\N	0	\N	f	\N
230	gfc58m7aecqcuy0t0exj6nty	2026-04-27 02:20:29.402	2026-04-27 02:20:29.402	2026-04-27 02:20:29.412	\N	\N	\N	0	\N	f	\N
235	east8zemqore5ldk49idaszk	2026-04-27 02:20:30.849	2026-04-27 02:20:30.849	\N	\N	\N	\N	0	\N	f	\N
236	east8zemqore5ldk49idaszk	2026-04-27 02:20:30.849	2026-04-27 02:20:30.849	2026-04-27 02:20:30.857	\N	\N	\N	0	\N	f	\N
243	pb0ch9lk277ztomkr1jqepkk	2026-04-27 02:20:33.215	2026-04-27 02:20:33.215	\N	\N	\N	\N	0	\N	f	\N
244	pb0ch9lk277ztomkr1jqepkk	2026-04-27 02:20:33.215	2026-04-27 02:20:33.215	2026-04-27 02:20:33.232	\N	\N	\N	0	\N	f	\N
454	jca35fnbks85dq4zr94uaapk	2026-04-27 02:23:11.633	2026-04-27 02:23:11.633	2026-04-27 02:23:11.669	\N	\N	\N	0	\N	f	\N
459	tbats2ruykp633layueig0ui	2026-04-27 02:23:13.085	2026-04-27 02:23:13.085	\N	\N	\N	\N	0	\N	f	\N
247	dil5n5r0pxf4i3r2x33qsmb4	2026-04-27 02:22:01.211	2026-04-27 02:22:01.211	\N	\N	\N	\N	0	\N	f	\N
248	dil5n5r0pxf4i3r2x33qsmb4	2026-04-27 02:22:01.211	2026-04-27 02:22:01.211	2026-04-27 02:22:01.221	\N	\N	\N	0	\N	f	\N
249	o0jfhfeu2lp52bl28oqfrys0	2026-04-27 02:22:01.801	2026-04-27 02:22:01.801	\N	\N	\N	\N	0	\N	f	\N
250	o0jfhfeu2lp52bl28oqfrys0	2026-04-27 02:22:01.801	2026-04-27 02:22:01.801	2026-04-27 02:22:01.816	\N	\N	\N	0	\N	f	\N
251	ur0680sxsc340koh83nn2yve	2026-04-27 02:22:02.315	2026-04-27 02:22:02.315	\N	\N	\N	\N	0	\N	f	\N
252	ur0680sxsc340koh83nn2yve	2026-04-27 02:22:02.315	2026-04-27 02:22:02.315	2026-04-27 02:22:02.327	\N	\N	\N	0	\N	f	\N
460	tbats2ruykp633layueig0ui	2026-04-27 02:23:13.085	2026-04-27 02:23:13.085	2026-04-27 02:23:13.094	\N	\N	\N	0	\N	f	\N
255	jmu1825hul8dlhkjomt1k5iv	2026-04-27 02:22:03.274	2026-04-27 02:22:03.274	\N	\N	\N	\N	0	\N	f	\N
256	jmu1825hul8dlhkjomt1k5iv	2026-04-27 02:22:03.274	2026-04-27 02:22:03.274	2026-04-27 02:22:03.282	\N	\N	\N	0	\N	f	\N
257	h9brh8j7bgyxxqwc7e14fxbm	2026-04-27 02:22:03.748	2026-04-27 02:22:03.748	\N	\N	\N	\N	0	\N	f	\N
258	h9brh8j7bgyxxqwc7e14fxbm	2026-04-27 02:22:03.748	2026-04-27 02:22:03.748	2026-04-27 02:22:03.76	\N	\N	\N	0	\N	f	\N
259	wiosijhdm5gsztcy4d55zftr	2026-04-27 02:22:04.292	2026-04-27 02:22:04.292	\N	\N	\N	\N	0	\N	f	\N
260	wiosijhdm5gsztcy4d55zftr	2026-04-27 02:22:04.292	2026-04-27 02:22:04.292	2026-04-27 02:22:04.308	\N	\N	\N	0	\N	f	\N
261	ed1zulakljzybt3rek35j6pc	2026-04-27 02:22:04.792	2026-04-27 02:22:04.792	\N	\N	\N	\N	0	\N	f	\N
262	ed1zulakljzybt3rek35j6pc	2026-04-27 02:22:04.792	2026-04-27 02:22:04.792	2026-04-27 02:22:04.802	\N	\N	\N	0	\N	f	\N
473	b0pjxg3hgtxtk534cuagnqiw	2026-04-27 02:23:16.689	2026-04-27 02:23:16.689	\N	\N	\N	\N	0	\N	f	\N
269	mpykj8h0ywlcwfb3hhn460fj	2026-04-27 02:22:06.706	2026-04-27 02:22:06.706	\N	\N	\N	\N	0	\N	f	\N
270	mpykj8h0ywlcwfb3hhn460fj	2026-04-27 02:22:06.706	2026-04-27 02:22:06.706	2026-04-27 02:22:06.718	\N	\N	\N	0	\N	f	\N
271	acnh7pthyr20ivxwfo5w12x9	2026-04-27 02:22:07.193	2026-04-27 02:22:07.193	\N	\N	\N	\N	0	\N	f	\N
272	acnh7pthyr20ivxwfo5w12x9	2026-04-27 02:22:07.193	2026-04-27 02:22:07.193	2026-04-27 02:22:07.207	\N	\N	\N	0	\N	f	\N
273	appl1w63kilwb4pdqs0j4haw	2026-04-27 02:22:07.655	2026-04-27 02:22:07.655	\N	\N	\N	\N	0	\N	f	\N
274	appl1w63kilwb4pdqs0j4haw	2026-04-27 02:22:07.655	2026-04-27 02:22:07.655	2026-04-27 02:22:07.679	\N	\N	\N	0	\N	f	\N
275	ruj1xo4gm8yg4scqyw0xkm68	2026-04-27 02:22:08.341	2026-04-27 02:22:08.341	\N	\N	\N	\N	0	\N	f	\N
276	ruj1xo4gm8yg4scqyw0xkm68	2026-04-27 02:22:08.341	2026-04-27 02:22:08.341	2026-04-27 02:22:08.355	\N	\N	\N	0	\N	f	\N
277	xeqtf79fzueee5ji1lp6nvpo	2026-04-27 02:22:08.924	2026-04-27 02:22:08.924	\N	\N	\N	\N	0	\N	f	\N
278	xeqtf79fzueee5ji1lp6nvpo	2026-04-27 02:22:08.924	2026-04-27 02:22:08.924	2026-04-27 02:22:08.938	\N	\N	\N	0	\N	f	\N
279	m0vlfw38vpxtev9i8ap9g5hm	2026-04-27 02:22:09.522	2026-04-27 02:22:09.522	\N	\N	\N	\N	0	\N	f	\N
280	m0vlfw38vpxtev9i8ap9g5hm	2026-04-27 02:22:09.522	2026-04-27 02:22:09.522	2026-04-27 02:22:09.537	\N	\N	\N	0	\N	f	\N
281	t3ximp7hlcayt16fdu7n47lq	2026-04-27 02:22:10.153	2026-04-27 02:22:10.153	\N	\N	\N	\N	0	\N	f	\N
282	t3ximp7hlcayt16fdu7n47lq	2026-04-27 02:22:10.153	2026-04-27 02:22:10.153	2026-04-27 02:22:10.163	\N	\N	\N	0	\N	f	\N
283	dzh6vh7xa02uwyymjbn0dl8w	2026-04-27 02:22:10.569	2026-04-27 02:22:10.569	\N	\N	\N	\N	0	\N	f	\N
284	dzh6vh7xa02uwyymjbn0dl8w	2026-04-27 02:22:10.569	2026-04-27 02:22:10.569	2026-04-27 02:22:10.577	\N	\N	\N	0	\N	f	\N
285	x2l5bzrdmssakgot0g7gevty	2026-04-27 02:22:10.988	2026-04-27 02:22:10.988	\N	\N	\N	\N	0	\N	f	\N
286	x2l5bzrdmssakgot0g7gevty	2026-04-27 02:22:10.988	2026-04-27 02:22:10.988	2026-04-27 02:22:11.009	\N	\N	\N	0	\N	f	\N
287	hnowhxxfho2ni7w90w0mcb7o	2026-04-27 02:22:11.658	2026-04-27 02:22:11.658	\N	\N	\N	\N	0	\N	f	\N
288	hnowhxxfho2ni7w90w0mcb7o	2026-04-27 02:22:11.658	2026-04-27 02:22:11.658	2026-04-27 02:22:11.668	\N	\N	\N	0	\N	f	\N
289	x64tqfu0oslht1ci5mx15br8	2026-04-27 02:22:12.128	2026-04-27 02:22:12.128	\N	\N	\N	\N	0	\N	f	\N
290	x64tqfu0oslht1ci5mx15br8	2026-04-27 02:22:12.128	2026-04-27 02:22:12.128	2026-04-27 02:22:12.135	\N	\N	\N	0	\N	f	\N
291	n2kq62m5m5sgguub0gfq9qqz	2026-04-27 02:22:12.604	2026-04-27 02:22:12.604	\N	\N	\N	\N	0	\N	f	\N
292	n2kq62m5m5sgguub0gfq9qqz	2026-04-27 02:22:12.604	2026-04-27 02:22:12.604	2026-04-27 02:22:12.615	\N	\N	\N	0	\N	f	\N
293	ce9hmrttgk9lmg3ny76qkt7z	2026-04-27 02:22:13.016	2026-04-27 02:22:13.016	\N	\N	\N	\N	0	\N	f	\N
294	ce9hmrttgk9lmg3ny76qkt7z	2026-04-27 02:22:13.016	2026-04-27 02:22:13.016	2026-04-27 02:22:13.025	\N	\N	\N	0	\N	f	\N
295	ly4rgqapp2di73x8wiff3cvl	2026-04-27 02:22:13.404	2026-04-27 02:22:13.404	\N	\N	\N	\N	0	\N	f	\N
296	ly4rgqapp2di73x8wiff3cvl	2026-04-27 02:22:13.404	2026-04-27 02:22:13.404	2026-04-27 02:22:13.412	\N	\N	\N	0	\N	f	\N
297	on7vdkojdx7xszhknzdmtqaz	2026-04-27 02:22:13.811	2026-04-27 02:22:13.811	\N	\N	\N	\N	0	\N	f	\N
298	on7vdkojdx7xszhknzdmtqaz	2026-04-27 02:22:13.811	2026-04-27 02:22:13.811	2026-04-27 02:22:13.82	\N	\N	\N	0	\N	f	\N
299	phtv9cyrrv4vkszjl4h4l30d	2026-04-27 02:22:14.567	2026-04-27 02:22:14.567	\N	\N	\N	\N	0	\N	f	\N
300	phtv9cyrrv4vkszjl4h4l30d	2026-04-27 02:22:14.567	2026-04-27 02:22:14.567	2026-04-27 02:22:14.59	\N	\N	\N	0	\N	f	\N
301	q77bxeaq2qz23z234b12i139	2026-04-27 02:22:15.508	2026-04-27 02:22:15.508	\N	\N	\N	\N	0	\N	f	\N
302	q77bxeaq2qz23z234b12i139	2026-04-27 02:22:15.508	2026-04-27 02:22:15.508	2026-04-27 02:22:15.529	\N	\N	\N	0	\N	f	\N
307	meqsre4vlql42kd9vqer2v45	2026-04-27 02:22:17.979	2026-04-27 02:22:17.979	\N	\N	\N	\N	0	\N	f	\N
308	meqsre4vlql42kd9vqer2v45	2026-04-27 02:22:17.979	2026-04-27 02:22:17.979	2026-04-27 02:22:17.991	\N	\N	\N	0	\N	f	\N
309	q7i82y0c5mgw2swxdf5cgrlj	2026-04-27 02:22:18.607	2026-04-27 02:22:18.607	\N	\N	\N	\N	0	\N	f	\N
310	q7i82y0c5mgw2swxdf5cgrlj	2026-04-27 02:22:18.607	2026-04-27 02:22:18.607	2026-04-27 02:22:18.621	\N	\N	\N	0	\N	f	\N
311	osuee7yiv3kjvqpc56cfusaq	2026-04-27 02:22:19.172	2026-04-27 02:22:19.172	\N	\N	\N	\N	0	\N	f	\N
312	osuee7yiv3kjvqpc56cfusaq	2026-04-27 02:22:19.172	2026-04-27 02:22:19.172	2026-04-27 02:22:19.187	\N	\N	\N	0	\N	f	\N
313	q121qvhm8276bje6o7spalio	2026-04-27 02:22:19.795	2026-04-27 02:22:19.795	\N	\N	\N	\N	0	\N	f	\N
314	q121qvhm8276bje6o7spalio	2026-04-27 02:22:19.795	2026-04-27 02:22:19.795	2026-04-27 02:22:19.805	\N	\N	\N	0	\N	f	\N
315	uwy2pgisfu49wjc3oeyn9otp	2026-04-27 02:22:20.471	2026-04-27 02:22:20.471	\N	\N	\N	\N	0	\N	f	\N
316	uwy2pgisfu49wjc3oeyn9otp	2026-04-27 02:22:20.471	2026-04-27 02:22:20.471	2026-04-27 02:22:20.485	\N	\N	\N	0	\N	f	\N
317	dbxz29zbrq5j0ehuc9fx8zfy	2026-04-27 02:22:21.07	2026-04-27 02:22:21.07	\N	\N	\N	\N	0	\N	f	\N
318	dbxz29zbrq5j0ehuc9fx8zfy	2026-04-27 02:22:21.07	2026-04-27 02:22:21.07	2026-04-27 02:22:21.087	\N	\N	\N	0	\N	f	\N
319	bhvposfm3x1pywoy5e5x2nmj	2026-04-27 02:22:21.765	2026-04-27 02:22:21.765	\N	\N	\N	\N	0	\N	f	\N
320	bhvposfm3x1pywoy5e5x2nmj	2026-04-27 02:22:21.765	2026-04-27 02:22:21.765	2026-04-27 02:22:21.781	\N	\N	\N	0	\N	f	\N
321	hp94as7xewje2hisjib7qege	2026-04-27 02:22:22.382	2026-04-27 02:22:22.382	\N	\N	\N	\N	0	\N	f	\N
322	hp94as7xewje2hisjib7qege	2026-04-27 02:22:22.382	2026-04-27 02:22:22.382	2026-04-27 02:22:22.4	\N	\N	\N	0	\N	f	\N
329	wyy7n88jobrssezxwrpib7k5	2026-04-27 02:22:25.659	2026-04-27 02:22:25.659	\N	\N	\N	\N	0	\N	f	\N
330	wyy7n88jobrssezxwrpib7k5	2026-04-27 02:22:25.659	2026-04-27 02:22:25.659	2026-04-27 02:22:25.675	\N	\N	\N	0	\N	f	\N
335	c4qgkip6mcz09vy9eh75fdnw	2026-04-27 02:22:27.841	2026-04-27 02:22:27.841	\N	\N	\N	\N	0	\N	f	\N
336	c4qgkip6mcz09vy9eh75fdnw	2026-04-27 02:22:27.841	2026-04-27 02:22:27.841	2026-04-27 02:22:27.855	\N	\N	\N	0	\N	f	\N
341	kui5ok0b4ylpn81u1skmdfjb	2026-04-27 02:22:29.921	2026-04-27 02:22:29.921	\N	\N	\N	\N	0	\N	f	\N
342	kui5ok0b4ylpn81u1skmdfjb	2026-04-27 02:22:29.921	2026-04-27 02:22:29.921	2026-04-27 02:22:29.936	\N	\N	\N	0	\N	f	\N
351	ynnmpuxzntt5vuldoplzqczm	2026-04-27 02:22:33.003	2026-04-27 02:22:33.003	\N	\N	\N	\N	0	\N	f	\N
352	ynnmpuxzntt5vuldoplzqczm	2026-04-27 02:22:33.003	2026-04-27 02:22:33.003	2026-04-27 02:22:33.025	\N	\N	\N	0	\N	f	\N
353	n1t4tgjnm0jcerwbnkjgtl1i	2026-04-27 02:22:33.928	2026-04-27 02:22:33.928	\N	\N	\N	\N	0	\N	f	\N
354	n1t4tgjnm0jcerwbnkjgtl1i	2026-04-27 02:22:33.928	2026-04-27 02:22:33.928	2026-04-27 02:22:33.946	\N	\N	\N	0	\N	f	\N
355	o0jx4zyolfojm89eep8xldxs	2026-04-27 02:22:34.658	2026-04-27 02:22:34.658	\N	\N	\N	\N	0	\N	f	\N
356	o0jx4zyolfojm89eep8xldxs	2026-04-27 02:22:34.658	2026-04-27 02:22:34.658	2026-04-27 02:22:34.677	\N	\N	\N	0	\N	f	\N
361	dikz4ap6vmq4zctiw5i2pqe2	2026-04-27 02:22:37.943	2026-04-27 02:22:37.943	\N	\N	\N	\N	0	\N	f	\N
362	dikz4ap6vmq4zctiw5i2pqe2	2026-04-27 02:22:37.943	2026-04-27 02:22:37.943	2026-04-27 02:22:37.955	\N	\N	\N	0	\N	f	\N
367	rraigmo3b17xb4w751y643p3	2026-04-27 02:22:40.068	2026-04-27 02:22:40.068	\N	\N	\N	\N	0	\N	f	\N
368	rraigmo3b17xb4w751y643p3	2026-04-27 02:22:40.068	2026-04-27 02:22:40.068	2026-04-27 02:22:40.085	\N	\N	\N	0	\N	f	\N
371	pemv71u62ueo8vi868ujx4tr	2026-04-27 02:22:41.983	2026-04-27 02:22:41.983	\N	\N	\N	\N	0	\N	f	\N
372	pemv71u62ueo8vi868ujx4tr	2026-04-27 02:22:41.983	2026-04-27 02:22:41.983	2026-04-27 02:22:42.011	\N	\N	\N	0	\N	f	\N
373	qx7t00bu8c7gjoacup7e2rtu	2026-04-27 02:22:42.646	2026-04-27 02:22:42.646	\N	\N	\N	\N	0	\N	f	\N
374	qx7t00bu8c7gjoacup7e2rtu	2026-04-27 02:22:42.646	2026-04-27 02:22:42.646	2026-04-27 02:22:42.664	\N	\N	\N	0	\N	f	\N
377	xldcrac4xeap0nl3qhel5o8v	2026-04-27 02:22:44.194	2026-04-27 02:22:44.194	\N	\N	\N	\N	0	\N	f	\N
378	xldcrac4xeap0nl3qhel5o8v	2026-04-27 02:22:44.194	2026-04-27 02:22:44.194	2026-04-27 02:22:44.211	\N	\N	\N	0	\N	f	\N
474	b0pjxg3hgtxtk534cuagnqiw	2026-04-27 02:23:16.689	2026-04-27 02:23:16.689	2026-04-27 02:23:16.698	\N	\N	\N	0	\N	f	\N
479	n2blkvnq9p67clhl3hoba0ob	2026-04-27 02:23:17.995	2026-04-27 02:23:17.995	\N	\N	\N	\N	0	\N	f	\N
389	z6nfo5akvw6d5t3o8b09nf43	2026-04-27 02:22:47.699	2026-04-27 02:22:47.699	\N	\N	\N	\N	0	\N	f	\N
390	z6nfo5akvw6d5t3o8b09nf43	2026-04-27 02:22:47.699	2026-04-27 02:22:47.699	2026-04-27 02:22:47.708	\N	\N	\N	0	\N	f	\N
401	byceu9u6md8xarx3sqx4qyck	2026-04-27 02:22:50.522	2026-04-27 02:22:50.522	\N	\N	\N	\N	0	\N	f	\N
402	byceu9u6md8xarx3sqx4qyck	2026-04-27 02:22:50.522	2026-04-27 02:22:50.522	2026-04-27 02:22:50.532	\N	\N	\N	0	\N	f	\N
407	yynhfuetl58snl4z2dkx83rm	2026-04-27 02:22:52.177	2026-04-27 02:22:52.177	\N	\N	\N	\N	0	\N	f	\N
408	yynhfuetl58snl4z2dkx83rm	2026-04-27 02:22:52.177	2026-04-27 02:22:52.177	2026-04-27 02:22:52.188	\N	\N	\N	0	\N	f	\N
413	c2wpn07v6j30tefwxvrc147z	2026-04-27 02:22:53.688	2026-04-27 02:22:53.688	\N	\N	\N	\N	0	\N	f	\N
414	c2wpn07v6j30tefwxvrc147z	2026-04-27 02:22:53.688	2026-04-27 02:22:53.688	2026-04-27 02:22:53.697	\N	\N	\N	0	\N	f	\N
421	bxf8e69xtt6p9lc9gu2b6poq	2026-04-27 02:22:56.16	2026-04-27 02:22:56.16	\N	\N	\N	\N	0	\N	f	\N
422	bxf8e69xtt6p9lc9gu2b6poq	2026-04-27 02:22:56.16	2026-04-27 02:22:56.16	2026-04-27 02:22:56.175	\N	\N	\N	0	\N	f	\N
480	n2blkvnq9p67clhl3hoba0ob	2026-04-27 02:23:17.995	2026-04-27 02:23:17.995	2026-04-27 02:23:18.009	\N	\N	\N	0	\N	f	\N
487	qbg60yq3g38jz50smwe60fot	2026-04-27 02:23:20.342	2026-04-27 02:23:20.342	\N	\N	\N	\N	0	\N	f	\N
488	qbg60yq3g38jz50smwe60fot	2026-04-27 02:23:20.342	2026-04-27 02:23:20.342	2026-04-27 02:23:20.354	\N	\N	\N	0	\N	f	\N
491	wfwif8oeydxi21d9ycogjsze	2026-04-27 02:23:21.552	2026-04-27 02:23:21.552	\N	\N	\N	\N	0	\N	f	\N
492	wfwif8oeydxi21d9ycogjsze	2026-04-27 02:23:21.552	2026-04-27 02:23:21.552	2026-04-27 02:23:21.565	\N	\N	\N	0	\N	f	\N
499	o3e04sllvbspacfmb9t1x1bc	2026-04-27 02:23:24.019	2026-04-27 02:23:24.019	\N	\N	\N	\N	0	\N	f	\N
500	o3e04sllvbspacfmb9t1x1bc	2026-04-27 02:23:24.019	2026-04-27 02:23:24.019	2026-04-27 02:23:24.031	\N	\N	\N	0	\N	f	\N
505	ag5mejkbwdiimb87p69zj0eu	2026-04-27 02:23:25.47	2026-04-27 02:23:25.47	\N	\N	\N	\N	0	\N	f	\N
506	ag5mejkbwdiimb87p69zj0eu	2026-04-27 02:23:25.47	2026-04-27 02:23:25.47	2026-04-27 02:23:25.481	\N	\N	\N	0	\N	f	\N
509	g4tr0tn6budovi56apn417h0	2026-04-27 02:23:26.408	2026-04-27 02:23:26.408	\N	\N	\N	\N	0	\N	f	\N
510	g4tr0tn6budovi56apn417h0	2026-04-27 02:23:26.408	2026-04-27 02:23:26.408	2026-04-27 02:23:26.418	\N	\N	\N	0	\N	f	\N
513	z3fnpbsn6y1jyoqlyugvx2gs	2026-04-27 02:23:27.267	2026-04-27 02:23:27.267	\N	\N	\N	\N	0	\N	f	\N
514	z3fnpbsn6y1jyoqlyugvx2gs	2026-04-27 02:23:27.267	2026-04-27 02:23:27.267	2026-04-27 02:23:27.281	\N	\N	\N	0	\N	f	\N
523	q8yunb794w2hsy1y4152itqw	2026-04-27 02:23:29.833	2026-04-27 02:23:29.833	\N	\N	\N	\N	0	\N	f	\N
524	q8yunb794w2hsy1y4152itqw	2026-04-27 02:23:29.833	2026-04-27 02:23:29.833	2026-04-27 02:23:29.844	\N	\N	\N	0	\N	f	\N
529	xhp31b2w8x2y8efnitpanhee	2026-04-27 02:23:31.152	2026-04-27 02:23:31.152	\N	\N	\N	\N	0	\N	f	\N
530	xhp31b2w8x2y8efnitpanhee	2026-04-27 02:23:31.152	2026-04-27 02:23:31.152	2026-04-27 02:23:31.163	\N	\N	\N	0	\N	f	\N
535	bmr0ei399wt8lfpg0r8zerls	2026-04-27 02:23:32.42	2026-04-27 02:23:32.42	\N	\N	\N	\N	0	\N	f	\N
536	bmr0ei399wt8lfpg0r8zerls	2026-04-27 02:23:32.42	2026-04-27 02:23:32.42	2026-04-27 02:23:32.429	\N	\N	\N	0	\N	f	\N
543	rfjk88awe8wwbe4093ps4p7j	2026-04-27 02:23:34.321	2026-04-27 02:23:34.321	\N	\N	\N	\N	0	\N	f	\N
544	rfjk88awe8wwbe4093ps4p7j	2026-04-27 02:23:34.321	2026-04-27 02:23:34.321	2026-04-27 02:23:34.332	\N	\N	\N	0	\N	f	\N
549	jup6tt13qdaa2pdzk87ljxre	2026-04-27 02:23:35.618	2026-04-27 02:23:35.618	\N	\N	\N	\N	0	\N	f	\N
550	jup6tt13qdaa2pdzk87ljxre	2026-04-27 02:23:35.618	2026-04-27 02:23:35.618	2026-04-27 02:23:35.631	\N	\N	\N	0	\N	f	\N
555	mzrwaax3mcl2hriil7swsndt	2026-04-27 02:23:36.949	2026-04-27 02:23:36.949	\N	\N	\N	\N	0	\N	f	\N
556	mzrwaax3mcl2hriil7swsndt	2026-04-27 02:23:36.949	2026-04-27 02:23:36.949	2026-04-27 02:23:36.958	\N	\N	\N	0	\N	f	\N
561	ranslchb3ykf1uvqyhgzau4j	2026-04-27 02:23:38.264	2026-04-27 02:23:38.264	\N	\N	\N	\N	0	\N	f	\N
562	ranslchb3ykf1uvqyhgzau4j	2026-04-27 02:23:38.264	2026-04-27 02:23:38.264	2026-04-27 02:23:38.275	\N	\N	\N	0	\N	f	\N
565	ubdb8pc7vq3k4ke10l09bv69	2026-04-27 02:23:39.21	2026-04-27 02:23:39.21	\N	\N	\N	\N	0	\N	f	\N
566	ubdb8pc7vq3k4ke10l09bv69	2026-04-27 02:23:39.21	2026-04-27 02:23:39.21	2026-04-27 02:23:39.219	\N	\N	\N	0	\N	f	\N
571	bgadng0zpwg8v8eh809951xf	2026-04-27 02:23:40.497	2026-04-27 02:23:40.497	\N	\N	\N	\N	0	\N	f	\N
572	bgadng0zpwg8v8eh809951xf	2026-04-27 02:23:40.497	2026-04-27 02:23:40.497	2026-04-27 02:23:40.508	\N	\N	\N	0	\N	f	\N
577	wjfva1el9pj0ptw2r5d343aa	2026-04-27 02:23:41.822	2026-04-27 02:23:41.822	\N	\N	\N	\N	0	\N	f	\N
578	wjfva1el9pj0ptw2r5d343aa	2026-04-27 02:23:41.822	2026-04-27 02:23:41.822	2026-04-27 02:23:41.831	\N	\N	\N	0	\N	f	\N
585	wuyw121hztht1rkbdoo0fncw	2026-04-27 02:23:43.585	2026-04-27 02:23:43.585	\N	\N	\N	\N	0	\N	f	\N
586	wuyw121hztht1rkbdoo0fncw	2026-04-27 02:23:43.585	2026-04-27 02:23:43.585	2026-04-27 02:23:43.594	\N	\N	\N	0	\N	f	\N
591	fho9rrnae72r2qaw9xywkdqm	2026-04-27 02:23:44.843	2026-04-27 02:23:44.843	\N	\N	\N	\N	0	\N	f	\N
592	fho9rrnae72r2qaw9xywkdqm	2026-04-27 02:23:44.843	2026-04-27 02:23:44.843	2026-04-27 02:23:44.854	\N	\N	\N	0	\N	f	\N
597	a8ntno95w6nolmddb5fby3bh	2026-04-27 02:23:46.071	2026-04-27 02:23:46.071	\N	\N	\N	\N	0	\N	f	\N
598	a8ntno95w6nolmddb5fby3bh	2026-04-27 02:23:46.071	2026-04-27 02:23:46.071	2026-04-27 02:23:46.084	\N	\N	\N	0	\N	f	\N
617	dqag6t0gvv9m4k6jw5pskp27	2026-04-27 02:23:50.493	2026-04-27 02:23:50.493	\N	\N	\N	\N	0	\N	f	\N
618	dqag6t0gvv9m4k6jw5pskp27	2026-04-27 02:23:50.493	2026-04-27 02:23:50.493	2026-04-27 02:23:50.502	\N	\N	\N	0	\N	f	\N
605	eqbsznosfrz3baojuko51g9t	2026-04-27 02:23:47.854	2026-04-27 02:57:09.949	\N	\N	\N	\N	0	2026-04-27	f	
611	o8dc29fm2wujbwpy7zyxf49g	2026-04-27 02:23:49.153	2026-04-27 03:00:00.371	\N	\N	\N	\N	0	2026-04-27	f	
628	kmud6qfclqzgmfqfm0zrn1qq	2026-04-27 02:23:50.896	2026-04-27 03:09:01.285	2026-04-27 03:09:01.366	\N	\N	\N	0	2026-04-26	f	
323	aokbnr2yut3ttwa2zplfi07k	2026-04-27 02:22:23.604	2026-04-27 02:22:23.604	\N	\N	\N	\N	0	\N	f	\N
324	aokbnr2yut3ttwa2zplfi07k	2026-04-27 02:22:23.604	2026-04-27 02:22:23.604	2026-04-27 02:22:23.626	\N	\N	\N	0	\N	f	\N
333	a5bysb6lxikfk3vylyvks2wr	2026-04-27 02:22:27.126	2026-04-27 02:22:27.126	\N	\N	\N	\N	0	\N	f	\N
334	a5bysb6lxikfk3vylyvks2wr	2026-04-27 02:22:27.126	2026-04-27 02:22:27.126	2026-04-27 02:22:27.147	\N	\N	\N	0	\N	f	\N
339	dx6fue9m3rsxepz98br0ao15	2026-04-27 02:22:29.132	2026-04-27 02:22:29.132	\N	\N	\N	\N	0	\N	f	\N
340	dx6fue9m3rsxepz98br0ao15	2026-04-27 02:22:29.132	2026-04-27 02:22:29.132	2026-04-27 02:22:29.15	\N	\N	\N	0	\N	f	\N
345	vd9wqo6gn23rlg6rl5c5pj9d	2026-04-27 02:22:31.134	2026-04-27 02:22:31.134	\N	\N	\N	\N	0	\N	f	\N
346	vd9wqo6gn23rlg6rl5c5pj9d	2026-04-27 02:22:31.134	2026-04-27 02:22:31.134	2026-04-27 02:22:31.147	\N	\N	\N	0	\N	f	\N
349	w8sgmxj7mzl606mivt5hjryc	2026-04-27 02:22:32.269	2026-04-27 02:22:32.269	\N	\N	\N	\N	0	\N	f	\N
350	w8sgmxj7mzl606mivt5hjryc	2026-04-27 02:22:32.269	2026-04-27 02:22:32.269	2026-04-27 02:22:32.294	\N	\N	\N	0	\N	f	\N
357	gvxnqmo37m1jcv7cbwfxn7t0	2026-04-27 02:22:35.345	2026-04-27 02:22:35.345	\N	\N	\N	\N	0	\N	f	\N
358	gvxnqmo37m1jcv7cbwfxn7t0	2026-04-27 02:22:35.345	2026-04-27 02:22:35.345	2026-04-27 02:22:35.362	\N	\N	\N	0	\N	f	\N
365	uxvm86di9ozllwmg8sd2hvy9	2026-04-27 02:22:39.379	2026-04-27 02:22:39.379	\N	\N	\N	\N	0	\N	f	\N
366	uxvm86di9ozllwmg8sd2hvy9	2026-04-27 02:22:39.379	2026-04-27 02:22:39.379	2026-04-27 02:22:39.401	\N	\N	\N	0	\N	f	\N
379	m53fjybew4xnwahzbx5neuig	2026-04-27 02:22:45.238	2026-04-27 02:22:45.238	\N	\N	\N	\N	0	\N	f	\N
380	m53fjybew4xnwahzbx5neuig	2026-04-27 02:22:45.238	2026-04-27 02:22:45.238	2026-04-27 02:22:45.258	\N	\N	\N	0	\N	f	\N
385	c115nlmdyn4r7r62wn11m7hv	2026-04-27 02:22:46.848	2026-04-27 02:22:46.848	\N	\N	\N	\N	0	\N	f	\N
386	c115nlmdyn4r7r62wn11m7hv	2026-04-27 02:22:46.848	2026-04-27 02:22:46.848	2026-04-27 02:22:46.857	\N	\N	\N	0	\N	f	\N
391	ahnbsvfw1m41g657qqpqkxza	2026-04-27 02:22:48.167	2026-04-27 02:22:48.167	\N	\N	\N	\N	0	\N	f	\N
392	ahnbsvfw1m41g657qqpqkxza	2026-04-27 02:22:48.167	2026-04-27 02:22:48.167	2026-04-27 02:22:48.193	\N	\N	\N	0	\N	f	\N
397	ud3mbqfu0jd95plwnqp27582	2026-04-27 02:22:49.623	2026-04-27 02:22:49.623	\N	\N	\N	\N	0	\N	f	\N
398	ud3mbqfu0jd95plwnqp27582	2026-04-27 02:22:49.623	2026-04-27 02:22:49.623	2026-04-27 02:22:49.635	\N	\N	\N	0	\N	f	\N
405	woc5gx6tf5vi63h8fz66anat	2026-04-27 02:22:51.644	2026-04-27 02:22:51.644	\N	\N	\N	\N	0	\N	f	\N
406	woc5gx6tf5vi63h8fz66anat	2026-04-27 02:22:51.644	2026-04-27 02:22:51.644	2026-04-27 02:22:51.655	\N	\N	\N	0	\N	f	\N
411	h6lh4mr7rfzm3p9h0ne83ffc	2026-04-27 02:22:53.283	2026-04-27 02:22:53.283	\N	\N	\N	\N	0	\N	f	\N
412	h6lh4mr7rfzm3p9h0ne83ffc	2026-04-27 02:22:53.283	2026-04-27 02:22:53.283	2026-04-27 02:22:53.292	\N	\N	\N	0	\N	f	\N
415	f46buftzs9f0kwxias1cxasr	2026-04-27 02:22:54.251	2026-04-27 02:22:54.251	\N	\N	\N	\N	0	\N	f	\N
416	f46buftzs9f0kwxias1cxasr	2026-04-27 02:22:54.251	2026-04-27 02:22:54.251	2026-04-27 02:22:54.261	\N	\N	\N	0	\N	f	\N
419	jf8okacoxxsolkzlv4kuuzkg	2026-04-27 02:22:55.507	2026-04-27 02:22:55.507	\N	\N	\N	\N	0	\N	f	\N
420	jf8okacoxxsolkzlv4kuuzkg	2026-04-27 02:22:55.507	2026-04-27 02:22:55.507	2026-04-27 02:22:55.522	\N	\N	\N	0	\N	f	\N
423	j2pxlqyxuw4r0awm0bht4lf3	2026-04-27 02:22:56.851	2026-04-27 02:22:56.851	\N	\N	\N	\N	0	\N	f	\N
424	j2pxlqyxuw4r0awm0bht4lf3	2026-04-27 02:22:56.851	2026-04-27 02:22:56.851	2026-04-27 02:22:56.864	\N	\N	\N	0	\N	f	\N
433	w5a8m6b5fdtm1fml7cx2xqe2	2026-04-27 02:23:03.683	2026-04-27 02:23:03.683	\N	\N	\N	\N	0	\N	f	\N
434	w5a8m6b5fdtm1fml7cx2xqe2	2026-04-27 02:23:03.683	2026-04-27 02:23:03.683	2026-04-27 02:23:03.706	\N	\N	\N	0	\N	f	\N
623	x2cezc4h76bvbrlbljn33l6k	2026-04-27 01:32:11.802	2026-04-27 02:53:17.259	2026-04-27 02:53:17.325	\N	\N	\N	0	2026-04-26	f	
625	iqochqiahusz4dh7ebylew1z	2026-04-27 01:32:15.21	2026-04-27 02:57:56.563	2026-04-27 02:57:56.577	\N	\N	\N	0	2026-04-22	f	
325	rs0qwnfpduahm7j2os0yyt23	2026-04-27 02:22:24.269	2026-04-27 02:22:24.269	\N	\N	\N	\N	0	\N	f	\N
326	rs0qwnfpduahm7j2os0yyt23	2026-04-27 02:22:24.269	2026-04-27 02:22:24.269	2026-04-27 02:22:24.282	\N	\N	\N	0	\N	f	\N
327	x5m0g720udw7d29yjrjn8jf1	2026-04-27 02:22:25	2026-04-27 02:22:25	\N	\N	\N	\N	0	\N	f	\N
328	x5m0g720udw7d29yjrjn8jf1	2026-04-27 02:22:25	2026-04-27 02:22:25	2026-04-27 02:22:25.018	\N	\N	\N	0	\N	f	\N
331	a6njynv7foilkkrk6vizbb40	2026-04-27 02:22:26.423	2026-04-27 02:22:26.423	\N	\N	\N	\N	0	\N	f	\N
332	a6njynv7foilkkrk6vizbb40	2026-04-27 02:22:26.423	2026-04-27 02:22:26.423	2026-04-27 02:22:26.438	\N	\N	\N	0	\N	f	\N
337	uazklpidrc33rwgg4dmz4xcz	2026-04-27 02:22:28.505	2026-04-27 02:22:28.505	\N	\N	\N	\N	0	\N	f	\N
338	uazklpidrc33rwgg4dmz4xcz	2026-04-27 02:22:28.505	2026-04-27 02:22:28.505	2026-04-27 02:22:28.521	\N	\N	\N	0	\N	f	\N
343	djdqpfy71aa75cvbyhp4pmua	2026-04-27 02:22:30.497	2026-04-27 02:22:30.497	\N	\N	\N	\N	0	\N	f	\N
344	djdqpfy71aa75cvbyhp4pmua	2026-04-27 02:22:30.497	2026-04-27 02:22:30.497	2026-04-27 02:22:30.514	\N	\N	\N	0	\N	f	\N
347	vhgvhpzuicw9d13bz9v6eodb	2026-04-27 02:22:31.651	2026-04-27 02:22:31.651	\N	\N	\N	\N	0	\N	f	\N
348	vhgvhpzuicw9d13bz9v6eodb	2026-04-27 02:22:31.651	2026-04-27 02:22:31.651	2026-04-27 02:22:31.664	\N	\N	\N	0	\N	f	\N
359	v8gkg9t6ubbijxra7d5r9ues	2026-04-27 02:22:36.656	2026-04-27 02:22:36.656	\N	\N	\N	\N	0	\N	f	\N
360	v8gkg9t6ubbijxra7d5r9ues	2026-04-27 02:22:36.656	2026-04-27 02:22:36.656	2026-04-27 02:22:36.684	\N	\N	\N	0	\N	f	\N
363	i6zhv3yn3jfvfbmsrpiqb68d	2026-04-27 02:22:38.6	2026-04-27 02:22:38.6	\N	\N	\N	\N	0	\N	f	\N
364	i6zhv3yn3jfvfbmsrpiqb68d	2026-04-27 02:22:38.6	2026-04-27 02:22:38.6	2026-04-27 02:22:38.614	\N	\N	\N	0	\N	f	\N
369	zj0ohgsuclbvebh1nqukdz5v	2026-04-27 02:22:40.774	2026-04-27 02:22:40.774	\N	\N	\N	\N	0	\N	f	\N
370	zj0ohgsuclbvebh1nqukdz5v	2026-04-27 02:22:40.774	2026-04-27 02:22:40.774	2026-04-27 02:22:40.796	\N	\N	\N	0	\N	f	\N
375	ctadgwkdhrbw9di3sseipodb	2026-04-27 02:22:43.465	2026-04-27 02:22:43.465	\N	\N	\N	\N	0	\N	f	\N
376	ctadgwkdhrbw9di3sseipodb	2026-04-27 02:22:43.465	2026-04-27 02:22:43.465	2026-04-27 02:22:43.479	\N	\N	\N	0	\N	f	\N
381	ueu24ve6rzhbhmlx86nabrxt	2026-04-27 02:22:45.831	2026-04-27 02:22:45.831	\N	\N	\N	\N	0	\N	f	\N
382	ueu24ve6rzhbhmlx86nabrxt	2026-04-27 02:22:45.831	2026-04-27 02:22:45.831	2026-04-27 02:22:45.844	\N	\N	\N	0	\N	f	\N
387	hldob07qr2ng8vabg81pp1b0	2026-04-27 02:22:47.267	2026-04-27 02:22:47.267	\N	\N	\N	\N	0	\N	f	\N
388	hldob07qr2ng8vabg81pp1b0	2026-04-27 02:22:47.267	2026-04-27 02:22:47.267	2026-04-27 02:22:47.277	\N	\N	\N	0	\N	f	\N
393	fvf95gib4flnuynral7r1cf6	2026-04-27 02:22:48.687	2026-04-27 02:22:48.687	\N	\N	\N	\N	0	\N	f	\N
394	fvf95gib4flnuynral7r1cf6	2026-04-27 02:22:48.687	2026-04-27 02:22:48.687	2026-04-27 02:22:48.697	\N	\N	\N	0	\N	f	\N
403	jih6en2ln1mkx0stoh28yaoo	2026-04-27 02:22:51.103	2026-04-27 02:22:51.103	\N	\N	\N	\N	0	\N	f	\N
404	jih6en2ln1mkx0stoh28yaoo	2026-04-27 02:22:51.103	2026-04-27 02:22:51.103	2026-04-27 02:22:51.117	\N	\N	\N	0	\N	f	\N
409	kqd29u803dsj69zoprj1o5ss	2026-04-27 02:22:52.69	2026-04-27 02:22:52.69	\N	\N	\N	\N	0	\N	f	\N
410	kqd29u803dsj69zoprj1o5ss	2026-04-27 02:22:52.69	2026-04-27 02:22:52.69	2026-04-27 02:22:52.7	\N	\N	\N	0	\N	f	\N
417	lna6z5rb53mrurk11d6il8fw	2026-04-27 02:22:54.862	2026-04-27 02:22:54.862	\N	\N	\N	\N	0	\N	f	\N
418	lna6z5rb53mrurk11d6il8fw	2026-04-27 02:22:54.862	2026-04-27 02:22:54.862	2026-04-27 02:22:54.877	\N	\N	\N	0	\N	f	\N
429	h2639kaafuzry025j23m7eug	2026-04-27 02:23:01.62	2026-04-27 02:23:01.62	\N	\N	\N	\N	0	\N	f	\N
430	h2639kaafuzry025j23m7eug	2026-04-27 02:23:01.62	2026-04-27 02:23:01.62	2026-04-27 02:23:01.64	\N	\N	\N	0	\N	f	\N
431	donv2q36igwu29on127bavf4	2026-04-27 02:23:02.992	2026-04-27 02:23:02.992	\N	\N	\N	\N	0	\N	f	\N
432	donv2q36igwu29on127bavf4	2026-04-27 02:23:02.992	2026-04-27 02:23:02.992	2026-04-27 02:23:03.023	\N	\N	\N	0	\N	f	\N
435	wrydu1gxxc60a089ru8kqayx	2026-04-27 02:23:04.615	2026-04-27 02:23:04.615	\N	\N	\N	\N	0	\N	f	\N
624	eqbsznosfrz3baojuko51g9t	2026-04-27 02:23:47.854	2026-04-27 02:57:09.949	2026-04-27 02:57:10.034	\N	\N	\N	0	2026-04-27	f	
\.


--
-- Data for Name: customet_follow_ups_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_customer_lnk (id, customet_follow_up_id, customer_id) FROM stdin;
3	3	43
647	435	701
5	5	45
929	623	248
7	7	47
650	437	704
365	247	432
11	11	51
931	625	264
367	248	435
15	15	41
368	249	436
120	81	116
655	440	709
370	250	438
371	251	439
658	442	710
125	85	236
373	252	441
127	87	233
128	88	134
129	89	131
130	90	142
131	91	237
659	443	711
133	92	239
934	628	957
664	446	716
377	255	445
140	97	246
379	256	447
380	257	448
382	258	450
146	101	252
383	259	255
148	102	254
233	159	315
152	105	258
154	106	260
235	160	317
385	260	451
386	261	452
388	262	454
158	109	262
161	111	265
163	112	267
110	71	234
398	269	464
400	270	466
251	171	312
401	271	467
170	117	272
253	172	325
172	118	274
254	173	249
403	272	469
176	121	276
404	273	470
178	122	278
179	123	279
256	174	326
181	124	281
182	125	282
257	175	318
184	126	284
185	127	285
187	128	287
406	274	472
259	176	327
407	275	473
260	177	328
262	178	330
263	179	331
409	276	475
410	277	476
265	180	333
266	181	334
412	278	478
268	182	336
269	183	337
413	279	479
271	184	339
272	185	340
415	280	481
416	281	289
274	186	342
275	187	343
277	188	345
278	189	346
418	282	482
280	190	348
281	191	349
419	283	483
283	192	351
287	195	355
421	284	485
289	196	357
290	197	358
422	285	486
292	198	360
293	199	361
295	200	363
296	201	364
424	286	488
298	202	366
299	203	367
425	287	489
301	204	369
302	205	370
304	206	372
305	207	373
427	288	491
307	208	375
308	209	376
428	289	492
310	210	378
311	211	379
313	212	381
314	213	382
430	290	494
316	214	384
317	215	385
431	291	243
319	216	387
323	219	391
433	292	495
325	220	393
326	221	394
434	293	496
328	222	396
329	223	397
331	224	399
332	225	400
436	294	498
334	226	402
335	227	403
437	295	499
337	228	405
338	229	406
340	230	408
341	231	409
439	296	501
343	232	411
344	233	412
440	297	502
346	234	414
347	235	415
349	236	417
350	237	418
442	298	504
352	238	420
353	239	421
443	299	505
355	240	423
356	241	424
358	242	426
359	243	427
445	300	507
361	244	429
446	301	508
448	302	510
455	307	517
457	308	519
458	309	520
460	310	522
461	311	523
463	312	525
464	313	526
466	314	528
467	315	458
469	316	529
470	317	530
649	436	703
475	320	535
482	325	542
661	444	713
485	327	545
665	447	717
490	330	550
491	331	511
930	624	936
496	334	554
500	337	558
671	451	723
505	340	563
509	343	567
514	346	572
515	347	573
676	454	728
520	350	578
529	356	587
533	359	591
680	457	732
538	362	596
539	363	597
544	366	602
548	369	606
685	460	737
553	372	611
557	375	615
689	463	741
562	378	620
566	381	624
694	466	746
575	387	633
698	469	750
580	390	638
584	393	642
703	472	755
598	402	656
599	403	657
707	475	759
604	406	662
608	409	666
613	412	671
619	416	677
620	417	678
712	478	764
625	420	683
628	422	686
716	481	768
638	429	692
641	431	695
721	484	773
646	434	700
722	485	651
727	488	777
734	493	784
740	497	788
746	501	792
751	504	797
755	507	801
760	510	804
766	514	810
770	517	814
773	519	747
778	522	820
782	525	824
787	528	829
790	530	830
794	533	834
799	536	839
803	539	843
808	542	846
812	545	850
817	548	855
821	551	859
826	554	864
830	557	868
835	560	873
841	564	879
845	567	883
850	570	888
857	575	893
862	578	898
866	581	645
871	584	905
874	586	906
878	589	910
883	592	915
887	595	919
892	598	924
896	601	928
899	603	931
905	607	937
917	615	949
922	618	954
926	621	958
472	318	532
476	321	536
652	438	706
481	324	541
484	326	544
488	329	548
653	439	707
493	332	551
497	335	555
932	626	942
502	338	560
506	341	564
656	441	461
511	344	569
521	351	579
524	353	582
662	445	714
527	355	585
532	358	590
536	361	594
667	448	719
541	364	599
545	367	603
668	449	720
550	370	608
551	371	609
554	373	612
673	452	725
560	377	618
677	455	729
565	380	623
682	458	734
574	386	632
578	389	636
686	461	738
583	392	641
592	398	650
596	401	654
688	462	740
601	404	659
605	407	663
692	465	744
610	410	668
614	413	672
622	418	680
626	421	684
631	424	689
701	471	753
640	430	694
706	474	758
710	477	762
715	480	767
719	483	771
724	486	774
728	489	778
733	492	783
737	495	388
742	498	790
745	500	791
749	503	795
754	506	800
761	511	805
767	515	811
772	518	816
776	521	818
781	524	823
785	527	827
791	531	831
796	534	836
800	537	840
805	540	845
806	541	627
811	544	849
815	547	853
820	550	858
824	553	862
829	556	867
833	559	871
838	562	876
839	563	877
844	566	882
848	569	886
853	572	891
854	573	293
859	576	895
863	579	899
869	583	903
875	587	907
880	590	912
884	593	916
889	596	921
893	599	925
898	602	930
901	604	933
908	609	940
914	613	946
919	616	951
923	619	955
928	622	960
473	319	533
670	450	722
478	322	538
479	323	539
674	453	726
487	328	547
494	333	552
933	627	945
499	336	557
503	339	561
679	456	731
508	342	566
512	345	570
683	459	735
517	348	575
518	349	576
523	352	581
526	354	584
530	357	588
691	464	743
535	360	593
542	365	600
547	368	605
556	374	614
559	376	617
563	379	621
568	382	626
572	385	630
700	470	752
577	388	635
581	391	639
704	473	756
586	394	644
590	397	648
602	405	660
709	476	761
607	408	665
611	411	669
713	479	765
616	414	674
617	415	675
623	419	681
718	482	770
629	423	687
725	487	775
643	432	697
644	433	698
730	490	780
731	491	781
736	494	786
739	496	787
743	499	455
748	502	794
752	505	798
757	508	803
758	509	514
763	512	807
764	513	808
769	516	813
775	520	817
779	523	821
784	526	826
788	529	352
793	532	833
797	535	837
802	538	842
809	543	847
814	546	852
818	549	856
823	552	861
827	555	865
832	558	870
836	561	874
842	565	880
847	568	885
851	571	889
856	574	892
860	577	896
865	580	901
868	582	902
872	585	442
877	588	909
881	591	913
886	594	918
890	597	922
895	600	927
902	605	934
907	608	939
911	611	943
916	614	948
920	617	952
\.


--
-- Data for Name: customet_follow_ups_follow_ups_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_follow_ups_lnk (id, customet_follow_up_id, follow_up_list_id, follow_up_list_ord, customet_follow_up_ord) FROM stdin;
3	3	3	0	1
5	5	5	0	1
249	85	109	1	1
7	7	7	0	1
250	177	110	0	1
251	178	111	1	1
252	179	112	0	1
11	11	11	0	1
253	180	113	1	1
254	181	114	0	1
255	182	115	1	1
15	15	1	0	1
16	15	15	1	1
256	183	116	0	1
257	184	117	1	1
258	185	118	0	1
259	186	119	1	1
260	187	120	0	1
261	188	121	1	1
98	81	2	1	1
99	81	16	2	1
262	189	122	0	1
263	190	123	1	1
264	191	124	0	1
265	192	125	1	1
305	232	165	1	1
268	195	128	0	1
231	171	89	0	1
269	196	129	1	1
270	197	130	0	1
106	88	6	1	1
107	89	4	1	1
108	90	12	1	1
271	198	131	1	1
272	199	132	0	1
110	87	20	1	1
273	200	133	1	1
274	201	134	0	1
275	202	135	1	1
232	171	99	1	1
113	91	23	0	1
114	92	24	1	1
276	203	136	0	1
277	204	137	1	1
278	205	138	0	1
279	206	139	1	1
280	207	140	0	1
281	208	141	1	1
282	209	142	0	1
283	210	143	1	1
119	97	29	0	1
88	71	17	0	1
284	211	144	0	1
285	212	145	1	1
286	213	146	0	1
287	214	147	1	1
288	215	148	0	1
289	216	149	1	1
213	159	91	0	1
123	101	33	0	1
124	102	34	1	1
127	105	37	0	1
128	106	38	1	1
214	160	92	1	1
292	219	152	0	1
293	220	153	1	1
294	221	154	0	1
133	109	41	0	1
135	111	43	0	1
136	112	44	1	1
295	222	155	1	1
296	223	156	0	1
297	224	157	1	1
298	225	158	0	1
299	226	159	1	1
300	227	160	0	1
143	117	49	0	1
144	118	50	1	1
301	228	161	1	1
302	229	162	0	1
303	230	163	1	1
304	231	164	0	1
149	121	53	0	1
150	122	54	1	1
151	123	55	0	1
152	124	56	1	1
153	125	57	0	1
154	126	58	1	1
155	127	59	0	1
156	128	60	1	1
306	233	166	0	1
307	234	167	1	1
308	235	168	0	1
309	236	169	1	1
310	237	170	0	1
311	238	171	1	1
312	239	172	0	1
313	240	173	1	1
314	241	174	0	1
315	242	175	1	1
316	243	176	0	1
317	244	177	1	1
320	247	180	0	1
321	247	182	1	1
322	248	181	1	1
233	171	103	2	1
234	172	90	1	1
235	172	100	2	1
236	172	104	3	1
237	173	95	0	1
238	173	101	1	1
239	173	105	2	1
240	174	96	1	1
241	174	102	2	1
242	174	106	3	1
243	175	93	0	1
244	175	97	1	1
245	175	107	2	1
246	176	94	1	1
247	176	98	2	1
248	176	108	3	1
323	248	183	2	1
324	249	184	0	1
325	250	185	1	1
330	255	190	0	1
331	256	191	1	1
334	259	35	0	1
335	259	194	1	1
336	260	36	1	1
337	260	195	2	1
346	269	204	0	1
347	270	205	1	1
348	271	206	0	1
349	272	207	1	1
354	277	212	0	1
355	278	213	1	1
356	279	214	0	1
357	280	215	1	1
362	283	218	0	1
363	284	219	1	1
364	285	220	0	1
365	286	221	1	1
368	289	224	0	1
369	290	225	1	1
374	293	228	0	1
375	294	229	1	1
376	295	230	0	1
377	296	231	1	1
380	299	234	0	1
381	300	235	1	1
388	307	242	0	1
389	308	243	1	1
392	311	246	0	1
393	312	247	1	1
394	313	248	0	1
395	314	249	1	1
400	317	252	0	1
401	318	253	1	1
402	319	254	0	1
403	320	255	1	1
406	323	258	0	1
407	324	259	1	1
408	325	260	0	1
409	326	261	1	1
410	327	262	0	1
411	328	263	1	1
414	331	238	0	1
415	331	266	1	1
416	332	239	1	1
417	332	267	2	1
418	333	268	0	1
419	334	269	1	1
422	337	272	0	1
423	338	273	1	1
424	339	274	0	1
425	340	275	1	1
428	343	278	0	1
429	344	279	1	1
430	345	280	0	1
431	346	281	1	1
432	347	282	0	1
433	348	283	1	1
434	349	284	0	1
435	350	285	1	1
442	357	292	0	1
443	358	293	1	1
444	359	294	0	1
445	360	295	1	1
448	363	298	0	1
449	364	299	1	1
450	365	300	0	1
451	366	301	1	1
454	369	304	0	1
455	370	305	1	1
460	375	310	0	1
461	376	311	1	1
464	379	314	0	1
465	380	315	1	1
466	381	316	0	1
467	382	317	1	1
470	385	320	0	1
471	386	321	1	1
472	387	322	0	1
473	388	323	1	1
476	391	326	0	1
477	392	327	1	1
478	393	328	0	1
479	394	329	1	1
482	397	332	0	1
483	398	333	1	1
488	403	338	0	1
489	404	339	1	1
490	405	340	0	1
491	406	341	1	1
494	409	344	0	1
495	410	345	1	1
496	411	346	0	1
497	412	347	1	1
500	415	350	0	1
501	416	351	1	1
502	417	352	0	1
503	418	353	1	1
504	419	354	0	1
505	420	355	1	1
508	423	358	0	1
509	424	359	1	1
518	429	364	0	1
519	430	365	1	1
520	431	366	0	1
521	432	367	1	1
522	433	368	0	1
523	434	369	1	1
524	435	370	0	1
326	251	186	0	1
327	252	187	1	1
332	257	192	0	1
333	258	193	1	1
338	261	196	0	1
339	262	197	1	1
350	273	208	0	1
351	274	209	1	1
352	275	210	0	1
353	276	211	1	1
358	281	63	0	1
359	281	216	1	1
360	282	64	1	1
361	282	217	2	1
366	287	222	0	1
367	288	223	1	1
370	291	27	0	1
371	291	226	1	1
372	292	28	1	1
373	292	227	2	1
378	297	232	0	1
379	298	233	1	1
382	301	236	0	1
383	302	237	1	1
390	309	244	0	1
391	310	245	1	1
396	315	200	0	1
397	315	250	1	1
398	316	201	1	1
399	316	251	2	1
404	321	256	0	1
405	322	257	1	1
412	329	264	0	1
413	330	265	1	1
420	335	270	0	1
421	336	271	1	1
426	341	276	0	1
427	342	277	1	1
436	351	286	0	1
437	352	287	1	1
438	353	288	0	1
439	354	289	1	1
440	355	290	0	1
441	356	291	1	1
446	361	296	0	1
447	362	297	1	1
452	367	302	0	1
453	368	303	1	1
456	371	306	0	1
457	372	307	1	1
458	373	308	0	1
459	374	309	1	1
462	377	312	0	1
463	378	313	1	1
474	389	324	0	1
475	390	325	1	1
486	401	336	0	1
487	402	337	1	1
492	407	342	0	1
493	408	343	1	1
498	413	348	0	1
499	414	349	1	1
506	421	356	0	1
507	422	357	1	1
525	436	371	1	1
526	437	372	0	1
527	438	373	1	1
528	439	374	0	1
529	440	375	1	1
530	441	202	0	1
531	441	376	1	1
532	442	203	1	1
533	442	377	2	1
534	443	378	0	1
535	444	379	1	1
536	445	380	0	1
537	446	381	1	1
538	447	382	0	1
539	448	383	1	1
540	449	384	0	1
541	450	385	1	1
542	451	386	0	1
543	452	387	1	1
544	453	388	0	1
545	454	389	1	1
546	455	390	0	1
547	456	391	1	1
548	457	392	0	1
549	458	393	1	1
550	459	394	0	1
551	460	395	1	1
552	461	396	0	1
553	462	397	1	1
554	463	398	0	1
555	464	399	1	1
556	465	400	0	1
557	466	401	1	1
560	469	404	0	1
561	470	405	1	1
562	471	406	0	1
563	472	407	1	1
564	473	408	0	1
565	474	409	1	1
566	475	410	0	1
567	476	411	1	1
568	477	412	0	1
569	478	413	1	1
570	479	414	0	1
571	480	415	1	1
572	481	416	0	1
573	482	417	1	1
574	483	418	0	1
575	484	419	1	1
576	485	334	0	1
577	485	420	1	1
578	486	335	1	1
579	486	421	2	1
580	487	422	0	1
581	488	423	1	1
582	489	424	0	1
583	490	425	1	1
584	491	426	0	1
585	492	427	1	1
586	493	428	0	1
587	494	429	1	1
588	495	150	0	1
589	495	430	1	1
590	496	151	1	1
591	496	431	2	1
600	503	438	0	1
601	504	439	1	1
610	511	446	0	1
611	512	447	1	1
614	515	450	0	1
615	516	451	1	1
622	521	456	0	1
623	522	457	1	1
628	527	462	0	1
629	528	463	1	1
634	531	466	0	1
635	532	467	1	1
640	537	472	0	1
641	538	473	1	1
644	541	318	0	1
645	541	362	1	1
646	541	476	2	1
647	542	319	1	1
648	542	363	2	1
649	542	477	3	1
654	547	482	0	1
655	548	483	1	1
660	553	488	0	1
661	554	489	1	1
666	559	494	0	1
667	560	495	1	1
670	563	498	0	1
671	564	499	1	1
676	569	504	0	1
677	570	505	1	1
680	573	67	0	1
681	573	508	1	1
682	574	68	1	1
683	574	509	2	1
688	579	514	0	1
689	580	515	1	1
694	583	518	0	1
695	584	519	1	1
702	587	522	0	1
703	588	523	1	1
708	593	528	0	1
709	594	529	1	1
714	599	534	0	1
715	600	535	1	1
724	609	544	0	1
728	613	548	0	1
729	614	549	1	1
734	619	554	0	1
592	497	432	0	1
593	498	433	1	1
598	501	436	0	1
599	502	437	1	1
604	507	442	0	1
605	508	443	1	1
616	517	452	0	1
617	518	453	1	1
618	519	402	0	1
619	519	454	1	1
620	520	403	1	1
621	520	455	2	1
626	525	460	0	1
627	526	461	1	1
636	533	468	0	1
637	534	469	1	1
642	539	474	0	1
643	540	475	1	1
652	545	480	0	1
653	546	481	1	1
658	551	486	0	1
659	552	487	1	1
664	557	492	0	1
665	558	493	1	1
674	567	502	0	1
675	568	503	1	1
684	575	510	0	1
685	576	511	1	1
690	581	330	0	1
691	581	516	1	1
692	582	331	1	1
693	582	517	2	1
704	589	524	0	1
705	590	525	1	1
710	595	530	0	1
711	596	531	1	1
716	601	536	0	1
717	602	537	1	1
718	603	538	0	1
719	604	539	1	1
722	607	542	0	1
723	608	543	1	1
730	615	550	0	1
731	616	551	1	1
736	621	556	0	1
737	622	557	1	1
594	499	198	0	1
595	499	434	1	1
596	500	199	1	1
597	500	435	2	1
602	505	440	0	1
603	506	441	1	1
606	509	240	0	1
607	509	444	1	1
608	510	241	1	1
609	510	445	2	1
612	513	448	0	1
613	514	449	1	1
624	523	458	0	1
625	524	459	1	1
630	529	126	0	1
631	529	464	1	1
632	530	127	1	1
633	530	465	2	1
638	535	470	0	1
639	536	471	1	1
650	543	478	0	1
651	544	479	1	1
656	549	484	0	1
657	550	485	1	1
662	555	490	0	1
663	556	491	1	1
668	561	496	0	1
669	562	497	1	1
672	565	500	0	1
673	566	501	1	1
678	571	506	0	1
679	572	507	1	1
686	577	512	0	1
687	578	513	1	1
696	585	188	0	1
697	585	360	1	1
698	585	520	2	1
699	586	189	1	1
700	586	361	2	1
701	586	521	3	1
706	591	526	0	1
707	592	527	1	1
712	597	532	0	1
713	598	533	1	1
720	605	540	0	1
726	611	546	0	1
732	617	552	0	1
733	618	553	1	1
738	623	30	1	1
739	624	541	1	1
740	625	42	1	1
741	626	545	1	1
742	627	547	1	1
743	628	555	1	1
\.


--
-- Data for Name: customet_follow_ups_staff_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_staff_lnk (id, customet_follow_up_id, staff_id) FROM stdin;
63	15	15
69	7	4
75	81	26
80	71	13
83	85	23
87	87	25
88	5	1
89	88	21
90	3	1
91	89	21
92	11	1
93	90	21
94	97	13
95	623	23
96	605	1
97	624	21
98	109	13
99	625	23
100	609	1
101	626	21
102	611	1
103	627	21
104	619	15
105	628	26
\.


--
-- Data for Name: customet_follow_ups_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customet_follow_ups_store_lnk (id, customet_follow_up_id, store_id) FROM stdin;
1	71	3
116	177	1
117	178	2
118	179	1
119	180	2
120	181	1
121	182	2
122	183	1
9	7	3
123	184	2
124	185	1
125	186	2
13	11	1
126	187	1
15	15	1
16	5	1
127	188	2
18	3	1
128	189	1
20	81	2
129	190	2
130	191	1
131	192	2
24	85	4
26	87	4
27	88	2
28	89	2
29	90	2
30	91	1
31	92	2
134	195	1
36	97	3
135	196	2
136	197	1
40	101	1
41	102	2
44	105	1
45	106	2
137	198	2
138	199	1
48	109	3
50	111	3
51	112	4
139	200	2
140	201	1
141	202	2
142	203	1
56	117	3
57	118	4
143	204	2
144	205	1
60	121	3
61	122	4
62	123	3
63	124	4
64	125	3
65	126	4
66	127	3
67	128	4
145	206	2
146	207	1
147	208	2
148	209	1
149	210	2
150	211	1
151	212	2
152	213	1
153	214	2
154	215	1
155	216	2
158	219	1
159	220	2
160	221	1
161	222	2
162	223	1
163	224	2
164	225	1
165	226	2
166	227	1
167	228	2
168	229	1
169	230	2
170	231	1
98	159	1
99	160	2
171	232	2
172	233	1
173	234	2
174	235	1
175	236	2
176	237	1
177	238	2
178	239	1
179	240	2
180	241	1
110	171	1
111	172	2
112	173	1
113	174	2
114	175	3
115	176	4
181	242	2
182	243	1
183	244	2
186	247	1
187	248	2
188	249	1
189	250	2
190	251	1
191	252	2
194	255	1
195	256	2
196	257	1
197	258	2
198	259	1
199	260	2
200	261	1
201	262	2
208	269	1
209	270	2
210	271	1
211	272	2
212	273	1
213	274	2
214	275	1
215	276	2
216	277	1
217	278	2
218	279	1
219	280	2
220	281	1
221	282	2
222	283	1
223	284	2
224	285	1
225	286	2
226	287	1
227	288	2
228	289	1
229	290	2
230	291	1
231	292	2
232	293	1
233	294	2
234	295	1
235	296	2
236	297	1
237	298	2
238	299	1
239	300	2
240	301	1
241	302	2
246	307	1
247	308	2
248	309	1
249	310	2
250	311	1
251	312	2
252	313	1
253	314	2
254	315	1
255	316	2
256	317	1
257	318	2
258	319	1
259	320	2
260	321	1
261	322	2
268	329	1
269	330	2
274	335	1
275	336	2
280	341	1
281	342	2
290	351	1
291	352	2
292	353	1
293	354	2
294	355	1
295	356	2
300	361	1
301	362	2
306	367	1
307	368	2
310	371	1
311	372	2
312	373	1
313	374	2
316	377	1
317	378	2
328	389	1
329	390	2
340	401	1
341	402	2
346	407	1
347	408	2
352	413	1
353	414	2
360	421	1
361	422	2
262	323	1
263	324	2
272	333	1
273	334	2
278	339	1
279	340	2
284	345	1
285	346	2
288	349	1
289	350	2
296	357	1
297	358	2
304	365	1
305	366	2
318	379	1
319	380	2
324	385	1
325	386	2
330	391	1
331	392	2
336	397	1
337	398	2
344	405	1
345	406	2
350	411	1
351	412	2
354	415	1
355	416	2
358	419	1
359	420	2
362	423	1
363	424	2
372	433	1
373	434	2
264	325	1
265	326	2
266	327	1
267	328	2
270	331	1
271	332	2
276	337	1
277	338	2
282	343	1
283	344	2
286	347	1
287	348	2
298	359	1
299	360	2
302	363	1
303	364	2
308	369	1
309	370	2
314	375	1
315	376	2
320	381	1
321	382	2
326	387	1
327	388	2
332	393	1
333	394	2
342	403	1
343	404	2
348	409	1
349	410	2
356	417	1
357	418	2
368	429	1
369	430	2
370	431	1
371	432	2
374	435	1
375	436	2
376	437	1
377	438	2
378	439	1
379	440	2
380	441	1
381	442	2
382	443	1
383	444	2
384	445	1
385	446	2
386	447	1
387	448	2
388	449	1
389	450	2
390	451	1
391	452	2
392	453	1
393	454	2
394	455	1
395	456	2
396	457	1
397	458	2
398	459	1
399	460	2
400	461	1
401	462	2
402	463	1
403	464	2
404	465	1
405	466	2
408	469	1
409	470	2
410	471	1
411	472	2
412	473	1
413	474	2
414	475	1
415	476	2
416	477	1
417	478	2
418	479	1
419	480	2
420	481	1
421	482	2
422	483	1
423	484	2
424	485	1
425	486	2
426	487	1
427	488	2
428	489	1
429	490	2
430	491	1
431	492	2
432	493	1
433	494	2
434	495	1
435	496	2
436	497	1
437	498	2
438	499	1
439	500	2
440	501	1
441	502	2
442	503	1
443	504	2
444	505	1
445	506	2
446	507	1
447	508	2
448	509	1
449	510	2
450	511	1
451	512	2
452	513	1
453	514	2
454	515	1
455	516	2
456	517	1
457	518	2
458	519	1
459	520	2
460	521	1
461	522	2
462	523	1
463	524	2
464	525	1
465	526	2
466	527	1
467	528	2
468	529	1
469	530	2
470	531	1
471	532	2
472	533	1
473	534	2
474	535	1
475	536	2
476	537	1
477	538	2
478	539	1
479	540	2
480	541	1
481	542	2
482	543	1
483	544	2
484	545	1
485	546	2
486	547	1
487	548	2
488	549	1
489	550	2
490	551	1
491	552	2
492	553	1
493	554	2
494	555	1
495	556	2
496	557	1
497	558	2
498	559	1
499	560	2
500	561	1
501	562	2
502	563	1
503	564	2
504	565	1
505	566	2
506	567	1
507	568	2
508	569	1
509	570	2
510	571	1
511	572	2
512	573	1
513	574	2
514	575	1
515	576	2
516	577	1
517	578	2
518	579	1
519	580	2
520	581	1
521	582	2
522	583	1
523	584	2
526	587	1
527	588	2
532	593	1
533	594	2
538	599	1
539	600	2
548	609	1
552	613	1
553	614	2
558	619	1
524	585	1
525	586	2
530	591	1
531	592	2
536	597	1
537	598	2
544	605	1
550	611	1
556	617	1
557	618	2
528	589	1
529	590	2
534	595	1
535	596	2
540	601	1
541	602	2
542	603	1
543	604	2
546	607	1
547	608	2
554	615	1
555	616	2
560	621	1
561	622	2
562	623	4
563	624	2
564	625	4
565	626	2
566	627	2
567	628	2
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
1	ve86uczw5ac957eockklgcm9	CO-225-25879	amar antav	2547	\N	2026-04-18 09:53:39.85	2026-04-18 09:53:39.85	\N	\N	\N	\N	2025-01-11
2	ve86uczw5ac957eockklgcm9	CO-225-25879	amar antav	2547	\N	2026-04-18 09:53:39.85	2026-04-18 09:53:39.85	2026-04-18 09:53:39.888	\N	\N	\N	2025-01-11
3	w0s04sg2eo18gwihgidc9p4m	CO-225-25880	D.P SHARMA	4858	\N	2026-04-18 09:53:44.539	2026-04-18 09:53:44.539	\N	\N	\N	\N	2025-01-11
4	w0s04sg2eo18gwihgidc9p4m	CO-225-25880	D.P SHARMA	4858	\N	2026-04-18 09:53:44.539	2026-04-18 09:53:44.539	2026-04-18 09:53:44.549	\N	\N	\N	2025-01-11
5	si7u3ejafwhk6ugz7gz9mz1z	CO-225-25881	ruchi gajjar	7640	\N	2026-04-18 09:53:47.316	2026-04-18 09:53:47.316	\N	\N	\N	\N	2025-01-11
6	si7u3ejafwhk6ugz7gz9mz1z	CO-225-25881	ruchi gajjar	7640	\N	2026-04-18 09:53:47.316	2026-04-18 09:53:47.316	2026-04-18 09:53:47.325	\N	\N	\N	2025-01-11
11	mfltpyarbtj3juknyb77rtlm	CO-225-25884	PRAGNESH BHAI	100	\N	2026-04-18 09:53:55.658	2026-04-18 09:53:55.658	\N	\N	\N	\N	2025-01-11
12	mfltpyarbtj3juknyb77rtlm	CO-225-25884	PRAGNESH BHAI	100	\N	2026-04-18 09:53:55.658	2026-04-18 09:53:55.658	2026-04-18 09:53:55.665	\N	\N	\N	2025-01-11
15	t6095htwg016ei63ldvydv8a	CO-225-25888	amar antav	2547	\N	2026-04-18 10:48:19.505	2026-04-18 10:48:19.505	\N	\N	\N	\N	2026-04-18
16	t6095htwg016ei63ldvydv8a	CO-225-25888	amar antav	2547	\N	2026-04-18 10:48:19.505	2026-04-18 10:48:19.505	2026-04-18 10:48:19.534	\N	\N	\N	2026-04-18
7	vw5ni15hobdo03o29f1t176k	CO-225-25882	FALGUNI	2124	\N	2026-04-18 09:53:49.982	2026-04-26 14:30:35.226	\N	\N	1	\N	2026-02-27
20	vw5ni15hobdo03o29f1t176k	CO-225-25882	FALGUNI	2124	\N	2026-04-18 09:53:49.982	2026-04-26 14:30:35.226	2026-04-26 14:30:35.256	\N	1	\N	2026-02-27
23	va2qqanvz760rji5h874q24f	CO-225-25886	INDRAPAL SINGH SONI	1872	\N	2026-04-27 01:32:09.539	2026-04-27 01:32:09.539	\N	\N	\N	\N	2025-11-01
24	va2qqanvz760rji5h874q24f	CO-225-25886	INDRAPAL SINGH SONI	1872	\N	2026-04-27 01:32:09.539	2026-04-27 01:32:09.539	2026-04-27 01:32:09.586	\N	\N	\N	2025-11-01
27	eeq71y2ywmdmojpil7sr5ggm	CO-225-25889	shital mam	400	\N	2026-04-27 01:32:11.175	2026-04-27 01:32:11.175	\N	\N	\N	\N	2025-11-01
28	eeq71y2ywmdmojpil7sr5ggm	CO-225-25889	shital mam	400	\N	2026-04-27 01:32:11.175	2026-04-27 01:32:11.175	2026-04-27 01:32:11.192	\N	\N	\N	2025-11-01
29	s3moo6qjn1c8qgi4bub9rqp1	CO-225-25890	Girish	618	\N	2026-04-27 01:32:11.709	2026-04-27 01:32:11.709	\N	\N	\N	\N	2025-11-01
30	s3moo6qjn1c8qgi4bub9rqp1	CO-225-25890	Girish	618	\N	2026-04-27 01:32:11.709	2026-04-27 01:32:11.709	2026-04-27 01:32:11.72	\N	\N	\N	2025-11-01
33	cfl12qbdiuiag39o9swqjs0a	CO-225-25892	radhika	2258	\N	2026-04-27 01:32:12.798	2026-04-27 01:32:12.798	\N	\N	\N	\N	2025-11-01
34	cfl12qbdiuiag39o9swqjs0a	CO-225-25892	radhika	2258	\N	2026-04-27 01:32:12.798	2026-04-27 01:32:12.798	2026-04-27 01:32:12.806	\N	\N	\N	2025-11-01
35	vqhe75lli8bp5vapxknc2jt9	CO-225-25893	SHUBHRA	2360	\N	2026-04-27 01:32:13.353	2026-04-27 01:32:13.353	\N	\N	\N	\N	2025-11-01
36	vqhe75lli8bp5vapxknc2jt9	CO-225-25893	SHUBHRA	2360	\N	2026-04-27 01:32:13.353	2026-04-27 01:32:13.353	2026-04-27 01:32:13.365	\N	\N	\N	2025-11-01
37	ow1v7c5e2d1e7o9y2xdeduio	CO-225-25894	JEET INAMDAR	827	\N	2026-04-27 01:32:13.928	2026-04-27 01:32:13.928	\N	\N	\N	\N	2025-11-01
38	ow1v7c5e2d1e7o9y2xdeduio	CO-225-25894	JEET INAMDAR	827	\N	2026-04-27 01:32:13.928	2026-04-27 01:32:13.928	2026-04-27 01:32:13.936	\N	\N	\N	2025-11-01
41	mihaqn5awjo8qzbie7hfail6	CO-225-25896	chandani	676	\N	2026-04-27 01:32:15.117	2026-04-27 01:32:15.117	\N	\N	\N	\N	2025-11-01
42	mihaqn5awjo8qzbie7hfail6	CO-225-25896	chandani	676	\N	2026-04-27 01:32:15.117	2026-04-27 01:32:15.117	2026-04-27 01:32:15.129	\N	\N	\N	2025-11-01
43	b4jngvws39ypcq4g7rq3gbmt	CO-225-25897	PRANJAL	2200	\N	2026-04-27 01:32:15.666	2026-04-27 01:32:15.666	\N	\N	\N	\N	2025-11-01
44	b4jngvws39ypcq4g7rq3gbmt	CO-225-25897	PRANJAL	2200	\N	2026-04-27 01:32:15.666	2026-04-27 01:32:15.666	2026-04-27 01:32:15.68	\N	\N	\N	2025-11-01
49	li9vs769kmpnum9u10ey9d7t	CO-225-25900	althap	198	\N	2026-04-27 01:32:17.5	2026-04-27 01:32:17.5	\N	\N	\N	\N	2025-11-01
50	li9vs769kmpnum9u10ey9d7t	CO-225-25900	althap	198	\N	2026-04-27 01:32:17.5	2026-04-27 01:32:17.5	2026-04-27 01:32:17.51	\N	\N	\N	2025-11-01
53	tjjqiyp77vob8i7007azl11e	CO-225-25902	KRUPA PATEL	540	\N	2026-04-27 01:32:18.803	2026-04-27 01:32:18.803	\N	\N	\N	\N	2025-11-01
54	tjjqiyp77vob8i7007azl11e	CO-225-25902	KRUPA PATEL	540	\N	2026-04-27 01:32:18.803	2026-04-27 01:32:18.803	2026-04-27 01:32:18.811	\N	\N	\N	2025-11-01
55	bdk8ahkgdi467m2yr7qh677v	CO-225-25903	kusum parmar	3392	\N	2026-04-27 01:32:19.371	2026-04-27 01:32:19.371	\N	\N	\N	\N	2025-11-01
56	bdk8ahkgdi467m2yr7qh677v	CO-225-25903	kusum parmar	3392	\N	2026-04-27 01:32:19.371	2026-04-27 01:32:19.371	2026-04-27 01:32:19.379	\N	\N	\N	2025-11-01
57	z62bnqjwybv8ogdzoaa8bk4j	CO-225-25904	satish agrawl	1188	\N	2026-04-27 01:32:19.938	2026-04-27 01:32:19.938	\N	\N	\N	\N	2025-11-01
58	z62bnqjwybv8ogdzoaa8bk4j	CO-225-25904	satish agrawl	1188	\N	2026-04-27 01:32:19.938	2026-04-27 01:32:19.938	2026-04-27 01:32:19.949	\N	\N	\N	2025-11-01
59	zigqrj6wtbj2wpq4382q2bw3	CO-225-25905	punit chauhan	2520	\N	2026-04-27 01:32:20.517	2026-04-27 01:32:20.517	\N	\N	\N	\N	2025-11-01
60	zigqrj6wtbj2wpq4382q2bw3	CO-225-25905	punit chauhan	2520	\N	2026-04-27 01:32:20.517	2026-04-27 01:32:20.517	2026-04-27 01:32:20.525	\N	\N	\N	2025-11-01
63	nys5os7nadhaibsn4d38o25s	CO-225-25907	SATYAM	4968	\N	2026-04-27 01:32:21.736	2026-04-27 01:32:21.736	\N	\N	\N	\N	2025-11-01
64	nys5os7nadhaibsn4d38o25s	CO-225-25907	SATYAM	4968	\N	2026-04-27 01:32:21.736	2026-04-27 01:32:21.736	2026-04-27 01:32:21.749	\N	\N	\N	2025-11-01
67	ta68deri0qnf02s4429376uf	CO-225-25909	dhavnit shah	2269	\N	2026-04-27 01:32:23.007	2026-04-27 01:32:23.007	\N	\N	\N	\N	2025-11-01
17	ccdrfm9gzm0uc028126731y0	CO-225-25999	amar antav	12547	\N	2026-04-26 01:27:32.87	2026-04-27 02:12:59.446	\N	\N	1	\N	2026-04-26
68	ta68deri0qnf02s4429376uf	CO-225-25909	dhavnit shah	2269	\N	2026-04-27 01:32:23.007	2026-04-27 01:32:23.007	2026-04-27 01:32:23.02	\N	\N	\N	2025-11-01
89	h8svfp8k5qitgwf66m85lucb	CO-225-25883	karan	455	\N	2026-04-27 02:10:26.707	2026-04-27 02:10:26.707	\N	\N	\N	\N	2026-02-25
90	h8svfp8k5qitgwf66m85lucb	CO-225-25883	karan	455	\N	2026-04-27 02:10:26.707	2026-04-27 02:10:26.707	2026-04-27 02:10:26.733	\N	\N	\N	2026-02-25
91	ycwng6d7jio6updnfb2cza4i	CO-225-25885	urvesh raval	3737	\N	2026-04-27 02:10:27.424	2026-04-27 02:10:27.424	\N	\N	\N	\N	2026-11-01
92	ycwng6d7jio6updnfb2cza4i	CO-225-25885	urvesh raval	3737	\N	2026-04-27 02:10:27.424	2026-04-27 02:10:27.424	2026-04-27 02:10:27.435	\N	\N	\N	2026-11-01
93	jav7z007n1z9dlef3zlez8k6	CO-225-25887	SIMRAN	4000	\N	2026-04-27 02:10:27.96	2026-04-27 02:10:27.96	\N	\N	\N	\N	2026-03-15
94	jav7z007n1z9dlef3zlez8k6	CO-225-25887	SIMRAN	4000	\N	2026-04-27 02:10:27.96	2026-04-27 02:10:27.96	2026-04-27 02:10:27.975	\N	\N	\N	2026-03-15
95	sbaeza5juaw0bu4zbpmumuww	CO-225-25891	prakash	3080	\N	2026-04-27 02:10:28.475	2026-04-27 02:10:28.475	\N	\N	\N	\N	2026-03-16
96	sbaeza5juaw0bu4zbpmumuww	CO-225-25891	prakash	3080	\N	2026-04-27 02:10:28.475	2026-04-27 02:10:28.475	2026-04-27 02:10:28.487	\N	\N	\N	2026-03-16
97	nll34wguk2f2xwjqabn24i5z	CO-225-25895	SIMRAN	4080	\N	2026-04-27 02:10:28.915	2026-04-27 02:10:28.915	\N	\N	\N	\N	2026-03-06
98	nll34wguk2f2xwjqabn24i5z	CO-225-25895	SIMRAN	4080	\N	2026-04-27 02:10:28.915	2026-04-27 02:10:28.915	2026-04-27 02:10:28.924	\N	\N	\N	2026-03-06
99	hkrhswr7blw4o3yy3gf8abtf	CO-225-25898	karan	1171	\N	2026-04-27 02:10:29.595	2026-04-27 02:10:29.595	\N	\N	\N	\N	2026-03-05
100	hkrhswr7blw4o3yy3gf8abtf	CO-225-25898	karan	1171	\N	2026-04-27 02:10:29.595	2026-04-27 02:10:29.595	2026-04-27 02:10:29.605	\N	\N	\N	2026-03-05
101	jvugkdsnrf1t3p3s3eap15lx	CO-225-25899	prakash	2020	\N	2026-04-27 02:10:30.162	2026-04-27 02:10:30.162	\N	\N	\N	\N	2026-02-01
102	jvugkdsnrf1t3p3s3eap15lx	CO-225-25899	prakash	2020	\N	2026-04-27 02:10:30.162	2026-04-27 02:10:30.162	2026-04-27 02:10:30.169	\N	\N	\N	2026-02-01
103	pa2vqm21aon3nvoh0zknkfzf	CO-225-25901	karan	1100	\N	2026-04-27 02:10:30.712	2026-04-27 02:10:30.712	\N	\N	\N	\N	2026-03-25
104	pa2vqm21aon3nvoh0zknkfzf	CO-225-25901	karan	1100	\N	2026-04-27 02:10:30.712	2026-04-27 02:10:30.712	2026-04-27 02:10:30.72	\N	\N	\N	2026-03-25
105	axl1bjwtw3nc1jkllixz4qkg	CO-225-25906	prakash	1560	\N	2026-04-27 02:10:31.276	2026-04-27 02:10:31.276	\N	\N	\N	\N	2026-03-18
106	axl1bjwtw3nc1jkllixz4qkg	CO-225-25906	prakash	1560	\N	2026-04-27 02:10:31.276	2026-04-27 02:10:31.276	2026-04-27 02:10:31.286	\N	\N	\N	2026-03-18
107	u7dugvzixn9owrgzv2v5yqtv	CO-225-25908	SIMRAN	4100	\N	2026-04-27 02:10:31.861	2026-04-27 02:10:31.861	\N	\N	\N	\N	2026-03-20
108	u7dugvzixn9owrgzv2v5yqtv	CO-225-25908	SIMRAN	4100	\N	2026-04-27 02:10:31.861	2026-04-27 02:10:31.861	2026-04-27 02:10:31.868	\N	\N	\N	2026-03-20
109	ccdrfm9gzm0uc028126731y0	CO-225-25999	amar antav	12547	\N	2026-04-26 01:27:32.87	2026-04-27 02:12:59.446	2026-04-27 02:12:59.468	\N	1	\N	2026-04-26
110	cssk0v6xko3qlz9xctwo2e63	CO-225-25910	ARFAAN	230	\N	2026-04-27 02:20:16.389	2026-04-27 02:20:16.389	\N	\N	\N	\N	2025-11-01
111	cssk0v6xko3qlz9xctwo2e63	CO-225-25910	ARFAAN	230	\N	2026-04-27 02:20:16.389	2026-04-27 02:20:16.389	2026-04-27 02:20:16.452	\N	\N	\N	2025-11-01
112	by7y7pjinw7mlewte9mnjnkr	CO-225-25911	electronic junction	5600	\N	2026-04-27 02:20:17.048	2026-04-27 02:20:17.048	\N	\N	\N	\N	2025-11-01
113	by7y7pjinw7mlewte9mnjnkr	CO-225-25911	electronic junction	5600	\N	2026-04-27 02:20:17.048	2026-04-27 02:20:17.048	2026-04-27 02:20:17.061	\N	\N	\N	2025-11-01
114	s6mqatrqzaqise7ep5romib4	CO-225-25912	priti shah	2000	\N	2026-04-27 02:20:17.631	2026-04-27 02:20:17.631	\N	\N	\N	\N	2025-11-01
115	s6mqatrqzaqise7ep5romib4	CO-225-25912	priti shah	2000	\N	2026-04-27 02:20:17.631	2026-04-27 02:20:17.631	2026-04-27 02:20:17.642	\N	\N	\N	2025-11-01
116	zc8qzflsdqh1w8ojhhp1b8nz	CO-225-25913	HIRAL MAM	384	\N	2026-04-27 02:20:18.221	2026-04-27 02:20:18.221	\N	\N	\N	\N	2025-11-01
117	zc8qzflsdqh1w8ojhhp1b8nz	CO-225-25913	HIRAL MAM	384	\N	2026-04-27 02:20:18.221	2026-04-27 02:20:18.221	2026-04-27 02:20:18.239	\N	\N	\N	2025-11-01
118	x647bj9xkkr1vgfq46ld2cwm	CO-225-25914	unnati dave	1441	\N	2026-04-27 02:20:18.773	2026-04-27 02:20:18.773	\N	\N	\N	\N	2025-11-01
119	x647bj9xkkr1vgfq46ld2cwm	CO-225-25914	unnati dave	1441	\N	2026-04-27 02:20:18.773	2026-04-27 02:20:18.773	2026-04-27 02:20:18.78	\N	\N	\N	2025-11-01
120	oirgaurksmxzjiqu9wsy5l28	CO-225-25915	jitu bhai pignis	749	\N	2026-04-27 02:20:19.274	2026-04-27 02:20:19.274	\N	\N	\N	\N	2025-11-01
121	oirgaurksmxzjiqu9wsy5l28	CO-225-25915	jitu bhai pignis	749	\N	2026-04-27 02:20:19.274	2026-04-27 02:20:19.274	2026-04-27 02:20:19.283	\N	\N	\N	2025-11-01
122	xov1w8zg29jay9exheh33tmb	CO-225-25916	Anjaneya Veterinary Services	1584	\N	2026-04-27 02:20:19.761	2026-04-27 02:20:19.761	\N	\N	\N	\N	2025-11-01
123	xov1w8zg29jay9exheh33tmb	CO-225-25916	Anjaneya Veterinary Services	1584	\N	2026-04-27 02:20:19.761	2026-04-27 02:20:19.761	2026-04-27 02:20:19.771	\N	\N	\N	2025-11-01
124	gbvij460bn16mjdjofubqcze	CO-225-25917	harshad patel	3751	\N	2026-04-27 02:20:20.259	2026-04-27 02:20:20.259	\N	\N	\N	\N	2025-11-01
125	gbvij460bn16mjdjofubqcze	CO-225-25917	harshad patel	3751	\N	2026-04-27 02:20:20.259	2026-04-27 02:20:20.259	2026-04-27 02:20:20.269	\N	\N	\N	2025-11-01
126	jlllmqpbu7qyjjsme25l76m3	CO-225-25918	masoom charitable trust	16650	\N	2026-04-27 02:20:20.735	2026-04-27 02:20:20.735	\N	\N	\N	\N	2025-11-01
127	jlllmqpbu7qyjjsme25l76m3	CO-225-25918	masoom charitable trust	16650	\N	2026-04-27 02:20:20.735	2026-04-27 02:20:20.735	2026-04-27 02:20:20.742	\N	\N	\N	2025-11-01
128	jixlw2asq4dcp1xh0q3joxd8	CO-225-25919	TARANG ROGHELIA	765	\N	2026-04-27 02:20:21.23	2026-04-27 02:20:21.23	\N	\N	\N	\N	2025-11-01
129	jixlw2asq4dcp1xh0q3joxd8	CO-225-25919	TARANG ROGHELIA	765	\N	2026-04-27 02:20:21.23	2026-04-27 02:20:21.23	2026-04-27 02:20:21.238	\N	\N	\N	2025-11-01
130	ensiu1xu3e41hif9e766xd0n	CO-225-25920	AASHKA	3503	\N	2026-04-27 02:20:21.703	2026-04-27 02:20:21.703	\N	\N	\N	\N	2025-11-01
131	ensiu1xu3e41hif9e766xd0n	CO-225-25920	AASHKA	3503	\N	2026-04-27 02:20:21.703	2026-04-27 02:20:21.703	2026-04-27 02:20:21.71	\N	\N	\N	2025-11-01
132	bzmvryia8olz7gha07qy50v5	CO-225-25921	BABLU SINGH	440	\N	2026-04-27 02:20:22.181	2026-04-27 02:20:22.181	\N	\N	\N	\N	2025-11-01
133	bzmvryia8olz7gha07qy50v5	CO-225-25921	BABLU SINGH	440	\N	2026-04-27 02:20:22.181	2026-04-27 02:20:22.181	2026-04-27 02:20:22.188	\N	\N	\N	2025-11-01
134	wmya207fqfivkvwkmh3smtid	CO-225-25922	khushali patel	1381	\N	2026-04-27 02:20:22.652	2026-04-27 02:20:22.652	\N	\N	\N	\N	2025-11-01
135	wmya207fqfivkvwkmh3smtid	CO-225-25922	khushali patel	1381	\N	2026-04-27 02:20:22.652	2026-04-27 02:20:22.652	2026-04-27 02:20:22.661	\N	\N	\N	2025-11-01
136	cwzegmv77fvx1upigvrfz8x1	CO-225-25923	PARULBEN ZAVERI	422	\N	2026-04-27 02:20:23.114	2026-04-27 02:20:23.114	\N	\N	\N	\N	2025-11-01
137	cwzegmv77fvx1upigvrfz8x1	CO-225-25923	PARULBEN ZAVERI	422	\N	2026-04-27 02:20:23.114	2026-04-27 02:20:23.114	2026-04-27 02:20:23.121	\N	\N	\N	2025-11-01
138	zc8nato9vnfs2ng1mdnqqyfy	CO-225-25924	devang	3672	\N	2026-04-27 02:20:23.589	2026-04-27 02:20:23.589	\N	\N	\N	\N	2025-11-03
139	zc8nato9vnfs2ng1mdnqqyfy	CO-225-25924	devang	3672	\N	2026-04-27 02:20:23.589	2026-04-27 02:20:23.589	2026-04-27 02:20:23.599	\N	\N	\N	2025-11-03
140	olr245ybncj1yqtx7s794r8m	CO-225-25925	VIKRAMBHAI MISTRY	4200	\N	2026-04-27 02:20:24.067	2026-04-27 02:20:24.067	\N	\N	\N	\N	2025-11-03
141	olr245ybncj1yqtx7s794r8m	CO-225-25925	VIKRAMBHAI MISTRY	4200	\N	2026-04-27 02:20:24.067	2026-04-27 02:20:24.067	2026-04-27 02:20:24.077	\N	\N	\N	2025-11-03
142	f96ht377h8mqcsp22fkfw66b	CO-225-25926	JIGAR	3060	\N	2026-04-27 02:20:24.551	2026-04-27 02:20:24.551	\N	\N	\N	\N	2025-11-03
143	f96ht377h8mqcsp22fkfw66b	CO-225-25926	JIGAR	3060	\N	2026-04-27 02:20:24.551	2026-04-27 02:20:24.551	2026-04-27 02:20:24.563	\N	\N	\N	2025-11-03
144	mxwhuniww9aj63lh4da4pi94	CO-225-25927	KAPIL	1338	\N	2026-04-27 02:20:25.059	2026-04-27 02:20:25.059	\N	\N	\N	\N	2025-11-03
145	mxwhuniww9aj63lh4da4pi94	CO-225-25927	KAPIL	1338	\N	2026-04-27 02:20:25.059	2026-04-27 02:20:25.059	2026-04-27 02:20:25.067	\N	\N	\N	2025-11-03
146	v5lb2w3inotgsd1rp7zn628b	CO-225-25928	mansi	1200	\N	2026-04-27 02:20:25.548	2026-04-27 02:20:25.548	\N	\N	\N	\N	2025-11-03
147	v5lb2w3inotgsd1rp7zn628b	CO-225-25928	mansi	1200	\N	2026-04-27 02:20:25.548	2026-04-27 02:20:25.548	2026-04-27 02:20:25.557	\N	\N	\N	2025-11-03
148	c2t3xtyt05iyh029tmoywqr9	CO-225-25929	Diza	2757	\N	2026-04-27 02:20:26.012	2026-04-27 02:20:26.012	\N	\N	\N	\N	2025-11-03
149	c2t3xtyt05iyh029tmoywqr9	CO-225-25929	Diza	2757	\N	2026-04-27 02:20:26.012	2026-04-27 02:20:26.012	2026-04-27 02:20:26.018	\N	\N	\N	2025-11-03
150	j0tizxf6agvd27fm9u50m75i	CO-225-25930	mahesh raval	412	\N	2026-04-27 02:20:26.487	2026-04-27 02:20:26.487	\N	\N	\N	\N	2025-11-03
151	j0tizxf6agvd27fm9u50m75i	CO-225-25930	mahesh raval	412	\N	2026-04-27 02:20:26.487	2026-04-27 02:20:26.487	2026-04-27 02:20:26.496	\N	\N	\N	2025-11-03
156	wk94sx6o2jlt43st930pwt23	CO-225-25933	mega vyas	1062	\N	2026-04-27 02:20:27.892	2026-04-27 02:20:27.892	\N	\N	\N	\N	2025-11-03
157	wk94sx6o2jlt43st930pwt23	CO-225-25933	mega vyas	1062	\N	2026-04-27 02:20:27.892	2026-04-27 02:20:27.892	2026-04-27 02:20:27.899	\N	\N	\N	2025-11-03
162	hp4rwejhnw877sdpfw5b321p	CO-225-25936	ALAY PATEL	2083	\N	2026-04-27 02:20:29.323	2026-04-27 02:20:29.323	\N	\N	\N	\N	2025-11-03
163	hp4rwejhnw877sdpfw5b321p	CO-225-25936	ALAY PATEL	2083	\N	2026-04-27 02:20:29.323	2026-04-27 02:20:29.323	2026-04-27 02:20:29.329	\N	\N	\N	2025-11-03
168	tmqh1w3qopbor6n1j7l33muj	CO-225-25939	rohit.	2580	\N	2026-04-27 02:20:30.771	2026-04-27 02:20:30.771	\N	\N	\N	\N	2025-11-03
169	tmqh1w3qopbor6n1j7l33muj	CO-225-25939	rohit.	2580	\N	2026-04-27 02:20:30.771	2026-04-27 02:20:30.771	2026-04-27 02:20:30.777	\N	\N	\N	2025-11-03
178	vwrw4rhuxtr6h6lwc0buepct	CO-225-25944	LABHSHRI	4658	\N	2026-04-27 02:20:33.798	2026-04-27 02:20:33.798	\N	\N	\N	\N	2025-11-03
179	vwrw4rhuxtr6h6lwc0buepct	CO-225-25944	LABHSHRI	4658	\N	2026-04-27 02:20:33.798	2026-04-27 02:20:33.798	2026-04-27 02:20:33.812	\N	\N	\N	2025-11-03
152	bum3glg2700qfbo1jzb6iya1	CO-225-25931	bhumi	1232	\N	2026-04-27 02:20:26.963	2026-04-27 02:20:26.963	\N	\N	\N	\N	2025-11-03
153	bum3glg2700qfbo1jzb6iya1	CO-225-25931	bhumi	1232	\N	2026-04-27 02:20:26.963	2026-04-27 02:20:26.963	2026-04-27 02:20:26.973	\N	\N	\N	2025-11-03
158	r3eeamobwt5dfcukpxcqjbbz	CO-225-25934	arpita	6297	\N	2026-04-27 02:20:28.352	2026-04-27 02:20:28.352	\N	\N	\N	\N	2025-11-03
159	r3eeamobwt5dfcukpxcqjbbz	CO-225-25934	arpita	6297	\N	2026-04-27 02:20:28.352	2026-04-27 02:20:28.352	2026-04-27 02:20:28.361	\N	\N	\N	2025-11-03
164	hbz136kh7c6q9zdoxtdrrbxk	CO-225-25937	sanjayy patel	1371	\N	2026-04-27 02:20:29.817	2026-04-27 02:20:29.817	\N	\N	\N	\N	2025-11-03
165	hbz136kh7c6q9zdoxtdrrbxk	CO-225-25937	sanjayy patel	1371	\N	2026-04-27 02:20:29.817	2026-04-27 02:20:29.817	2026-04-27 02:20:29.824	\N	\N	\N	2025-11-03
170	qkehzlekv6e4czqm60thgf5g	CO-225-25940	shiana shah	8980	\N	2026-04-27 02:20:31.231	2026-04-27 02:20:31.231	\N	\N	\N	\N	2025-11-03
171	qkehzlekv6e4czqm60thgf5g	CO-225-25940	shiana shah	8980	\N	2026-04-27 02:20:31.231	2026-04-27 02:20:31.231	2026-04-27 02:20:31.238	\N	\N	\N	2025-11-03
174	jln6fe32856v9ubaie1cxx2n	CO-225-25942	KANCHI	766	\N	2026-04-27 02:20:32.289	2026-04-27 02:20:32.289	\N	\N	\N	\N	2025-11-03
175	jln6fe32856v9ubaie1cxx2n	CO-225-25942	KANCHI	766	\N	2026-04-27 02:20:32.289	2026-04-27 02:20:32.289	2026-04-27 02:20:32.302	\N	\N	\N	2025-11-03
154	xs9cjd58od55mt8a4kvirppn	CO-225-25932	parth chauhan	1113	\N	2026-04-27 02:20:27.442	2026-04-27 02:20:27.442	\N	\N	\N	\N	2025-11-03
155	xs9cjd58od55mt8a4kvirppn	CO-225-25932	parth chauhan	1113	\N	2026-04-27 02:20:27.442	2026-04-27 02:20:27.442	2026-04-27 02:20:27.448	\N	\N	\N	2025-11-03
160	e6xe5qr8xkegsr67n64tytlu	CO-225-25935	PARTH BAWA	2099	\N	2026-04-27 02:20:28.819	2026-04-27 02:20:28.819	\N	\N	\N	\N	2025-11-03
161	e6xe5qr8xkegsr67n64tytlu	CO-225-25935	PARTH BAWA	2099	\N	2026-04-27 02:20:28.819	2026-04-27 02:20:28.819	2026-04-27 02:20:28.827	\N	\N	\N	2025-11-03
166	il97irjnzv62hkj9cqf54b3v	CO-225-25938	DISHEN	2310	\N	2026-04-27 02:20:30.291	2026-04-27 02:20:30.291	\N	\N	\N	\N	2025-11-03
167	il97irjnzv62hkj9cqf54b3v	CO-225-25938	DISHEN	2310	\N	2026-04-27 02:20:30.291	2026-04-27 02:20:30.291	2026-04-27 02:20:30.302	\N	\N	\N	2025-11-03
172	qhmnvpyn7p96rekhn4nx1vxa	CO-225-25941	kartik a shah	2220	\N	2026-04-27 02:20:31.703	2026-04-27 02:20:31.703	\N	\N	\N	\N	2025-11-03
173	qhmnvpyn7p96rekhn4nx1vxa	CO-225-25941	kartik a shah	2220	\N	2026-04-27 02:20:31.703	2026-04-27 02:20:31.703	2026-04-27 02:20:31.709	\N	\N	\N	2025-11-03
176	jlmi83ldigd5l5rhljakqz2o	CO-225-25943	DR.RUPIN TRIVEDI	2099	\N	2026-04-27 02:20:33.104	2026-04-27 02:20:33.104	\N	\N	\N	\N	2025-11-03
177	jlmi83ldigd5l5rhljakqz2o	CO-225-25943	DR.RUPIN TRIVEDI	2099	\N	2026-04-27 02:20:33.104	2026-04-27 02:20:33.104	2026-04-27 02:20:33.117	\N	\N	\N	2025-11-03
180	qps71rf5km996ptpt5ila555	CO-225-25945	PRITI SHAH	3467	\N	2026-04-27 02:22:00.38	2026-04-27 02:22:00.38	\N	\N	\N	\N	2025-11-03
181	qps71rf5km996ptpt5ila555	CO-225-25945	PRITI SHAH	3467	\N	2026-04-27 02:22:00.38	2026-04-27 02:22:00.38	2026-04-27 02:22:00.438	\N	\N	\N	2025-11-03
182	ci5kw627fw00ia3n2zjubrkv	CO-225-25946	PRITI SHAH	2285	\N	2026-04-27 02:22:00.997	2026-04-27 02:22:00.997	\N	\N	\N	\N	2025-11-03
183	ci5kw627fw00ia3n2zjubrkv	CO-225-25946	PRITI SHAH	2285	\N	2026-04-27 02:22:00.997	2026-04-27 02:22:00.997	2026-04-27 02:22:01.008	\N	\N	\N	2025-11-03
184	hjnbicfth8ey01akmvxgximo	CO-225-25947	PREETY	675	\N	2026-04-27 02:22:01.729	2026-04-27 02:22:01.729	\N	\N	\N	\N	2025-11-03
185	hjnbicfth8ey01akmvxgximo	CO-225-25947	PREETY	675	\N	2026-04-27 02:22:01.729	2026-04-27 02:22:01.729	2026-04-27 02:22:01.736	\N	\N	\N	2025-11-03
186	ffym4bvf2ndxksm246fm6ly0	CO-225-25948	AMBUJA SOLVEX PVT LTD.	5521	\N	2026-04-27 02:22:02.234	2026-04-27 02:22:02.234	\N	\N	\N	\N	2025-11-03
187	ffym4bvf2ndxksm246fm6ly0	CO-225-25948	AMBUJA SOLVEX PVT LTD.	5521	\N	2026-04-27 02:22:02.234	2026-04-27 02:22:02.234	2026-04-27 02:22:02.244	\N	\N	\N	2025-11-03
188	h1jb7q0erogdlbux6u9xtpfa	CO-225-25949	VIDHI MAM	14360	\N	2026-04-27 02:22:02.733	2026-04-27 02:22:02.733	\N	\N	\N	\N	2025-11-03
189	h1jb7q0erogdlbux6u9xtpfa	CO-225-25949	VIDHI MAM	14360	\N	2026-04-27 02:22:02.733	2026-04-27 02:22:02.733	2026-04-27 02:22:02.743	\N	\N	\N	2025-11-03
190	fbefq37ixix5gk4ylwlnqoob	CO-225-25950	virat sir	838	\N	2026-04-27 02:22:03.201	2026-04-27 02:22:03.201	\N	\N	\N	\N	2025-11-03
191	fbefq37ixix5gk4ylwlnqoob	CO-225-25950	virat sir	838	\N	2026-04-27 02:22:03.201	2026-04-27 02:22:03.201	2026-04-27 02:22:03.211	\N	\N	\N	2025-11-03
192	g4bpds2f3xin2mkvbgltn119	CO-225-25951	falak	80	\N	2026-04-27 02:22:03.676	2026-04-27 02:22:03.676	\N	\N	\N	\N	2025-11-03
193	g4bpds2f3xin2mkvbgltn119	CO-225-25951	falak	80	\N	2026-04-27 02:22:03.676	2026-04-27 02:22:03.676	2026-04-27 02:22:03.683	\N	\N	\N	2025-11-03
194	hg6qybvep9szvpx6r5pcmgdp	CO-225-25952	SHUBHRA	5900	\N	2026-04-27 02:22:04.094	2026-04-27 02:22:04.094	\N	\N	\N	\N	2025-11-03
195	hg6qybvep9szvpx6r5pcmgdp	CO-225-25952	SHUBHRA	5900	\N	2026-04-27 02:22:04.094	2026-04-27 02:22:04.094	2026-04-27 02:22:04.101	\N	\N	\N	2025-11-03
196	bw275zqs02re0smhfu9u35sz	CO-225-25953	VIRENDRA	82	\N	2026-04-27 02:22:04.721	2026-04-27 02:22:04.721	\N	\N	\N	\N	2025-11-03
197	bw275zqs02re0smhfu9u35sz	CO-225-25953	VIRENDRA	82	\N	2026-04-27 02:22:04.721	2026-04-27 02:22:04.721	2026-04-27 02:22:04.727	\N	\N	\N	2025-11-03
198	koqjx9vp943eipigor9zda99	CO-225-25954	riddhi pandya	6128	\N	2026-04-27 02:22:05.198	2026-04-27 02:22:05.198	\N	\N	\N	\N	2025-11-03
199	koqjx9vp943eipigor9zda99	CO-225-25954	riddhi pandya	6128	\N	2026-04-27 02:22:05.198	2026-04-27 02:22:05.198	2026-04-27 02:22:05.208	\N	\N	\N	2025-11-03
200	kbqrzrsqdvvezwvv7sbyhehr	CO-225-25955	rupal	2320	\N	2026-04-27 02:22:05.661	2026-04-27 02:22:05.661	\N	\N	\N	\N	2025-11-03
201	kbqrzrsqdvvezwvv7sbyhehr	CO-225-25955	rupal	2320	\N	2026-04-27 02:22:05.661	2026-04-27 02:22:05.661	2026-04-27 02:22:05.671	\N	\N	\N	2025-11-03
202	udplxupmoh53c6klprj4jrk7	CO-225-25956	MURUGN	1229	\N	2026-04-27 02:22:06.147	2026-04-27 02:22:06.147	\N	\N	\N	\N	2025-11-03
203	udplxupmoh53c6klprj4jrk7	CO-225-25956	MURUGN	1229	\N	2026-04-27 02:22:06.147	2026-04-27 02:22:06.147	2026-04-27 02:22:06.157	\N	\N	\N	2025-11-03
204	sk5nuzm05fncfo0utz80csqv	CO-225-25957	KARNAV	2100	\N	2026-04-27 02:22:06.633	2026-04-27 02:22:06.633	\N	\N	\N	\N	2025-11-03
205	sk5nuzm05fncfo0utz80csqv	CO-225-25957	KARNAV	2100	\N	2026-04-27 02:22:06.633	2026-04-27 02:22:06.633	2026-04-27 02:22:06.64	\N	\N	\N	2025-11-03
206	fqh741u56lap9e6an83xlsy7	CO-225-25958	PRIYA	2813	\N	2026-04-27 02:22:07.098	2026-04-27 02:22:07.098	\N	\N	\N	\N	2025-11-03
207	fqh741u56lap9e6an83xlsy7	CO-225-25958	PRIYA	2813	\N	2026-04-27 02:22:07.098	2026-04-27 02:22:07.098	2026-04-27 02:22:07.11	\N	\N	\N	2025-11-03
208	zpzju7mp1mcsfzukesozcee6	CO-225-25959	hiranbhai	2099	\N	2026-04-27 02:22:07.583	2026-04-27 02:22:07.583	\N	\N	\N	\N	2025-11-03
209	zpzju7mp1mcsfzukesozcee6	CO-225-25959	hiranbhai	2099	\N	2026-04-27 02:22:07.583	2026-04-27 02:22:07.583	2026-04-27 02:22:07.59	\N	\N	\N	2025-11-03
210	my6agji7lcxiwhog9fqyb3s9	CO-225-25960	MAYRA DEGINER	1165	\N	2026-04-27 02:22:08.252	2026-04-27 02:22:08.252	\N	\N	\N	\N	2025-11-03
211	my6agji7lcxiwhog9fqyb3s9	CO-225-25960	MAYRA DEGINER	1165	\N	2026-04-27 02:22:08.252	2026-04-27 02:22:08.252	2026-04-27 02:22:08.258	\N	\N	\N	2025-11-03
212	bql3ywwip4cvhjhs6fnqcg13	CO-225-25961	sushma kumari indian	3150	\N	2026-04-27 02:22:08.836	2026-04-27 02:22:08.836	\N	\N	\N	\N	2025-11-03
213	bql3ywwip4cvhjhs6fnqcg13	CO-225-25961	sushma kumari indian	3150	\N	2026-04-27 02:22:08.836	2026-04-27 02:22:08.836	2026-04-27 02:22:08.847	\N	\N	\N	2025-11-03
214	zdy2n1j30fimo4zvg8398kld	CO-225-25962	bina	557	\N	2026-04-27 02:22:09.42	2026-04-27 02:22:09.42	\N	\N	\N	\N	2025-11-03
215	zdy2n1j30fimo4zvg8398kld	CO-225-25962	bina	557	\N	2026-04-27 02:22:09.42	2026-04-27 02:22:09.42	2026-04-27 02:22:09.432	\N	\N	\N	2025-11-03
216	axavm5uoab2e1wb68d0g9mm0	CO-225-25963	SATYAM	2484	\N	2026-04-27 02:22:09.978	2026-04-27 02:22:09.978	\N	\N	\N	\N	2025-11-03
217	axavm5uoab2e1wb68d0g9mm0	CO-225-25963	SATYAM	2484	\N	2026-04-27 02:22:09.978	2026-04-27 02:22:09.978	2026-04-27 02:22:09.986	\N	\N	\N	2025-11-03
218	ppg70lm67wnzu9zauyzyleba	CO-225-25964	SAILESH	424	\N	2026-04-27 02:22:10.505	2026-04-27 02:22:10.505	\N	\N	\N	\N	2025-11-03
219	ppg70lm67wnzu9zauyzyleba	CO-225-25964	SAILESH	424	\N	2026-04-27 02:22:10.505	2026-04-27 02:22:10.505	2026-04-27 02:22:10.515	\N	\N	\N	2025-11-03
220	lhj7pllwunt5r9gggz7x8cs3	CO-225-25965	YASH	2939	\N	2026-04-27 02:22:10.915	2026-04-27 02:22:10.915	\N	\N	\N	\N	2025-11-03
221	lhj7pllwunt5r9gggz7x8cs3	CO-225-25965	YASH	2939	\N	2026-04-27 02:22:10.915	2026-04-27 02:22:10.915	2026-04-27 02:22:10.924	\N	\N	\N	2025-11-03
222	eah4dkm4ddpkfe10kfhuzeax	CO-225-25966	Jignesh acharya	304	\N	2026-04-27 02:22:11.426	2026-04-27 02:22:11.426	\N	\N	\N	\N	2025-11-03
223	eah4dkm4ddpkfe10kfhuzeax	CO-225-25966	Jignesh acharya	304	\N	2026-04-27 02:22:11.426	2026-04-27 02:22:11.426	2026-04-27 02:22:11.437	\N	\N	\N	2025-11-03
224	bjur913bz84qyyxrgoo81xfs	CO-225-25967	VICKY	1800	\N	2026-04-27 02:22:12.064	2026-04-27 02:22:12.064	\N	\N	\N	\N	2025-11-03
225	bjur913bz84qyyxrgoo81xfs	CO-225-25967	VICKY	1800	\N	2026-04-27 02:22:12.064	2026-04-27 02:22:12.064	2026-04-27 02:22:12.072	\N	\N	\N	2025-11-03
226	kwrc1n47szvvb9h5973zqb6e	CO-225-25968	shital mam	800	\N	2026-04-27 02:22:12.43	2026-04-27 02:22:12.43	\N	\N	\N	\N	2025-11-03
227	kwrc1n47szvvb9h5973zqb6e	CO-225-25968	shital mam	800	\N	2026-04-27 02:22:12.43	2026-04-27 02:22:12.43	2026-04-27 02:22:12.446	\N	\N	\N	2025-11-03
228	ztx0qoh49ufdv957fnj197lb	CO-225-25969	CHANDAN	70	\N	2026-04-27 02:22:12.954	2026-04-27 02:22:12.954	\N	\N	\N	\N	2025-11-03
229	ztx0qoh49ufdv957fnj197lb	CO-225-25969	CHANDAN	70	\N	2026-04-27 02:22:12.954	2026-04-27 02:22:12.954	2026-04-27 02:22:12.961	\N	\N	\N	2025-11-03
230	s99qvuvjb5yo7m4kfnmovpu0	CO-225-25970	SARTHAK SAPRE	412	\N	2026-04-27 02:22:13.343	2026-04-27 02:22:13.343	\N	\N	\N	\N	2025-11-03
231	s99qvuvjb5yo7m4kfnmovpu0	CO-225-25970	SARTHAK SAPRE	412	\N	2026-04-27 02:22:13.343	2026-04-27 02:22:13.343	2026-04-27 02:22:13.35	\N	\N	\N	2025-11-03
232	ufilwy3rhfx0ss017nbvz8sd	CO-225-25971	Riddhi Steel and Tube Limited	780	\N	2026-04-27 02:22:13.752	2026-04-27 02:22:13.752	\N	\N	\N	\N	2025-11-01
233	ufilwy3rhfx0ss017nbvz8sd	CO-225-25971	Riddhi Steel and Tube Limited	780	\N	2026-04-27 02:22:13.752	2026-04-27 02:22:13.752	2026-04-27 02:22:13.758	\N	\N	\N	2025-11-01
236	j7vnzd6lu1b2i9vp4ndacn0q	CO-225-25973	ANIL KARYA	1674	\N	2026-04-27 02:22:15.426	2026-04-27 02:22:15.426	\N	\N	\N	\N	2025-11-04
237	j7vnzd6lu1b2i9vp4ndacn0q	CO-225-25973	ANIL KARYA	1674	\N	2026-04-27 02:22:15.426	2026-04-27 02:22:15.426	2026-04-27 02:22:15.435	\N	\N	\N	2025-11-04
244	m9a1gzx5e4fsz3cueurl3xy4	CO-225-25977	NILESH SHAH	425	\N	2026-04-27 02:22:18.505	2026-04-27 02:22:18.505	\N	\N	\N	\N	2025-11-04
245	m9a1gzx5e4fsz3cueurl3xy4	CO-225-25977	NILESH SHAH	425	\N	2026-04-27 02:22:18.505	2026-04-27 02:22:18.505	2026-04-27 02:22:18.521	\N	\N	\N	2025-11-04
252	g8h5uho2aj13mx61qhturnno	CO-225-25981	vishakha	1320	\N	2026-04-27 02:22:20.968	2026-04-27 02:22:20.968	\N	\N	\N	\N	2025-11-04
253	g8h5uho2aj13mx61qhturnno	CO-225-25981	vishakha	1320	\N	2026-04-27 02:22:20.968	2026-04-27 02:22:20.968	2026-04-27 02:22:20.985	\N	\N	\N	2025-11-04
258	r2nar9mja17558djfrf0ahth	CO-225-25984	DAKSH	670	\N	2026-04-27 02:22:23.469	2026-04-27 02:22:23.469	\N	\N	\N	\N	2025-11-04
259	r2nar9mja17558djfrf0ahth	CO-225-25984	DAKSH	670	\N	2026-04-27 02:22:23.469	2026-04-27 02:22:23.469	2026-04-27 02:22:23.482	\N	\N	\N	2025-11-04
264	r8ou4903mip651rmz1e55lla	CO-225-25987	dhruv	3538	\N	2026-04-27 02:22:25.543	2026-04-27 02:22:25.543	\N	\N	\N	\N	2025-11-04
265	r8ou4903mip651rmz1e55lla	CO-225-25987	dhruv	3538	\N	2026-04-27 02:22:25.543	2026-04-27 02:22:25.543	2026-04-27 02:22:25.557	\N	\N	\N	2025-11-04
272	wm1heyx6tgp6rgxb2xczyyi2	CO-225-25991	Pinki Gajjar	3245	\N	2026-04-27 02:22:28.391	2026-04-27 02:22:28.391	\N	\N	\N	\N	2025-11-04
273	wm1heyx6tgp6rgxb2xczyyi2	CO-225-25991	Pinki Gajjar	3245	\N	2026-04-27 02:22:28.391	2026-04-27 02:22:28.391	2026-04-27 02:22:28.404	\N	\N	\N	2025-11-04
278	cm1ztymcm56zf7xcvtevqj8b	CO-225-25994	MM MACHINERY PRIVATE LIMITED	2278	\N	2026-04-27 02:22:30.379	2026-04-27 02:22:30.379	\N	\N	\N	\N	2025-11-04
279	cm1ztymcm56zf7xcvtevqj8b	CO-225-25994	MM MACHINERY PRIVATE LIMITED	2278	\N	2026-04-27 02:22:30.379	2026-04-27 02:22:30.379	2026-04-27 02:22:30.387	\N	\N	\N	2025-11-04
284	rvqglzncy5wx8jhsapyhdf8c	CO-225-25997	STUTI	721	\N	2026-04-27 02:22:32.125	2026-04-27 02:22:32.125	\N	\N	\N	\N	2025-11-04
285	rvqglzncy5wx8jhsapyhdf8c	CO-225-25997	STUTI	721	\N	2026-04-27 02:22:32.125	2026-04-27 02:22:32.125	2026-04-27 02:22:32.139	\N	\N	\N	2025-11-04
288	wkw3k69nxdk8p4nw3xdswwir	CO-225-26000	KALINDI SHAH	960	\N	2026-04-27 02:22:33.714	2026-04-27 02:22:33.714	\N	\N	\N	\N	2025-11-04
289	wkw3k69nxdk8p4nw3xdswwir	CO-225-26000	KALINDI SHAH	960	\N	2026-04-27 02:22:33.714	2026-04-27 02:22:33.714	2026-04-27 02:22:33.742	\N	\N	\N	2025-11-04
290	icg1dwex2gg1hgyg3q4phz79	CO-225-26001	jay patel condro	2154	\N	2026-04-27 02:22:34.535	2026-04-27 02:22:34.535	\N	\N	\N	\N	2025-11-04
291	icg1dwex2gg1hgyg3q4phz79	CO-225-26001	jay patel condro	2154	\N	2026-04-27 02:22:34.535	2026-04-27 02:22:34.535	2026-04-27 02:22:34.55	\N	\N	\N	2025-11-04
296	o677q3sve21lxit808lektbj	CO-225-26004	sumitaben	2050	\N	2026-04-27 02:22:37.773	2026-04-27 02:22:37.773	\N	\N	\N	\N	2025-11-04
297	o677q3sve21lxit808lektbj	CO-225-26004	sumitaben	2050	\N	2026-04-27 02:22:37.773	2026-04-27 02:22:37.773	2026-04-27 02:22:37.801	\N	\N	\N	2025-11-04
304	p83kltnrbzmncsn5utt2wkz8	CO-225-26008	VIKKY	250	\N	2026-04-27 02:22:40.635	2026-04-27 02:22:40.635	\N	\N	\N	\N	2025-11-04
305	p83kltnrbzmncsn5utt2wkz8	CO-225-26008	VIKKY	250	\N	2026-04-27 02:22:40.635	2026-04-27 02:22:40.635	2026-04-27 02:22:40.661	\N	\N	\N	2025-11-04
312	zx9by27hhygjrdjzzde7n5nk	CO-225-26012	sailesh bhrambhatt	2754	\N	2026-04-27 02:22:44.079	2026-04-27 02:22:44.079	\N	\N	\N	\N	2025-11-04
313	zx9by27hhygjrdjzzde7n5nk	CO-225-26012	sailesh bhrambhatt	2754	\N	2026-04-27 02:22:44.079	2026-04-27 02:22:44.079	2026-04-27 02:22:44.09	\N	\N	\N	2025-11-04
318	qr2tl9ntja1c7fnkzbjdcwwu	CO-225-26015	MAHIMA	1100	\N	2026-04-27 02:22:46.312	2026-04-27 02:22:46.312	\N	\N	\N	\N	2025-11-04
319	qr2tl9ntja1c7fnkzbjdcwwu	CO-225-26015	MAHIMA	1100	\N	2026-04-27 02:22:46.312	2026-04-27 02:22:46.312	2026-04-27 02:22:46.329	\N	\N	\N	2025-11-04
324	gep2vb2jvdk638fiukgbn840	CO-225-26018	rohit parmar	2200	\N	2026-04-27 02:22:47.635	2026-04-27 02:22:47.635	\N	\N	\N	\N	2025-11-04
325	gep2vb2jvdk638fiukgbn840	CO-225-26018	rohit parmar	2200	\N	2026-04-27 02:22:47.635	2026-04-27 02:22:47.635	2026-04-27 02:22:47.645	\N	\N	\N	2025-11-04
330	grexcj7winxwymwme1npxykk	CO-225-26021	MONIKA PANCHOLI	2288	\N	2026-04-27 02:22:49.121	2026-04-27 02:22:49.121	\N	\N	\N	\N	2025-11-04
331	grexcj7winxwymwme1npxykk	CO-225-26021	MONIKA PANCHOLI	2288	\N	2026-04-27 02:22:49.121	2026-04-27 02:22:49.121	2026-04-27 02:22:49.129	\N	\N	\N	2025-11-04
336	otthx7ikpzkxtrfq7lgra0rr	CO-225-26024	smita	4681	\N	2026-04-27 02:22:50.455	2026-04-27 02:22:50.455	\N	\N	\N	\N	2025-11-05
337	otthx7ikpzkxtrfq7lgra0rr	CO-225-26024	smita	4681	\N	2026-04-27 02:22:50.455	2026-04-27 02:22:50.455	2026-04-27 02:22:50.462	\N	\N	\N	2025-11-05
344	eu4bbpjh2dspebcz7q0w725l	CO-225-26028	NIKKI	248	\N	2026-04-27 02:22:52.613	2026-04-27 02:22:52.613	\N	\N	\N	\N	2025-11-05
345	eu4bbpjh2dspebcz7q0w725l	CO-225-26028	NIKKI	248	\N	2026-04-27 02:22:52.613	2026-04-27 02:22:52.613	2026-04-27 02:22:52.622	\N	\N	\N	2025-11-05
352	ogf21ltfvwq6hskh9cz3vugm	CO-225-26032	ira parikh	15888	\N	2026-04-27 02:22:54.756	2026-04-27 02:22:54.756	\N	\N	\N	\N	2025-11-05
353	ogf21ltfvwq6hskh9cz3vugm	CO-225-26032	ira parikh	15888	\N	2026-04-27 02:22:54.756	2026-04-27 02:22:54.756	2026-04-27 02:22:54.769	\N	\N	\N	2025-11-05
356	kaizpoqyov7hz451dfhstdg6	CO-225-26034	PANKAJ PATEL	2099	\N	2026-04-27 02:22:56.055	2026-04-27 02:22:56.055	\N	\N	\N	\N	2025-11-05
357	kaizpoqyov7hz451dfhstdg6	CO-225-26034	PANKAJ PATEL	2099	\N	2026-04-27 02:22:56.055	2026-04-27 02:22:56.055	2026-04-27 02:22:56.067	\N	\N	\N	2025-11-05
360	oogbvw0ox5m6ripe90wpgfl7	CO-225-26036	VIDHI MAM	160	\N	2026-04-27 02:22:57.506	2026-04-27 02:22:57.506	\N	\N	\N	\N	2025-11-05
361	oogbvw0ox5m6ripe90wpgfl7	CO-225-26036	VIDHI MAM	160	\N	2026-04-27 02:22:57.506	2026-04-27 02:22:57.506	2026-04-27 02:22:57.52	\N	\N	\N	2025-11-05
368	kec2ol9zlspjwmw94xuhb5e8	CO-225-26040	BHARGAV	350	\N	2026-04-27 02:23:03.558	2026-04-27 02:23:03.558	\N	\N	\N	\N	2025-11-05
369	kec2ol9zlspjwmw94xuhb5e8	CO-225-26040	BHARGAV	350	\N	2026-04-27 02:23:03.558	2026-04-27 02:23:03.558	2026-04-27 02:23:03.582	\N	\N	\N	2025-11-05
234	oxqdyt3whmddt459uhw6et7x	CO-225-25972	vrushang	2000	\N	2026-04-27 02:22:14.453	2026-04-27 02:22:14.453	\N	\N	\N	\N	2025-11-03
235	oxqdyt3whmddt459uhw6et7x	CO-225-25972	vrushang	2000	\N	2026-04-27 02:22:14.453	2026-04-27 02:22:14.453	2026-04-27 02:22:14.464	\N	\N	\N	2025-11-03
240	bsmse9p9sh7fw0ayjhoygysm	CO-225-25975	ami damodiya	11969	\N	2026-04-27 02:22:17.028	2026-04-27 02:22:17.028	\N	\N	\N	\N	2025-11-04
241	bsmse9p9sh7fw0ayjhoygysm	CO-225-25975	ami damodiya	11969	\N	2026-04-27 02:22:17.028	2026-04-27 02:22:17.028	2026-04-27 02:22:17.053	\N	\N	\N	2025-11-04
242	l7a4smda00ptniv6sgbdra47	CO-225-25976	devanshu lalwani	3540	\N	2026-04-27 02:22:17.881	2026-04-27 02:22:17.881	\N	\N	\N	\N	2025-11-04
243	l7a4smda00ptniv6sgbdra47	CO-225-25976	devanshu lalwani	3540	\N	2026-04-27 02:22:17.881	2026-04-27 02:22:17.881	2026-04-27 02:22:17.89	\N	\N	\N	2025-11-04
248	gdboult56uugk7h30x9if8jz	CO-225-25979	SOUTH BOPAL MED	384	\N	2026-04-27 02:22:19.702	2026-04-27 02:22:19.702	\N	\N	\N	\N	2025-11-04
249	gdboult56uugk7h30x9if8jz	CO-225-25979	SOUTH BOPAL MED	384	\N	2026-04-27 02:22:19.702	2026-04-27 02:22:19.702	2026-04-27 02:22:19.713	\N	\N	\N	2025-11-04
254	ncf2b089vic09rl5pw2f920q	CO-225-25982	konark	1205	\N	2026-04-27 02:22:21.656	2026-04-27 02:22:21.656	\N	\N	\N	\N	2025-11-04
255	ncf2b089vic09rl5pw2f920q	CO-225-25982	konark	1205	\N	2026-04-27 02:22:21.656	2026-04-27 02:22:21.656	2026-04-27 02:22:21.667	\N	\N	\N	2025-11-04
260	caukhuuk447aywyn8ltivbrx	CO-225-25985	RANI BAGGA	540	\N	2026-04-27 02:22:24.181	2026-04-27 02:22:24.181	\N	\N	\N	\N	2025-11-04
261	caukhuuk447aywyn8ltivbrx	CO-225-25985	RANI BAGGA	540	\N	2026-04-27 02:22:24.181	2026-04-27 02:22:24.181	2026-04-27 02:22:24.192	\N	\N	\N	2025-11-04
262	e198x8i1zj4gph1wb92vev58	CO-225-25986	RISHABH	2200	\N	2026-04-27 02:22:24.875	2026-04-27 02:22:24.875	\N	\N	\N	\N	2025-11-04
263	e198x8i1zj4gph1wb92vev58	CO-225-25986	RISHABH	2200	\N	2026-04-27 02:22:24.875	2026-04-27 02:22:24.875	2026-04-27 02:22:24.888	\N	\N	\N	2025-11-04
266	kzq36tteby36bciozxs3md0r	CO-225-25988	Urja	1700	\N	2026-04-27 02:22:26.128	2026-04-27 02:22:26.128	\N	\N	\N	\N	2025-11-04
267	kzq36tteby36bciozxs3md0r	CO-225-25988	Urja	1700	\N	2026-04-27 02:22:26.128	2026-04-27 02:22:26.128	2026-04-27 02:22:26.143	\N	\N	\N	2025-11-04
268	c1u1zdgnjt0ynithgwx30nb4	CO-225-25989	madhuri soni	605	\N	2026-04-27 02:22:27.008	2026-04-27 02:22:27.008	\N	\N	\N	\N	2025-11-04
269	c1u1zdgnjt0ynithgwx30nb4	CO-225-25989	madhuri soni	605	\N	2026-04-27 02:22:27.008	2026-04-27 02:22:27.008	2026-04-27 02:22:27.021	\N	\N	\N	2025-11-04
274	vuchfwf0g94lc6y60dcg2te9	CO-225-25992	Jyoti Vaghela - Shivranjani	538	\N	2026-04-27 02:22:29.021	2026-04-27 02:22:29.021	\N	\N	\N	\N	2025-11-04
275	vuchfwf0g94lc6y60dcg2te9	CO-225-25992	Jyoti Vaghela - Shivranjani	538	\N	2026-04-27 02:22:29.021	2026-04-27 02:22:29.021	2026-04-27 02:22:29.033	\N	\N	\N	2025-11-04
280	vsdpu3ncl6j1c9y26oi1g7n3	CO-225-25995	rahul	450	\N	2026-04-27 02:22:31.053	2026-04-27 02:22:31.053	\N	\N	\N	\N	2025-11-04
281	vsdpu3ncl6j1c9y26oi1g7n3	CO-225-25995	rahul	450	\N	2026-04-27 02:22:31.053	2026-04-27 02:22:31.053	2026-04-27 02:22:31.063	\N	\N	\N	2025-11-04
294	egvac6nh3ganmbpo3fc5u5pr	CO-225-26003	DINESH SAXENA	2312	\N	2026-04-27 02:22:36.455	2026-04-27 02:22:36.455	\N	\N	\N	\N	2025-11-04
295	egvac6nh3ganmbpo3fc5u5pr	CO-225-26003	DINESH SAXENA	2312	\N	2026-04-27 02:22:36.455	2026-04-27 02:22:36.455	2026-04-27 02:22:36.483	\N	\N	\N	2025-11-04
300	zgud9s4y2tx8oy2tb0kf7auy	CO-225-26006	krishna	8994	\N	2026-04-27 02:22:39.249	2026-04-27 02:22:39.249	\N	\N	\N	\N	2025-11-04
301	zgud9s4y2tx8oy2tb0kf7auy	CO-225-26006	krishna	8994	\N	2026-04-27 02:22:39.249	2026-04-27 02:22:39.249	2026-04-27 02:22:39.263	\N	\N	\N	2025-11-04
310	rjiy5c2bjdx16dps1j384u7f	CO-225-26011	SHYAMAL SODHAN	629	\N	2026-04-27 02:22:43.363	2026-04-27 02:22:43.363	\N	\N	\N	\N	2025-11-04
311	rjiy5c2bjdx16dps1j384u7f	CO-225-26011	SHYAMAL SODHAN	629	\N	2026-04-27 02:22:43.363	2026-04-27 02:22:43.363	2026-04-27 02:22:43.375	\N	\N	\N	2025-11-04
316	lty73d350h64idd1ir22jntg	CO-225-26014	ankit	910	\N	2026-04-27 02:22:45.739	2026-04-27 02:22:45.739	\N	\N	\N	\N	2025-11-04
317	lty73d350h64idd1ir22jntg	CO-225-26014	ankit	910	\N	2026-04-27 02:22:45.739	2026-04-27 02:22:45.739	2026-04-27 02:22:45.748	\N	\N	\N	2025-11-04
322	zxj9zinbbngx5vk39ad2xtcb	CO-225-26017	devansh	1275	\N	2026-04-27 02:22:47.2	2026-04-27 02:22:47.2	\N	\N	\N	\N	2025-11-04
323	zxj9zinbbngx5vk39ad2xtcb	CO-225-26017	devansh	1275	\N	2026-04-27 02:22:47.2	2026-04-27 02:22:47.2	2026-04-27 02:22:47.211	\N	\N	\N	2025-11-04
328	m0ujimt7kd6isi52hah9stlw	CO-225-26020	pooja	540	\N	2026-04-27 02:22:48.609	2026-04-27 02:22:48.609	\N	\N	\N	\N	2025-11-04
329	m0ujimt7kd6isi52hah9stlw	CO-225-26020	pooja	540	\N	2026-04-27 02:22:48.609	2026-04-27 02:22:48.609	2026-04-27 02:22:48.616	\N	\N	\N	2025-11-04
334	ch0s5z4gxw0boxxec1upqmd5	CO-225-26023	prashant udani	3160	\N	2026-04-27 02:22:50.038	2026-04-27 02:22:50.038	\N	\N	\N	\N	2025-11-03
335	ch0s5z4gxw0boxxec1upqmd5	CO-225-26023	prashant udani	3160	\N	2026-04-27 02:22:50.038	2026-04-27 02:22:50.038	2026-04-27 02:22:50.046	\N	\N	\N	2025-11-03
340	o2wyg7qwqttd4j49w8mdbdif	CO-225-26026	MENKA	4100	\N	2026-04-27 02:22:51.564	2026-04-27 02:22:51.564	\N	\N	\N	\N	2025-11-05
341	o2wyg7qwqttd4j49w8mdbdif	CO-225-26026	MENKA	4100	\N	2026-04-27 02:22:51.564	2026-04-27 02:22:51.564	2026-04-27 02:22:51.575	\N	\N	\N	2025-11-05
346	t0w2pd8d9y3mi7kbut0nbkqv	CO-225-26029	vruxi	220	\N	2026-04-27 02:22:53.218	2026-04-27 02:22:53.218	\N	\N	\N	\N	2025-11-05
347	t0w2pd8d9y3mi7kbut0nbkqv	CO-225-26029	vruxi	220	\N	2026-04-27 02:22:53.218	2026-04-27 02:22:53.218	2026-04-27 02:22:53.225	\N	\N	\N	2025-11-05
350	vdcb7vcxgrojrlbrwyz14kwz	CO-225-26031	Anuja Shah	3418	\N	2026-04-27 02:22:54.157	2026-04-27 02:22:54.157	\N	\N	\N	\N	2025-11-05
351	vdcb7vcxgrojrlbrwyz14kwz	CO-225-26031	Anuja Shah	3418	\N	2026-04-27 02:22:54.157	2026-04-27 02:22:54.157	2026-04-27 02:22:54.164	\N	\N	\N	2025-11-05
354	ps0dkq5hhtkw1ub12ehrkxdh	CO-225-26033	RAMESH BHAi	1683	\N	2026-04-27 02:22:55.405	2026-04-27 02:22:55.405	\N	\N	\N	\N	2025-11-05
355	ps0dkq5hhtkw1ub12ehrkxdh	CO-225-26033	RAMESH BHAi	1683	\N	2026-04-27 02:22:55.405	2026-04-27 02:22:55.405	2026-04-27 02:22:55.414	\N	\N	\N	2025-11-05
364	w1j2ln4zwqd5q4r5m31rnj77	CO-225-26038	HIMANSHU RAVAT	550	\N	2026-04-27 02:23:01.474	2026-04-27 02:23:01.474	\N	\N	\N	\N	2025-11-05
365	w1j2ln4zwqd5q4r5m31rnj77	CO-225-26038	HIMANSHU RAVAT	550	\N	2026-04-27 02:23:01.474	2026-04-27 02:23:01.474	2026-04-27 02:23:01.489	\N	\N	\N	2025-11-05
366	b1znxxtlvo5jgw7a51kjklad	CO-225-26039	LALIT	375	\N	2026-04-27 02:23:02.799	2026-04-27 02:23:02.799	\N	\N	\N	\N	2025-11-05
367	b1znxxtlvo5jgw7a51kjklad	CO-225-26039	LALIT	375	\N	2026-04-27 02:23:02.799	2026-04-27 02:23:02.799	2026-04-27 02:23:02.819	\N	\N	\N	2025-11-05
238	qzlx2rdhc5hd39wvo4fdq8qu	CO-225-25974	Urja	1700	\N	2026-04-27 02:22:16.118	2026-04-27 02:22:16.118	\N	\N	\N	\N	2025-11-04
239	qzlx2rdhc5hd39wvo4fdq8qu	CO-225-25974	Urja	1700	\N	2026-04-27 02:22:16.118	2026-04-27 02:22:16.118	2026-04-27 02:22:16.14	\N	\N	\N	2025-11-04
246	qkcc7rxgs7lzeyd4yanajkxu	CO-225-25978	diya khurana	4700	\N	2026-04-27 02:22:19.073	2026-04-27 02:22:19.073	\N	\N	\N	\N	2025-11-04
247	qkcc7rxgs7lzeyd4yanajkxu	CO-225-25978	diya khurana	4700	\N	2026-04-27 02:22:19.073	2026-04-27 02:22:19.073	2026-04-27 02:22:19.087	\N	\N	\N	2025-11-04
250	raexjfhxxphc3k0c0a43m414	CO-225-25980	rupal	600	\N	2026-04-27 02:22:20.21	2026-04-27 02:22:20.21	\N	\N	\N	\N	2025-11-04
251	raexjfhxxphc3k0c0a43m414	CO-225-25980	rupal	600	\N	2026-04-27 02:22:20.21	2026-04-27 02:22:20.21	2026-04-27 02:22:20.221	\N	\N	\N	2025-11-04
256	l4ns45fwrc26de9dd78he69e	CO-225-25983	BABITA SHARMA	2230	\N	2026-04-27 02:22:22.291	2026-04-27 02:22:22.291	\N	\N	\N	\N	2025-11-04
257	l4ns45fwrc26de9dd78he69e	CO-225-25983	BABITA SHARMA	2230	\N	2026-04-27 02:22:22.291	2026-04-27 02:22:22.291	2026-04-27 02:22:22.3	\N	\N	\N	2025-11-04
270	m0dxxowxuo3w676hpscc3vtp	CO-225-25990	SCOOBY	4275	\N	2026-04-27 02:22:27.732	2026-04-27 02:22:27.732	\N	\N	\N	\N	2025-11-04
271	m0dxxowxuo3w676hpscc3vtp	CO-225-25990	SCOOBY	4275	\N	2026-04-27 02:22:27.732	2026-04-27 02:22:27.732	2026-04-27 02:22:27.743	\N	\N	\N	2025-11-04
276	bbbaccpnp91j6cf8vkwiteji	CO-225-25993	SIDDHI	2539	\N	2026-04-27 02:22:29.818	2026-04-27 02:22:29.818	\N	\N	\N	\N	2025-11-04
277	bbbaccpnp91j6cf8vkwiteji	CO-225-25993	SIDDHI	2539	\N	2026-04-27 02:22:29.818	2026-04-27 02:22:29.818	2026-04-27 02:22:29.832	\N	\N	\N	2025-11-04
282	h84sb3ary5cepa9fe1nvhi5m	CO-225-25996	AARCHI	1372	\N	2026-04-27 02:22:31.559	2026-04-27 02:22:31.559	\N	\N	\N	\N	2025-11-04
283	h84sb3ary5cepa9fe1nvhi5m	CO-225-25996	AARCHI	1372	\N	2026-04-27 02:22:31.559	2026-04-27 02:22:31.559	2026-04-27 02:22:31.566	\N	\N	\N	2025-11-04
286	coe0r9u7m0noe3uqeepwupv0	CO-225-25998	icy	200	\N	2026-04-27 02:22:32.896	2026-04-27 02:22:32.896	\N	\N	\N	\N	2025-11-04
287	coe0r9u7m0noe3uqeepwupv0	CO-225-25998	icy	200	\N	2026-04-27 02:22:32.896	2026-04-27 02:22:32.896	2026-04-27 02:22:32.909	\N	\N	\N	2025-11-04
292	i1bfe7wigqbgmmnsrfi8yvet	CO-225-26002	sanjay	340	\N	2026-04-27 02:22:35.244	2026-04-27 02:22:35.244	\N	\N	\N	\N	2025-11-04
293	i1bfe7wigqbgmmnsrfi8yvet	CO-225-26002	sanjay	340	\N	2026-04-27 02:22:35.244	2026-04-27 02:22:35.244	2026-04-27 02:22:35.259	\N	\N	\N	2025-11-04
298	oktle0axpljr900vdkg0t5zd	CO-225-26005	Usha patel lab f	3000	\N	2026-04-27 02:22:38.49	2026-04-27 02:22:38.49	\N	\N	\N	\N	2025-11-04
299	oktle0axpljr900vdkg0t5zd	CO-225-26005	Usha patel lab f	3000	\N	2026-04-27 02:22:38.49	2026-04-27 02:22:38.49	2026-04-27 02:22:38.504	\N	\N	\N	2025-11-04
302	uy476dhepo0o0e1n5dtu4kc1	CO-225-26007	dipanti	1728	\N	2026-04-27 02:22:39.952	2026-04-27 02:22:39.952	\N	\N	\N	\N	2025-11-04
303	uy476dhepo0o0e1n5dtu4kc1	CO-225-26007	dipanti	1728	\N	2026-04-27 02:22:39.952	2026-04-27 02:22:39.952	2026-04-27 02:22:39.968	\N	\N	\N	2025-11-04
306	t7sooo1lknzulat6pwez3gzi	CO-225-26009	ADITI	548	\N	2026-04-27 02:22:41.865	2026-04-27 02:22:41.865	\N	\N	\N	\N	2025-11-04
307	t7sooo1lknzulat6pwez3gzi	CO-225-26009	ADITI	548	\N	2026-04-27 02:22:41.865	2026-04-27 02:22:41.865	2026-04-27 02:22:41.877	\N	\N	\N	2025-11-04
308	vipvclvbyvghds9lh865k64j	CO-225-26010	truffle	146	\N	2026-04-27 02:22:42.524	2026-04-27 02:22:42.524	\N	\N	\N	\N	2025-11-04
309	vipvclvbyvghds9lh865k64j	CO-225-26010	truffle	146	\N	2026-04-27 02:22:42.524	2026-04-27 02:22:42.524	2026-04-27 02:22:42.538	\N	\N	\N	2025-11-04
314	s500hwy9tuw87plhy10lhb3v	CO-225-26013	AAMAR	2900	\N	2026-04-27 02:22:45.104	2026-04-27 02:22:45.104	\N	\N	\N	\N	2025-11-04
315	s500hwy9tuw87plhy10lhb3v	CO-225-26013	AAMAR	2900	\N	2026-04-27 02:22:45.104	2026-04-27 02:22:45.104	2026-04-27 02:22:45.12	\N	\N	\N	2025-11-04
320	kyo0btc41yrnt2y0n3ccac0z	CO-225-26016	SONIA	1160	\N	2026-04-27 02:22:46.783	2026-04-27 02:22:46.783	\N	\N	\N	\N	2025-11-04
321	kyo0btc41yrnt2y0n3ccac0z	CO-225-26016	SONIA	1160	\N	2026-04-27 02:22:46.783	2026-04-27 02:22:46.783	2026-04-27 02:22:46.791	\N	\N	\N	2025-11-04
326	btxohrabonye0wmvqshglv6u	CO-225-26019	KALYANI	425	\N	2026-04-27 02:22:48.079	2026-04-27 02:22:48.079	\N	\N	\N	\N	2025-11-04
327	btxohrabonye0wmvqshglv6u	CO-225-26019	KALYANI	425	\N	2026-04-27 02:22:48.079	2026-04-27 02:22:48.079	2026-04-27 02:22:48.088	\N	\N	\N	2025-11-04
332	nk8al0akolm3dhok9zl6kx99	CO-225-26022	KINJAL	169	\N	2026-04-27 02:22:49.555	2026-04-27 02:22:49.555	\N	\N	\N	\N	2025-11-03
333	nk8al0akolm3dhok9zl6kx99	CO-225-26022	KINJAL	169	\N	2026-04-27 02:22:49.555	2026-04-27 02:22:49.555	2026-04-27 02:22:49.563	\N	\N	\N	2025-11-03
338	cm1sc397szjxe81t7zjpgb3v	CO-225-26025	RUPESH	1650	\N	2026-04-27 02:22:51.015	2026-04-27 02:22:51.015	\N	\N	\N	\N	2025-11-05
339	cm1sc397szjxe81t7zjpgb3v	CO-225-26025	RUPESH	1650	\N	2026-04-27 02:22:51.015	2026-04-27 02:22:51.015	2026-04-27 02:22:51.027	\N	\N	\N	2025-11-05
342	amzr7pxncfcvkvpi8nb9q006	CO-225-26027	mamtaben	3315	\N	2026-04-27 02:22:52.089	2026-04-27 02:22:52.089	\N	\N	\N	\N	2025-11-05
343	amzr7pxncfcvkvpi8nb9q006	CO-225-26027	mamtaben	3315	\N	2026-04-27 02:22:52.089	2026-04-27 02:22:52.089	2026-04-27 02:22:52.097	\N	\N	\N	2025-11-05
348	s8neziod9wczf142ixaqssbu	CO-225-26030	KUSUM GUPTA	433	\N	2026-04-27 02:22:53.625	2026-04-27 02:22:53.625	\N	\N	\N	\N	2025-11-05
349	s8neziod9wczf142ixaqssbu	CO-225-26030	KUSUM GUPTA	433	\N	2026-04-27 02:22:53.625	2026-04-27 02:22:53.625	2026-04-27 02:22:53.633	\N	\N	\N	2025-11-05
358	ra6she0z0bhzzeesfwz4eitx	CO-225-26035	Pinky Thakkar	180	\N	2026-04-27 02:22:56.75	2026-04-27 02:22:56.75	\N	\N	\N	\N	2025-11-05
359	ra6she0z0bhzzeesfwz4eitx	CO-225-26035	Pinky Thakkar	180	\N	2026-04-27 02:22:56.75	2026-04-27 02:22:56.75	2026-04-27 02:22:56.759	\N	\N	\N	2025-11-05
362	fsx6hzynnmx0d9qhjz4no3am	CO-225-26037	MAHIMA	387	\N	2026-04-27 02:22:59.668	2026-04-27 02:22:59.668	\N	\N	\N	\N	2025-11-05
363	fsx6hzynnmx0d9qhjz4no3am	CO-225-26037	MAHIMA	387	\N	2026-04-27 02:22:59.668	2026-04-27 02:22:59.668	2026-04-27 02:22:59.684	\N	\N	\N	2025-11-05
370	xe9779twldhitxgi12xb4ads	CO-225-26041	rocky	1630	\N	2026-04-27 02:23:04.509	2026-04-27 02:23:04.509	\N	\N	\N	\N	2025-11-05
371	xe9779twldhitxgi12xb4ads	CO-225-26041	rocky	1630	\N	2026-04-27 02:23:04.509	2026-04-27 02:23:04.509	2026-04-27 02:23:04.525	\N	\N	\N	2025-11-05
372	kizcv72srbs6wgkedb47xnz0	CO-225-26042	JIGNESHBHAI	4200	\N	2026-04-27 02:23:05.33	2026-04-27 02:23:05.33	\N	\N	\N	\N	2025-11-05
373	kizcv72srbs6wgkedb47xnz0	CO-225-26042	JIGNESHBHAI	4200	\N	2026-04-27 02:23:05.33	2026-04-27 02:23:05.33	2026-04-27 02:23:05.352	\N	\N	\N	2025-11-05
374	oun1nt2utfmzuqy4hjh9s5ax	CO-225-26043	swati sharma	2099	\N	2026-04-27 02:23:06.365	2026-04-27 02:23:06.365	\N	\N	\N	\N	2025-11-05
375	oun1nt2utfmzuqy4hjh9s5ax	CO-225-26043	swati sharma	2099	\N	2026-04-27 02:23:06.365	2026-04-27 02:23:06.365	2026-04-27 02:23:06.387	\N	\N	\N	2025-11-05
376	ba0ofl6a0e7vg8xg24u8bubj	CO-225-26044	MURUGN	1067	\N	2026-04-27 02:23:07.256	2026-04-27 02:23:07.256	\N	\N	\N	\N	2025-11-05
377	ba0ofl6a0e7vg8xg24u8bubj	CO-225-26044	MURUGN	1067	\N	2026-04-27 02:23:07.256	2026-04-27 02:23:07.256	2026-04-27 02:23:07.274	\N	\N	\N	2025-11-05
378	p1wai8n32p8jwbl83crirpbh	CO-225-26045	TORAL VYAS	326	\N	2026-04-27 02:23:08.306	2026-04-27 02:23:08.306	\N	\N	\N	\N	2025-11-05
379	p1wai8n32p8jwbl83crirpbh	CO-225-26045	TORAL VYAS	326	\N	2026-04-27 02:23:08.306	2026-04-27 02:23:08.306	2026-04-27 02:23:08.32	\N	\N	\N	2025-11-05
380	c87cyoulkfhycg10m98aixj5	CO-225-26046	Pallavi mam - Godrej	6002	\N	2026-04-27 02:23:09.075	2026-04-27 02:23:09.075	\N	\N	\N	\N	2025-11-05
381	c87cyoulkfhycg10m98aixj5	CO-225-26046	Pallavi mam - Godrej	6002	\N	2026-04-27 02:23:09.075	2026-04-27 02:23:09.075	2026-04-27 02:23:09.086	\N	\N	\N	2025-11-05
382	ybey7w17xpncrzaxxcla9p48	CO-225-26047	URVASHI	3719	\N	2026-04-27 02:23:09.774	2026-04-27 02:23:09.774	\N	\N	\N	\N	2025-11-05
383	ybey7w17xpncrzaxxcla9p48	CO-225-26047	URVASHI	3719	\N	2026-04-27 02:23:09.774	2026-04-27 02:23:09.774	2026-04-27 02:23:09.783	\N	\N	\N	2025-11-05
384	ahufs6wtc8di3yfpm5e617qq	CO-225-26048	arpita	2558	\N	2026-04-27 02:23:10.299	2026-04-27 02:23:10.299	\N	\N	\N	\N	2025-11-05
385	ahufs6wtc8di3yfpm5e617qq	CO-225-26048	arpita	2558	\N	2026-04-27 02:23:10.299	2026-04-27 02:23:10.299	2026-04-27 02:23:10.311	\N	\N	\N	2025-11-05
386	i89dqrfdnbwggku35ag3vil5	CO-225-26049	seema	2099	\N	2026-04-27 02:23:10.815	2026-04-27 02:23:10.815	\N	\N	\N	\N	2025-11-05
387	i89dqrfdnbwggku35ag3vil5	CO-225-26049	seema	2099	\N	2026-04-27 02:23:10.815	2026-04-27 02:23:10.815	2026-04-27 02:23:10.83	\N	\N	\N	2025-11-05
388	vdyoyzbrhwm5x7w29y3bhwvu	CO-225-26050	ARSHEEN	390	\N	2026-04-27 02:23:11.501	2026-04-27 02:23:11.501	\N	\N	\N	\N	2025-11-05
389	vdyoyzbrhwm5x7w29y3bhwvu	CO-225-26050	ARSHEEN	390	\N	2026-04-27 02:23:11.501	2026-04-27 02:23:11.501	2026-04-27 02:23:11.515	\N	\N	\N	2025-11-05
390	fxt7akkmcwzodxyj8ipbtc5v	CO-225-26051	AMIT LAB WIFE	4500	\N	2026-04-27 02:23:12.05	2026-04-27 02:23:12.05	\N	\N	\N	\N	2025-11-05
391	fxt7akkmcwzodxyj8ipbtc5v	CO-225-26051	AMIT LAB WIFE	4500	\N	2026-04-27 02:23:12.05	2026-04-27 02:23:12.05	2026-04-27 02:23:12.058	\N	\N	\N	2025-11-05
396	hcxz8hjduvkc9zci64cb6pxb	CO-225-26054	MILONI	3400	\N	2026-04-27 02:23:13.668	2026-04-27 02:23:13.668	\N	\N	\N	\N	2025-11-05
397	hcxz8hjduvkc9zci64cb6pxb	CO-225-26054	MILONI	3400	\N	2026-04-27 02:23:13.668	2026-04-27 02:23:13.668	2026-04-27 02:23:13.678	\N	\N	\N	2025-11-05
402	gp6dpft3vcqnh8u0qqm9owjs	CO-225-26057	rekha ben	1692	\N	2026-04-27 02:23:15.32	2026-04-27 02:23:15.32	\N	\N	\N	\N	2025-11-05
403	gp6dpft3vcqnh8u0qqm9owjs	CO-225-26057	rekha ben	1692	\N	2026-04-27 02:23:15.32	2026-04-27 02:23:15.32	2026-04-27 02:23:15.326	\N	\N	\N	2025-11-05
408	nrf0kyzpdf49mdek64i259c5	CO-225-26060	seema mehta	220	\N	2026-04-27 02:23:16.626	2026-04-27 02:23:16.626	\N	\N	\N	\N	2025-11-05
409	nrf0kyzpdf49mdek64i259c5	CO-225-26060	seema mehta	220	\N	2026-04-27 02:23:16.626	2026-04-27 02:23:16.626	2026-04-27 02:23:16.635	\N	\N	\N	2025-11-05
414	gbsicg6lzz3m593adoz2zsz4	CO-225-26063	Ashok Patel	5891	\N	2026-04-27 02:23:17.862	2026-04-27 02:23:17.862	\N	\N	\N	\N	2025-11-05
415	gbsicg6lzz3m593adoz2zsz4	CO-225-26063	Ashok Patel	5891	\N	2026-04-27 02:23:17.862	2026-04-27 02:23:17.862	2026-04-27 02:23:17.871	\N	\N	\N	2025-11-05
424	ma4af1wbmxebo8644y6i7cr2	CO-225-26068	mahi rajput	2099	\N	2026-04-27 02:23:20.888	2026-04-27 02:23:20.888	\N	\N	\N	\N	2025-11-05
425	ma4af1wbmxebo8644y6i7cr2	CO-225-26068	mahi rajput	2099	\N	2026-04-27 02:23:20.888	2026-04-27 02:23:20.888	2026-04-27 02:23:20.898	\N	\N	\N	2025-11-05
430	byphr3ehn2jdmgsstbq8g2dm	CO-225-26071	mahesh raval	200	\N	2026-04-27 02:23:22.543	2026-04-27 02:23:22.543	\N	\N	\N	\N	2025-11-05
431	byphr3ehn2jdmgsstbq8g2dm	CO-225-26071	mahesh raval	200	\N	2026-04-27 02:23:22.543	2026-04-27 02:23:22.543	2026-04-27 02:23:22.554	\N	\N	\N	2025-11-05
434	jt84w7grnnci779hscu3ztim	CO-225-26073	riddhi pandya	2399	\N	2026-04-27 02:23:23.835	2026-04-27 02:23:23.835	\N	\N	\N	\N	2025-11-05
435	jt84w7grnnci779hscu3ztim	CO-225-26073	riddhi pandya	2399	\N	2026-04-27 02:23:23.835	2026-04-27 02:23:23.835	2026-04-27 02:23:23.843	\N	\N	\N	2025-11-05
440	husxel62oig0awgwnqq5sris	CO-225-26076	RAJSHREE	1785	\N	2026-04-27 02:23:25.407	2026-04-27 02:23:25.407	\N	\N	\N	\N	2025-11-06
441	husxel62oig0awgwnqq5sris	CO-225-26076	RAJSHREE	1785	\N	2026-04-27 02:23:25.407	2026-04-27 02:23:25.407	2026-04-27 02:23:25.414	\N	\N	\N	2025-11-06
444	b29yzssknvm0f9rtgqg99wj8	CO-225-26078	ami damodiya	543	\N	2026-04-27 02:23:26.232	2026-04-27 02:23:26.232	\N	\N	\N	\N	2025-11-06
445	b29yzssknvm0f9rtgqg99wj8	CO-225-26078	ami damodiya	543	\N	2026-04-27 02:23:26.232	2026-04-27 02:23:26.232	2026-04-27 02:23:26.242	\N	\N	\N	2025-11-06
446	srb5ki2xgwd02aa0t9qof3qb	CO-225-26079	Chaitali Kothari	1980	\N	2026-04-27 02:23:26.786	2026-04-27 02:23:26.786	\N	\N	\N	\N	2025-11-06
447	srb5ki2xgwd02aa0t9qof3qb	CO-225-26079	Chaitali Kothari	1980	\N	2026-04-27 02:23:26.786	2026-04-27 02:23:26.786	2026-04-27 02:23:26.795	\N	\N	\N	2025-11-06
450	ghr1ilx16i7c146v2uabm2yf	CO-225-26081	aashman	3433	\N	2026-04-27 02:23:27.677	2026-04-27 02:23:27.677	\N	\N	\N	\N	2025-11-06
451	ghr1ilx16i7c146v2uabm2yf	CO-225-26081	aashman	3433	\N	2026-04-27 02:23:27.677	2026-04-27 02:23:27.677	2026-04-27 02:23:27.685	\N	\N	\N	2025-11-06
458	cnvq95xb1vsl6fz51wvrj9sj	CO-225-26085	RAHUL PANCHAL	378	\N	2026-04-27 02:23:29.765	2026-04-27 02:23:29.765	\N	\N	\N	\N	2025-11-06
459	cnvq95xb1vsl6fz51wvrj9sj	CO-225-26085	RAHUL PANCHAL	378	\N	2026-04-27 02:23:29.765	2026-04-27 02:23:29.765	2026-04-27 02:23:29.773	\N	\N	\N	2025-11-06
466	l9wfn7qxy40xjpnqb1hsxn6n	CO-225-26089	pooja	4310	\N	2026-04-27 02:23:31.517	2026-04-27 02:23:31.517	\N	\N	\N	\N	2025-11-06
467	l9wfn7qxy40xjpnqb1hsxn6n	CO-225-26089	pooja	4310	\N	2026-04-27 02:23:31.517	2026-04-27 02:23:31.517	2026-04-27 02:23:31.524	\N	\N	\N	2025-11-06
472	l7gsfy5fu9y5fni3xbx6wemw	CO-225-26092	JYOTI RAJGOR	4200	\N	2026-04-27 02:23:32.897	2026-04-27 02:23:32.897	\N	\N	\N	\N	2025-11-06
473	l7gsfy5fu9y5fni3xbx6wemw	CO-225-26092	JYOTI RAJGOR	4200	\N	2026-04-27 02:23:32.897	2026-04-27 02:23:32.897	2026-04-27 02:23:32.907	\N	\N	\N	2025-11-06
476	dy3r02weo9xvnsujbstpo2t6	CO-225-26094	MAHIMA	390	\N	2026-04-27 02:23:33.709	2026-04-27 02:23:33.709	\N	\N	\N	\N	2025-11-06
477	dy3r02weo9xvnsujbstpo2t6	CO-225-26094	MAHIMA	390	\N	2026-04-27 02:23:33.709	2026-04-27 02:23:33.709	2026-04-27 02:23:33.717	\N	\N	\N	2025-11-06
478	gmcz3xctte4dqmti8g9uect9	CO-225-26095	ANIL CHAUHAN	1147	\N	2026-04-27 02:23:34.248	2026-04-27 02:23:34.248	\N	\N	\N	\N	2025-11-06
479	gmcz3xctte4dqmti8g9uect9	CO-225-26095	ANIL CHAUHAN	1147	\N	2026-04-27 02:23:34.248	2026-04-27 02:23:34.248	2026-04-27 02:23:34.255	\N	\N	\N	2025-11-06
484	q3qdiny2ygm5uinsd34eg5wb	CO-225-26098	Satish Hosiery Mart	3000	\N	2026-04-27 02:23:35.517	2026-04-27 02:23:35.517	\N	\N	\N	\N	2025-11-06
485	q3qdiny2ygm5uinsd34eg5wb	CO-225-26098	Satish Hosiery Mart	3000	\N	2026-04-27 02:23:35.517	2026-04-27 02:23:35.517	2026-04-27 02:23:35.529	\N	\N	\N	2025-11-06
490	la8tceovi100u5go4rlpvdpb	CO-225-26101	sapna	109	\N	2026-04-27 02:23:36.886	2026-04-27 02:23:36.886	\N	\N	\N	\N	2025-11-06
491	la8tceovi100u5go4rlpvdpb	CO-225-26101	sapna	109	\N	2026-04-27 02:23:36.886	2026-04-27 02:23:36.886	2026-04-27 02:23:36.893	\N	\N	\N	2025-11-06
496	ju8zaxkjxj0s605fo48u1whb	CO-225-26104	eva	220	\N	2026-04-27 02:23:38.201	2026-04-27 02:23:38.201	\N	\N	\N	\N	2025-11-06
497	ju8zaxkjxj0s605fo48u1whb	CO-225-26104	eva	220	\N	2026-04-27 02:23:38.201	2026-04-27 02:23:38.201	2026-04-27 02:23:38.208	\N	\N	\N	2025-11-06
500	pfp2fior9wv95sk5ano7qqje	CO-225-26106	Pruthvi Foundation	3750	\N	2026-04-27 02:23:39.149	2026-04-27 02:23:39.149	\N	\N	\N	\N	2025-11-06
501	pfp2fior9wv95sk5ano7qqje	CO-225-26106	Pruthvi Foundation	3750	\N	2026-04-27 02:23:39.149	2026-04-27 02:23:39.149	2026-04-27 02:23:39.156	\N	\N	\N	2025-11-06
506	qlrepulhm4w934sougqq5nue	CO-225-26109	sanjays wife	3141	\N	2026-04-27 02:23:40.433	2026-04-27 02:23:40.433	\N	\N	\N	\N	2025-11-06
507	qlrepulhm4w934sougqq5nue	CO-225-26109	sanjays wife	3141	\N	2026-04-27 02:23:40.433	2026-04-27 02:23:40.433	2026-04-27 02:23:40.443	\N	\N	\N	2025-11-06
508	c5579i0a7hoxlnnc80r5q9is	CO-225-26110	dhavnit shah	8760	\N	2026-04-27 02:23:40.85	2026-04-27 02:23:40.85	\N	\N	\N	\N	2025-11-06
509	c5579i0a7hoxlnnc80r5q9is	CO-225-26110	dhavnit shah	8760	\N	2026-04-27 02:23:40.85	2026-04-27 02:23:40.85	2026-04-27 02:23:40.858	\N	\N	\N	2025-11-06
514	btnjfjg4mzz1rhtvf0dmi4wg	CO-225-26113	BHAVNA PUROHIT	195	\N	2026-04-27 02:23:42.167	2026-04-27 02:23:42.167	\N	\N	\N	\N	2025-11-06
515	btnjfjg4mzz1rhtvf0dmi4wg	CO-225-26113	BHAVNA PUROHIT	195	\N	2026-04-27 02:23:42.167	2026-04-27 02:23:42.167	2026-04-27 02:23:42.174	\N	\N	\N	2025-11-06
522	evsvwpilunmbs1qd6f85403e	CO-225-26117	shweta gulati	20502	\N	2026-04-27 02:23:43.944	2026-04-27 02:23:43.944	\N	\N	\N	\N	2025-11-06
523	evsvwpilunmbs1qd6f85403e	CO-225-26117	shweta gulati	20502	\N	2026-04-27 02:23:43.944	2026-04-27 02:23:43.944	2026-04-27 02:23:43.952	\N	\N	\N	2025-11-06
528	n7xc0ni63dns5jb2dezncikp	CO-225-26120	vrushil	180	\N	2026-04-27 02:23:45.197	2026-04-27 02:23:45.197	\N	\N	\N	\N	2025-11-06
529	n7xc0ni63dns5jb2dezncikp	CO-225-26120	vrushil	180	\N	2026-04-27 02:23:45.197	2026-04-27 02:23:45.197	2026-04-27 02:23:45.204	\N	\N	\N	2025-11-06
534	li4qks3lf7kx6rcr56ozqgdz	CO-225-26123	BIJAL KOTHARI	2050	\N	2026-04-27 02:23:46.416	2026-04-27 02:23:46.416	\N	\N	\N	\N	2025-11-07
535	li4qks3lf7kx6rcr56ozqgdz	CO-225-26123	BIJAL KOTHARI	2050	\N	2026-04-27 02:23:46.416	2026-04-27 02:23:46.416	2026-04-27 02:23:46.423	\N	\N	\N	2025-11-07
540	vfdjiwyyo0u398ydhrvy42ez	CO-225-26126	gurucharan upadhyay	1925	\N	2026-04-27 02:23:47.791	2026-04-27 02:23:47.791	\N	\N	\N	\N	2025-11-07
541	vfdjiwyyo0u398ydhrvy42ez	CO-225-26126	gurucharan upadhyay	1925	\N	2026-04-27 02:23:47.791	2026-04-27 02:23:47.791	2026-04-27 02:23:47.8	\N	\N	\N	2025-11-07
548	f8q5csdutjnk4vowru05tgbi	CO-225-26130	j,p pandya	700	\N	2026-04-27 02:23:49.509	2026-04-27 02:23:49.509	\N	\N	\N	\N	2025-11-07
549	f8q5csdutjnk4vowru05tgbi	CO-225-26130	j,p pandya	700	\N	2026-04-27 02:23:49.509	2026-04-27 02:23:49.509	2026-04-27 02:23:49.516	\N	\N	\N	2025-11-07
554	ect9c0qarcplsfblh9ylv9rd	CO-225-26133	VISHU VYAS	433	\N	2026-04-27 02:23:50.836	2026-04-27 02:23:50.836	\N	\N	\N	\N	2025-11-07
555	ect9c0qarcplsfblh9ylv9rd	CO-225-26133	VISHU VYAS	433	\N	2026-04-27 02:23:50.836	2026-04-27 02:23:50.836	2026-04-27 02:23:50.843	\N	\N	\N	2025-11-07
392	qx7d5bb6r9bvst8l5sbhdst9	CO-225-26052	ashvin singh rana	9409	\N	2026-04-27 02:23:12.527	2026-04-27 02:23:12.527	\N	\N	\N	\N	2025-11-05
393	qx7d5bb6r9bvst8l5sbhdst9	CO-225-26052	ashvin singh rana	9409	\N	2026-04-27 02:23:12.527	2026-04-27 02:23:12.527	2026-04-27 02:23:12.537	\N	\N	\N	2025-11-05
400	khlzk9aqdqai2w93p9qhygju	CO-225-26056	akshay	339	\N	2026-04-27 02:23:14.906	2026-04-27 02:23:14.906	\N	\N	\N	\N	2025-11-05
401	khlzk9aqdqai2w93p9qhygju	CO-225-26056	akshay	339	\N	2026-04-27 02:23:14.906	2026-04-27 02:23:14.906	2026-04-27 02:23:14.914	\N	\N	\N	2025-11-05
406	kcvopyz8ilz290le17pzpjso	CO-225-26059	KALP	1980	\N	2026-04-27 02:23:16.234	2026-04-27 02:23:16.234	\N	\N	\N	\N	2025-11-05
407	kcvopyz8ilz290le17pzpjso	CO-225-26059	KALP	1980	\N	2026-04-27 02:23:16.234	2026-04-27 02:23:16.234	2026-04-27 02:23:16.24	\N	\N	\N	2025-11-05
412	npindigdm9qlpiknjfpycbit	CO-225-26062	RAVINDRASINH ZALA	1620	\N	2026-04-27 02:23:17.417	2026-04-27 02:23:17.417	\N	\N	\N	\N	2025-11-05
413	npindigdm9qlpiknjfpycbit	CO-225-26062	RAVINDRASINH ZALA	1620	\N	2026-04-27 02:23:17.417	2026-04-27 02:23:17.417	2026-04-27 02:23:17.425	\N	\N	\N	2025-11-05
418	sad03pcoq26wx0wx9ajhyer4	CO-225-26065	mamta	2600	\N	2026-04-27 02:23:18.971	2026-04-27 02:23:18.971	\N	\N	\N	\N	2025-11-05
419	sad03pcoq26wx0wx9ajhyer4	CO-225-26065	mamta	2600	\N	2026-04-27 02:23:18.971	2026-04-27 02:23:18.971	2026-04-27 02:23:18.981	\N	\N	\N	2025-11-05
426	mjh0r1zku1kexqqkpotbxvce	CO-225-26069	vikram veri	1800	\N	2026-04-27 02:23:21.469	2026-04-27 02:23:21.469	\N	\N	\N	\N	2025-11-05
427	mjh0r1zku1kexqqkpotbxvce	CO-225-26069	vikram veri	1800	\N	2026-04-27 02:23:21.469	2026-04-27 02:23:21.469	2026-04-27 02:23:21.479	\N	\N	\N	2025-11-05
432	eqgov1zewkx8zyy3j5rwt3qn	CO-225-26072	dharmendra giri	1128	\N	2026-04-27 02:23:23.29	2026-04-27 02:23:23.29	\N	\N	\N	\N	2025-11-05
433	eqgov1zewkx8zyy3j5rwt3qn	CO-225-26072	dharmendra giri	1128	\N	2026-04-27 02:23:23.29	2026-04-27 02:23:23.29	2026-04-27 02:23:23.31	\N	\N	\N	2025-11-05
438	rteucec62zem232f5w09vtvh	CO-225-26075	jagdishbbhai	2376	\N	2026-04-27 02:23:24.953	2026-04-27 02:23:24.953	\N	\N	\N	\N	2025-11-06
439	rteucec62zem232f5w09vtvh	CO-225-26075	jagdishbbhai	2376	\N	2026-04-27 02:23:24.953	2026-04-27 02:23:24.953	2026-04-27 02:23:24.96	\N	\N	\N	2025-11-06
452	wo67scqd7m21w7ppvy78f801	CO-225-26082	lala khan	981	\N	2026-04-27 02:23:28.211	2026-04-27 02:23:28.211	\N	\N	\N	\N	2025-11-06
453	wo67scqd7m21w7ppvy78f801	CO-225-26082	lala khan	981	\N	2026-04-27 02:23:28.211	2026-04-27 02:23:28.211	2026-04-27 02:23:28.221	\N	\N	\N	2025-11-06
454	vjomlixhv3vtfsg5s1ejrmtx	CO-225-26083	rekha ben	3900	\N	2026-04-27 02:23:28.638	2026-04-27 02:23:28.638	\N	\N	\N	\N	2025-11-06
455	vjomlixhv3vtfsg5s1ejrmtx	CO-225-26083	rekha ben	3900	\N	2026-04-27 02:23:28.638	2026-04-27 02:23:28.638	2026-04-27 02:23:28.645	\N	\N	\N	2025-11-06
456	jnfpdsiz1em1g2btujqynwuk	CO-225-26084	MIHIR SONI	141	\N	2026-04-27 02:23:29.238	2026-04-27 02:23:29.238	\N	\N	\N	\N	2025-11-06
457	jnfpdsiz1em1g2btujqynwuk	CO-225-26084	MIHIR SONI	141	\N	2026-04-27 02:23:29.238	2026-04-27 02:23:29.238	2026-04-27 02:23:29.247	\N	\N	\N	2025-11-06
462	x8swmwyx6f7bei629z6mfw4o	CO-225-26087	PRITA	2994	\N	2026-04-27 02:23:30.588	2026-04-27 02:23:30.588	\N	\N	\N	\N	2025-11-06
463	x8swmwyx6f7bei629z6mfw4o	CO-225-26087	PRITA	2994	\N	2026-04-27 02:23:30.588	2026-04-27 02:23:30.588	2026-04-27 02:23:30.595	\N	\N	\N	2025-11-06
468	kqikw8hdsmqef8vg5hu7ee27	CO-225-26090	HET VAIDYA	3022	\N	2026-04-27 02:23:31.944	2026-04-27 02:23:31.944	\N	\N	\N	\N	2025-11-06
469	kqikw8hdsmqef8vg5hu7ee27	CO-225-26090	HET VAIDYA	3022	\N	2026-04-27 02:23:31.944	2026-04-27 02:23:31.944	2026-04-27 02:23:31.952	\N	\N	\N	2025-11-06
474	iposows9wlel1ikh4ukeopf8	CO-225-26093	LOVE SHAH	805	\N	2026-04-27 02:23:33.323	2026-04-27 02:23:33.323	\N	\N	\N	\N	2025-11-06
475	iposows9wlel1ikh4ukeopf8	CO-225-26093	LOVE SHAH	805	\N	2026-04-27 02:23:33.323	2026-04-27 02:23:33.323	2026-04-27 02:23:33.331	\N	\N	\N	2025-11-06
482	ljktcqy2c0mav69rh7107gub	CO-225-26097	devansh	5217	\N	2026-04-27 02:23:35.077	2026-04-27 02:23:35.077	\N	\N	\N	\N	2025-11-06
483	ljktcqy2c0mav69rh7107gub	CO-225-26097	devansh	5217	\N	2026-04-27 02:23:35.077	2026-04-27 02:23:35.077	2026-04-27 02:23:35.085	\N	\N	\N	2025-11-06
488	vn4l5zvvwjgo33txthgatq78	CO-225-26100	jagdish	5950	\N	2026-04-27 02:23:36.453	2026-04-27 02:23:36.453	\N	\N	\N	\N	2025-11-06
489	vn4l5zvvwjgo33txthgatq78	CO-225-26100	jagdish	5950	\N	2026-04-27 02:23:36.453	2026-04-27 02:23:36.453	2026-04-27 02:23:36.46	\N	\N	\N	2025-11-06
494	bbfo7arp5u4m0ar8aw4xq8g2	CO-225-26103	MISS SAIYAD	326	\N	2026-04-27 02:23:37.792	2026-04-27 02:23:37.792	\N	\N	\N	\N	2025-11-06
495	bbfo7arp5u4m0ar8aw4xq8g2	CO-225-26103	MISS SAIYAD	326	\N	2026-04-27 02:23:37.792	2026-04-27 02:23:37.792	2026-04-27 02:23:37.799	\N	\N	\N	2025-11-06
498	a39llb80weo81u8ky1cbmsnr	CO-225-26105	tasmiyah	770	\N	2026-04-27 02:23:38.647	2026-04-27 02:23:38.647	\N	\N	\N	\N	2025-11-06
499	a39llb80weo81u8ky1cbmsnr	CO-225-26105	tasmiyah	770	\N	2026-04-27 02:23:38.647	2026-04-27 02:23:38.647	2026-04-27 02:23:38.662	\N	\N	\N	2025-11-06
504	v4dosz271j51vgbj1gqhc35t	CO-225-26108	alapna	1249	\N	2026-04-27 02:23:39.935	2026-04-27 02:23:39.935	\N	\N	\N	\N	2025-11-06
505	v4dosz271j51vgbj1gqhc35t	CO-225-26108	alapna	1249	\N	2026-04-27 02:23:39.935	2026-04-27 02:23:39.935	2026-04-27 02:23:39.942	\N	\N	\N	2025-11-06
510	imxgtgkku74fvxyptc6awq2v	CO-225-26111	SUJATA	2099	\N	2026-04-27 02:23:41.359	2026-04-27 02:23:41.359	\N	\N	\N	\N	2025-11-06
511	imxgtgkku74fvxyptc6awq2v	CO-225-26111	SUJATA	2099	\N	2026-04-27 02:23:41.359	2026-04-27 02:23:41.359	2026-04-27 02:23:41.367	\N	\N	\N	2025-11-06
518	kqybv8yt7epp2qr0m6juxer6	CO-225-26115	joel	750	\N	2026-04-27 02:23:43.061	2026-04-27 02:23:43.061	\N	\N	\N	\N	2025-11-06
519	kqybv8yt7epp2qr0m6juxer6	CO-225-26115	joel	750	\N	2026-04-27 02:23:43.061	2026-04-27 02:23:43.061	2026-04-27 02:23:43.068	\N	\N	\N	2025-11-06
524	e1nuef886mf7woxkvg5fmgxe	CO-225-26118	DOGDOM TRUST	2298	\N	2026-04-27 02:23:44.358	2026-04-27 02:23:44.358	\N	\N	\N	\N	2025-11-06
525	e1nuef886mf7woxkvg5fmgxe	CO-225-26118	DOGDOM TRUST	2298	\N	2026-04-27 02:23:44.358	2026-04-27 02:23:44.358	2026-04-27 02:23:44.365	\N	\N	\N	2025-11-06
530	llsqq14e4fxw7j0lq45f76pq	CO-225-26121	SARIKA BHATT	2372	\N	2026-04-27 02:23:45.596	2026-04-27 02:23:45.596	\N	\N	\N	\N	2025-11-06
531	llsqq14e4fxw7j0lq45f76pq	CO-225-26121	SARIKA BHATT	2372	\N	2026-04-27 02:23:45.596	2026-04-27 02:23:45.596	2026-04-27 02:23:45.603	\N	\N	\N	2025-11-06
536	mtk0hsnczonmes3srajzpy7u	CO-225-26124	ravi joshi	1769	\N	2026-04-27 02:23:46.818	2026-04-27 02:23:46.818	\N	\N	\N	\N	2025-11-07
537	mtk0hsnczonmes3srajzpy7u	CO-225-26124	ravi joshi	1769	\N	2026-04-27 02:23:46.818	2026-04-27 02:23:46.818	2026-04-27 02:23:46.825	\N	\N	\N	2025-11-07
538	r474o53r0i0kl312zpbi6io0	CO-225-26125	fram mam	530	\N	2026-04-27 02:23:47.366	2026-04-27 02:23:47.366	\N	\N	\N	\N	2025-11-07
539	r474o53r0i0kl312zpbi6io0	CO-225-26125	fram mam	530	\N	2026-04-27 02:23:47.366	2026-04-27 02:23:47.366	2026-04-27 02:23:47.375	\N	\N	\N	2025-11-07
544	xeawnovezuqtzulubksygkgq	CO-225-26128	Maulika Hely	11494	\N	2026-04-27 02:23:48.616	2026-04-27 02:23:48.616	\N	\N	\N	\N	2025-11-07
545	xeawnovezuqtzulubksygkgq	CO-225-26128	Maulika Hely	11494	\N	2026-04-27 02:23:48.616	2026-04-27 02:23:48.616	2026-04-27 02:23:48.624	\N	\N	\N	2025-11-07
550	c9w26jsy7hqcqhzvqfwsdegj	CO-225-26131	rachana daga	188	\N	2026-04-27 02:23:50.003	2026-04-27 02:23:50.003	\N	\N	\N	\N	2025-11-07
551	c9w26jsy7hqcqhzvqfwsdegj	CO-225-26131	rachana daga	188	\N	2026-04-27 02:23:50.003	2026-04-27 02:23:50.003	2026-04-27 02:23:50.012	\N	\N	\N	2025-11-07
556	l1grxogl2qry90y0964bgnew	CO-225-26134	NANDITA GHOSH	267	\N	2026-04-27 02:23:51.206	2026-04-27 02:23:51.206	\N	\N	\N	\N	2025-11-07
557	l1grxogl2qry90y0964bgnew	CO-225-26134	NANDITA GHOSH	267	\N	2026-04-27 02:23:51.206	2026-04-27 02:23:51.206	2026-04-27 02:23:51.213	\N	\N	\N	2025-11-07
394	sti9jnukms1v6nnacug0iyvi	CO-225-26053	deval ben	2992	\N	2026-04-27 02:23:13.026	2026-04-27 02:23:13.026	\N	\N	\N	\N	2025-11-05
395	sti9jnukms1v6nnacug0iyvi	CO-225-26053	deval ben	2992	\N	2026-04-27 02:23:13.026	2026-04-27 02:23:13.026	2026-04-27 02:23:13.033	\N	\N	\N	2025-11-05
398	cnnn3prz2jynn9srqnzh1ldr	CO-225-26055	HETAL MAM	710	\N	2026-04-27 02:23:14.469	2026-04-27 02:23:14.469	\N	\N	\N	\N	2025-11-05
399	cnnn3prz2jynn9srqnzh1ldr	CO-225-26055	HETAL MAM	710	\N	2026-04-27 02:23:14.469	2026-04-27 02:23:14.469	2026-04-27 02:23:14.482	\N	\N	\N	2025-11-05
404	o1yra1hc6w8sx874qbjyi1wv	CO-225-26058	DIPAK SHAH	2277	\N	2026-04-27 02:23:15.763	2026-04-27 02:23:15.763	\N	\N	\N	\N	2025-11-05
405	o1yra1hc6w8sx874qbjyi1wv	CO-225-26058	DIPAK SHAH	2277	\N	2026-04-27 02:23:15.763	2026-04-27 02:23:15.763	2026-04-27 02:23:15.773	\N	\N	\N	2025-11-05
410	zenprebqq3rblalldkfzpski	CO-225-26061	abhishek	615	\N	2026-04-27 02:23:17.028	2026-04-27 02:23:17.028	\N	\N	\N	\N	2025-11-05
411	zenprebqq3rblalldkfzpski	CO-225-26061	abhishek	615	\N	2026-04-27 02:23:17.028	2026-04-27 02:23:17.028	2026-04-27 02:23:17.035	\N	\N	\N	2025-11-05
416	idl99iz3ers98br2j09nlofo	CO-225-26064	deepika ben	255	\N	2026-04-27 02:23:18.466	2026-04-27 02:23:18.466	\N	\N	\N	\N	2025-11-05
417	idl99iz3ers98br2j09nlofo	CO-225-26064	deepika ben	255	\N	2026-04-27 02:23:18.466	2026-04-27 02:23:18.466	2026-04-27 02:23:18.477	\N	\N	\N	2025-11-05
420	pqofqkel6ulgrzvgyy31a9hw	CO-225-26066	prashant udani	3044	\N	2026-04-27 02:23:19.419	2026-04-27 02:23:19.419	\N	\N	\N	\N	2025-11-05
421	pqofqkel6ulgrzvgyy31a9hw	CO-225-26066	prashant udani	3044	\N	2026-04-27 02:23:19.419	2026-04-27 02:23:19.419	2026-04-27 02:23:19.432	\N	\N	\N	2025-11-05
422	oe9oyniyu2g28r4ooqp5m0ic	CO-225-26067	MAHI PANCHAL	2360	\N	2026-04-27 02:23:20.246	2026-04-27 02:23:20.246	\N	\N	\N	\N	2025-11-05
423	oe9oyniyu2g28r4ooqp5m0ic	CO-225-26067	MAHI PANCHAL	2360	\N	2026-04-27 02:23:20.246	2026-04-27 02:23:20.246	2026-04-27 02:23:20.257	\N	\N	\N	2025-11-05
428	gwg7ek0xfr0w4y5mt881219h	CO-225-26070	HEENA RANA	4100	\N	2026-04-27 02:23:22.005	2026-04-27 02:23:22.005	\N	\N	\N	\N	2025-11-05
429	gwg7ek0xfr0w4y5mt881219h	CO-225-26070	HEENA RANA	4100	\N	2026-04-27 02:23:22.005	2026-04-27 02:23:22.005	2026-04-27 02:23:22.012	\N	\N	\N	2025-11-05
436	hmnbqo0se4r1zucgt33nrzyc	CO-225-26074	TUSHAR	1440	\N	2026-04-27 02:23:24.471	2026-04-27 02:23:24.471	\N	\N	\N	\N	2025-11-05
437	hmnbqo0se4r1zucgt33nrzyc	CO-225-26074	TUSHAR	1440	\N	2026-04-27 02:23:24.471	2026-04-27 02:23:24.471	2026-04-27 02:23:24.478	\N	\N	\N	2025-11-05
442	bzknawwg0nwu494qk3o7cpha	CO-225-26077	ANUPAMA	3315	\N	2026-04-27 02:23:25.832	2026-04-27 02:23:25.832	\N	\N	\N	\N	2025-11-06
443	bzknawwg0nwu494qk3o7cpha	CO-225-26077	ANUPAMA	3315	\N	2026-04-27 02:23:25.832	2026-04-27 02:23:25.832	2026-04-27 02:23:25.839	\N	\N	\N	2025-11-06
448	b863vp68mxv4vk1ttvbtgjd6	CO-225-26080	HIMANI	1950	\N	2026-04-27 02:23:27.205	2026-04-27 02:23:27.205	\N	\N	\N	\N	2025-11-06
449	b863vp68mxv4vk1ttvbtgjd6	CO-225-26080	HIMANI	1950	\N	2026-04-27 02:23:27.205	2026-04-27 02:23:27.205	2026-04-27 02:23:27.213	\N	\N	\N	2025-11-06
460	q87dxr0knsw0yy771k20tuzh	CO-225-26086	amit parmar	160	\N	2026-04-27 02:23:30.181	2026-04-27 02:23:30.181	\N	\N	\N	\N	2025-11-06
461	q87dxr0knsw0yy771k20tuzh	CO-225-26086	amit parmar	160	\N	2026-04-27 02:23:30.181	2026-04-27 02:23:30.181	2026-04-27 02:23:30.189	\N	\N	\N	2025-11-06
464	lq7fn3r5b0fl8smaj2j47mao	CO-225-26088	masoom charitable trust	12750	\N	2026-04-27 02:23:30.977	2026-04-27 02:23:30.977	\N	\N	\N	\N	2025-11-06
465	lq7fn3r5b0fl8smaj2j47mao	CO-225-26088	masoom charitable trust	12750	\N	2026-04-27 02:23:30.977	2026-04-27 02:23:30.977	2026-04-27 02:23:30.985	\N	\N	\N	2025-11-06
470	khjf1jfwuqqkv1kcbck79l6k	CO-225-26091	hitesh	2205	\N	2026-04-27 02:23:32.362	2026-04-27 02:23:32.362	\N	\N	\N	\N	2025-11-06
471	khjf1jfwuqqkv1kcbck79l6k	CO-225-26091	hitesh	2205	\N	2026-04-27 02:23:32.362	2026-04-27 02:23:32.362	2026-04-27 02:23:32.369	\N	\N	\N	2025-11-06
480	n3ur51s9fuu6gqxd2b9miq5p	CO-225-26096	niti dave	7274	\N	2026-04-27 02:23:34.667	2026-04-27 02:23:34.667	\N	\N	\N	\N	2025-11-06
481	n3ur51s9fuu6gqxd2b9miq5p	CO-225-26096	niti dave	7274	\N	2026-04-27 02:23:34.667	2026-04-27 02:23:34.667	2026-04-27 02:23:34.674	\N	\N	\N	2025-11-06
486	pzn6d1wb30wt0oicfsczk63q	CO-225-26099	jaymin	3690	\N	2026-04-27 02:23:36.046	2026-04-27 02:23:36.046	\N	\N	\N	\N	2025-11-06
487	pzn6d1wb30wt0oicfsczk63q	CO-225-26099	jaymin	3690	\N	2026-04-27 02:23:36.046	2026-04-27 02:23:36.046	2026-04-27 02:23:36.054	\N	\N	\N	2025-11-06
492	of831sqpqularmfsv0go52gq	CO-225-26102	raj	250	\N	2026-04-27 02:23:37.371	2026-04-27 02:23:37.371	\N	\N	\N	\N	2025-11-06
493	of831sqpqularmfsv0go52gq	CO-225-26102	raj	250	\N	2026-04-27 02:23:37.371	2026-04-27 02:23:37.371	2026-04-27 02:23:37.379	\N	\N	\N	2025-11-06
502	alafo8ntwzn3fy0kmqo8ecx3	CO-225-26107	paridhi	234	\N	2026-04-27 02:23:39.55	2026-04-27 02:23:39.55	\N	\N	\N	\N	2025-11-06
503	alafo8ntwzn3fy0kmqo8ecx3	CO-225-26107	paridhi	234	\N	2026-04-27 02:23:39.55	2026-04-27 02:23:39.55	2026-04-27 02:23:39.56	\N	\N	\N	2025-11-06
512	r5xoziccsxecd0v4pyashpek	CO-225-26112	shipra zha	3843	\N	2026-04-27 02:23:41.758	2026-04-27 02:23:41.758	\N	\N	\N	\N	2025-11-06
513	r5xoziccsxecd0v4pyashpek	CO-225-26112	shipra zha	3843	\N	2026-04-27 02:23:41.758	2026-04-27 02:23:41.758	2026-04-27 02:23:41.766	\N	\N	\N	2025-11-06
516	dfitznaq9hes7x0gje711eoj	CO-225-26114	MONIKA PANCHOLI	2099	\N	2026-04-27 02:23:42.547	2026-04-27 02:23:42.547	\N	\N	\N	\N	2025-11-06
517	dfitznaq9hes7x0gje711eoj	CO-225-26114	MONIKA PANCHOLI	2099	\N	2026-04-27 02:23:42.547	2026-04-27 02:23:42.547	2026-04-27 02:23:42.555	\N	\N	\N	2025-11-06
520	wqbnvffdai86omwftypeu334	CO-225-26116	VIDHI MAM	4800	\N	2026-04-27 02:23:43.411	2026-04-27 02:23:43.411	\N	\N	\N	\N	2025-11-06
521	wqbnvffdai86omwftypeu334	CO-225-26116	VIDHI MAM	4800	\N	2026-04-27 02:23:43.411	2026-04-27 02:23:43.411	2026-04-27 02:23:43.42	\N	\N	\N	2025-11-06
526	magqqcn2jd8ic3yut8eouyn2	CO-225-26119	HITESHBHAI	2124	\N	2026-04-27 02:23:44.782	2026-04-27 02:23:44.782	\N	\N	\N	\N	2025-11-06
527	magqqcn2jd8ic3yut8eouyn2	CO-225-26119	HITESHBHAI	2124	\N	2026-04-27 02:23:44.782	2026-04-27 02:23:44.782	2026-04-27 02:23:44.789	\N	\N	\N	2025-11-06
532	ynl9sk7ocxjd27sm8s0egywz	CO-225-26122	rahul chauhan	109	\N	2026-04-27 02:23:46.011	2026-04-27 02:23:46.011	\N	\N	\N	\N	2025-11-06
533	ynl9sk7ocxjd27sm8s0egywz	CO-225-26122	rahul chauhan	109	\N	2026-04-27 02:23:46.011	2026-04-27 02:23:46.011	2026-04-27 02:23:46.018	\N	\N	\N	2025-11-06
542	pulvkbec07g99rdmkk1xft6c	CO-225-26127	Dhawal Rajput	614	\N	2026-04-27 02:23:48.214	2026-04-27 02:23:48.214	\N	\N	\N	\N	2025-11-07
543	pulvkbec07g99rdmkk1xft6c	CO-225-26127	Dhawal Rajput	614	\N	2026-04-27 02:23:48.214	2026-04-27 02:23:48.214	2026-04-27 02:23:48.221	\N	\N	\N	2025-11-07
546	whz355attol6zcisubxfbt47	CO-225-26129	umang	160	\N	2026-04-27 02:23:49.09	2026-04-27 02:23:49.09	\N	\N	\N	\N	2025-11-07
547	whz355attol6zcisubxfbt47	CO-225-26129	umang	160	\N	2026-04-27 02:23:49.09	2026-04-27 02:23:49.09	2026-04-27 02:23:49.098	\N	\N	\N	2025-11-07
552	gxuuqvrbr2l30dyi83qg2luz	CO-225-26132	parth mehta	1964	\N	2026-04-27 02:23:50.432	2026-04-27 02:23:50.432	\N	\N	\N	\N	2025-11-07
553	gxuuqvrbr2l30dyi83qg2luz	CO-225-26132	parth mehta	1964	\N	2026-04-27 02:23:50.432	2026-04-27 02:23:50.432	2026-04-27 02:23:50.439	\N	\N	\N	2025-11-07
\.


--
-- Data for Name: follow_up_lists_customer_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_customer_lnk (id, follow_up_list_id, customer_id, follow_up_list_ord) FROM stdin;
1	1	41	1
3	3	43	1
181	89	312	1
5	5	45	1
620	371	703	1
7	7	47	1
621	372	704	1
184	91	315	1
11	11	51	1
186	92	317	1
15	15	41	2
187	93	318	1
627	376	461	2
190	95	249	1
633	379	713	1
193	97	318	2
197	99	312	2
30	2	116	1
31	16	116	2
201	101	249	2
205	103	312	3
207	90	325	1
208	100	325	2
209	104	325	3
210	105	249	3
212	96	326	1
213	102	326	2
46	4	131	1
214	106	326	3
215	107	318	3
49	6	134	1
217	94	327	1
218	98	327	2
219	108	327	3
220	109	236	1
221	110	328	1
57	12	142	1
59	17	234	1
223	111	330	1
224	112	331	1
63	20	233	1
226	113	333	1
227	114	334	1
229	115	336	1
66	23	237	1
230	116	337	1
68	24	239	1
232	117	339	1
233	118	340	1
72	27	243	1
75	29	246	1
235	119	342	1
77	30	248	1
236	120	343	1
238	121	345	1
81	33	252	1
239	122	346	1
83	34	254	1
84	35	255	1
87	37	258	1
241	123	348	1
89	38	260	1
242	124	349	1
244	125	351	1
245	126	352	1
94	41	262	1
96	42	264	1
97	43	265	1
99	44	267	1
248	128	355	1
250	129	357	1
251	130	358	1
253	131	360	1
254	132	361	1
107	49	272	1
109	50	274	1
256	133	363	1
257	134	364	1
259	135	366	1
114	53	276	1
260	136	367	1
116	54	278	1
117	55	279	1
119	56	281	1
120	57	282	1
262	137	369	1
122	58	284	1
123	59	285	1
263	138	370	1
125	60	287	1
265	139	372	1
266	140	373	1
268	141	375	1
131	63	289	1
269	142	376	1
271	143	378	1
272	144	379	1
274	145	381	1
139	67	293	1
275	146	382	1
277	147	384	1
278	148	385	1
280	149	387	1
281	150	388	1
284	152	391	1
286	153	393	1
287	154	394	1
289	155	396	1
290	156	397	1
292	157	399	1
293	158	400	1
295	159	402	1
296	160	403	1
298	161	405	1
299	162	406	1
301	163	408	1
302	164	409	1
304	165	411	1
305	166	412	1
307	167	414	1
308	168	415	1
310	169	417	1
311	170	418	1
313	171	420	1
314	172	421	1
316	173	423	1
317	174	424	1
319	175	426	1
320	176	427	1
322	177	429	1
323	178	430	1
324	179	431	1
325	180	432	1
328	182	432	2
330	181	435	1
331	183	435	2
332	184	436	1
334	185	438	1
335	186	439	1
337	187	441	1
338	188	442	1
341	190	445	1
343	191	447	1
344	192	448	1
346	193	450	1
347	194	255	2
349	36	451	1
350	195	451	2
351	196	452	1
353	197	454	1
354	198	455	1
623	373	706	1
363	204	464	1
631	378	711	1
374	211	475	1
375	212	476	1
381	216	289	2
639	383	719	1
390	221	488	1
391	222	489	1
645	387	725	1
397	226	243	2
646	388	726	1
399	28	495	1
400	227	495	2
401	228	496	1
409	233	504	1
415	237	510	1
416	238	511	1
654	393	734	1
427	245	522	1
428	246	523	1
655	394	735	1
434	250	458	2
443	255	535	1
444	256	536	1
660	397	740	1
458	265	550	1
465	269	554	1
466	270	555	1
661	398	741	1
474	275	563	1
475	276	564	1
483	281	572	1
484	282	573	1
489	285	578	1
490	286	579	1
670	404	750	1
498	291	587	1
499	292	588	1
507	297	596	1
508	298	597	1
678	409	758	1
513	301	602	1
514	302	603	1
679	410	759	1
520	306	609	1
522	307	611	1
523	308	612	1
687	415	767	1
531	313	620	1
532	314	621	1
688	416	768	1
541	320	630	1
694	420	651	2
549	325	638	1
550	326	639	1
559	332	648	1
696	335	774	1
567	337	656	1
568	338	657	1
697	421	774	2
573	341	662	1
574	342	663	1
698	422	775	1
582	347	671	1
583	348	672	1
588	351	677	1
594	355	683	1
597	357	686	1
598	358	687	1
706	427	783	1
605	362	627	2
707	428	784	1
617	369	700	1
618	370	701	1
716	433	790	1
719	199	791	1
720	435	791	2
721	436	792	1
729	441	800	1
730	442	801	1
740	448	808	1
748	453	816	1
758	459	823	1
759	460	824	1
765	464	352	2
774	469	836	1
775	470	837	1
783	475	845	1
791	479	849	1
792	480	850	1
800	485	858	1
801	486	859	1
809	491	867	1
810	492	868	1
818	497	876	1
824	501	882	1
825	502	883	1
833	507	891	1
840	511	895	1
841	512	896	1
847	516	645	2
854	520	442	3
864	525	912	1
865	526	913	1
873	531	921	1
874	532	922	1
882	537	930	1
885	539	933	1
888	541	936	1
889	542	937	1
895	546	943	1
903	551	951	1
904	552	952	1
912	557	960	1
357	200	458	1
624	374	707	1
365	205	466	1
366	206	467	1
377	213	478	1
378	214	479	1
626	375	709	1
387	219	485	1
388	220	486	1
629	203	710	1
396	225	494	1
403	229	498	1
404	230	499	1
630	377	710	2
410	234	505	1
636	381	716	1
637	382	717	1
419	240	514	1
422	242	517	1
642	385	722	1
430	247	525	1
431	248	526	1
643	386	723	1
440	253	532	1
441	254	533	1
449	259	541	1
450	260	542	1
651	391	731	1
452	261	544	1
453	262	545	1
652	392	732	1
459	266	511	2
461	239	551	1
462	267	551	2
463	268	552	1
663	399	743	1
471	273	560	1
472	274	561	1
664	400	744	1
480	279	569	1
481	280	570	1
501	293	590	1
502	294	591	1
672	405	752	1
510	299	599	1
511	300	600	1
673	406	753	1
519	305	608	1
526	310	615	1
534	315	623	1
535	316	624	1
681	411	761	1
543	321	632	1
544	322	633	1
682	412	762	1
552	327	641	1
553	328	642	1
561	333	650	1
562	334	651	1
690	417	770	1
570	339	659	1
571	340	660	1
691	418	771	1
579	345	668	1
580	346	669	1
586	350	675	1
703	425	780	1
591	353	680	1
592	354	681	1
704	426	781	1
600	359	689	1
609	364	692	1
611	365	694	1
612	366	695	1
709	429	786	1
712	151	787	1
713	431	787	2
714	432	788	1
723	437	794	1
724	438	795	1
732	443	803	1
739	447	807	1
745	451	813	1
746	452	814	1
749	454	747	2
751	403	817	1
752	455	817	2
753	456	818	1
761	461	826	1
762	462	827	1
771	467	833	1
772	468	834	1
780	473	842	1
781	474	843	1
794	481	852	1
795	482	853	1
803	487	861	1
804	488	862	1
812	493	870	1
813	494	871	1
819	498	877	1
827	503	885	1
828	504	886	1
836	68	892	1
837	509	892	2
838	510	893	1
846	515	901	1
849	331	902	1
850	517	902	2
851	518	903	1
861	523	909	1
862	524	910	1
870	529	918	1
871	530	919	1
879	535	927	1
880	536	928	1
883	538	931	1
891	543	939	1
892	544	940	1
900	549	948	1
901	550	949	1
909	555	957	1
910	556	958	1
634	380	714	1
360	202	461	1
368	207	469	1
369	208	470	1
640	384	720	1
371	209	472	1
372	210	473	1
380	215	481	1
383	64	482	1
384	217	482	2
385	218	483	1
648	389	728	1
393	223	491	1
394	224	492	1
649	390	729	1
406	231	501	1
407	232	502	1
412	235	507	1
413	236	508	1
657	395	737	1
424	243	519	1
425	244	520	1
658	396	738	1
433	249	528	1
436	201	529	1
437	251	529	2
438	252	530	1
446	257	538	1
447	258	539	1
666	401	746	1
455	263	547	1
456	264	548	1
667	402	747	1
468	271	557	1
469	272	558	1
477	277	566	1
478	278	567	1
675	407	755	1
486	283	575	1
487	284	576	1
676	408	756	1
492	287	581	1
493	288	582	1
495	289	584	1
496	290	585	1
684	413	764	1
504	295	593	1
505	296	594	1
685	414	765	1
516	303	605	1
517	304	606	1
525	309	614	1
528	311	617	1
529	312	618	1
693	419	773	1
537	317	626	1
538	318	627	1
700	423	777	1
546	323	635	1
547	324	636	1
701	424	778	1
555	329	644	1
556	330	645	1
565	336	654	1
710	430	388	2
576	343	665	1
577	344	666	1
585	349	674	1
589	352	678	1
717	434	455	2
595	356	684	1
601	360	442	2
726	439	797	1
614	367	697	1
615	368	698	1
727	440	798	1
733	444	514	2
735	241	804	1
736	445	804	2
737	446	805	1
742	449	810	1
743	450	811	1
755	457	820	1
756	458	821	1
764	463	829	1
767	127	830	1
768	465	830	2
769	466	831	1
777	471	839	1
778	472	840	1
784	476	627	3
786	319	846	1
787	363	846	2
788	477	846	3
789	478	847	1
797	483	855	1
798	484	856	1
806	489	864	1
807	490	865	1
815	495	873	1
816	496	874	1
821	499	879	1
822	500	880	1
830	505	888	1
831	506	889	1
834	508	293	2
843	513	898	1
844	514	899	1
853	519	905	1
856	189	906	1
857	361	906	2
858	521	906	3
859	522	907	1
867	527	915	1
868	528	916	1
876	533	924	1
877	534	925	1
886	540	934	1
894	545	942	1
897	547	945	1
898	548	946	1
906	553	954	1
907	554	955	1
\.


--
-- Data for Name: follow_up_lists_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow_up_lists_store_lnk (id, follow_up_list_id, store_id) FROM stdin;
1	1	3
2	2	4
3	3	1
4	4	2
5	5	1
6	6	2
7	7	1
11	11	3
12	12	4
15	15	3
16	16	4
17	17	3
20	20	2
23	23	1
24	24	2
27	27	3
28	28	4
29	29	3
30	30	4
33	33	1
34	34	2
35	35	1
36	36	2
37	37	1
38	38	2
41	41	3
42	42	4
43	43	3
44	44	4
49	49	3
50	50	4
53	53	3
54	54	4
55	55	3
56	56	4
57	57	3
58	58	4
59	59	3
60	60	4
63	63	1
64	64	2
67	67	1
68	68	2
89	89	1
90	90	2
91	91	1
92	92	2
93	93	3
94	94	4
95	95	1
96	96	2
97	97	3
98	98	4
99	99	1
100	100	2
101	101	1
102	102	2
103	103	1
104	104	2
105	105	1
106	106	2
107	107	3
108	108	4
109	109	4
110	110	1
111	111	2
112	112	1
113	113	2
114	114	1
115	115	2
116	116	1
117	117	2
118	118	1
119	119	2
120	120	1
121	121	2
122	122	1
123	123	2
124	124	1
125	125	2
126	126	1
127	127	2
128	128	1
129	129	2
130	130	1
131	131	2
132	132	1
133	133	2
134	134	1
135	135	2
136	136	1
137	137	2
138	138	1
139	139	2
140	140	1
141	141	2
142	142	1
143	143	2
144	144	1
145	145	2
146	146	1
147	147	2
148	148	1
149	149	2
150	150	1
151	151	2
152	152	1
153	153	2
154	154	1
155	155	2
156	156	1
157	157	2
158	158	1
159	159	2
160	160	1
161	161	2
162	162	1
163	163	2
164	164	1
165	165	2
166	166	1
167	167	2
168	168	1
169	169	2
170	170	1
171	171	2
172	172	1
173	173	2
174	174	1
175	175	2
176	176	1
177	177	2
178	178	1
179	179	2
180	180	1
181	181	2
182	182	1
183	183	2
184	184	1
185	185	2
186	186	1
187	187	2
188	188	1
189	189	2
190	190	1
191	191	2
192	192	1
193	193	2
194	194	1
195	195	2
196	196	1
197	197	2
198	198	1
199	199	2
200	200	1
201	201	2
202	202	1
203	203	2
204	204	1
205	205	2
206	206	1
207	207	2
208	208	1
209	209	2
210	210	1
211	211	2
212	212	1
213	213	2
214	214	1
215	215	2
216	216	1
217	217	2
218	218	1
219	219	2
220	220	1
221	221	2
222	222	1
223	223	2
224	224	1
225	225	2
232	232	1
233	233	2
236	236	1
237	237	2
244	244	1
245	245	2
252	252	1
253	253	2
258	258	1
259	259	2
264	264	1
265	265	2
272	272	1
273	273	2
278	278	1
279	279	2
284	284	1
285	285	2
288	288	1
289	289	2
290	290	1
291	291	2
296	296	1
297	297	2
304	304	1
305	305	2
312	312	1
313	313	2
318	318	1
319	319	2
324	324	1
325	325	2
330	330	1
331	331	2
336	336	1
337	337	2
344	344	1
345	345	2
352	352	1
353	353	2
356	356	1
357	357	2
360	360	1
361	361	2
368	368	1
369	369	2
226	226	1
227	227	2
228	228	1
229	229	2
238	238	1
239	239	2
246	246	1
247	247	2
250	250	1
251	251	2
256	256	1
257	257	2
270	270	1
271	271	2
276	276	1
277	277	2
282	282	1
283	283	2
286	286	1
287	287	2
292	292	1
293	293	2
298	298	1
299	299	2
302	302	1
303	303	2
306	306	1
307	307	2
308	308	1
309	309	2
314	314	1
315	315	2
320	320	1
321	321	2
326	326	1
327	327	2
332	332	1
333	333	2
338	338	1
339	339	2
342	342	1
343	343	2
348	348	1
349	349	2
358	358	1
359	359	2
362	362	1
363	363	2
370	370	1
371	371	2
230	230	1
231	231	2
234	234	1
235	235	2
240	240	1
241	241	2
242	242	1
243	243	2
248	248	1
249	249	2
254	254	1
255	255	2
260	260	1
261	261	2
262	262	1
263	263	2
266	266	1
267	267	2
268	268	1
269	269	2
274	274	1
275	275	2
280	280	1
281	281	2
294	294	1
295	295	2
300	300	1
301	301	2
310	310	1
311	311	2
316	316	1
317	317	2
322	322	1
323	323	2
328	328	1
329	329	2
334	334	1
335	335	2
340	340	1
341	341	2
346	346	1
347	347	2
350	350	1
351	351	2
354	354	1
355	355	2
364	364	1
365	365	2
366	366	1
367	367	2
372	372	1
373	373	2
374	374	1
375	375	2
376	376	1
377	377	2
378	378	1
379	379	2
380	380	1
381	381	2
382	382	1
383	383	2
384	384	1
385	385	2
386	386	1
387	387	2
388	388	1
389	389	2
390	390	1
391	391	2
392	392	1
393	393	2
394	394	1
395	395	2
396	396	1
397	397	2
398	398	1
399	399	2
400	400	1
401	401	2
402	402	1
403	403	2
404	404	1
405	405	2
406	406	1
407	407	2
408	408	1
409	409	2
410	410	1
411	411	2
412	412	1
413	413	2
414	414	1
415	415	2
416	416	1
417	417	2
418	418	1
419	419	2
420	420	1
421	421	2
422	422	1
423	423	2
424	424	1
425	425	2
426	426	1
427	427	2
428	428	1
429	429	2
430	430	1
431	431	2
432	432	1
433	433	2
434	434	1
435	435	2
436	436	1
437	437	2
438	438	1
439	439	2
440	440	1
441	441	2
442	442	1
443	443	2
444	444	1
445	445	2
446	446	1
447	447	2
448	448	1
449	449	2
450	450	1
451	451	2
452	452	1
453	453	2
454	454	1
455	455	2
456	456	1
457	457	2
458	458	1
459	459	2
460	460	1
461	461	2
462	462	1
463	463	2
464	464	1
465	465	2
466	466	1
467	467	2
468	468	1
469	469	2
470	470	1
471	471	2
472	472	1
473	473	2
474	474	1
475	475	2
476	476	1
477	477	2
478	478	1
479	479	2
480	480	1
481	481	2
482	482	1
483	483	2
484	484	1
485	485	2
486	486	1
487	487	2
488	488	1
489	489	2
490	490	1
491	491	2
492	492	1
493	493	2
494	494	1
495	495	2
496	496	1
497	497	2
498	498	1
499	499	2
500	500	1
501	501	2
502	502	1
503	503	2
504	504	1
505	505	2
506	506	1
507	507	2
508	508	1
509	509	2
514	514	1
515	515	2
522	522	1
523	523	2
528	528	1
529	529	2
534	534	1
535	535	2
540	540	1
541	541	2
548	548	1
549	549	2
554	554	1
555	555	2
510	510	1
511	511	2
518	518	1
519	519	2
524	524	1
525	525	2
530	530	1
531	531	2
536	536	1
537	537	2
538	538	1
539	539	2
544	544	1
545	545	2
550	550	1
551	551	2
556	556	1
557	557	2
512	512	1
513	513	2
516	516	1
517	517	2
520	520	1
521	521	2
526	526	1
527	527	2
532	532	1
533	533	2
542	542	1
543	543	2
546	546	1
547	547	2
552	552	1
553	553	2
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
1	1	1
21	21	3
24	24	4
25	25	2
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
120	lsqrafuw427r1ohkazp9aufg	Sunt facere aute aut	2026-04-20	Male	2026-04-25 12:30:22.336	2026-04-25 12:30:22.336	\N	\N	\N	\N
121	lsqrafuw427r1ohkazp9aufg	Sunt facere aute aut	2026-04-20	Male	2026-04-25 12:30:22.336	2026-04-25 12:30:22.336	2026-04-25 12:30:22.48	\N	\N	\N
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
154	nyt9cp01fctngux69090h1lj	dafsd	2026-04-25	Male	2026-04-25 14:53:16.824	2026-04-25 14:53:16.824	\N	\N	\N	\N
155	nyt9cp01fctngux69090h1lj	dafsd	2026-04-25	Male	2026-04-25 14:53:16.824	2026-04-25 14:53:16.824	2026-04-25 14:53:16.841	\N	\N	\N
156	l7t7yu9lcsyuqcjvxkgok23k	fds	2026-04-27	Male	2026-04-25 15:00:35.623	2026-04-25 15:00:35.623	\N	\N	\N	\N
157	l7t7yu9lcsyuqcjvxkgok23k	fds	2026-04-27	Male	2026-04-25 15:00:35.623	2026-04-25 15:00:35.623	2026-04-25 15:00:35.662	\N	\N	\N
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
175	121	17
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
209	155	2
210	156	1
211	157	2
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
155	121	8
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
189	155	4
190	156	3
191	157	4
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
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staffs (id, document_id, phone, name, email, password, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Piyush Koshti	piyush.koshti@gmail.com	$2a$10$naJXGuYwhdNWhYzVkDMW1eQ/RgXKc2l2gwZ6eQ4ezslL906hEW0F2	2026-03-04 23:31:16.692	2026-04-25 23:45:36.834	\N	1	1	\N
21	s0ey1xnxazy0xoo8zlypjl8f	6353108476	Piyush Koshti	piyush.koshti@gmail.com	$2a$10$SxfsBCA7zbdIPg6UWXY.cO5orN.IAYmKxxsoGzIRkpO54xWjX5n0q	2026-03-04 23:31:16.692	2026-04-25 23:45:36.834	2026-04-25 23:45:36.889	1	1	\N
13	j99vxal8d1axy6bok88nhyp2	8527419630	Chelsea Kelley	vacogu@mailinator.com	$2a$10$79xsqTL5C.WmnxQX.bDDT.CH1beO9246KISfZII3.vaaf.lwdXvai	2026-04-25 22:46:18.723	2026-04-26 00:15:03.329	\N	1	1	\N
23	j99vxal8d1axy6bok88nhyp2	8527419630	Chelsea Kelley	vacogu@mailinator.com	$2a$10$LR19NWa6jPdQsy5d5ETtiOOfh7Ku1skTKKM5HTtZaji6tqFjWxCRi	2026-04-25 22:46:18.723	2026-04-26 00:15:03.329	2026-04-26 00:15:03.355	1	1	\N
4	c1lo1lc87rqnj50sdnfnmyaw	9865327410	Ankit	ankit@gmail.com	$2a$10$2NxBi0F.mtVXqInJsLqPwOu1eNeFCvNlT0ucgD5Yk4zvfenzhMQYe	2026-03-06 00:04:43.571	2026-04-26 00:17:14.554	\N	1	1	\N
25	c1lo1lc87rqnj50sdnfnmyaw	9865327410	Ankit	ankit@gmail.com	$2a$10$kgT2BgDhssX2CKWjnAV5MeOkX2AFU3nbMEu4gYXN2pomRBfFNHbjy	2026-03-06 00:04:43.571	2026-04-26 00:17:14.554	2026-04-26 00:17:14.573	1	1	\N
15	v6a6bxfp4cu8nj6nf201b930	9865320147	Hiram Preston	qizefar@mailinator.com	$2a$10$nEKA8BlBUvEeIxAmu07qW.I5weCGpjyYzSHDE2qMqR/T0PFpSDH5a	2026-04-25 22:47:13.865	2026-04-26 00:17:54.398	\N	1	1	\N
26	v6a6bxfp4cu8nj6nf201b930	9865320147	Hiram Preston	qizefar@mailinator.com	$2a$10$zhpT9zrLMlEvQOskvBT8NeB7kXBvFLWNsM/pJ.Aov1pQsCg82eZRq	2026-04-25 22:47:13.865	2026-04-26 00:17:54.398	2026-04-26 00:17:54.411	1	1	\N
27	ky2ydfdzunsaeumj3589og6x	9876543210	admin	admin@admin.com	$2a$10$/X55RQphUnTdt0OrUZPbpOflrm2QbSalIJG9nHvyN5qKBCAyFuto.	2026-04-26 00:45:41.789	2026-04-26 00:45:41.789	\N	1	1	\N
28	ky2ydfdzunsaeumj3589og6x	9876543210	admin	admin@admin.com	$2a$10$cnd7kExdWXletefIrWNTTeFN9nJFFgRFMcynsYTo68cXyx0S7Wbvm	2026-04-26 00:45:41.789	2026-04-26 00:45:41.789	2026-04-26 00:45:41.899	1	1	\N
\.


--
-- Data for Name: staffs_store_lnk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staffs_store_lnk (id, staff_id, store_id) FROM stdin;
21	13	3
23	15	1
25	1	1
26	21	2
27	4	3
29	23	4
31	25	4
32	26	2
33	27	5
34	28	8
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stores (id, document_id, location, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	x752755qfnorz24c0ggsvivh	Science City	Mery Shop	2026-02-26 00:16:32.501	2026-02-26 00:16:32.501	\N	1	1	\N
2	x752755qfnorz24c0ggsvivh	Science City	Mery Shop	2026-02-26 00:16:32.501	2026-02-26 00:16:32.501	2026-02-26 00:16:32.55	1	1	\N
3	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	\N	1	1	\N
4	lezkgxvcg34pvuwuyojojaoo	Motera	Mery Pet Shop	2026-02-26 00:17:00.194	2026-02-26 00:17:00.194	2026-02-26 00:17:00.224	1	1	\N
5	ozrcfanrmei1xscmpzmcgho5	Admin	admin	2026-04-21 22:08:11.651	2026-04-25 22:48:18.888	\N	1	1	\N
8	ozrcfanrmei1xscmpzmcgho5	Admin	admin	2026-04-21 22:08:11.651	2026-04-25 22:48:18.888	2026-04-25 22:48:18.919	1	1	\N
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
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vexl7tsbxhbul6wcsgzihz77	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	270697f0b8070b6e11c1e5fb510f6045e28a055244bf286aa4c63883fe54592ad2eb29e7fb0f6dd2af9b3bbbccfdfc1e734d4c1cc429171d9ebae68fa6ea3013	v1:04175fd068048820ee72f3b4fa1d990d:128984bf1494fa13705ed9395f4bf184d42a6f9d3531cedf43b60c678eb88820bcf8f820b284dbaa837831bad75402b9d6a16e83af0a8a44bdad480b9e5e0e3731732113f0f49bcee6bb8abd660a85e8687e2bddfa7df784f8d2c015a9e67217673034bd77890e8c113cb3029b3dcf65c9c38c4dbd3b10c22c9396c23d1d5d975507c2d913cce960a3fcc6551153628a7d5231aeaead7638651f0dfdac1fbd861ddecd39ef3703597192c8426bc1fe06beac24bd01fbace953f134a4295821573b02671060ab7d0cf7ada87fe8a5b0e3018830aad00d5cd95fd19264cf37ca114e5e268fd33aed1678f7d9ee12ac7f7dccc1b5fe507c9cf24e2c7c205c0c5ea6:513843890c18bfe3fdd762398de5c8af	\N	\N	\N	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	2026-02-22 10:52:18.926	\N	\N	\N
2	du8k956jtmflnwkimdxp1neb	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	ca1091a8da7c9f4c65f3566a2690aba1356fe0beefedd03e86c5dfcc4fd41abd8c291c25c56c015ad47eeb0c249601982ed0622e6d41767e5a47dfaa359c26b5	v1:1a587af3b902fdb323167a10b08ad1e5:46cd52581cf2f50fe659afb82aa1362f9946815460cc8ef8baaf035ebda5ffd218c6658b587b49b3068a274fcf22a7be426e00fb76ac1c0c059b0a8ee88e5c71109ed5e60ea2f2e63a2096dda1bed483c17efcde04da5767de7746603f678d9bfe4575f410a83a7bfa27679d4b2a2c2aa3cbb8b2ca09a289b21aa9bd9869a2fb915fbccb0a74757d2bf1e4bc7c944ecdafe7d1161f168d3c2b76dd55d6c9bc2764c2aa3097468e2549485ca5d5907b9ce51c322cd8ae1e783066669b60032b464a4f68ef14b447375ded05aa74a728ecc1c8f377448d9aefb3bd05a570f110f6c171fd12c2f36e75067c639d98e701dccc0db072760017cca7b0a2ef68db3bc1:8f66226084b82464cefd1b852bcabc95	\N	\N	\N	2026-02-22 10:52:18.938	2026-02-22 10:52:18.938	2026-02-22 10:52:18.939	\N	\N	\N
3	hu4w0irlefv6ywk5i7xihs7l	pet-shop		custom	033008267c902af428d843ca64bd8e9af1cdf9c4e6febfef67995c6cc02d31acc7542cf9126a9fac6b4d803318ac2a2659e5a5cc9a1c7c76015e8b23b53dccdb	v1:8ea1075f905b281fc5ab1062e17ec737:b8451661e386ce1adce54edf07bd0c2847192fdb6f5ff19e656f32b6f0093b2213c5cd12a00a0f7f8a5fc6cd5ea534311c681c5df45cf20dd27dd2384e398a7e77eea4a673ae44b45a1c8433c02172e7c44d4b496f57c9d1781296814312d8b7fe3da4e556c61a6f8637904d3c446ac8cd0f067d2e2aa9a1d9056d835e703bd15581678b74adb7a974806a437b2171cf3f66c79c41138d7df8be5aeb50d95c06c13cea27b460ee474278391010833386402167294bbe43ed3933ec1ca00ab22481ce2af0f7ee006de27bc0ab9cbdbc19ff1bda31e9abc1461f8653bf9c33a24753f8372c06cc22f0b55d91bc5a8213ae096972adec0878d47bfaa2a777a25772:4754e4f317be3869558e3ddbab552d06	2026-04-28 08:53:05.853	\N	\N	2026-02-22 11:10:29.251	2026-04-28 08:53:05.853	2026-02-22 11:10:29.251	\N	\N	\N
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
3	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::breed.breed":{"kind":"collectionType","collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::breed.breed","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"breeds"}}},"apiName":"breed","globalId":"Breed","uid":"api::breed.breed","modelType":"contentType","__schema__":{"collectionName":"breeds","info":{"singularName":"breed","pluralName":"breeds","displayName":"Breed"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"breed","actions":{},"lifecycles":{}},"api::customer.customer":{"kind":"collectionType","collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customer.customer","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customers"}}},"apiName":"customer","globalId":"Customer","uid":"api::customer.customer","modelType":"contentType","__schema__":{"collectionName":"customers","info":{"singularName":"customer","pluralName":"customers","displayName":"Customer"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"mobileNumber":{"type":"string","required":true,"unique":true,"regex":"^(\\\\+91[\\\\-\\\\s]?)?[6-9]\\\\d{9}$"},"name":{"type":"string"},"email":{"type":"string"},"instagramId":{"type":"string"},"address":{"type":"string"},"area":{"type":"string"},"city":{"type":"string"},"zip":{"type":"integer"},"Note":{"type":"string"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"pets":{"type":"relation","relation":"oneToMany","target":"api::pet.pet"},"follow_up_lists":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","mappedBy":"customer"},"customet_follow_up":{"type":"relation","relation":"oneToOne","target":"api::customet-follow-up.customet-follow-up","mappedBy":"customer"},"customet_status":{"type":"relation","relation":"oneToOne","target":"api::customet-status.customet-status"}},"kind":"collectionType"},"modelName":"customer","actions":{},"lifecycles":{}},"api::customet-follow-up.customet-follow-up":{"kind":"collectionType","collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-follow-up.customet-follow-up","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_follow_ups"}}},"apiName":"customet-follow-up","globalId":"CustometFollowUp","uid":"api::customet-follow-up.customet-follow-up","modelType":"contentType","__schema__":{"collectionName":"customet_follow_ups","info":{"singularName":"customet-follow-up","pluralName":"customet-follow-ups","displayName":"custometFollowUp"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"customer":{"type":"relation","relation":"oneToOne","target":"api::customer.customer","inversedBy":"customet_follow_up"},"follow_ups":{"type":"relation","relation":"manyToMany","target":"api::follow-up-list.follow-up-list","inversedBy":"customet_follow_ups"},"staff":{"type":"relation","relation":"oneToOne","target":"api::staff.staff"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Count":{"type":"integer","default":0},"FollowUpDate":{"type":"date"},"isFollowed":{"type":"boolean","default":false},"note":{"type":"text"}},"kind":"collectionType"},"modelName":"customet-follow-up","actions":{},"lifecycles":{}},"api::customet-status.customet-status":{"kind":"collectionType","collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::customet-status.customet-status","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"customet_statuses"}}},"apiName":"customet-status","globalId":"CustometStatus","uid":"api::customet-status.customet-status","modelType":"contentType","__schema__":{"collectionName":"customet_statuses","info":{"singularName":"customet-status","pluralName":"customet-statuses","displayName":"customerStatus"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"value":{"type":"string"},"color":{"type":"string"},"textColor":{"type":"string"},"borderColor":{"type":"string"}},"kind":"collectionType"},"modelName":"customet-status","actions":{},"lifecycles":{}},"api::follow-up-list.follow-up-list":{"kind":"collectionType","collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::follow-up-list.follow-up-list","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"follow_up_lists"}}},"apiName":"follow-up-list","globalId":"FollowUpList","uid":"api::follow-up-list.follow-up-list","modelType":"contentType","__schema__":{"collectionName":"follow_up_lists","info":{"singularName":"follow-up-list","pluralName":"follow-up-lists","displayName":"FollowUpList"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tillSequence":{"type":"string"},"CustomerName":{"type":"string"},"billAmount":{"type":"biginteger"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"customer":{"type":"relation","relation":"manyToOne","target":"api::customer.customer","inversedBy":"follow_up_lists"},"Notes":{"type":"text"},"customet_follow_ups":{"type":"relation","relation":"manyToMany","target":"api::customet-follow-up.customet-follow-up","mappedBy":"follow_ups"},"billDate":{"type":"date"}},"kind":"collectionType"},"modelName":"follow-up-list","actions":{},"lifecycles":{}},"api::general-diary.general-diary":{"kind":"collectionType","collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::general-diary.general-diary","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"general_diaries"}}},"apiName":"general-diary","globalId":"GeneralDiary","uid":"api::general-diary.general-diary","modelType":"contentType","__schema__":{"collectionName":"general_diaries","info":{"singularName":"general-diary","pluralName":"general-diaries","displayName":"GeneralDiary"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"Note":{"type":"richtext"}},"kind":"collectionType"},"modelName":"general-diary","actions":{},"lifecycles":{}},"api::pet.pet":{"kind":"collectionType","collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet.pet","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pets"}}},"apiName":"pet","globalId":"Pet","uid":"api::pet.pet","modelType":"contentType","__schema__":{"collectionName":"pets","info":{"singularName":"pet","pluralName":"pets","displayName":"Pet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"birthDate":{"type":"date"},"gender":{"type":"enumeration","enum":["Male","Female"]},"pet_type":{"type":"relation","relation":"oneToOne","target":"api::pet-type.pet-type"},"breed":{"type":"relation","relation":"oneToOne","target":"api::breed.breed"}},"kind":"collectionType"},"modelName":"pet","actions":{},"lifecycles":{}},"api::pet-type.pet-type":{"kind":"collectionType","collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::pet-type.pet-type","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"pet_types"}}},"apiName":"pet-type","globalId":"PetType","uid":"api::pet-type.pet-type","modelType":"contentType","__schema__":{"collectionName":"pet_types","info":{"singularName":"pet-type","pluralName":"pet-types","displayName":"PetType"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Name":{"type":"string"},"value":{"type":"string"}},"kind":"collectionType"},"modelName":"pet-type","actions":{},"lifecycles":{}},"api::staff.staff":{"kind":"collectionType","collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::staff.staff","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"staffs"}}},"apiName":"staff","globalId":"Staff","uid":"api::staff.staff","modelType":"contentType","__schema__":{"collectionName":"staffs","info":{"singularName":"staff","pluralName":"staffs","displayName":"Staff"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"phone":{"type":"biginteger","required":true,"unique":true},"name":{"type":"string"},"email":{"type":"email"},"password":{"type":"password"},"store":{"type":"relation","relation":"oneToOne","target":"api::store.store"}},"kind":"collectionType"},"modelName":"staff","actions":{},"lifecycles":{}},"api::store.store":{"kind":"collectionType","collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::store.store","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stores"}}},"apiName":"store","globalId":"Store","uid":"api::store.store","modelType":"contentType","__schema__":{"collectionName":"stores","info":{"singularName":"store","pluralName":"stores","displayName":"Store"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Location":{"type":"string"},"Name":{"type":"string"}},"kind":"collectionType"},"modelName":"store","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
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
36	plugin_upload_metrics	{"weeklySchedule":"1 43 22 * * 4","lastWeeklyUpdate":1776964381755}	object	\N	\N
50	plugin_content_manager_configuration_content_types::api::customet-status.customet-status	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"textColor":{"edit":{"label":"textColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"textColor","searchable":true,"sortable":true}},"borderColor":{"edit":{"label":"borderColor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"borderColor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","name","value"],"edit":[[{"name":"name","size":6},{"name":"value","size":6}],[{"name":"color","size":6},{"name":"textColor","size":6}],[{"name":"borderColor","size":6}]]},"uid":"api::customet-status.customet-status"}	object	\N	\N
54	plugin_content_manager_configuration_content_types::api::breed.breed	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","value","createdAt"],"edit":[[{"name":"label","size":6},{"name":"value","size":6}]]},"uid":"api::breed.breed"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::pet-type.pet-type	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"value":{"edit":{"label":"value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"value","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","value","createdAt"],"edit":[[{"name":"Name","size":6},{"name":"value","size":6}]]},"uid":"api::pet-type.pet-type"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::pet.pet	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"birthDate":{"edit":{"label":"birthDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"birthDate","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"pet_type":{"edit":{"label":"pet_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"pet_type","searchable":true,"sortable":true}},"breed":{"edit":{"label":"breed","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"breed","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","birthDate","gender"],"edit":[[{"name":"name","size":4},{"name":"birthDate","size":4},{"name":"gender","size":4}],[{"name":"breed","size":4},{"name":"pet_type","size":4}]]},"uid":"api::pet.pet"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::customer.customer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortOrder":"ASC","defaultSortBy":"mobileNumber"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"mobileNumber":{"edit":{"label":"mobileNumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mobileNumber","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"instagramId":{"edit":{"label":"instagramId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instagramId","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"area":{"edit":{"label":"area","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"area","searchable":true,"sortable":true}},"city":{"edit":{"label":"city","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"city","searchable":true,"sortable":true}},"zip":{"edit":{"label":"zip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"zip","searchable":true,"sortable":true}},"Note":{"edit":{"label":"Note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Note","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"pets":{"edit":{"label":"pets","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"pets","searchable":false,"sortable":false}},"follow_up_lists":{"edit":{"label":"follow_up_lists","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_up_lists","searchable":false,"sortable":false}},"customet_follow_up":{"edit":{"label":"customet_follow_up","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_up","searchable":true,"sortable":true}},"customet_status":{"edit":{"label":"customet_status","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"customet_status","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"mobileNumber","size":4},{"name":"name","size":4},{"name":"email","size":4}],[{"name":"instagramId","size":4},{"name":"store","size":4}],[{"name":"area","size":4},{"name":"zip","size":4},{"name":"city","size":4}],[{"name":"address","size":6},{"name":"Note","size":6}],[{"name":"customet_status","size":4},{"name":"follow_up_lists","size":4},{"name":"customet_follow_up","size":4}],[{"name":"pets","size":6}]],"list":["createdBy","mobileNumber","name","email"]},"uid":"api::customer.customer"}	object	\N	\N
52	plugin_content_manager_configuration_content_types::api::follow-up-list.follow-up-list	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"tillSequence","defaultSortBy":"tillSequence","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tillSequence":{"edit":{"label":"tillSequence","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tillSequence","searchable":true,"sortable":true}},"CustomerName":{"edit":{"label":"CustomerName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CustomerName","searchable":true,"sortable":true}},"billAmount":{"edit":{"label":"billAmount","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billAmount","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"Notes":{"edit":{"label":"Notes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Notes","searchable":true,"sortable":true}},"customet_follow_ups":{"edit":{"label":"customet_follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"customet_follow_ups","searchable":false,"sortable":false}},"billDate":{"edit":{"label":"billDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"billDate","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"tillSequence","size":4},{"name":"CustomerName","size":4},{"name":"billAmount","size":4}],[{"name":"store","size":4},{"name":"customer","size":4},{"name":"billDate","size":4}],[{"name":"Notes","size":6},{"name":"customet_follow_ups","size":6}]],"list":["id","tillSequence","CustomerName","billAmount"]},"uid":"api::follow-up-list.follow-up-list"}	object	\N	\N
58	plugin_content_manager_configuration_content_types::api::general-diary.general-diary	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"Note":{"edit":{"label":"Note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Note","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","store","createdAt","updatedAt"],"edit":[[{"name":"store","size":6}],[{"name":"Note","size":12}]]},"uid":"api::general-diary.general-diary"}	object	\N	\N
53	plugin_content_manager_configuration_content_types::api::customet-follow-up.customet-follow-up	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"customer":{"edit":{"label":"customer","description":"","placeholder":"","visible":true,"editable":true,"mainField":"mobileNumber"},"list":{"label":"customer","searchable":true,"sortable":true}},"follow_ups":{"edit":{"label":"follow_ups","description":"","placeholder":"","visible":true,"editable":true,"mainField":"tillSequence"},"list":{"label":"follow_ups","searchable":false,"sortable":false}},"staff":{"edit":{"label":"staff","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"staff","searchable":true,"sortable":true}},"store":{"edit":{"label":"store","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Location"},"list":{"label":"store","searchable":true,"sortable":true}},"Count":{"edit":{"label":"Count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Count","searchable":true,"sortable":true}},"FollowUpDate":{"edit":{"label":"FollowUpDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FollowUpDate","searchable":true,"sortable":true}},"isFollowed":{"edit":{"label":"isFollowed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isFollowed","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"customer","size":6},{"name":"follow_ups","size":6}],[{"name":"staff","size":6},{"name":"store","size":6},{"name":"Count","size":4},{"name":"isFollowed","size":4},{"name":"FollowUpDate","size":4}],[{"name":"note","size":12}]],"list":["id","customer","createdAt","follow_ups"]},"uid":"api::customet-follow-up.customet-follow-up"}	object	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::store.store	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Location","defaultSortBy":"Location","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Location","Name","createdAt"],"edit":[[{"name":"Location","size":6},{"name":"Name","size":6}]]},"uid":"api::store.store"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
78	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"breeds","indexes":[{"name":"breeds_documents_idx","columns":["document_id","locale","published_at"]},{"name":"breeds_created_by_id_fk","columns":["created_by_id"]},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"breeds_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"breeds_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customers","indexes":[{"name":"customers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customers_created_by_id_fk","columns":["created_by_id"]},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mobile_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"city","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"zip","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_follow_ups","indexes":[{"name":"customet_follow_ups_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_follow_ups_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_follow_ups_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"follow_up_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_followed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"customet_statuses","indexes":[{"name":"customet_statuses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"]},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"customet_statuses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"customet_statuses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"border_color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"follow_up_lists","indexes":[{"name":"follow_up_lists_documents_idx","columns":["document_id","locale","published_at"]},{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"]},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"follow_up_lists_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"follow_up_lists_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"till_sequence","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_amount","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"notes","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bill_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"general_diaries","indexes":[{"name":"general_diaries_documents_idx","columns":["document_id","locale","published_at"]},{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"]},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"general_diaries_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"general_diaries_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pets","indexes":[{"name":"pets_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pets_created_by_id_fk","columns":["created_by_id"]},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"birth_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"pet_types","indexes":[{"name":"pet_types_documents_idx","columns":["document_id","locale","published_at"]},{"name":"pet_types_created_by_id_fk","columns":["created_by_id"]},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pet_types_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pet_types_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"staffs","indexes":[{"name":"staffs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"staffs_created_by_id_fk","columns":["created_by_id"]},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"staffs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"staffs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stores","indexes":[{"name":"stores_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stores_created_by_id_fk","columns":["created_by_id"]},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stores_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stores_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_store_lnk","indexes":[{"name":"customers_store_lnk_fk","columns":["customer_id"]},{"name":"customers_store_lnk_ifk","columns":["store_id"]},{"name":"customers_store_lnk_uq","columns":["customer_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_store_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_pets_lnk","indexes":[{"name":"customers_pets_lnk_fk","columns":["customer_id"]},{"name":"customers_pets_lnk_ifk","columns":["pet_id"]},{"name":"customers_pets_lnk_uq","columns":["customer_id","pet_id"],"type":"unique"},{"name":"customers_pets_lnk_ofk","columns":["pet_ord"]}],"foreignKeys":[{"name":"customers_pets_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_pets_lnk_ifk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customers_customet_status_lnk","indexes":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"]},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"]},{"name":"customers_customet_status_lnk_uq","columns":["customer_id","customet_status_id"],"type":"unique"}],"foreignKeys":[{"name":"customers_customet_status_lnk_fk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"},{"name":"customers_customet_status_lnk_ifk","columns":["customet_status_id"],"referencedColumns":["id"],"referencedTable":"customet_statuses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_status_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_customer_lnk","indexes":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"]},{"name":"customet_follow_ups_customer_lnk_uq","columns":["customet_follow_up_id","customer_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_customer_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_follow_ups_lnk","indexes":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"]},{"name":"customet_follow_ups_follow_ups_lnk_uq","columns":["customet_follow_up_id","follow_up_list_id"],"type":"unique"},{"name":"customet_follow_ups_follow_ups_lnk_ofk","columns":["follow_up_list_ord"]},{"name":"customet_follow_ups_follow_ups_lnk_oifk","columns":["customet_follow_up_ord"]}],"foreignKeys":[{"name":"customet_follow_ups_follow_ups_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_follow_ups_lnk_ifk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customet_follow_up_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_staff_lnk","indexes":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"]},{"name":"customet_follow_ups_staff_lnk_uq","columns":["customet_follow_up_id","staff_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_staff_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_staff_lnk_ifk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"customet_follow_ups_store_lnk","indexes":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"]},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"]},{"name":"customet_follow_ups_store_lnk_uq","columns":["customet_follow_up_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"customet_follow_ups_store_lnk_fk","columns":["customet_follow_up_id"],"referencedColumns":["id"],"referencedTable":"customet_follow_ups","onDelete":"CASCADE"},{"name":"customet_follow_ups_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"customet_follow_up_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_store_lnk","indexes":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"]},{"name":"follow_up_lists_store_lnk_uq","columns":["follow_up_list_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"follow_up_lists_store_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"follow_up_lists_customer_lnk","indexes":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"]},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"]},{"name":"follow_up_lists_customer_lnk_uq","columns":["follow_up_list_id","customer_id"],"type":"unique"},{"name":"follow_up_lists_customer_lnk_oifk","columns":["follow_up_list_ord"]}],"foreignKeys":[{"name":"follow_up_lists_customer_lnk_fk","columns":["follow_up_list_id"],"referencedColumns":["id"],"referencedTable":"follow_up_lists","onDelete":"CASCADE"},{"name":"follow_up_lists_customer_lnk_ifk","columns":["customer_id"],"referencedColumns":["id"],"referencedTable":"customers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"follow_up_list_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"customer_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"follow_up_list_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"general_diaries_store_lnk","indexes":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"]},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"]},{"name":"general_diaries_store_lnk_uq","columns":["general_diary_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"general_diaries_store_lnk_fk","columns":["general_diary_id"],"referencedColumns":["id"],"referencedTable":"general_diaries","onDelete":"CASCADE"},{"name":"general_diaries_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"general_diary_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_pet_type_lnk","indexes":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"]},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"]},{"name":"pets_pet_type_lnk_uq","columns":["pet_id","pet_type_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_pet_type_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_pet_type_lnk_ifk","columns":["pet_type_id"],"referencedColumns":["id"],"referencedTable":"pet_types","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pet_type_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pets_breed_lnk","indexes":[{"name":"pets_breed_lnk_fk","columns":["pet_id"]},{"name":"pets_breed_lnk_ifk","columns":["breed_id"]},{"name":"pets_breed_lnk_uq","columns":["pet_id","breed_id"],"type":"unique"}],"foreignKeys":[{"name":"pets_breed_lnk_fk","columns":["pet_id"],"referencedColumns":["id"],"referencedTable":"pets","onDelete":"CASCADE"},{"name":"pets_breed_lnk_ifk","columns":["breed_id"],"referencedColumns":["id"],"referencedTable":"breeds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"breed_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"staffs_store_lnk","indexes":[{"name":"staffs_store_lnk_fk","columns":["staff_id"]},{"name":"staffs_store_lnk_ifk","columns":["store_id"]},{"name":"staffs_store_lnk_uq","columns":["staff_id","store_id"],"type":"unique"}],"foreignKeys":[{"name":"staffs_store_lnk_fk","columns":["staff_id"],"referencedColumns":["id"],"referencedTable":"staffs","onDelete":"CASCADE"},{"name":"staffs_store_lnk_ifk","columns":["store_id"],"referencedColumns":["id"],"referencedTable":"stores","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"staff_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"store_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-04-26 01:21:21.353	a4d13a1ef0436acaff7069c8aff62a312683bede7c86f9cba08dae38ab5ef3c9
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
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ffxgos932gjemyhi1l3b2kfd	Authenticated	Default role given to authenticated user.	authenticated	2026-02-22 10:52:17.407	2026-03-21 08:42:47.202	2026-02-22 10:52:17.407	\N	\N	\N
2	ox2fvqcncsu876dpwsmp5p5x	Public	Default role given to unauthenticated user.	public	2026-02-22 10:52:17.411	2026-04-18 07:12:42.07	2026-02-22 10:52:17.411	\N	\N	\N
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
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 471, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 471, true);


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
-- Name: breeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.breeds_id_seq', 56, true);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: customers_customet_status_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customet_status_lnk_id_seq', 632, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 963, true);


--
-- Name: customers_pets_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_pets_lnk_id_seq', 248, true);


--
-- Name: customers_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_store_lnk_id_seq', 1018, true);


--
-- Name: customet_follow_ups_customer_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_customer_lnk_id_seq', 934, true);


--
-- Name: customet_follow_ups_follow_ups_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_follow_ups_lnk_id_seq', 743, true);


--
-- Name: customet_follow_ups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_id_seq', 628, true);


--
-- Name: customet_follow_ups_staff_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_staff_lnk_id_seq', 105, true);


--
-- Name: customet_follow_ups_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customet_follow_ups_store_lnk_id_seq', 567, true);


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

SELECT pg_catalog.setval('public.follow_up_lists_customer_lnk_id_seq', 912, true);


--
-- Name: follow_up_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_id_seq', 557, true);


--
-- Name: follow_up_lists_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follow_up_lists_store_lnk_id_seq', 557, true);


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

SELECT pg_catalog.setval('public.pets_breed_lnk_id_seq', 243, true);


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_id_seq', 195, true);


--
-- Name: pets_pet_type_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_pet_type_lnk_id_seq', 223, true);


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_id_seq', 28, true);


--
-- Name: staffs_store_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_store_lnk_id_seq', 34, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_id_seq', 8, true);


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

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 79, true);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 79, true);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 3, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 58, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 78, true);


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

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 195, true);


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

SELECT pg_catalog.setval('public.up_permissions_id_seq', 53, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 53, true);


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
-- Name: breeds breeds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_pkey PRIMARY KEY (id);


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
-- PostgreSQL database dump complete
--

\unrestrict viJgIFMMpmUSzSWuGoh59KdNr8htOI8DhJbtHI01dlQ44CJWXRvjXzD66BHUgcA

