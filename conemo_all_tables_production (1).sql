--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.smartphones DROP CONSTRAINT fk_smartphones_participants;
ALTER TABLE ONLY public.bit_core_slides DROP CONSTRAINT fk_slideshows_slides;
ALTER TABLE ONLY public.second_contacts DROP CONSTRAINT fk_second_contacts_participants;
ALTER TABLE ONLY public.logins DROP CONSTRAINT fk_rails_f48fe8df78;
ALTER TABLE ONLY public.lack_of_connectivity_calls DROP CONSTRAINT fk_rails_e4f8c49eab;
ALTER TABLE ONLY public.content_access_events DROP CONSTRAINT fk_rails_c3255fb75a;
ALTER TABLE ONLY public.help_messages DROP CONSTRAINT fk_rails_a6931ad799;
ALTER TABLE ONLY public.session_events DROP CONSTRAINT fk_rails_a3079014ee;
ALTER TABLE ONLY public.scheduled_task_cancellations DROP CONSTRAINT fk_rails_92bbbad8e5;
ALTER TABLE ONLY public.session_events DROP CONSTRAINT fk_rails_899ed6eb43;
ALTER TABLE ONLY public.supervisor_notifications DROP CONSTRAINT fk_rails_8174bc7078;
ALTER TABLE ONLY public.help_request_calls DROP CONSTRAINT fk_rails_77a33304dc;
ALTER TABLE ONLY public.additional_contacts DROP CONSTRAINT fk_rails_705485f5e7;
ALTER TABLE ONLY public.nurse_tasks DROP CONSTRAINT fk_rails_5fd4eda714;
ALTER TABLE ONLY public.content_access_events DROP CONSTRAINT fk_rails_57d1f1a41d;
ALTER TABLE ONLY public.call_to_schedule_final_appointments DROP CONSTRAINT fk_rails_51f79f4894;
ALTER TABLE ONLY public.non_adherence_calls DROP CONSTRAINT fk_rails_4f700d9f78;
ALTER TABLE ONLY public.participant_start_dates DROP CONSTRAINT fk_rails_2544458a2c;
ALTER TABLE ONLY public.scheduled_task_reschedulings DROP CONSTRAINT fk_rails_18665e2f9f;
ALTER TABLE ONLY public.participants DROP CONSTRAINT fk_participants_nurses;
ALTER TABLE ONLY public.lessons DROP CONSTRAINT fk_lessons_slideshows;
ALTER TABLE ONLY public.first_contacts DROP CONSTRAINT fk_first_contacts_participants;
ALTER TABLE ONLY public.first_appointments DROP CONSTRAINT fk_first_appointments_participants;
ALTER TABLE ONLY public.bit_core_content_providers DROP CONSTRAINT fk_content_providers_modules;
ALTER TABLE ONLY public.bit_core_content_modules DROP CONSTRAINT fk_content_modules_tools;
DROP INDEX public.unique_schema_migrations;
DROP INDEX public.index_users_on_reset_password_token;
DROP INDEX public.index_users_on_email;
DROP INDEX public.index_token_auth_configuration_tokens_on_entity_id;
DROP INDEX public.index_token_auth_authentication_tokens_on_value;
DROP INDEX public.index_token_auth_authentication_tokens_on_entity_id;
DROP INDEX public.index_token_auth_authentication_tokens_on_client_uuid;
DROP INDEX public.index_third_contacts_on_participant_id;
DROP INDEX public.index_supervisor_notifications_on_nurse_task_id;
DROP INDEX public.index_supervision_sessions_on_nurse_id;
DROP INDEX public.index_smartphones_on_participant_id;
DROP INDEX public.index_session_events_on_participant_id;
DROP INDEX public.index_session_events_on_lesson_id;
DROP INDEX public.index_second_contacts_on_participant_id;
DROP INDEX public.index_scheduled_task_reschedulings_on_nurse_task_id;
DROP INDEX public.index_scheduled_task_cancellations_on_nurse_task_id;
DROP INDEX public.index_responses_on_content_access_event_id;
DROP INDEX public.index_patient_contacts_on_third_contact_id;
DROP INDEX public.index_patient_contacts_on_second_contact_id;
DROP INDEX public.index_patient_contacts_on_participant_id;
DROP INDEX public.index_patient_contacts_on_first_contact_id;
DROP INDEX public.index_patient_contacts_on_first_appointment_id;
DROP INDEX public.index_participants_on_nurse_id;
DROP INDEX public.index_participant_start_dates_on_participant_id;
DROP INDEX public.index_nurse_tasks_on_participant_id;
DROP INDEX public.index_non_adherence_calls_on_participant_id;
DROP INDEX public.index_logins_on_participant_id;
DROP INDEX public.index_lessons_on_bit_core_slideshow_id;
DROP INDEX public.index_lack_of_connectivity_calls_on_participant_id;
DROP INDEX public.index_help_request_calls_on_participant_id;
DROP INDEX public.index_help_messages_on_participant_id;
DROP INDEX public.index_first_contacts_on_participant_id;
DROP INDEX public.index_first_appointments_on_participant_id;
DROP INDEX public.index_devices_on_uuid;
DROP INDEX public.index_devices_on_device_uuid_and_participant_id;
DROP INDEX public.index_content_access_events_on_participant_id;
DROP INDEX public.index_content_access_events_on_lesson_id;
DROP INDEX public.index_call_to_schedule_final_appointments_on_participant_id;
DROP INDEX public.index_additional_contacts_on_participant_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.token_auth_synchronizable_resources DROP CONSTRAINT token_auth_synchronizable_resources_pkey;
ALTER TABLE ONLY public.token_auth_configuration_tokens DROP CONSTRAINT token_auth_configuration_tokens_pkey;
ALTER TABLE ONLY public.token_auth_authentication_tokens DROP CONSTRAINT token_auth_authentication_tokens_pkey;
ALTER TABLE ONLY public.third_contacts DROP CONSTRAINT third_contacts_pkey;
ALTER TABLE ONLY public.supervisor_notifications DROP CONSTRAINT supervisor_notifications_pkey;
ALTER TABLE ONLY public.supervisor_notes DROP CONSTRAINT supervisor_notes_pkey;
ALTER TABLE ONLY public.supervision_sessions DROP CONSTRAINT supervision_sessions_pkey;
ALTER TABLE ONLY public.smartphones DROP CONSTRAINT smartphones_pkey;
ALTER TABLE ONLY public.session_events DROP CONSTRAINT session_events_pkey;
ALTER TABLE ONLY public.second_contacts DROP CONSTRAINT second_contacts_pkey;
ALTER TABLE ONLY public.scheduled_task_reschedulings DROP CONSTRAINT scheduled_task_reschedulings_pkey;
ALTER TABLE ONLY public.scheduled_task_cancellations DROP CONSTRAINT scheduled_task_cancellations_pkey;
ALTER TABLE ONLY public.responses DROP CONSTRAINT responses_pkey;
ALTER TABLE ONLY public.planned_activities DROP CONSTRAINT planned_activities_pkey;
ALTER TABLE ONLY public.patient_contacts DROP CONSTRAINT patient_contacts_pkey;
ALTER TABLE ONLY public.past_device_assignments DROP CONSTRAINT past_device_assignments_pkey;
ALTER TABLE ONLY public.participants DROP CONSTRAINT participants_pkey;
ALTER TABLE ONLY public.participant_start_dates DROP CONSTRAINT participant_start_dates_pkey;
ALTER TABLE ONLY public.nurse_tasks DROP CONSTRAINT nurse_tasks_pkey;
ALTER TABLE ONLY public.non_adherence_calls DROP CONSTRAINT non_adherence_calls_pkey;
ALTER TABLE ONLY public.logins DROP CONSTRAINT logins_pkey;
ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
ALTER TABLE ONLY public.lack_of_connectivity_calls DROP CONSTRAINT lack_of_connectivity_calls_pkey;
ALTER TABLE ONLY public.help_request_calls DROP CONSTRAINT help_request_calls_pkey;
ALTER TABLE ONLY public.help_messages DROP CONSTRAINT help_messages_pkey;
ALTER TABLE ONLY public.first_contacts DROP CONSTRAINT first_contacts_pkey;
ALTER TABLE ONLY public.first_appointments DROP CONSTRAINT first_appointments_pkey;
ALTER TABLE ONLY public.final_appointments DROP CONSTRAINT final_appointments_pkey;
ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
ALTER TABLE ONLY public.content_access_events DROP CONSTRAINT content_access_events_pkey;
ALTER TABLE ONLY public.call_to_schedule_final_appointments DROP CONSTRAINT call_to_schedule_final_appointments_pkey;
ALTER TABLE ONLY public.bit_core_tools DROP CONSTRAINT bit_core_tools_pkey;
ALTER TABLE ONLY public.bit_core_tools DROP CONSTRAINT bit_core_tool_position;
ALTER TABLE ONLY public.bit_core_slideshows DROP CONSTRAINT bit_core_slideshows_pkey;
ALTER TABLE ONLY public.bit_core_slides DROP CONSTRAINT bit_core_slides_pkey;
ALTER TABLE ONLY public.bit_core_slides DROP CONSTRAINT bit_core_slide_position;
ALTER TABLE ONLY public.bit_core_content_providers DROP CONSTRAINT bit_core_content_providers_pkey;
ALTER TABLE ONLY public.bit_core_content_providers DROP CONSTRAINT bit_core_content_provider_position;
ALTER TABLE ONLY public.bit_core_content_modules DROP CONSTRAINT bit_core_content_modules_pkey;
ALTER TABLE ONLY public.bit_core_content_modules DROP CONSTRAINT bit_core_content_module_position;
ALTER TABLE ONLY public.additional_contacts DROP CONSTRAINT additional_contacts_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.token_auth_synchronizable_resources ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.token_auth_configuration_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.token_auth_authentication_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.third_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.supervisor_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.supervisor_notes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.supervision_sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.smartphones ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.session_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.second_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.scheduled_task_reschedulings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.scheduled_task_cancellations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.responses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.planned_activities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.patient_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.past_device_assignments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.participants ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.participant_start_dates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.nurse_tasks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.non_adherence_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.logins ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.lack_of_connectivity_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.help_request_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.help_messages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.first_contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.first_appointments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.final_appointments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.content_access_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.call_to_schedule_final_appointments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bit_core_tools ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bit_core_slideshows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bit_core_slides ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bit_core_content_providers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bit_core_content_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.additional_contacts ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.token_auth_synchronizable_resources_id_seq;
DROP TABLE public.token_auth_synchronizable_resources;
DROP SEQUENCE public.token_auth_configuration_tokens_id_seq;
DROP TABLE public.token_auth_configuration_tokens;
DROP SEQUENCE public.token_auth_authentication_tokens_id_seq;
DROP TABLE public.token_auth_authentication_tokens;
DROP SEQUENCE public.third_contacts_id_seq;
DROP TABLE public.third_contacts;
DROP SEQUENCE public.supervisor_notifications_id_seq;
DROP TABLE public.supervisor_notifications;
DROP SEQUENCE public.supervisor_notes_id_seq;
DROP TABLE public.supervisor_notes;
DROP SEQUENCE public.supervision_sessions_id_seq;
DROP TABLE public.supervision_sessions;
DROP SEQUENCE public.smartphones_id_seq;
DROP TABLE public.smartphones;
DROP SEQUENCE public.session_events_id_seq;
DROP TABLE public.session_events;
DROP SEQUENCE public.second_contacts_id_seq;
DROP TABLE public.second_contacts;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.scheduled_task_reschedulings_id_seq;
DROP TABLE public.scheduled_task_reschedulings;
DROP SEQUENCE public.scheduled_task_cancellations_id_seq;
DROP TABLE public.scheduled_task_cancellations;
DROP SEQUENCE public.responses_id_seq;
DROP TABLE public.responses;
DROP SEQUENCE public.planned_activities_id_seq;
DROP TABLE public.planned_activities;
DROP SEQUENCE public.patient_contacts_id_seq;
DROP TABLE public.patient_contacts;
DROP SEQUENCE public.past_device_assignments_id_seq;
DROP TABLE public.past_device_assignments;
DROP SEQUENCE public.participants_id_seq;
DROP TABLE public.participants;
DROP SEQUENCE public.participant_start_dates_id_seq;
DROP TABLE public.participant_start_dates;
DROP SEQUENCE public.nurse_tasks_id_seq;
DROP TABLE public.nurse_tasks;
DROP SEQUENCE public.non_adherence_calls_id_seq;
DROP TABLE public.non_adherence_calls;
DROP SEQUENCE public.logins_id_seq;
DROP TABLE public.logins;
DROP SEQUENCE public.lessons_id_seq;
DROP TABLE public.lessons;
DROP SEQUENCE public.lack_of_connectivity_calls_id_seq;
DROP TABLE public.lack_of_connectivity_calls;
DROP SEQUENCE public.help_request_calls_id_seq;
DROP TABLE public.help_request_calls;
DROP SEQUENCE public.help_messages_id_seq;
DROP TABLE public.help_messages;
DROP SEQUENCE public.first_contacts_id_seq;
DROP TABLE public.first_contacts;
DROP SEQUENCE public.first_appointments_id_seq;
DROP TABLE public.first_appointments;
DROP SEQUENCE public.final_appointments_id_seq;
DROP TABLE public.final_appointments;
DROP SEQUENCE public.devices_id_seq;
DROP TABLE public.devices;
DROP SEQUENCE public.content_access_events_id_seq;
DROP TABLE public.content_access_events;
DROP SEQUENCE public.call_to_schedule_final_appointments_id_seq;
DROP TABLE public.call_to_schedule_final_appointments;
DROP SEQUENCE public.bit_core_tools_id_seq;
DROP TABLE public.bit_core_tools;
DROP SEQUENCE public.bit_core_slideshows_id_seq;
DROP TABLE public.bit_core_slideshows;
DROP SEQUENCE public.bit_core_slides_id_seq;
DROP TABLE public.bit_core_slides;
DROP SEQUENCE public.bit_core_content_providers_id_seq;
DROP TABLE public.bit_core_content_providers;
DROP SEQUENCE public.bit_core_content_modules_id_seq;
DROP TABLE public.bit_core_content_modules;
DROP SEQUENCE public.additional_contacts_id_seq;
DROP TABLE public.additional_contacts;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: additional_contacts; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE additional_contacts (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    scheduled_at timestamp without time zone NOT NULL,
    kind character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.additional_contacts OWNER TO "CONEMO_user";

--
-- Name: additional_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE additional_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_contacts_id_seq OWNER TO "CONEMO_user";

--
-- Name: additional_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE additional_contacts_id_seq OWNED BY additional_contacts.id;


--
-- Name: bit_core_content_modules; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE bit_core_content_modules (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "position" integer DEFAULT 1 NOT NULL,
    bit_core_tool_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bit_core_content_modules OWNER TO "CONEMO_user";

--
-- Name: bit_core_content_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE bit_core_content_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bit_core_content_modules_id_seq OWNER TO "CONEMO_user";

--
-- Name: bit_core_content_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE bit_core_content_modules_id_seq OWNED BY bit_core_content_modules.id;


--
-- Name: bit_core_content_providers; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE bit_core_content_providers (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    source_content_type character varying(255),
    source_content_id integer,
    bit_core_content_module_id integer NOT NULL,
    "position" integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bit_core_content_providers OWNER TO "CONEMO_user";

--
-- Name: bit_core_content_providers_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE bit_core_content_providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bit_core_content_providers_id_seq OWNER TO "CONEMO_user";

--
-- Name: bit_core_content_providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE bit_core_content_providers_id_seq OWNED BY bit_core_content_providers.id;


--
-- Name: bit_core_slides; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE bit_core_slides (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    "position" integer DEFAULT 1 NOT NULL,
    bit_core_slideshow_id integer NOT NULL,
    type character varying(255),
    is_title_visible boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bit_core_slides OWNER TO "CONEMO_user";

--
-- Name: bit_core_slides_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE bit_core_slides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bit_core_slides_id_seq OWNER TO "CONEMO_user";

--
-- Name: bit_core_slides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE bit_core_slides_id_seq OWNED BY bit_core_slides.id;


--
-- Name: bit_core_slideshows; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE bit_core_slideshows (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bit_core_slideshows OWNER TO "CONEMO_user";

--
-- Name: bit_core_slideshows_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE bit_core_slideshows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bit_core_slideshows_id_seq OWNER TO "CONEMO_user";

--
-- Name: bit_core_slideshows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE bit_core_slideshows_id_seq OWNED BY bit_core_slideshows.id;


--
-- Name: bit_core_tools; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE bit_core_tools (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "position" integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.bit_core_tools OWNER TO "CONEMO_user";

--
-- Name: bit_core_tools_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE bit_core_tools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bit_core_tools_id_seq OWNER TO "CONEMO_user";

--
-- Name: bit_core_tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE bit_core_tools_id_seq OWNED BY bit_core_tools.id;


--
-- Name: call_to_schedule_final_appointments; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE call_to_schedule_final_appointments (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    final_appointment_at timestamp without time zone NOT NULL,
    final_appointment_location character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.call_to_schedule_final_appointments OWNER TO "CONEMO_user";

--
-- Name: call_to_schedule_final_appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE call_to_schedule_final_appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.call_to_schedule_final_appointments_id_seq OWNER TO "CONEMO_user";

--
-- Name: call_to_schedule_final_appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE call_to_schedule_final_appointments_id_seq OWNED BY call_to_schedule_final_appointments.id;


--
-- Name: content_access_events; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE content_access_events (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    accessed_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    lesson_id integer NOT NULL,
    day_in_treatment_accessed integer NOT NULL,
    lesson_datum_guid character varying(255),
    dialogue_datum_guid character varying(255),
    uuid character varying NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.content_access_events OWNER TO "CONEMO_user";

--
-- Name: content_access_events_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE content_access_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_access_events_id_seq OWNER TO "CONEMO_user";

--
-- Name: content_access_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE content_access_events_id_seq OWNED BY content_access_events.id;


--
-- Name: devices; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE devices (
    id integer NOT NULL,
    uuid character varying NOT NULL,
    device_uuid character varying NOT NULL,
    manufacturer character varying NOT NULL,
    model character varying NOT NULL,
    platform character varying NOT NULL,
    device_version character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    participant_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    last_seen_at timestamp without time zone NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.devices OWNER TO "CONEMO_user";

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devices_id_seq OWNER TO "CONEMO_user";

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE devices_id_seq OWNED BY devices.id;


--
-- Name: final_appointments; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE final_appointments (
    id integer NOT NULL,
    appointment_at timestamp without time zone,
    appointment_location character varying(255),
    phone_returned boolean NOT NULL,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    participant_id integer
);


ALTER TABLE public.final_appointments OWNER TO "CONEMO_user";

--
-- Name: final_appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE final_appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.final_appointments_id_seq OWNER TO "CONEMO_user";

--
-- Name: final_appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE final_appointments_id_seq OWNED BY final_appointments.id;


--
-- Name: first_appointments; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE first_appointments (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    appointment_at timestamp without time zone NOT NULL,
    appointment_location character varying(255),
    session_length integer NOT NULL,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.first_appointments OWNER TO "CONEMO_user";

--
-- Name: first_appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE first_appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.first_appointments_id_seq OWNER TO "CONEMO_user";

--
-- Name: first_appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE first_appointments_id_seq OWNED BY first_appointments.id;


--
-- Name: first_contacts; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE first_contacts (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    first_appointment_at timestamp without time zone NOT NULL,
    first_appointment_location character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.first_contacts OWNER TO "CONEMO_user";

--
-- Name: first_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE first_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.first_contacts_id_seq OWNER TO "CONEMO_user";

--
-- Name: first_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE first_contacts_id_seq OWNED BY first_contacts.id;


--
-- Name: help_messages; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE help_messages (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    message text NOT NULL,
    staff_message_guid character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    sent_at timestamp without time zone NOT NULL,
    uuid character varying NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.help_messages OWNER TO "CONEMO_user";

--
-- Name: help_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE help_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_messages_id_seq OWNER TO "CONEMO_user";

--
-- Name: help_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE help_messages_id_seq OWNED BY help_messages.id;


--
-- Name: help_request_calls; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE help_request_calls (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    explanation character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.help_request_calls OWNER TO "CONEMO_user";

--
-- Name: help_request_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE help_request_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_request_calls_id_seq OWNER TO "CONEMO_user";

--
-- Name: help_request_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE help_request_calls_id_seq OWNED BY help_request_calls.id;


--
-- Name: lack_of_connectivity_calls; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE lack_of_connectivity_calls (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    explanation character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.lack_of_connectivity_calls OWNER TO "CONEMO_user";

--
-- Name: lack_of_connectivity_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE lack_of_connectivity_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lack_of_connectivity_calls_id_seq OWNER TO "CONEMO_user";

--
-- Name: lack_of_connectivity_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE lack_of_connectivity_calls_id_seq OWNED BY lack_of_connectivity_calls.id;


--
-- Name: lessons; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE lessons (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    bit_core_slideshow_id integer,
    day_in_treatment integer DEFAULT 1 NOT NULL,
    locale character varying(255) DEFAULT 'en'::character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    guid character varying(255) NOT NULL,
    has_activity_planning boolean DEFAULT false NOT NULL,
    pre_planning_content character varying,
    post_planning_content character varying,
    non_planning_content character varying,
    feedback_after_days integer,
    planning_response_yes_content character varying,
    planning_response_no_content character varying,
    non_planning_response_content character varying,
    activity_choices text
);


ALTER TABLE public.lessons OWNER TO "CONEMO_user";

--
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_id_seq OWNER TO "CONEMO_user";

--
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE lessons_id_seq OWNED BY lessons.id;


--
-- Name: logins; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE logins (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    logged_in_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    app_login_guid character varying(255),
    uuid character varying NOT NULL,
    app_version character varying,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.logins OWNER TO "CONEMO_user";

--
-- Name: logins_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logins_id_seq OWNER TO "CONEMO_user";

--
-- Name: logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE logins_id_seq OWNED BY logins.id;


--
-- Name: non_adherence_calls; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE non_adherence_calls (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    explanation character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.non_adherence_calls OWNER TO "CONEMO_user";

--
-- Name: non_adherence_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE non_adherence_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.non_adherence_calls_id_seq OWNER TO "CONEMO_user";

--
-- Name: non_adherence_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE non_adherence_calls_id_seq OWNED BY non_adherence_calls.id;


--
-- Name: nurse_tasks; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE nurse_tasks (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    type character varying NOT NULL,
    status character varying DEFAULT 'active'::character varying NOT NULL,
    scheduled_at timestamp without time zone NOT NULL,
    overdue_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.nurse_tasks OWNER TO "CONEMO_user";

--
-- Name: nurse_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE nurse_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nurse_tasks_id_seq OWNER TO "CONEMO_user";

--
-- Name: nurse_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE nurse_tasks_id_seq OWNED BY nurse_tasks.id;


--
-- Name: participant_start_dates; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE participant_start_dates (
    id integer NOT NULL,
    date date NOT NULL,
    uuid character varying NOT NULL,
    participant_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.participant_start_dates OWNER TO "CONEMO_user";

--
-- Name: participant_start_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE participant_start_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participant_start_dates_id_seq OWNER TO "CONEMO_user";

--
-- Name: participant_start_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE participant_start_dates_id_seq OWNED BY participant_start_dates.id;


--
-- Name: participants; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE participants (
    id integer NOT NULL,
    nurse_id integer,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    study_identifier character varying(255) NOT NULL,
    family_health_unit_name character varying(255) NOT NULL,
    phone character varying(255),
    address text NOT NULL,
    date_of_birth date,
    gender character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'unassigned'::character varying NOT NULL,
    emergency_contact_name character varying(255),
    emergency_contact_phone character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    locale character varying(255) NOT NULL,
    alternate_phone_1 character varying,
    alternate_phone_2 character varying,
    contact_person_1_name character varying,
    contact_person_1_relationship character varying,
    contact_person_1_other_relationship character varying,
    contact_person_2_name character varying,
    contact_person_2_relationship character varying,
    contact_person_2_other_relationship character varying,
    emergency_contact_relationship character varying,
    emergency_contact_other_relationship character varying,
    emergency_contact_address character varying,
    emergency_contact_cell_phone character varying,
    cell_phone character varying
);


ALTER TABLE public.participants OWNER TO "CONEMO_user";

--
-- Name: participants_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.participants_id_seq OWNER TO "CONEMO_user";

--
-- Name: participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE participants_id_seq OWNED BY participants.id;


--
-- Name: past_device_assignments; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE past_device_assignments (
    id integer NOT NULL,
    uuid character varying,
    device_uuid character varying,
    manufacturer character varying,
    model character varying,
    platform character varying,
    device_version character varying,
    inserted_at timestamp without time zone,
    participant_id integer,
    last_seen_at timestamp without time zone,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.past_device_assignments OWNER TO "CONEMO_user";

--
-- Name: past_device_assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE past_device_assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.past_device_assignments_id_seq OWNER TO "CONEMO_user";

--
-- Name: past_device_assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE past_device_assignments_id_seq OWNED BY past_device_assignments.id;


--
-- Name: patient_contacts; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE patient_contacts (
    id integer NOT NULL,
    contact_reason character varying(255),
    note text,
    contact_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    participant_id integer,
    first_contact_id integer,
    first_appointment_id integer,
    second_contact_id integer,
    third_contact_id integer
);


ALTER TABLE public.patient_contacts OWNER TO "CONEMO_user";

--
-- Name: patient_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE patient_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_contacts_id_seq OWNER TO "CONEMO_user";

--
-- Name: patient_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE patient_contacts_id_seq OWNED BY patient_contacts.id;


--
-- Name: planned_activities; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE planned_activities (
    id integer NOT NULL,
    uuid character varying NOT NULL,
    participant_id integer NOT NULL,
    name character varying NOT NULL,
    is_complete boolean,
    is_help_wanted boolean,
    level_of_happiness character varying,
    how_worthwhile character varying,
    planned_at timestamp without time zone NOT NULL,
    lesson_guid character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone,
    follow_up_at timestamp without time zone
);


ALTER TABLE public.planned_activities OWNER TO "CONEMO_user";

--
-- Name: planned_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE planned_activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planned_activities_id_seq OWNER TO "CONEMO_user";

--
-- Name: planned_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE planned_activities_id_seq OWNED BY planned_activities.id;


--
-- Name: responses; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE responses (
    id integer NOT NULL,
    content_access_event_id integer,
    answer text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.responses OWNER TO "CONEMO_user";

--
-- Name: responses_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE responses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.responses_id_seq OWNER TO "CONEMO_user";

--
-- Name: responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE responses_id_seq OWNED BY responses.id;


--
-- Name: scheduled_task_cancellations; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE scheduled_task_cancellations (
    id integer NOT NULL,
    nurse_task_id integer NOT NULL,
    explanation character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.scheduled_task_cancellations OWNER TO "CONEMO_user";

--
-- Name: scheduled_task_cancellations_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE scheduled_task_cancellations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scheduled_task_cancellations_id_seq OWNER TO "CONEMO_user";

--
-- Name: scheduled_task_cancellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE scheduled_task_cancellations_id_seq OWNED BY scheduled_task_cancellations.id;


--
-- Name: scheduled_task_reschedulings; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE scheduled_task_reschedulings (
    id integer NOT NULL,
    nurse_task_id integer NOT NULL,
    explanation character varying NOT NULL,
    old_scheduled_at timestamp without time zone NOT NULL,
    scheduled_at timestamp without time zone NOT NULL,
    notes text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.scheduled_task_reschedulings OWNER TO "CONEMO_user";

--
-- Name: scheduled_task_reschedulings_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE scheduled_task_reschedulings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scheduled_task_reschedulings_id_seq OWNER TO "CONEMO_user";

--
-- Name: scheduled_task_reschedulings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE scheduled_task_reschedulings_id_seq OWNED BY scheduled_task_reschedulings.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "CONEMO_user";

--
-- Name: second_contacts; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE second_contacts (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    contact_at timestamp without time zone NOT NULL,
    session_length integer NOT NULL,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    difficulties character varying
);


ALTER TABLE public.second_contacts OWNER TO "CONEMO_user";

--
-- Name: second_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE second_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.second_contacts_id_seq OWNER TO "CONEMO_user";

--
-- Name: second_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE second_contacts_id_seq OWNED BY second_contacts.id;


--
-- Name: session_events; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE session_events (
    id integer NOT NULL,
    participant_id integer NOT NULL,
    event_type character varying(255) NOT NULL,
    occurred_at timestamp without time zone NOT NULL,
    lesson_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    uuid character varying NOT NULL,
    client_created_at timestamp without time zone,
    client_updated_at timestamp without time zone
);


ALTER TABLE public.session_events OWNER TO "CONEMO_user";

--
-- Name: session_events_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE session_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.session_events_id_seq OWNER TO "CONEMO_user";

--
-- Name: session_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE session_events_id_seq OWNED BY session_events.id;


--
-- Name: smartphones; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE smartphones (
    id integer NOT NULL,
    number character varying(255) NOT NULL,
    participant_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    phone_identifier character varying NOT NULL
);


ALTER TABLE public.smartphones OWNER TO "CONEMO_user";

--
-- Name: smartphones_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE smartphones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smartphones_id_seq OWNER TO "CONEMO_user";

--
-- Name: smartphones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE smartphones_id_seq OWNED BY smartphones.id;


--
-- Name: supervision_sessions; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE supervision_sessions (
    id integer NOT NULL,
    session_at timestamp without time zone NOT NULL,
    session_length integer NOT NULL,
    meeting_kind character varying NOT NULL,
    contact_kind character varying NOT NULL,
    nurse_id integer NOT NULL,
    topics text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.supervision_sessions OWNER TO "CONEMO_user";

--
-- Name: supervision_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE supervision_sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supervision_sessions_id_seq OWNER TO "CONEMO_user";

--
-- Name: supervision_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE supervision_sessions_id_seq OWNED BY supervision_sessions.id;


--
-- Name: supervisor_notes; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE supervisor_notes (
    id integer NOT NULL,
    note text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    nurse_id integer
);


ALTER TABLE public.supervisor_notes OWNER TO "CONEMO_user";

--
-- Name: supervisor_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE supervisor_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supervisor_notes_id_seq OWNER TO "CONEMO_user";

--
-- Name: supervisor_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE supervisor_notes_id_seq OWNED BY supervisor_notes.id;


--
-- Name: supervisor_notifications; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE supervisor_notifications (
    id integer NOT NULL,
    nurse_task_id integer NOT NULL,
    status character varying DEFAULT 'active'::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.supervisor_notifications OWNER TO "CONEMO_user";

--
-- Name: supervisor_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE supervisor_notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supervisor_notifications_id_seq OWNER TO "CONEMO_user";

--
-- Name: supervisor_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE supervisor_notifications_id_seq OWNED BY supervisor_notifications.id;


--
-- Name: third_contacts; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE third_contacts (
    id integer NOT NULL,
    session_length integer,
    participant_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    notes text,
    contact_at timestamp without time zone,
    q1 text,
    q2 boolean,
    q2_notes text,
    q3 boolean,
    q3_notes text,
    q4 boolean,
    q4_notes text,
    q5 boolean,
    q5_notes text,
    difficulties character varying
);


ALTER TABLE public.third_contacts OWNER TO "CONEMO_user";

--
-- Name: third_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE third_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.third_contacts_id_seq OWNER TO "CONEMO_user";

--
-- Name: third_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE third_contacts_id_seq OWNED BY third_contacts.id;


--
-- Name: token_auth_authentication_tokens; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE token_auth_authentication_tokens (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    value character varying(32) NOT NULL,
    is_enabled boolean DEFAULT true NOT NULL,
    uuid character varying(36) NOT NULL,
    client_uuid character varying NOT NULL
);


ALTER TABLE public.token_auth_authentication_tokens OWNER TO "CONEMO_user";

--
-- Name: token_auth_authentication_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE token_auth_authentication_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_auth_authentication_tokens_id_seq OWNER TO "CONEMO_user";

--
-- Name: token_auth_authentication_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE token_auth_authentication_tokens_id_seq OWNED BY token_auth_authentication_tokens.id;


--
-- Name: token_auth_configuration_tokens; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE token_auth_configuration_tokens (
    id integer NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    value character varying NOT NULL,
    entity_id integer NOT NULL
);


ALTER TABLE public.token_auth_configuration_tokens OWNER TO "CONEMO_user";

--
-- Name: token_auth_configuration_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE token_auth_configuration_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_auth_configuration_tokens_id_seq OWNER TO "CONEMO_user";

--
-- Name: token_auth_configuration_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE token_auth_configuration_tokens_id_seq OWNED BY token_auth_configuration_tokens.id;


--
-- Name: token_auth_synchronizable_resources; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE token_auth_synchronizable_resources (
    id integer NOT NULL,
    uuid character varying NOT NULL,
    entity_id integer NOT NULL,
    entity_id_attribute_name character varying NOT NULL,
    name character varying NOT NULL,
    class_name character varying NOT NULL,
    is_pullable boolean DEFAULT false NOT NULL,
    is_pushable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.token_auth_synchronizable_resources OWNER TO "CONEMO_user";

--
-- Name: token_auth_synchronizable_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE token_auth_synchronizable_resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_auth_synchronizable_resources_id_seq OWNER TO "CONEMO_user";

--
-- Name: token_auth_synchronizable_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE token_auth_synchronizable_resources_id_seq OWNED BY token_auth_synchronizable_resources.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    role character varying(255),
    phone character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    locale character varying(255),
    timezone character varying(255) NOT NULL,
    type character varying,
    nurse_supervisor_id integer,
    family_health_unit_name character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying
);


ALTER TABLE public.users OWNER TO "CONEMO_user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: CONEMO_user
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "CONEMO_user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: CONEMO_user
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY additional_contacts ALTER COLUMN id SET DEFAULT nextval('additional_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_content_modules ALTER COLUMN id SET DEFAULT nextval('bit_core_content_modules_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_content_providers ALTER COLUMN id SET DEFAULT nextval('bit_core_content_providers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_slides ALTER COLUMN id SET DEFAULT nextval('bit_core_slides_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_slideshows ALTER COLUMN id SET DEFAULT nextval('bit_core_slideshows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_tools ALTER COLUMN id SET DEFAULT nextval('bit_core_tools_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY call_to_schedule_final_appointments ALTER COLUMN id SET DEFAULT nextval('call_to_schedule_final_appointments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY content_access_events ALTER COLUMN id SET DEFAULT nextval('content_access_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY devices ALTER COLUMN id SET DEFAULT nextval('devices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY final_appointments ALTER COLUMN id SET DEFAULT nextval('final_appointments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY first_appointments ALTER COLUMN id SET DEFAULT nextval('first_appointments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY first_contacts ALTER COLUMN id SET DEFAULT nextval('first_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY help_messages ALTER COLUMN id SET DEFAULT nextval('help_messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY help_request_calls ALTER COLUMN id SET DEFAULT nextval('help_request_calls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY lack_of_connectivity_calls ALTER COLUMN id SET DEFAULT nextval('lack_of_connectivity_calls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY lessons ALTER COLUMN id SET DEFAULT nextval('lessons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY non_adherence_calls ALTER COLUMN id SET DEFAULT nextval('non_adherence_calls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY nurse_tasks ALTER COLUMN id SET DEFAULT nextval('nurse_tasks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY participant_start_dates ALTER COLUMN id SET DEFAULT nextval('participant_start_dates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY participants ALTER COLUMN id SET DEFAULT nextval('participants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY past_device_assignments ALTER COLUMN id SET DEFAULT nextval('past_device_assignments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY patient_contacts ALTER COLUMN id SET DEFAULT nextval('patient_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY planned_activities ALTER COLUMN id SET DEFAULT nextval('planned_activities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY responses ALTER COLUMN id SET DEFAULT nextval('responses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY scheduled_task_cancellations ALTER COLUMN id SET DEFAULT nextval('scheduled_task_cancellations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY scheduled_task_reschedulings ALTER COLUMN id SET DEFAULT nextval('scheduled_task_reschedulings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY second_contacts ALTER COLUMN id SET DEFAULT nextval('second_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY session_events ALTER COLUMN id SET DEFAULT nextval('session_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY smartphones ALTER COLUMN id SET DEFAULT nextval('smartphones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY supervision_sessions ALTER COLUMN id SET DEFAULT nextval('supervision_sessions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY supervisor_notes ALTER COLUMN id SET DEFAULT nextval('supervisor_notes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY supervisor_notifications ALTER COLUMN id SET DEFAULT nextval('supervisor_notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY third_contacts ALTER COLUMN id SET DEFAULT nextval('third_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY token_auth_authentication_tokens ALTER COLUMN id SET DEFAULT nextval('token_auth_authentication_tokens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY token_auth_configuration_tokens ALTER COLUMN id SET DEFAULT nextval('token_auth_configuration_tokens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY token_auth_synchronizable_resources ALTER COLUMN id SET DEFAULT nextval('token_auth_synchronizable_resources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: additional_contacts; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY additional_contacts (id, participant_id, scheduled_at, kind, created_at, updated_at) FROM stdin;

\.


--
-- Name: additional_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('additional_contacts_id_seq', 521, true);


--
-- Data for Name: bit_core_content_modules; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY bit_core_content_modules (id, title, "position", bit_core_tool_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: bit_core_content_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('bit_core_content_modules_id_seq', 1, false);


--
-- Data for Name: bit_core_content_providers; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY bit_core_content_providers (id, type, source_content_type, source_content_id, bit_core_content_module_id, "position", created_at, updated_at) FROM stdin;
\.


--
-- Name: bit_core_content_providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('bit_core_content_providers_id_seq', 1, false);


--
-- Data for Name: bit_core_slides; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY bit_core_slides (id, title, body, "position", bit_core_slideshow_id, type, is_title_visible, created_at, updated_at) FROM stdin;
207	Slide 7	<p dir="ltr" style="text-align: justify;">Uma maneira de fazer isso &eacute; vincular essa atividade a uma determinada hora do dia ou a um dia da semana. Por exemplo, se a atividade que voc&ecirc; quer incluir em sua rotina &eacute; fazer caminhadas, pense sobre quando &eacute; o melhor momento para fazer isso, por exemplo: sempre pela manh&atilde;, depois do trabalho, ou aos<strong> </strong>s&aacute;bados.</p>\r\n	7	51	\N	t	2016-02-02 15:52:09.694473	2016-05-19 13:45:55.099631
204	Slide 4	<p dir="ltr" style="text-align: justify;">Por exemplo, ao inv&eacute;s de voc&ecirc; ficar assistindo televis&atilde;o toda noite, voc&ecirc; pode tentar fazer algo diferente em alguns dias da semana, como ler um livro, ouvir m&uacute;sica ou conversar com um vizinho.</p>\r\n\r\n<div>&nbsp;</div>\r\n	4	51	\N	t	2016-02-02 15:51:21.274753	2016-05-19 13:44:42.69212
13	Slide 4	<p>Algunas de las actividades que te sugeriremos buscan mejorar tu salud f&iacute;sica, como tomar tu medicaci&oacute;n regularmente o tener una dieta saludable.&nbsp;</p>\r\n\r\n<p>Pero CONEMO tambi&eacute;n te ayudar&aacute; a hacer nuevas actividades en tu tiempo libre, a pasar m&aacute;s tiempo con tus seres queridos y hacer otras cosas que puedas disfrutar.&nbsp;</p>\r\n	4	18	\N	t	2014-05-15 13:37:01.531441	2016-02-25 21:20:52.451713
256	Slide 2	<p>&nbsp;</p>\r\n\r\n<p>Para volver a la p&aacute;gina anterior, presiona el bot&oacute;n azul con la flecha hacia la izquierda al final de la pantalla.</p>\r\n	2	61	\N	t	2016-03-03 17:45:45.494087	2016-03-03 17:45:45.494087
208	Slide 8	<p dir="ltr" style="text-align: justify;">Outra estrat&eacute;gia poderia ser: juntar a nova atividade com uma que voc&ecirc; j&aacute; faz regularmente, por exemplo, almo&ccedil;ar. Neste caso, voc&ecirc; poderia fazer uma caminhada todos os dias depois do almo&ccedil;o.</p>\r\n	8	51	\N	t	2016-02-02 15:52:33.643161	2016-05-19 13:46:22.721607
162	Slide 1	<p>Probablemente has podido realizar varias actividades durante las &uacute;ltimas tres semanas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Recuerda qu&eacute; bien te sentiste cuando lograste hacer lo que planeaste y contin&uacute;a haciendo estas actividades que te hicieron sentir mejor.</p>\r\n	1	40	\N	t	2014-08-13 17:40:31.392929	2016-03-04 18:38:29.006872
12	Slide 1	<h2>&nbsp;</h2>\r\n\r\n<h2>&iexcl;Bienvenido a CONEMO!</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Este programa fue desarrollado para ayudarte a mejorar no solo tu salud f&iacute;sica, sino tambi&eacute;n tu salud emocional.</p>\r\n	1	18	\N	t	2014-05-15 13:36:48.006053	2016-02-19 16:42:47.828086
10	Slide 1	<p dir="ltr" style="text-align: justify;">O que voc&ecirc; faz pode afetar como voc&ecirc; se&nbsp;sente, para melhor ou para pior. H&aacute; muitas coisas que voc&ecirc; pode fazer para se sentir melhor.&nbsp;Uma delas &eacute; aumentar a quantidade de atividades prazerosas e saud&aacute;veis em sua vida.</p>\r\n	1	11	\N	t	2014-05-08 04:31:10.929223	2016-05-19 13:00:03.422844
161	Slide 2	<p>Cuando tenemos un problema de salud como diabetes o hipertensi&oacute;n, es com&uacute;n que nos sintamos deca&iacute;dos o desanimados.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuando nos sentimos as&iacute;, nos toma m&aacute;s esfuerzo hacer las cosas, dejamos cosas sin terminar y a veces hasta dejamos de hacer nuestras actividades.</p>\r\n	2	18	\N	t	2014-08-13 17:32:04.289463	2016-02-25 20:33:54.054856
98	Slide 3	<p>&nbsp;</p>\r\n\r\n<p>Esperamos que este programa te haya ayudado a sentirte mejor y que incluyas en tu vida lo que has aprendido aqu&iacute;.</p>\r\n	3	48	\N	t	2014-07-24 23:06:30.784083	2016-02-22 19:39:48.192747
11	Slide 2	<p dir="ltr" style="text-align: justify;">N&oacute;s sabemos que voc&ecirc; &eacute; uma pessoa ocupada, por isso, a conclus&atilde;o de cada sess&atilde;o leva apenas alguns minutos.Voc&ecirc; vai escolher as atividades que voc&ecirc; quer fazer e integr&aacute;-las no seu dia a dia.</p>\r\n	2	11	\N	t	2014-05-08 04:33:01.952689	2016-05-19 13:00:21.84826
205	Slide 5	<p style="text-align: justify;">Se voc&ecirc; continuar fazendo uma nova atividade regularmente, mesmo que no in&iacute;cio pare&ccedil;a estranho faz&ecirc;-la, essa atividade se tornar&aacute; mais f&aacute;cil e ser&aacute; um novo h&aacute;bito ao longo do tempo.</p>\r\n	5	51	\N	t	2016-02-02 15:51:37.414231	2016-05-19 13:44:51.539647
206	Slide 6	<p style="text-align: justify;">Vamos tentar? Pense em uma atividade que voc&ecirc; experimentou neste programa e que fez voc&ecirc; se sentir bem, que voc&ecirc; pode incluir em sua rotina di&aacute;ria.</p>\r\n	6	51	\N	t	2016-02-02 15:51:52.959764	2016-05-19 13:45:01.479506
8	Slide 1	<p style="text-align: justify;">Hoje vamos come&ccedil;ar a ser ativos! Para ficar mais f&aacute;cil, vamos come&ccedil;ar com uma atividade prazerosa. Atividades prazerosas s&atilde;o aquelas que gostamos de fazer e que fazem a gente se sentir bem.</p>\r\n	1	10	\N	t	2014-05-08 04:27:22.06185	2016-05-19 13:01:49.849988
117	Slide 1	<p style="text-align: justify;">Quando conseguir fazer uma atividade, comemore e recompense a si mesmo! Outras pessoas podem n&atilde;o perceber esse passo importante que voc&ecirc; deu, mas voc&ecirc; sabe o quanto voc&ecirc; se esfor&ccedil;ou!</p>\r\n	1	24	\N	t	2014-07-29 17:02:58.313201	2016-05-19 13:15:03.616557
273	Slide 7	<p style="text-align: justify;">Se voc&ecirc; continuar, todas suas respostas ser&atilde;o salvas. Se voc&ecirc; ainda n&atilde;o selecionou uma resposta ou deseja mud&aacute;-la, por favor, volte &agrave; p&aacute;gina anterior e selecione outra(s) resposta(s). Se est&aacute; satisfeito com a sua resposta, siga em frente.</p>\r\n	7	9	\N	t	2016-05-31 16:10:43.187258	2016-07-25 16:53:00.883191
124	Slide 3	<p dir="ltr" style="text-align: justify;">O objetivo do CONEMO &eacute; ajudar voc&ecirc; a praticar novas atividades que ir&atilde;o ajud&aacute;-lo a ser mais saud&aacute;vel e mais feliz.</p>\r\n	3	9	\N	t	2014-07-31 22:04:23.015605	2016-05-19 12:54:02.624036
90	Slide 1	<p>Hacer la actividad que planeaste puede haber sido mucho m&aacute;s f&aacute;cil y agradable de lo que imaginaste al principio.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O tal vez fue m&aacute;s complicado de lo que imaginaste o tuviste dificultades para empezar.</p>\r\n	1	22	\N	t	2014-07-24 18:42:12.558758	2016-04-04 16:33:13.957876
4	Slide 4	<p dir="ltr" style="text-align: justify;">CONEMO vai sugerir atividades que v&atilde;o melhorar a sua sa&uacute;de, tais como tomar sua medica&ccedil;&atilde;o e ter uma alimenta&ccedil;&atilde;o saud&aacute;vel. Mas, CONEMO tamb&eacute;m quer lhe ajudar a realizar atividades como visitar amigos e familiares ou cozinhar sua comida favorita. Isso ir&aacute; ajud&aacute;-lo a ter uma vida mais completa e feliz.</p>\r\n	4	9	\N	t	2014-05-08 04:19:57.413262	2016-05-19 12:54:15.897694
121	Slide 4	<p dir="ltr" style="text-align: justify;">Pois, uma &uacute;nica reca&iacute;da n&atilde;o vai mudar o seu plano, porque o que voc&ecirc; faz todos os dias &eacute; mais importante do que o que aconteceu apenas uma vez.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	29	\N	t	2014-07-29 17:48:28.301505	2016-05-19 13:43:40.93432
163	Slide 2	<p>Mientras m&aacute;s practicamos algo, menos esfuerzo nos cuesta y es m&aacute;s f&aacute;cil hacerlo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Muchas de las cosas que hacemos en nuestra vida diaria pueden ser consideradas <strong><em>&ldquo;<u>h&aacute;bitos</u>&rdquo;, </em></strong>es decir cosas que hacemos con frecuencia y con poco esfuerzo.</p>\r\n	2	46	\N	t	2014-08-13 17:48:56.871869	2016-05-05 19:51:17.128176
210	Slide 4	<p style="text-align: justify;">Lembre-se: os h&aacute;bitos determinam quem voc&ecirc; &eacute;. E n&atilde;o se esque&ccedil;a de se dar recompensas quando conseguir seguir o seu plano! Isso vai ajud&aacute;-lo a permanecer motivado e valorizar a atividade cumprida ainda mais.</p>\r\n	4	52	\N	t	2016-02-02 15:54:09.522891	2016-05-19 13:47:05.040581
274	Slide 7	<p>Se voc&ecirc; continuar, todas suas respostas ser&atilde;o salvas. Se voc&ecirc; ainda n&atilde;o selecionou uma resposta ou deseja mud&aacute;-la, por favor, volte &agrave; p&aacute;gina anterior e selecione outra(s) resposta(s). Se est&aacute; satisfeito com a sua resposta, siga em frente.</p>\r\n	7	12	\N	t	2016-05-31 16:11:48.016237	2016-05-31 16:11:59.336293
211	Slide 6	<p style="text-align: justify;">Ser mais ativo vai ajudar voc&ecirc; a se sentir melhor, voc&ecirc; vai ver!</p>\r\n	6	11	\N	t	2016-02-02 19:29:03.574241	2016-05-19 13:01:11.342063
22	Slide 2	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Sabemos que pode ser dif&iacute;cil come&ccedil;ar. Neste momento, voc&ecirc; pode n&atilde;o sentir vontade de fazer alguma coisa. Mas a a&ccedil;&atilde;o vem antes da motiva&ccedil;&atilde;o. Isso significa que voc&ecirc; primeiro tem que se tornar ativo, e, em seguida, sua motiva&ccedil;&atilde;o vai aumentar mais e mais.</p>\r\n	2	13	\N	t	2014-05-18 22:24:01.957487	2016-05-19 13:05:20.38459
91	Slide 2	<p>A veces sentimos que no hay mucho que podamos hacer para mejorar nuestra salud f&iacute;sica.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Eso no es cierto. Por ejemplo, hacer actividad f&iacute;sica, incluso algo tan peque&ntilde;o como caminar 10 minutos al d&iacute;a, puede hacer una gran diferencia en nuestra salud.</p>\r\n	2	23	\N	t	2014-07-24 20:56:17.505326	2016-02-25 22:17:09.538407
18	Slide 3	<p>Este programa intenta ayudarte a encontrar formas de superar este c&iacute;rculo vicioso que te hace menos feliz y que puede hacer m&aacute;s dif&iacute;cil mejorar tu salud.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El primer paso para salir de esta situaci&oacute;n es identificar qu&eacute; actividades has dejado atr&aacute;s.</p>\r\n	3	19	\N	t	2014-05-15 14:00:33.379758	2016-02-25 21:29:04.842087
44	Slide 2	<p>Hay muchas cosas que podemos hacer para sentirnos mejor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Una de ellas es aumentar el n&uacute;mero de actividades que hacemos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Eso ha ayudado a muchas personas a tener una vida m&aacute;s feliz y m&aacute;s saludable.&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n	2	20	\N	t	2014-06-13 19:16:22.486035	2016-02-25 21:33:24.789392
265	Slide 4b	<p><label><input name="training_session_multiopt" type="checkbox" value="Lomo saltado" /> Lomo saltado</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Papa a la huancaína" /> Papa a la huanca&iacute;na</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Milanesa de pollo" /> Milanesa de pollo</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Seco de res" /> Seco de res</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Pescado" /> Pescado</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Arroz con pollo" /> Arroz con pollo</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Papa rellena" /> Papa rellena</label><br />\r\n<label><input name="training_session_multiopt" type="checkbox" value="Mariscos" /> Mariscos</label></p>\r\n	8	61	\N	t	2016-04-05 15:26:01.394232	2017-01-11 21:13:20.251446
24	Slide 1	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">No in&iacute;cio desta semana prestamos aten&ccedil;&atilde;o em pequenas atividades prazerosas que poderiam fazer com que voc&ecirc; se sentisse melhor. Agora &eacute; hora de pensar em atividades que podem ajudar a melhorar a sua sa&uacute;de f&iacute;sica. Melhorar a sua sa&uacute;de f&iacute;sica tamb&eacute;m melhorar&aacute; a sua sa&uacute;de mental!</p>\r\n	1	14	\N	t	2014-05-18 22:28:39.139823	2016-05-19 13:06:55.157119
213	Slide 4	<p>&iexcl;T&uacute; eliges las actividades y cu&aacute;ndo hacerlas!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pero claro, para realizar las actividades que has elegido tambi&eacute;n necesitar&aacute;s de un esfuerzo de tu parte.</p>\r\n	4	20	\N	t	2016-02-19 17:24:20.932174	2016-05-05 17:22:06.017568
17	Slide 1	<p style="margin-left:3.8pt">Cuando no nos sentimos bien, nos volvemos menos activos. Quiz&aacute;s algunas cosas que antes hac&iacute;as sin dificultad ahora requieren mucho m&aacute;s esfuerzo.</p>\r\n\r\n<p style="margin-left:3.8pt">&nbsp;</p>\r\n\r\n<p style="margin-left:3.8pt">A veces son actividades cotidianas como limpiar la casa o tambi&eacute;n actividades para controlar nuestra enfermedad, como tomar la medicaci&oacute;n o ir al doctor.</p>\r\n	1	19	\N	t	2014-05-15 14:00:21.690704	2016-05-31 16:37:30.220747
214	Slide 5	<p>Es importante que siempre recuerdes la meta que te has propuesto lograr con CONEMO.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esta ser&aacute; una motivaci&oacute;n importante, especialmente cuando sientas que las cosas son un poco m&aacute;s dif&iacute;ciles de hacer.</p>\r\n	5	20	\N	t	2016-02-19 17:24:49.644861	2016-05-05 17:22:54.821497
212	Slide 3	<p>Entendemos que quiz&aacute;s est&aacute;s ocupado, por lo que realizar las sesiones de CONEMO solo te tomar&aacute; unos cuantos minutos cada semana.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Podr&aacute;s elegir tus actividades y luego adecuarlas a tu horario.</p>\r\n\r\n<p>As&iacute; puedes adaptar el programa a tu propia rutina.&nbsp;</p>\r\n	3	20	\N	t	2016-02-19 17:23:53.508971	2016-05-05 17:23:38.837072
26	Slide 1 (video)	<p dir="ltr" style="text-align: justify;">Assista a este v&iacute;deo e veja como ser mais ativo ajudou outras pessoas tamb&eacute;m:</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">videoSP3</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	1	15	\N	t	2014-05-18 22:31:46.249335	2016-05-19 13:08:42.856934
164	Slide 5	<p>&nbsp;</p>\r\n\r\n<p>As&iacute;, combinando distintas actividades para mejorar tu salud f&iacute;sica y tu salud emocional, tendr&aacute;s una vida m&aacute;s satisfactoria y feliz.</p>\r\n	5	18	\N	t	2014-08-17 23:37:00.440615	2016-02-19 16:45:20.969132
215	Slide 6	<p>En la pr&oacute;xima sesi&oacute;n empezar&aacute;s a incluir poco a poco nuevas actividades en tu d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Al comienzo pueden ser actividades m&aacute;s cortas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Luego har&aacute;s actividades que pueden requerir un poco m&aacute;s de tiempo y planificaci&oacute;n.</p>\r\n	6	20	\N	t	2016-02-19 17:25:12.706508	2016-02-25 21:34:52.612595
32	Slide 1	<p dir="ltr" style="text-align:justify">Nada &eacute; aprendido imediatamente!<strong> </strong>Se voc&ecirc; est&aacute; com dificuldade em cumprir uma atividade ou tarefa, n&oacute;s temos um conselho que pode ajudar: a mudan&ccedil;a &eacute; mais f&aacute;cil quando dividimos as atividades em pequenas partes. Assim podemos nos concentrar em fazer apenas um pequeno passo<strong> </strong>de cada vez!</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	1	26	\N	t	2014-05-18 23:10:44.85727	2016-05-19 13:34:22.389159
275	Slide 9	<p>Si presionas la flecha &quot;siguiente&quot; tus respuestas ser&aacute;n guardadas.</p>\r\n\r\n<p>Si a&uacute;n no has hecho una selecci&oacute;n o quieres cambiarla, por favor regresa y haz tu selecci&oacute;n o modif&iacute;cala antes de continuar.&nbsp;</p>\r\n\r\n<p>Si est&aacute;s de acuerdo con tus respuestas, presiona la flecha &quot;siguiente&quot;.</p>\r\n	9	18	\N	t	2016-05-31 16:35:41.564657	2016-05-31 16:36:59.801094
209	Slide 3	<p dir="ltr" style="text-align: justify;">Para algumas pessoas pode ajudar escrever um plano de atividades em um peda&ccedil;o de papel ou colocar as atividades em um calend&aacute;rio para se lembrar de faz&ecirc;-las. Pode ajudar tamb&eacute;m pendurar esse plano ou calend&aacute;rio em um lugar bem vis&iacute;vel como, por exemplo, na geladeira. Isso pode ajud&aacute;-lo a manter o foco e se manter ativo.</p>\r\n	3	52	\N	t	2016-02-02 15:53:45.069285	2016-05-19 13:46:56.775073
216	Slide 7	<p>Ser m&aacute;s activo te ayudar&aacute; a sentirte mucho mejor contigo mismo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Ya lo ver&aacute;s!</p>\r\n	7	20	\N	t	2016-02-19 17:25:45.891421	2016-02-19 17:25:45.891421
217	Slide 3	<p>Sabemos que empezar nuevas actividades no es f&aacute;cil, incluso si son actividades que disfrutamos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Es normal que pensemos &ldquo;no tengo ganas de hacer nada&rdquo; o &ldquo;deber&iacute;a usar mi tiempo en hacer cosas m&aacute;s importantes&quot;.</p>\r\n	3	21	\N	t	2016-02-19 17:29:31.765981	2016-02-19 17:29:31.765981
142	Lesson Day 1 Slide 2	<p>Post-ironic Helvetica church-key selvage leggings, farm-to-table Echo Park. Organic pour-over American Apparel, actually authentic wayfarers fixie. Literally Kickstarter lo-fi iPhone.</p>\r\n	2	17	\N	t	2014-08-07 13:24:25.683467	2014-08-07 14:49:43.394418
141	Lesson Day 1 Slide 1	<p>Blue Bottle American Apparel McSweeney&#39;s iPhone, crucifix actually forage. Portland butcher Blue Bottle swag quinoa. Whatever keffiyeh organic jean shorts artisan, ethical master cleanse retro food truck Brooklyn.</p>\r\n	1	17	\N	t	2014-08-07 13:23:28.015907	2014-08-07 14:49:52.254548
28	Slide 1	<p dir="ltr" style="margin-right: 1.5pt; text-align: justify;">Nos &uacute;ltimos dias, voc&ecirc; pensou bastante sobre atividades prazerosas e saud&aacute;veis. Hoje vamos pensar em um tipo diferente de atividade, as &quot;tarefas&quot; que se deve fazer regularmente.</p>\r\n	1	16	\N	t	2014-05-18 22:48:47.182406	2016-05-19 13:11:54.876877
30	Slide 1	<p dir="ltr" style="text-align: justify;">At&eacute; agora, voc&ecirc; j&aacute; planejou tr&ecirc;s atividades diferentes. Esta semana voc&ecirc; vai planejar outra atividade prazerosa que talvez possa exigir um pouco mais de planejamento e tempo do que as anteriores.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n	1	25	\N	t	2014-05-18 23:06:38.141608	2016-05-19 13:16:00.763815
277	Slide 3a	<p>&iquest;Cu&aacute;l es tu color favorito?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><select name="training_session_singleopt"><option value="Rojo">Rojo</option><option value="Verde">Verde</option><option value="Azul">Azul</option><option value="Amarillo">Amarillo</option><option value="Marrón">Marr&oacute;n</option><option value="Morado">Morado</option><option value="Otro">Otro</option></select></p>\r\n	4	61	\N	t	2017-01-11 21:13:10.610081	2017-01-11 21:43:51.544892
165	Slide 6	<p>Recibir&aacute;s sesiones como esta tres veces por semana.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En algunas de estas sesiones se te pedir&aacute; ver un video con informaci&oacute;n que te ayudar&aacute; a aprovechar al m&aacute;ximo este programa, c&oacute;mo ver&aacute;s en la siguiente p&aacute;gina.&nbsp;</p>\r\n	6	18	\N	t	2014-08-17 23:38:11.580286	2016-05-05 17:03:22.122777
276	Slide 6	<p>Si presionas la flecha &quot;siguiente&quot; tus respuestas ser&aacute;n guardadas.</p>\r\n\r\n<p>Si a&uacute;n no has hecho una selecci&oacute;n o quieres cambiarla, por favor regresa y haz tu selecci&oacute;n o modif&iacute;cala antes de continuar.</p>\r\n\r\n<p>Si est&aacute;s de acuerdo con tus respuestas, presiona la flecha &quot;siguiente&quot;.</p>\r\n	6	19	\N	t	2016-05-31 16:38:16.237868	2016-05-31 16:40:41.74038
125	Slide 2	<p dir="ltr" style="text-align: justify;">Quando a gente tem algum problema de sa&uacute;de, como diabetes ou hipertens&atilde;o, &eacute; comum se sentir para baixo ou desanimado. Como resultado &eacute; preciso mais esfor&ccedil;o para fazer algo, ou as coisas s&atilde;o deixadas de lado.</p>\r\n	2	9	\N	t	2014-07-31 22:12:37.166187	2016-05-19 12:53:52.276677
7	Slide 8	<p style="text-align:justify">Durante as pr&oacute;ximas 6 semanas &eacute; importante sempre lembrar o que voc&ecirc; gostaria de alcan&ccedil;ar com este programa!</p>\r\n	8	9	\N	t	2014-05-08 04:26:00.577751	2016-06-07 14:52:32.778786
36	Slide 1	<p dir="ltr" style="text-align: justify;">Esperamos que voc&ecirc; tenha conseguido realizar sua atividade prazerosa na semana passada. Agora n&oacute;s queremos que voc&ecirc; pense em outra atividade que possa melhorar a sua sa&uacute;de, talvez exija um pouco mais de planejamento e tempo do que as anteriores. &nbsp;</p>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	1	28	\N	t	2014-05-18 23:19:25.984679	2016-05-19 13:41:43.847102
218	Slide 4	<p>Estos pensamientos son comunes cuando empezamos a planear actividades diferentes en nuestra vida.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pero recuerda que aumentar el n&uacute;mero de actividades ha sido de ayuda para muchas personas y puede llevarte a una vida m&aacute;s feliz y saludable.</p>\r\n	4	21	\N	t	2016-02-19 17:30:18.342094	2016-02-25 21:37:00.534107
39	Slide 1	<p dir="ltr" style="text-align: justify;">Bem-vindo/a a sess&atilde;o 15! Vamos come&ccedil;ar com este video:</p>\r\n\r\n<p style="text-align: justify;">videoSP5</p>\r\n\r\n<div>&nbsp;</div>\r\n	1	29	\N	t	2014-05-18 23:27:53.522418	2016-05-19 13:43:04.131396
99	Slide 2	<p style="text-align: justify;">Essas atividades s&atilde;o diferentes para cada pessoa. Algumas pessoas podem gostar de ouvir m&uacute;sica, outros gostam de caminhar ou cozinhar.</p>\r\n	2	10	\N	t	2014-07-29 03:59:08.839616	2016-05-19 13:02:05.266194
144	Lesson Day 1 Form slide	<p>Answer me this complicated question:</p>\r\n\r\n<p><select multiple="true" name="day_1"><option value="option 1">option 1</option><option value="option 2">option 2</option><option value="option 3">option 3</option></select></p>\r\n	4	17	\N	t	2014-08-07 13:42:15.132492	2014-08-07 13:42:15.132492
259	Slide 4	<p>A veces puedes seleccionar muchas opciones en una sola pregunta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Por ejemplo, si te preguntamos &ldquo;&iquest;qu&eacute; comidas te gustan?&rdquo;, probablemente quieras nombrar varias comidas que te gustan.&nbsp;</p>\r\n	6	61	\N	t	2016-03-03 17:50:27.148142	2017-01-11 21:13:20.240263
75	Slide 1	<p>Los logros que son realmente importantes en nuestras vidas toman cierto tiempo y requieren de esfuerzo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cambiar nuestro estilo de vida no es f&aacute;cil. </p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Necesitamos crear una rutina y mantenernos en ella, &iexcl;aun cuando haya obst&aacute;culos!</p>\r\n	1	47	\N	t	2014-06-13 20:21:53.18234	2016-03-10 14:09:56.209351
74	Slide 4	<p>&nbsp;</p>\r\n\r\n<p>Por ejemplo, en vez de ver televisi&oacute;n todas las noches, podr&iacute;as intentar hacer algo diferente algunos d&iacute;as de la semana, como leer un libro, escuchar m&uacute;sica o conversar con un vecino.</p>\r\n	4	46	\N	t	2014-06-13 20:21:31.966275	2016-02-26 16:16:04.953358
145	Lesson Day 2 Slide 1	<p>Tumblr farm-to-table organic, bespoke Pitchfork whatever kitsch banh mi four loko. Plaid 90&#39;s meggings vinyl vegan, gastropub gentrify food truck actually Schlitz ugh try-hard raw denim forage squid</p>\r\n	1	54	\N	t	2014-08-07 13:43:38.8354	2014-08-07 14:49:30.768602
143	Lesson Day 1 Video Slide	<p>Watch this video!</p>\r\n\r\n<p>videoEN1</p>\r\n	3	17	\N	t	2014-08-07 13:36:03.610589	2015-12-07 20:28:32.246182
20	Slide 1	<p dir="ltr" style="margin-right: 1.5pt; text-align: justify;">Quando as pessoas n&atilde;o est&atilde;o se sentindo&nbsp;bem, elas se<strong> </strong>tornam menos ativas. Coisas que&nbsp;foram realizadas com facilidade s&atilde;o deixadas de lado ou feitas com dificuldade.</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	1	12	\N	t	2014-05-18 22:20:42.542594	2016-05-19 12:55:53.344072
258	Slide 3b	<p>Si quieres cambiar tu respuesta, presiona de nuevo el rect&aacute;ngulo y selecciona la opci&oacute;n correcta que quieres elegir.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Intentemos! Vuelve a la p&aacute;gina anterior y cambia tu selecci&oacute;n.</p>\r\n	5	61	\N	t	2016-03-03 17:49:57.971579	2017-01-11 21:13:20.235367
257	Slide 3	<p>A veces CONEMO te pedir&aacute; seleccionar actividades.</p>\r\n\r\n<p>Para seleccionarlas, presiona el rect&aacute;ngulo blanco. Aparecer&aacute; una ventana con posibles respuestas. Mueve la pantalla con tu dedo hacia arriba y abajo para ver todas las opciones. Luego selecciona la que m&aacute;s te gustar&iacute;a elegir, apret&aacute;ndola.&nbsp;Int&eacute;ntalo en la siguiente p&aacute;gina.</p>\r\n	3	61	\N	t	2016-03-03 17:49:28.546207	2017-01-11 21:49:12.055907
127	Slide 2	<p dir="ltr" style="text-align: justify;">Muitas pessoas pensam que n&atilde;o h&aacute; muito o que fazer para melhorar sua sa&uacute;de f&iacute;sica, mas isso n&atilde;o &eacute; verdade! Algumas atividades, mesmo que pequenas, tal como caminhar 10 minutos por dia, podem fazer uma grande diferen&ccedil;a na sua sa&uacute;de como um todo.</p>\r\n	2	14	\N	t	2014-07-31 22:35:38.459692	2016-05-19 13:07:11.494681
76	Slide 1	<p>Durante este programa has dado importantes pasos hacia una vida m&aacute;s saludable y feliz.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Contin&uacute;a haciendo lo que ha funcionado para ti y lo que te ha hecho sentir bien!</p>\r\n	1	48	\N	t	2014-06-13 20:22:15.623426	2016-05-05 19:52:11.640452
128	Slide 2	<p dir="ltr" style="text-align: justify;">Assista a este v&iacute;deo para aprender mais sobre como isso funciona:</p>\r\n\r\n<p dir="ltr" style="text-align: justify;"><em>videoSP4</em></p>\r\n	2	26	\N	t	2014-07-31 22:53:49.041564	2016-05-19 13:18:44.18793
95	Slide 2	<p>&nbsp;</p>\r\n\r\n<p>Siempre recuerda el objetivo personal que quer&iacute;as lograr con este programa y que llegar a tu meta te ayudar&aacute; a sentirte mejor y tener una vida m&aacute;s saludable.</p>\r\n	2	40	\N	t	2014-07-24 22:09:27.204808	2016-03-04 18:38:33.047856
129	Slide 2	<p style="text-align: justify;">Lembre-se do seu motivo pessoal para participar neste programa e que alcan&ccedil;ar este objetivo ir&aacute; ajud&aacute;-lo a se sentir melhor e a ter uma vida mais saud&aacute;vel.</p>\r\n	2	27	\N	t	2014-07-31 22:55:28.093306	2016-05-19 13:41:25.419882
107	Slide 1	<p dir="ltr" style="text-align: justify;">Durante este programa, voc&ecirc; deu passos importantes em dire&ccedil;&atilde;o a uma vida mais saud&aacute;vel e feliz.&nbsp;<span style="line-height:1.6">Continue fazendo o que tem funcionado bem e te faz sentir melhor.</span></p>\r\n	1	53	\N	t	2014-07-29 04:14:38.779648	2016-05-19 13:48:03.059126
122	Slide 3	<p dir="ltr" style="text-align: justify;">Um bom plano orienta voc&ecirc; atrav&eacute;s da vida da mesma forma como uma rota em um mapa. O importante, por&eacute;m, &eacute; continuar seguindo esse plano, mesmo se tiver uma reca&iacute;da.</p>\r\n	3	29	\N	t	2014-07-29 17:53:25.833638	2016-05-19 13:43:32.038946
130	Slide 2	<p dir="ltr" style="text-align: justify;">Quanto mais voc&ecirc; pratica algo, menos precisa pensar para fazer e mais f&aacute;cil vai ficar. Muitas coisas que fazemos quase automaticamente na vida cotidiana podem ser consideradas &quot;h&aacute;bitos&quot;.</p>\r\n	2	51	\N	t	2014-07-31 23:00:56.069622	2016-05-19 13:44:22.799812
131	Slide 2	<p style="text-align: justify;">N&oacute;s sabemos que leva um tempo at&eacute; que esses novos comportamentos possam fazer parte da sua rotina e se tornar um novo h&aacute;bito, mas se voc&ecirc; continuar firme, vai ficando cada vez mais f&aacute;cil e natural.</p>\r\n	2	52	\N	t	2014-07-31 23:01:57.130375	2016-05-19 13:46:47.448267
249	Slide 2	<p dir="ltr" style="text-align: justify;">Para voltar &agrave; p&aacute;gina anterior, pressione a seta &agrave; esquerda na parte inferior da tela.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Agora, vamos para frente.</p>\r\n\r\n<div>&nbsp;</div>\r\n	2	60	\N	t	2016-03-01 13:56:07.362384	2016-05-19 12:44:39.782209
132	Slide 2	<p dir="ltr" style="text-align: justify;">Esta &eacute; a &uacute;ltima sess&atilde;o do CONEMO e gostar&iacute;amos de nos despedir de voc&ecirc;:</p>\r\n\r\n<p style="text-align: justify;">videoSP6</p>\r\n	2	53	\N	t	2014-07-31 23:02:52.749329	2016-05-19 13:48:12.356343
94	Slide 3	<p>Resumiendo lo que hemos aprendido en este video:</p>\r\n\r\n<p>1. Identifica la actividad que quieres realizar</p>\r\n\r\n<p>2. Haz una lista, partiendo la actividad grande en pasos m&aacute;s peque&ntilde;os</p>\r\n\r\n<p>3. Elige una parte peque&ntilde;a para empezar</p>\r\n\r\n<p>4. Planea c&oacute;mo y cu&aacute;ndo hacer cada paso</p>\r\n	3	38	\N	t	2014-07-24 22:03:04.509435	2016-05-05 19:32:19.84876
147	Lesson Day 2 Form Slide	<p>Here&#39;s another question for you.</p>\r\n\r\n<p><select name="day_2"><option value="option 1">option 1</option><option value="option 2">option 2</option><option value="option 3">option 3</option></select></p>\r\n	3	54	\N	t	2014-08-07 13:46:24.979086	2014-08-07 13:46:24.979086
262	Slide 5a	<p>Para evaluar tu experiencia, presiona el rect&aacute;ngulo blanco y elige la respuesta que mejor corresponde a la pregunta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Intentemos: &iquest;Qu&eacute; tanto te gust&oacute; esta sesi&oacute;n de entrenamiento?</p>\r\n\r\n<p style="text-align: center;"><select name="training_session_feedback"><option value="1: No me gustó para nada">1: No me gust&oacute; para nada</option><option value="2: No me gustó">2: No me gust&oacute;</option><option value="3: Ni me gustó ni me desagradó ">3: Ni me gust&oacute; ni me desagrad&oacute;</option><option value="4: Me gustó ">4: Me gust&oacute;</option><option value="5: Me gustó mucho">5: Me gust&oacute; mucho</option></select></p>\r\n	10	61	\N	t	2016-03-03 17:56:38.580889	2017-01-11 21:13:20.263652
263	Slide 6	<p>Algunas sesiones tambi&eacute;n incluyen videos.&nbsp;<span style="line-height:1.6">Para ver los videos presiona la flecha blanca. Para pausarlo, presiona el bot&oacute;n nuevamente.</span></p>\r\n\r\n<p>videoLM0</p>\r\n	11	61	\N	t	2016-03-03 17:57:36.311602	2017-01-11 21:13:20.268552
149	Lesson Day 3 Slide 2	<p>Bacon ipsum dolor sit amet cillum chuck shankle adipisicing, commodo consectetur bresaola incididunt andouille. Leberkas incididunt sint, rump aliqua pariatur cillum laboris drumstick frankfurter deserunt flank.</p>\r\n	2	55	\N	t	2014-08-07 13:49:45.146744	2014-08-07 13:49:45.146744
146	Lesson Day 2 Slide 2	<p>Vinyl organic Vice Cosby sweater, gluten-free Marfa XOXO photo booth food truck readymade. Slow-carb direct trade squid Carles stumptown, lo-fi occupy 3 wolf moon.</p>\r\n	2	54	\N	t	2014-08-07 13:44:38.853199	2014-08-07 14:49:23.172028
43	Slide 1	<p>Lo que hacemos puede influir en nuestro estado de &aacute;nimo y nuestros sentimientos, para bien o para mal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si queremos cambiar la forma en que nos sentimos, necesitamos cambiar tambi&eacute;n lo que hacemos.&nbsp;</p>\r\n	1	20	\N	t	2014-06-13 19:13:44.522454	2016-02-25 21:33:05.414511
267	Slide 7	<p>Para iniciar el video, por favor, presiona el tri&aacute;ngulo blanco en el centro.</p>\r\n\r\n<p>videoLM1</p>\r\n	7	18	\N	t	2016-05-05 16:30:17.949208	2016-05-05 16:31:18.088867
47	Slide 2	<p>Sabemos que puede ser dif&iacute;cil empezar. Quiz&aacute;s ahora no tienes las ganas suficientes para hacer algo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pero debes saber que la acci&oacute;n viene antes de la motivaci&oacute;n.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esto significa que primero debes volverte activo y luego tu motivaci&oacute;n y tus ganas aumentar&aacute;n cada vez m&aacute;s.</p>\r\n	2	22	\N	t	2014-06-13 19:21:49.438573	2016-03-04 18:36:39.841914
150	Lesson Day 3 Form Slide	<p>Here is the day three question!</p>\r\n\r\n<p><select multiple="true" name="day_3"><option value="option 1">option 1</option><option value="option 2">option 2</option><option value="option 3">option 3</option></select></p>\r\n	3	55	\N	t	2014-08-07 14:40:05.922177	2014-08-07 14:40:05.922177
268	Slide 5	<p><label><input name="neglected_activities" type="checkbox" value="Relajarme (masajes, leer un libro, escuchar música, etc.)" /> Relajarme (masajes, leer un libro, escuchar m&uacute;sica, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Pasar tiempo con familia o amigos" /> Pasar tiempo con familia o amigos</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Hacer deporte o actividad física" /> Hacer actividad f&iacute;sica</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Salir (al parque, a almorzar, a bailar, de compras, etc.) " /> Salir (a almorzar, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Participar de actividades con otras personas (iglesia, coro, voluntariado, etc.)" /> Participar de actividades grupales (iglesia, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Asistir a charlas o aprender algo nuevo" /> Asistir a charlas o aprender algo nuevo</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Cuidar la casa o el jardín " /> Cuidar la casa o el jard&iacute;n</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Hacer manualidades, tejer o coser" /> Hacer manualidades</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Cuidar mi salud" /> Cuidar mi salud</label></p>\r\n	5	19	\N	t	2016-05-05 17:19:52.563725	2016-07-18 14:44:29.996491
110	Slide 3	<p dir="ltr" style="text-align: justify;">Esperamos que este programa tenha ajudado voc&ecirc; a se sentir melhor e que voc&ecirc; tenha conseguido incluir o que voc&ecirc; aprendeu aqui na sua vida.</p>\r\n	3	53	\N	t	2014-07-29 04:14:52.400762	2016-05-19 13:48:26.567378
57	Slide 1	<p>Cuando logres realizar una actividad que planeaste hacer, celebra y recomp&eacute;nsate.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tal vez otras personas no reconozcan los pasos positivos que est&aacute;s dando, pero t&uacute; sabes qu&eacute; tan fuerte has trabajado para lograrlo.</p>\r\n	1	35	\N	t	2014-06-13 19:50:51.793334	2016-03-04 18:37:47.648402
77	Slide 2	<p>Esta es la &uacute;ltima sesi&oacute;n de CONEMO y nos gustar&iacute;a despedirnos:</p>\r\n\r\n<p>videoLM6</p>\r\n	2	48	\N	t	2014-06-13 20:22:29.468119	2016-06-16 14:46:46.663758
58	Slide 2	<p>Aumentar las actividades en tu vida y vivir una vida m&aacute;s saludable y feliz requiere esfuerzo, as&iacute; que es importante ir a tu propio ritmo, descansar cuando sea necesario y recompensarte.</p>\r\n	2	35	\N	t	2014-06-13 19:51:04.91756	2016-03-04 18:37:51.458254
60	Slide 1	<p>Hasta el momento has planeado 3 actividades diferentes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ahora planearemos otra <strong><em><u>actividad placentera</u></em></strong><u>.</u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esta puede requerir un poco m&aacute;s de planificaci&oacute;n y tiempo que la que te pedimos hacer antes.&nbsp;</p>\r\n	1	37	\N	t	2014-06-13 20:07:42.233349	2016-02-25 22:41:44.619525
153	Lesson Day 4 Video Slide	<p>Here is the second video.</p>\r\n\r\n<p>video1</p>\r\n	3	56	\N	t	2014-08-07 14:43:38.210709	2014-08-07 14:43:38.210709
151	Lesson Day 4 Slide 1	<p>Prosciutto adipisicing tempor turkey chuck pig eu salami meatloaf. Dolore eiusmod ex kevin pancetta pork.</p>\r\n	1	56	\N	t	2014-08-07 14:42:32.141362	2014-08-07 14:48:35.378826
152	Lesson Day 4 Slide 2	<p>Drumstick filet mignon sunt laboris elit. Pastrami pork belly culpa cillum quis sunt strip steak officia. Filet mignon exercitation sausage aliquip doner aliqua anim.</p>\r\n	2	56	\N	t	2014-08-07 14:43:05.626466	2014-08-07 14:48:41.590458
54	Slide 2	<p>Cuando nos sentimos cansados y sin energ&iacute;a, es importante intentar hacer las cosas m&aacute;s despacio, paso a paso.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esto significa que no necesitas hacer todo de una sola vez, sino que puedes enfocarte en hacer un poco cada vez.</p>\r\n	2	33	\N	t	2014-06-13 19:49:06.214192	2016-03-04 18:37:21.362659
55	Slide 1	<p>Durante los &uacute;ltimos d&iacute;as has prestado atenci&oacute;n a planear y hacer actividades placenteras y saludables.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hoy queremos pensar en otro tipo de actividades, en las &ldquo;tareas&rdquo; que uno deber&iacute;a hacer regularmente.</p>\r\n	1	34	\N	t	2014-06-13 19:50:19.939696	2016-02-25 22:33:25.410211
167	Slide 2	<p>Las <strong><em>tareas </em></strong>son aquellas actividades que generan una sensaci&oacute;n de logro y control sobre nuestras vidas una vez que las hemos terminado, como limpiar la casa, pagar las cuentas, ayudar a un familiar con un problema, etc&eacute;tera.</p>\r\n	2	34	\N	t	2014-08-17 23:50:51.345345	2016-02-22 15:51:39.463041
71	Slide 1	<p>&nbsp;</p>\r\n\r\n<p>Hacer algo por primera vez puede ser dif&iacute;cil, despu&eacute;s de haberlo hecho cien veces es m&aacute;s f&aacute;cil y despu&eacute;s de hacerlo mil veces es casi autom&aacute;tico.</p>\r\n	1	46	\N	t	2014-06-13 20:20:55.731155	2016-02-26 16:14:54.011442
23	Slide 3 (video)	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Clique no tri&acirc;ngulo branco para iniciar o v&iacute;deo e aprender mais sobre isso:</p>\r\n\r\n<p dir="ltr" style="margin-right: -3pt; text-align: justify;">videoSP2</p>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	3	13	\N	t	2014-05-18 22:26:56.330944	2016-05-19 13:05:34.075083
269	Slide 4	<p><span style="line-height:1.6">Pero OJO, cuando posponemos nuestras actividades, como las actividades saludables, placenteras y las tareas que has hecho durante las &uacute;ltimas semanas, puede resultar en que posponemos o dejamos de hacer cada vez m&aacute;s actividades y que luego nos sentimos nuevamente deca&iacute;dos o sin &aacute;nimo.</span></p>\r\n	4	44	\N	t	2016-05-05 19:44:38.601919	2016-05-25 22:25:20.881198
183	Slide 8	<p dir="ltr" style="text-align:justify">Esse programa vai &nbsp;te dar algumas ideias de como voltar a fazer essas atividades e tarefas, e vai lhe ajudar a quebrar esse ciclo vicioso.</p>\r\n	8	12	\N	t	2016-02-02 12:25:23.295346	2016-06-07 14:53:17.105393
66	Slide 1	<p>Esperamos que hayas podido realizar la actividad placentera que planeaste hace una semana.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ahora queremos que pienses en otra <strong><em><u>actividad saludable</u> </em></strong>para mejorar tu salud, esta vez puede requerir un poco m&aacute;s de planificaci&oacute;n&nbsp;o tiempo que la actividad saludable que hiciste antes en este programa.</p>\r\n	1	42	\N	t	2014-06-13 20:16:10.715292	2016-05-31 17:27:01.1394
62	Slide 1	<p>&iexcl;Nada se aprende inmediatamente!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si tienes dificultades con una actividad o tarea, lo mejor es partirla en partes m&aacute;s puntuales o peque&ntilde;as.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El cambio es m&aacute;s f&aacute;cil cuando empezamos a hacer actividades m&aacute;s peque&ntilde;as en vez de grandes.</p>\r\n	1	38	\N	t	2014-06-13 20:12:49.470641	2016-05-05 19:29:23.155373
68	 Slide 1	<p>En general los grandes cambios no ocurren de un d&iacute;a para el otro, sino que toman algo de tiempo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Usualmente el cambio es tan gradual que es dif&iacute;cil darnos cuenta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pero los peque&ntilde;os cambios diarios llevan a grandes cambios en el tiempo.</p>\r\n	1	43	\N	t	2014-06-13 20:19:07.544611	2016-02-22 19:05:56.37405
154	Lesson Day 4 Form Slide	<p>Answer this question for me.</p>\r\n\r\n<p><select name="day_4"><option value="option 1">option 1</option><option value="option 2">option 2</option><option value="option 3">option 3</option></select></p>\r\n	4	56	\N	t	2014-08-07 14:44:45.35309	2014-08-07 14:44:45.35309
156	Lesson Day 5 Slide 2	Veniam sunt swine, spare ribs magna biltong non pork elit fugiat. Pariatur non reprehenderit swine pork chop biltong sint officia beef bacon kevin flank venison. 	2	57	\N	t	2014-08-07 14:47:16.352565	2014-08-07 14:47:16.352565
155	Lesson Day 5 Slide 1	<p>Officia pork capicola hamburger boudin culpa ribeye, prosciutto bresaola irure tempor doner sunt. In tongue eiusmod jerky, doner spare ribs reprehenderit shankle aliqua.</p>\r\n	1	57	\N	t	2014-08-07 14:46:45.046613	2014-08-07 14:47:29.062284
157	Lesson Day 5 Form SLide	<p>Here you go.</p>\r\n\r\n<p><select name="day_5"><option value="option 1">option 1</option><option value="option 2">option 2</option><option value="option 3">option 3</option></select></p>\r\n	3	57	\N	t	2014-08-07 14:48:20.583869	2014-08-07 14:48:20.583869
148	Lesson Day 3 Slide 1	<p>90&#39;s chambray stumptown fingerstache, Banksy brunch Marfa. Whatever church-key PBR pour-over, fixie umami PBR&amp;B irony chambray master cleanse chia McSweeney&#39;s hoodie.</p>\r\n	1	55	\N	t	2014-08-07 13:48:08.974906	2014-08-07 14:48:57.07708
168	Slide 2	<p>Recuerda:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuando mejoramos nuestra salud f&iacute;sica, nuestro &aacute;nimo tambi&eacute;n mejora.</p>\r\n	2	42	\N	t	2014-08-17 23:56:24.225658	2016-03-10 14:09:56.216327
180	Slide 3	<p dir="ltr" style="text-align: justify;">Muitas vezes, a gente tamb&eacute;m deixa de fazer atividades agrad&aacute;veis, como visitar amigos, ou passear. Como resultado, muitas vezes nos sentimos ainda pior e entramos em um ciclo vicioso que nos leva a fazer cada vez menos e nos faz sentir cada vez mais para baixo.</p>\r\n	3	12	\N	t	2016-02-02 12:22:30.162156	2016-05-19 12:56:15.136188
271	Slide 4	<p dir="ltr" style="text-align:justify">Vamos tentar um exemplo: Qual &eacute; a sua cor favorita?</p>\r\n\r\n<p dir="ltr"><select name="favorite color"><option value="Vermelha">Vermelha</option><option value="Azul">Azul</option><option value="Verde">Verde</option><option value="Amarelo">Amarelo</option><option value="Pink">Pink</option><option value="Preto">Preto</option><option value="Roxo">Roxo</option><option value="Marrom">Marrom</option><option value="Laranja">Laranja</option><option value="Outra">Outra</option></select></p>\r\n\r\n<p dir="ltr" style="text-align:justify">Se quiser mudar sua resposta, clique novamente na seta e escolha outra op&ccedil;&atilde;o.</p>\r\n	4	60	\N	t	2016-05-19 12:51:33.970579	2016-05-19 12:52:31.653931
181	Slide 4	<p dir="ltr" style="text-align: justify;">Este programa vai ajud&aacute;-lo/a a encontrar maneiras de sair deste ciclo vicioso que faz voc&ecirc; se sentir menos feliz e que dificulta melhorar a sua sa&uacute;de. O primeiro passo &eacute; identificar quais s&atilde;o as atividades que voc&ecirc; costumava fazer, mas que n&atilde;o faz mais h&aacute; algum tempo.</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	12	\N	t	2016-02-02 12:24:00.99208	2016-05-19 12:56:26.72361
184	Slide 3	<p dir="ltr" style="text-align: justify;">Assim, voc&ecirc; pode adaptar o programa facilmente &agrave; sua rotina. Portanto, voc&ecirc; precisa se esfor&ccedil;ar um pouco para realizar as atividades que voc&ecirc; escolheu!</p>\r\n	3	11	\N	t	2016-02-02 12:28:55.090399	2016-05-19 13:00:32.243343
138	Slide 2	<p dir="ltr" style="text-align: justify;">Tire um momento para pensar sobre o que voc&ecirc; gostaria de alcan&ccedil;ar esta semana. Ao faz&ecirc;-lo, lembre-se da coisa mais importante: a a&ccedil;&atilde;o vem antes da motiva&ccedil;&atilde;o.</p>\r\n	2	25	\N	t	2014-07-31 23:56:04.285335	2016-05-19 13:16:11.510567
186	Slide 5	<p dir="ltr" style="text-align: justify;">Na pr&oacute;xima sess&atilde;o voc&ecirc; vai come&ccedil;ar aos poucos a incluir novas atividades no seu dia-a-dia. No come&ccedil;o voc&ecirc; vai fazer atividades mais curtas. Logo depois voc&ecirc; vai fazer atividades que podem exigir um pouco mais de tempo e planejamento.&nbsp;</p>\r\n	5	11	\N	t	2016-02-02 12:30:10.214429	2016-05-19 13:01:02.230148
172	Slide 2	<p>Peque&ntilde;os cambios en tu rutina diaria, por ejemplo, salir a caminar o encontrarte con amigos en vez de ver televisi&oacute;n, pueden llevar a mayores cambios en tu vida con el tiempo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>De esta forma creas, poco a poco, una vida saludable y feliz.&nbsp;</p>\r\n	2	43	\N	t	2014-09-26 16:07:08.886239	2016-02-22 19:06:38.116774
173	Slide 3	<p>Es importante recordar qu&eacute; tan lejos has llegado y valorar los cambios que has logrado, aunque algunos te parezcan peque&ntilde;os.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Recuerda que los peque&ntilde;os cambios pueden ser el inicio de grandes cambios a largo plazo.</p>\r\n	3	43	\N	t	2014-09-26 16:08:05.741381	2016-02-22 19:07:18.031288
9	Slide 3	<p style="text-align: justify;">Como vimos antes, quando nos sentimos tristes ou preocupados, deixamos de fazer algumas dessas atividades, mesmo as que gostamos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	3	10	\N	t	2014-05-08 04:29:13.493372	2016-05-19 13:03:54.915755
19	Slide 7	<p>Tus respuestas han sido guardadas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Este programa te dar&aacute; algunas ideas de c&oacute;mo volver a hacer estas actividades o tareas y terminar con ese c&iacute;rculo vicioso.</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n	7	19	\N	t	2014-05-15 14:27:53.62692	2016-05-31 16:40:23.1682
169	Slide 2	<p>&nbsp;</p>\r\n\r\n<p>Sabemos que toma un tiempo hasta que estas nuevas conductas sean parte de nuestra rutina y formen un nuevo h&aacute;bito, pero si te mantienes firme, cada vez ser&aacute; m&aacute;s f&aacute;cil y natural.</p>\r\n	2	47	\N	t	2014-08-18 00:03:28.384082	2016-02-22 19:34:34.610728
135	Slide 2	<p dir="ltr" style="text-align: justify;">Quando voc&ecirc; se sente cansado e sem energia, &eacute; importante que tente fazer as coisas de forma mais lenta, passo a passo. Isso significa que voc&ecirc; n&atilde;o precisa fazer todas as suas atividades e tarefas de uma vez s&oacute;, mas pode focar em fazer um pouco de cada vez.</p>\r\n	2	15	\N	t	2014-07-31 23:48:22.737052	2016-05-19 13:08:52.071817
73	Slide 3	<p>Algunos de nuestros h&aacute;bitos son muy positivos para nuestras vidas, pero algunos no.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para cambiar los h&aacute;bitos que no son positivos, primero debemos reconocer cu&aacute;les no nos hacen bien y planear una forma de modificarlos.</p>\r\n	3	46	\N	t	2014-06-13 20:21:23.966642	2016-02-26 16:15:44.217241
270	Slide 6	<p dir="ltr">Vamos tentar:&nbsp;Quais alimentos voc&ecirc; gosta?</p>\r\n\r\n<p><label><input name="foods" type="checkbox" value="Frutas" /> Frutas</label><br />\r\n<label><input name="foods" type="checkbox" value="Cereais" /> Cereais</label><br />\r\n<label><input name="foods" type="checkbox" value="Salada" /> Salada</label><br />\r\n<label><input name="foods" type="checkbox" value="Feijão" /> Feij&atilde;o</label><br />\r\n<label><input name="foods" type="checkbox" value="Ovos" /> Ovos</label><br />\r\n<label><input name="foods" type="checkbox" value="Carnes" /> Carnes</label><br />\r\n<label><input name="foods" type="checkbox" value="Arroz" /> Arroz</label></p>\r\n	6	60	\N	t	2016-05-19 12:42:27.333064	2016-06-30 17:26:34.471622
137	Slide 2	<p dir="ltr" style="margin-right: 1.5pt; text-align: justify;">Tarefas s&atilde;o aquelas atividades que nos deixam satisfeitos e geram um sentimento de controle sobre nossa vida depois de ter cumprido elas, como por exemplo, terminar uma tarefa de casa, pagar as contas, ou ajudar um familiar com problemas.</p>\r\n\r\n<p>&nbsp;</p>\r\n	2	16	\N	t	2014-07-31 23:52:13.755092	2016-05-19 13:10:20.291611
3	Slide 1	<h2 style="text-align: justify;">Bem-vindo ao CONEMO!</h2>\r\n\r\n<p style="text-align: justify;">Este programa foi desenvolvido para ajudar voc&ecirc; a melhorar a sua sa&uacute;de f&iacute;sica e emocional.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	1	9	\N	t	2014-05-08 04:19:37.123	2016-05-19 12:53:42.834865
185	Slide 4	<p dir="ltr" style="text-align:justify">Durante as pr&oacute;ximas semanas, &eacute; importante lembrar o que voc&ecirc; gostaria de alcan&ccedil;ar at&eacute; o final deste programa. Isso vai ser uma motiva&ccedil;&atilde;o importante para as suas atividades, sobretudo quando voc&ecirc; planejou coisas que s&atilde;o um pouco mais dif&iacute;ceis de come&ccedil;ar.</p>\r\n	4	11	\N	t	2016-02-02 12:29:40.310161	2016-05-19 13:00:53.461644
139	Slide 5	<p dir="ltr" style="text-align: justify;">O perigo com reca&iacute;das &eacute; que, se voc&ecirc; n&atilde;o faz uma atividade planejada uma vez, o risco de n&atilde;o faz&ecirc;-la de novo na pr&oacute;xima vez aumenta. Assim, &eacute; f&aacute;cil entrar no c&iacute;rculo negativo novamente.</p>\r\n	5	29	\N	t	2014-08-01 00:24:50.581089	2016-05-19 13:43:49.405133
140	Slide 2	<p dir="ltr" style="text-align: justify;">No seu dia-a-dia, pequenas mudan&ccedil;as, por exemplo, lavar roupa em vez de assistir TV, pode levar a grandes mudan&ccedil;as em sua vida ao longo do tempo. Desta forma, pouco a pouco, voc&ecirc; cria a vida que voc&ecirc; realmente quer.</p>\r\n	2	50	\N	t	2014-08-01 00:30:00.949995	2016-05-19 13:42:30.447385
89	Slide 1	<p>&iexcl;Hoy empezaremos a ser m&aacute;s activos!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para hacerlo m&aacute;s f&aacute;cil, empezaremos con una actividad placentera.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Las actividades placenteras son aquellas que disfrutamos y que nos hacen sentir bien cuando las hacemos.</p>\r\n	1	21	\N	t	2014-07-24 18:23:58.851052	2016-02-19 17:28:24.78913
81	Slide 5 (video)	<p dir="ltr" style="text-align: justify;">Voc&ecirc; receber&aacute; sess&otilde;es como esta tr&ecirc;s vezes por semana. Em algumas dessas sess&otilde;es voc&ecirc; vai assistir a um v&iacute;deo que cont&eacute;m mais informa&ccedil;&otilde;es para ajud&aacute;-lo a aproveitar ao m&aacute;ximo este programa. Clique no tri&acirc;ngulo branco para iniciar o v&iacute;deo:</p>\r\n\r\n<p style="text-align: justify;">videoSP1</p>\r\n	5	9	\N	t	2014-07-18 12:31:03.281539	2016-05-19 12:54:46.837281
40	Slide 2	<p dir="ltr" style="text-align: justify;">Um bom plano &eacute; como uma rota em um mapa. Ao seguir a sua rota, pode acontecer que voc&ecirc; se depare com algo que n&atilde;o est&aacute; no mapa, tal como uma lombada. Mas, se voc&ecirc; segue sua rota, sem perder o foco no seu destino, voc&ecirc; vai, mesmo assim, chegar onde voc&ecirc; quer estar no final.</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	2	29	\N	t	2014-05-18 23:31:04.234214	2016-05-19 13:43:23.486474
182	Slide 5	<p dir="ltr" style="text-align:justify">D&ecirc; uma olhada na lista na p&oacute;xima p&aacute;gina e escolha uma ou mais atividades prazerosas que voc&ecirc; costumava fazer, mas que N&Atilde;O faz mais h&aacute; algum tempo.</p>\r\n	5	12	\N	t	2016-02-02 12:24:48.329106	2016-05-19 13:51:17.926971
50	Slide 1	<p>Hace unos d&iacute;as prestamos atenci&oacute;n a las actividades placenteras que te pueden hacer sentir mejor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ahora es tiempo de pensar en las conductas que nos ayudan a mejorar nuestra salud f&iacute;sica.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Si mejoramos nuestra salud f&iacute;sica, nuestra salud emocional tambi&eacute;n mejorar&aacute;!</p>\r\n	1	23	\N	t	2014-06-13 19:32:34.273234	2016-02-19 18:12:46.510342
86	Slide 3	<p>&nbsp;</p>\r\n\r\n<p>El objetivo de CONEMO es ayudarte a realizar nuevas actividades que te har&aacute;n sentir m&aacute;s saludable y m&aacute;s feliz.</p>\r\n	3	18	\N	t	2014-07-24 16:08:11.708124	2016-02-19 16:44:12.706272
112	Slide 1	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Talvez voc&ecirc; tenha reparado que fazer a atividade planejada foi muito mais f&aacute;cil e agrad&aacute;vel do que voc&ecirc; imaginava, ou tenha sido mais dif&iacute;cil, ou ent&atilde;o teve dificuldades para come&ccedil;ar.</p>\r\n	1	13	\N	t	2014-07-29 16:38:50.332742	2016-05-19 13:05:11.446221
192	Slide 4	<p dir="ltr" style="text-align: justify;">Muitas vezes deixamos essas tarefas de lado, porque normalmente elas n&atilde;o s&atilde;o t&atilde;o divertidas, relaxantes ou prazerosas. Mas se elas n&atilde;o s&atilde;o feitas, podemos nos sentir pior. Se conseguimos nos motivar a fazer essas tarefas,<strong> </strong>ficamos satisfeitos e orgulhosos de n&oacute;s mesmos.</p>\r\n	4	16	\N	t	2016-02-02 13:05:34.232362	2016-05-19 13:10:48.105052
84	Slide 8	<p>&iquest;Qu&eacute; te gustar&iacute;a lograr al finalizar este programa? Elige una o varias de las siguientes opciones:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><label><input name="personal_goal" type="checkbox" value="Ser más feliz" /> Ser m&aacute;s feliz</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Sentirme mejor conmigo mismo" /> Sentirme mejor conmigo mismo</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Volver a trabajar" /> Volver a trabajar</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Cuidar mejor a mi familia" /> Cuidar mejor a mi familia</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Mejorar mi salud" /> Mejorar mi salud</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Disfrutar más mi vida" /> Disfrutar m&aacute;s mi vida</label></p>\r\n	8	18	\N	t	2014-07-18 14:15:34.201417	2016-06-30 17:24:53.121918
88	Slide 2	<p>Con frecuencia tambi&eacute;n hacemos menos actividades que antes disfrut&aacute;bamos, como visitar a los amigos o salir.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuando eso sucede nos sentimos aun peor, entrando a un c&iacute;rculo vicioso que nos lleva a hacer cada vez menos cosas y a sentirnos cada vez m&aacute;s deca&iacute;dos.</p>\r\n	2	19	\N	t	2014-07-24 17:56:01.039055	2016-02-25 21:28:29.549666
174	Fun activity	<p>What did you do today that was fun?</p>\r\n\r\n<p><input name="fun_activity" type="text" /></p>\r\n	1	58	\N	t	2014-11-14 16:14:31.273921	2014-11-14 16:14:31.273921
272	Slide 6	<p><label><input name="neglected_activities" type="checkbox" value="Relaxar (massagem, ler um livro, ouvir música, etc.)" />&nbsp; Relaxar (massagem, ler um livro, ouvir m&uacute;sica, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Passar tempo com família e amigos" />&nbsp; Passar tempo com fam&iacute;lia e amigos</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Fazer atividades físicas" />&nbsp; Fazer atividades f&iacute;sicas</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Sair (parque, almoço, shopping, cinema, etc.)" />&nbsp; Sair (parque, almo&ccedil;o, shopping, cinema, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Participar de atividades na comunidade (coral, igreja, trabalho voluntário, etc.)" />&nbsp; Participar de atividades na comunidade (coral, igreja, trabalho volunt&aacute;rio, etc.)</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Assistir uma palestra / aprender algo novo" />&nbsp; Assistir uma palestra / aprender algo novo</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Cuidar da casa ou do jardim" />&nbsp; Cuidar da casa ou do jardim</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Fazer crochê ou artesanato" />&nbsp; Fazer croch&ecirc; ou artesanato</label><br />\r\n<label><input name="neglected_activities" type="checkbox" value="Cuidar da minha saúde" />&nbsp; Cuidar da minha sa&uacute;de</label></p>\r\n	6	12	\N	t	2016-05-19 12:57:45.452911	2016-06-30 17:28:03.33776
45	Slide 2	<p>Estas actividades son diferentes para cada persona. Por ejemplo, a algunos les gusta escuchar m&uacute;sica mientras a otros les gusta caminar.</p>\r\n\r\n<p>Como ya hemos aprendido, cuando nos sentimos tristes o preocupados podr&iacute;amos dejar de hacer algunas de estas actividades placenteras, a pesar de que antes las disfrut&aacute;bamos.&nbsp;</p>\r\n	2	21	\N	t	2014-06-13 19:16:55.320208	2016-02-25 21:35:46.933545
176	Slide 4	<p>Si te sientes mejor luego de realizar la actividad de esta semana, es importante que la mantengas en tu lista de cosas que debes seguir haciendo.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si no disfrutaste la actividad o tuviste dificultades para hacerlo, podr&iacute;as intentar con otra actividad.</p>\r\n	4	22	\N	t	2015-08-07 21:23:32.202054	2016-05-05 17:31:06.546004
177	Slide 5	<p><span style="line-height:20.8px">Este es el momento para empezar a &ldquo;probar&rdquo; lo que te hace sentir mejor.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Esta es tu oportunidad para aumentar las actividades que te hacen sentir mejor y tener una vida m&aacute;s saludable!</p>\r\n	5	22	\N	t	2015-08-07 21:30:59.615198	2016-05-05 17:31:29.120847
113	Slide 4	<p style="text-align:justify">Se voc&ecirc; se sentiu melhor depois de ter realizado a nova atividade nesta semana, voc&ecirc; sabe que deveria continuar com esta atividade. Se voc&ecirc; n&atilde;o gostou da atividade, ou teve dificuldades para faz&ecirc;-la<strong>,</strong> voc&ecirc; pode tentar outra atividade.</p>\r\n	4	13	\N	t	2014-07-29 16:42:16.271097	2016-05-19 13:06:08.701577
115	Slide 3	<p dir="ltr" style="text-align: justify;">Se voc&ecirc; escolheu uma tarefa que est&aacute; muito dif&iacute;cil de fazer, escolha uma mais f&aacute;cil.</p>\r\n\r\n<p style="text-align: justify;">Planeje suas atividades no seu pr&oacute;prio ritmo, respeitando seus limites, mas continue em frente!</p>\r\n	3	15	\N	t	2014-07-29 16:54:25.857409	2016-05-19 13:09:14.438878
116	Slide 3	<p dir="ltr" style="text-align: justify;">Fazer essas tarefas n&atilde;o parece agrad&aacute;vel a primeira vista, mas isso tamb&eacute;m &eacute; uma forma importante de melhorar a sua sa&uacute;de e como voc&ecirc; se sente sobre si mesmo.</p>\r\n	3	16	\N	t	2014-07-29 17:00:33.908742	2016-05-19 13:10:33.540395
175	Slide 3	<p>Por favor, presiona el tri&aacute;ngulo blanco para iniciar el video y aprender m&aacute;s sobre esto:</p>\r\n\r\n<p>videoLM2</p>\r\n	3	22	\N	t	2015-08-07 20:53:46.481094	2016-03-04 18:36:43.598735
103	Slide 1	<p dir="ltr" style="text-align: justify;">Geralmente grandes mudan&ccedil;as n&atilde;o acontecem de um dia para o outro, podem levar um tempo. Sobretudo, as mudan&ccedil;as acontecem pouco a pouco e o progresso &agrave;s vezes pode ser dif&iacute;cil de notar. Mas pequenos passos levam a grandes mudan&ccedil;as ao longo do tempo.</p>\r\n	1	50	\N	t	2014-07-29 04:12:16.026579	2016-05-19 13:42:22.173811
102	Slide 6	<p dir="ltr" style="text-align: justify;">Por isso, se voc&ecirc; come&ccedil;ou a se desviar, &eacute; importante voltar ao caminho certo o mais r&aacute;pido poss&iacute;vel e come&ccedil;ar a se mover na dire&ccedil;&atilde;o de uma vida mais saud&aacute;vel e feliz!</p>\r\n\r\n<div>&nbsp;</div>\r\n	6	29	\N	t	2014-07-29 04:11:26.20411	2016-05-19 13:43:57.966639
104	Slide 1	<p dir="ltr" style="text-align: justify;">Fazer algo pela primeira vez pode ser dif&iacute;cil. Fazer algo pela cent&eacute;sima vez &eacute; mais f&aacute;cil. Fazer algo pela mil&eacute;sima vez &eacute; quase autom&aacute;tico.</p>\r\n\r\n<p>&nbsp;</p>\r\n	1	51	\N	t	2014-07-29 04:13:16.840286	2016-05-19 13:44:14.573086
105	Slide 3	<p dir="ltr" style="text-align: justify;">Alguns h&aacute;bitos que temos s&atilde;o muito positivos para nossa vida, outros n&atilde;o.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Para mudar os h&aacute;bitos que n&atilde;o s&atilde;o positivos, primeiramente temos que reconhecer quais deles n&atilde;o est&atilde;o nos fazendo bem e planejar uma forma de modific&aacute;-los.</p>\r\n	3	51	\N	t	2014-07-29 04:13:27.287032	2016-05-19 13:44:31.865271
158	Slide 2	<p>T&oacute;mate un momento para pensar en lo que te gustar&iacute;a lograr esta vez.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Siempre recuerda lo que hemos aprendido: la acci&oacute;n viene antes de la motivaci&oacute;n.&nbsp;</p>\r\n	2	37	\N	t	2014-08-08 18:16:26.361242	2016-02-22 16:11:31.408467
106	Slide 1	<p style="text-align: justify;">As conquistas que s&atilde;o realmente importantes na nossa vida levam um certo tempo e requerem um certo esfor&ccedil;o. Mudar seu estilo de vida n&atilde;o &eacute; nada f&aacute;cil. Voc&ecirc; precisa fazer uma rotina e seguir com ela, mesmo que ocorram contratempos!</p>\r\n	1	52	\N	t	2014-07-29 04:14:02.395442	2016-05-19 13:46:39.364101
133	Slide 4	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Sabemos que planejar fazer novas atividades n&atilde;o &eacute; algo f&aacute;cil, mesmo que sejam agrad&aacute;veis. Nesses momentos, &eacute; normal que voc&ecirc; pense: &ldquo;Eu n&atilde;o tenho vontade de fazer nada&rdquo;, ou &ldquo;Eu deveria gastar meu tempo fazendo outras coisas mais importantes&quot;.</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	4	10	\N	t	2014-07-31 23:27:16.04325	2016-05-19 13:04:17.590302
100	Slide 2	<p style="text-align: justify;">Aumentar as atividades na sua vida e viver uma vida mais saud&aacute;vel e mais feliz requer algum esfor&ccedil;o. <span style="font-family:arial">Por isso, &eacute; importante respeitar o seu pr&oacute;prio ritmo, fazer pausas</span><strong>, </strong>caso<span style="font-family:arial"> necess&aacute;rio, e dar recompensas a si mesmo.</span></p>\r\n	2	24	\N	t	2014-07-29 04:03:17.650773	2016-05-19 13:15:11.785413
119	Slide 1	<p dir="ltr" style="text-align: justify;">Agora voc&ecirc; provavelmente j&aacute; tem uma lista de atividades que voc&ecirc; conseguiu fazer nas &uacute;ltimas 3 semanas. Lembre-se de como voc&ecirc; se sentiu bem quando conseguiu realizar uma tarefa que planejou! E continue realizando as atividades que fizeram voc&ecirc; se sentir melhor.</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n	1	27	\N	t	2014-07-29 17:24:54.155798	2016-05-19 13:41:11.581293
120	Slide 2	<p style="text-align: justify;">Lembre-se: quando melhoramos a nossa sa&uacute;de f&iacute;sica, o nosso emocional tamb&eacute;m melhora!</p>\r\n\r\n<p>&nbsp;</p>\r\n	2	28	\N	t	2014-07-29 17:31:19.231129	2016-05-19 13:41:55.028986
53	Slide 1	<p>Mira este video y observa c&oacute;mo es que ser m&aacute;s activo tambi&eacute;n ayud&oacute; a otras personas:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>videoLM3</p>\r\n\r\n<p>&nbsp;</p>\r\n	1	33	\N	t	2014-06-13 19:41:28.107538	2016-06-15 15:30:14.187102
251	Slide 5	<p style="text-align:justify">&Agrave;s vezes voc&ecirc; pode querer selecionar mais de uma resposta para a mesma pergunta. Por exemplo, na pergunta &ldquo;Quais alimentos voc&ecirc; gosta?&rdquo;. Provavelmente voc&ecirc; vai querer selecionar mais de um alimento. Para isso, clique nos quadradinhos para selecionar todas as respostas que desejar. Caso tenha selecionado uma resposta errada, clique novamente sobre ela e ela desaparecer&aacute;.&nbsp;</p>\r\n	5	60	\N	t	2016-03-01 13:59:23.89602	2016-05-19 12:52:38.065635
228	Slide 3	<p>Cuando te recompensas a ti mismo, est&aacute;s reconociendo lo que has logrado.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;As&iacute; que no esperes a que otros te recompensen!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Piensa en una recompensa saludable que podr&iacute;as darte cuando completes una actividad planeada.</p>\r\n	3	35	\N	t	2016-02-22 16:08:02.316087	2016-03-04 18:37:55.880823
229	Slide 4	<p>&nbsp;</p>\r\n\r\n<p>Por ejemplo, despu&eacute;s de haber hecho una actividad, como limpiar la casa o hacer ejercicio, podr&iacute;as comprarte algo que te guste, ver una pel&iacute;cula, hacerte las u&ntilde;as o hacerte un masaje.&nbsp;</p>\r\n	4	35	\N	t	2016-02-22 16:08:29.086744	2016-05-05 17:39:44.795597
134	Slide 2	<p dir="ltr" style="margin-right: 1.5pt; text-align: justify;">Podem ser atividades cotidianas, como limpar a casa, ou coisas relacionadas a sua doen&ccedil;a, como tomar a sua medica&ccedil;&atilde;o ou ir ao m&eacute;dico.</p>\r\n\r\n<p>&nbsp;</p>\r\n	2	12	\N	t	2014-07-31 23:36:57.064605	2016-05-19 12:56:03.420401
15	Slide 10	<p><span style="line-height:1.6">Tus respuestas han sido guardadas.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="line-height:1.6">Durante las siguientes 6 semanas es importante que recuerdes lo que quieres lograr con este programa.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esta ser&aacute; una motivaci&oacute;n importante para realizar tus actividades dentro del programa CONEMO.</p>\r\n	10	18	\N	t	2014-05-15 13:39:18.674392	2016-05-31 16:41:56.269234
223	Slide 4	<p>Con frecuencia evitamos estas tareas y no tenemos ganas de hacerlas porque usualmente no son tan divertidas o relajantes como las actividades placenteras.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pero si no las hacemos, lo m&aacute;s probable es que nos sintamos peor.&nbsp;</p>\r\n	4	34	\N	t	2016-02-22 15:53:13.813588	2016-02-25 22:34:10.184817
224	Slide 5	<p>Si nos motivamos para hacer esas tareas, despu&eacute;s nos sentiremos bien con nosotros mismos y orgullosos de haberlas hecho.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Intentemos!</p>\r\n	5	34	\N	t	2016-02-22 15:54:13.148603	2016-02-25 22:34:36.829384
92	Slide 3	<p>A primera vista, no siempre parece placentero hacer estas tareas, pero la verdad es que <strong><em>nos sentimos bien cuando las terminamos</em></strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Por eso, cumplir con estas tareas tambi&eacute;n es una forma importante para conseguir sentirnos mejor.</p>\r\n	3	34	\N	t	2014-07-24 21:39:48.6586	2016-03-04 15:38:37.760264
222	Slide 3	<p>Si has elegido una actividad que te resulta muy dif&iacute;cil de hacer, elige una que sea un poco m&aacute;s sencilla.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Planea tus actividades a tu propio ritmo, respetando tus l&iacute;mites.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Pero sigue para adelante!</p>\r\n	3	33	\N	t	2016-02-19 18:22:44.427002	2016-03-04 18:37:25.426892
232	Slide 4	<p>&nbsp;</p>\r\n\r\n<p>Recuerda:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuando logres hacer la primera parte peque&ntilde;a de tu lista, elige la siguiente parte a realizar, hasta que logres realizar la actividad grande que quer&iacute;as hacer. &nbsp;</p>\r\n	4	38	\N	t	2016-02-22 16:27:45.763182	2016-05-05 19:32:43.204436
233	Slide 4	<p>Sabemos que puede tomar un tiempo hasta que esas actividades formen parte de tu rutina diaria, pero si continuas haci&eacute;ndolas, ser&aacute; cada vez m&aacute;s f&aacute;cil y natural.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si sigues siendo activo/a, alcanzar&aacute;s tu meta.</p>\r\n	4	43	\N	t	2016-02-22 19:07:55.163915	2016-02-26 15:09:21.612082
235	Slide 2	<p>Es normal que te encuentres con obst&aacute;culos en el camino.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Quiz&aacute;s habr&aacute; momentos en los cuales ser&aacute; dif&iacute;cil realizar las actividades que incorporaste en tu rutina cotidiana, por ejemplo cuando viene visita de familiares o tienes que atender otro pendiente urgente.&nbsp;</p>\r\n	2	44	\N	t	2016-02-22 19:13:22.190806	2016-05-05 19:48:01.600684
236	Slide 3	<p>&nbsp;</p>\r\n\r\n<p>Como hemos visto en el video, cuando dejamos de hacer nuestras actividades una vez, no necesariamente tiene consecuencias negativas, siempre y cuando sigamos haci&eacute;ndolas despu&eacute;s.</p>\r\n	3	44	\N	t	2016-02-22 19:14:43.40029	2016-05-05 19:48:32.889377
237	Slide 5	<p>Ya sabemos, si dejamos de hacer nuestras actividades una vez, es m&aacute;s probable que tampoco las hagamos la siguiente vez.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esto, a su vez, tiene el peligro de que poco a poco empezamos a descuidar las cosas que son importantes para la salud, como seguir una dieta saludable, hacer ejercicios o ir al m&eacute;dico.</p>\r\n	5	44	\N	t	2016-02-22 19:15:26.351746	2016-05-05 19:49:24.587932
238	Slide 6	<p>Es muy importante que identifiques los obst&aacute;culos y est&eacute;s atento a tu conducta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En momentos dif&iacute;ciles recuerda la meta que ten&iacute;as al principio y las actividades que planeaste para llegar ah&iacute; y vuelve a tu camino.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;No te dejes desviar!</p>\r\n	6	44	\N	t	2016-02-22 19:16:11.631577	2016-05-05 19:45:16.346106
239	Slide 7	<p>&nbsp;</p>\r\n\r\n<p>Por ello es importante que identifiques los obst&aacute;culos y, si te descarrilas, vuelvas al camino tan r&aacute;pido como sea posible y sigas avanzando hacia una vida saludable y feliz.</p>\r\n	7	44	\N	t	2016-02-22 19:16:56.061504	2016-05-05 19:45:16.351922
234	Slide 1	<p>Empecemos la sesi&oacute;n de hoy d&iacute;a con este video:</p>\r\n\r\n<p>videoLM5</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lo importante es tener una meta clara a d&oacute;nde quieres llegar.</p>\r\n	1	44	\N	t	2016-02-22 19:12:10.211944	2016-06-15 15:29:40.332867
240	Slide 5	<p>Si contin&uacute;as poniendo en pr&aacute;ctica tu nueva actividad, aun cuando al comienzo te cueste un poco, luego se volver&aacute; m&aacute;s f&aacute;cil y con el tiempo se convertir&aacute; en un nuevo h&aacute;bito.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iquest;Intentamos?&nbsp;</p>\r\n	5	46	\N	t	2016-02-22 19:29:11.499896	2016-02-26 16:16:40.735969
231	Slide 2	<p>Mira este video para saber m&aacute;s sobre ello:</p>\r\n\r\n<p>videoLM4</p>\r\n	2	38	\N	t	2016-02-22 16:26:33.403758	2016-06-15 15:30:33.629481
247	Slide 6a	<p>&nbsp;</p>\r\n\r\n<p>Una forma de hacer que una actividad positiva se convierta en una rutina es relacionar esta &nbsp;actividad con un cierto momento del d&iacute;a o con un d&iacute;a de la semana, como hemos visto antes.&nbsp;</p>\r\n	7	46	\N	t	2016-02-26 16:18:16.976898	2016-02-26 16:18:34.527941
246	Slide 5	<p>&iexcl;No olvides recompensarte cuando cumples con tu programaci&oacute;n!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esto te ayudar&aacute; a seguir motivado y valorar la actividad a&uacute;n m&aacute;s.</p>\r\n	5	47	\N	t	2016-02-22 19:37:20.790534	2016-02-22 19:37:20.790534
241	Slide 6	<p>&nbsp;</p>\r\n\r\n<p>Piensa en una de las actividades que has intentado hacer a lo largo de este programa y que te hizo sentir bien, una que podr&iacute;as incluir en tu rutina con regularidad.</p>\r\n	6	46	\N	t	2016-02-22 19:30:18.898299	2016-02-26 16:17:36.471815
243	Slide 8	<p>Otra estrategia podr&iacute;a ser unir la nueva actividad con otra que ya hagas regularmente, por ejemplo almorzar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En este caso, podr&iacute;as caminar todos los d&iacute;as despu&eacute;s de almuerzo.</p>\r\n	9	46	\N	t	2016-02-22 19:32:19.74241	2016-02-26 16:18:34.532094
242	Slide 7	<p>Por ejemplo, imaginemos que la actividad que quieres incorporar en tu rutina es caminar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Piensa cu&aacute;l es el mejor momento del d&iacute;a o de la semana para hacerlo, por ejemplo: siempre en las ma&ntilde;anas, despu&eacute;s del trabajo o los s&aacute;bados.</p>\r\n	8	46	\N	t	2016-02-22 19:31:08.443709	2016-02-26 16:19:02.79738
244	Slide 3	<p>A algunas personas les ayuda escribir un listado de actividades en un papel o usar un calendario para recordar lo que tienen que hacer.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>A otras tambi&eacute;n les gusta colgar esta lista o calendario en un lugar que siempre est&eacute; a la vista, como por ejemplo, el refrigerador.&nbsp;</p>\r\n	3	47	\N	t	2016-02-22 19:35:31.508636	2016-02-26 16:20:23.478762
245	Slide 4	<p>&nbsp;</p>\r\n\r\n<p>Estas estrategias pueden ayudarte a mantenerte en el camino correcto y recordarte que debes mantenerte siempre activo.</p>\r\n	4	47	\N	t	2016-02-22 19:37:04.263905	2016-02-26 16:21:42.262334
248	Slide 1	<p dir="ltr" style="text-align: justify;">Esta &eacute; uma sess&atilde;o de treinamento sobre como usar o aplicativo CONEMO. Neste aplicativo voc&ecirc; vai ler textos, assistir a v&iacute;deos, selecionar objetivos, atividades e responder perguntas.</p>\r\n\r\n<p dir="ltr" style="text-align: justify;">Para ir para pr&oacute;xima p&aacute;gina, pressione a seta &agrave; direita, na parte inferior da tela.</p>\r\n\r\n<div>&nbsp;</div>\r\n	1	60	\N	t	2016-03-01 13:55:50.38884	2016-05-19 12:44:26.145146
188	Slide 5	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Esses pensamentos s&atilde;o comuns quando pedimos para as pessoas come&ccedil;arem a planejar atividades diferentes na sua rotina.</p>\r\n\r\n<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Mas lembre-se que aumentar o n&uacute;mero de atividades j&aacute; t&ecirc;m ajudado muitas pessoas a aproveitar mais a vida.</p>\r\n	5	10	\N	t	2016-02-02 12:36:24.99152	2016-05-19 13:04:28.419922
261	Slide 5	<p>A veces CONEMO te preguntar&aacute; si pudiste hacer las actividades que planeaste.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para responder, marca la casilla de S&Iacute; o NO. En caso que s&iacute;, te preguntaremos qu&eacute; tanto te gust&oacute; cada actividad planeada, como en el siguiente ejemplo.</p>\r\n	9	61	\N	t	2016-03-03 17:53:18.711536	2017-01-11 21:13:20.2572
191	Slide 5	<p dir="ltr" style="margin-right: -3pt; text-align: justify;">Esta &eacute; a sua chance de aumentar essas atividades que te fazem sentir melhor e ter uma vida mais saud&aacute;vel!</p>\r\n\r\n<div>&nbsp;</div>\r\n	5	13	\N	t	2016-02-02 12:44:21.530285	2016-05-19 13:06:19.482434
264	Slide 7	<p>Cuando llegues al final de la sesiones, encontrar&aacute;s el bot&oacute;n naranja con una casita.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cada vez que presiones &quot;la casita&quot;, volver&aacute;s a la p&aacute;gina principal de CONEMO.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&iexcl;Int&eacute;ntalo! Presiona la casita para cerrar la sesi&oacute;n de entrenamiento y volver a la p&aacute;gina principal.</p>\r\n	12	61	\N	t	2016-03-03 17:58:34.630818	2017-01-11 21:13:20.273094
255	Slide 1	<p>&iexcl;Bienvenido!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Esta es la sesi&oacute;n de entrenamiento en el uso del programa CONEMO. En este programa leer&aacute;s textos, ver&aacute;s videos, seleccionar&aacute;s actividades y responder&aacute;s preguntas.</p>\r\n\r\n<p>Para ir a la siguiente p&aacute;gina, presiona el bot&oacute;n azul con la flecha hacia la derecha al final de la pantalla.</p>\r\n	1	61	\N	t	2016-03-03 17:45:28.27311	2016-05-05 16:01:25.686781
260	Slide 4a	<p>Para hacerlo, presiona la casilla o el texto de las respuestas que quieres seleccionar.</p>\r\n\r\n<p>Si te equivocaste al seleccionar una opci&oacute;n, vuelve a presionar la respuesta elegida y ver&aacute;s que la casilla seleccionada quedar&aacute; nuevamente en blanco.</p>\r\n\r\n<p>Pract&iacute;calo en la siguiente p&aacute;gina.</p>\r\n	7	61	\N	t	2016-03-03 17:52:45.757052	2017-01-11 21:52:12.74958
198	Slide 3	<p dir="ltr" style="text-align:justify">A seguir est&atilde;o alguns passos que voc&ecirc; pode usar para completar uma atividade que voc&ecirc; teve dificuldade de realizar.</p>\r\n\r\n<p dir="ltr" style="margin-left:40px; text-align:justify">1. Identifique a atividade que voc&ecirc; quer fazer;</p>\r\n\r\n<p dir="ltr" style="margin-left:40px; text-align:justify">2. Fa&ccedil;a uma lista e divida a atividade em pequenas partes;</p>\r\n\r\n<p dir="ltr" style="margin-left:40px; text-align:justify">3. Escolha uma pequena parte para come&ccedil;ar;</p>\r\n\r\n<p dir="ltr" style="margin-left:40px; text-align:justify">4. Planeje quando e como fazer.</p>\r\n	3	26	\N	t	2016-02-02 14:58:02.937138	2016-05-19 13:34:54.164982
195	Slide 3	<p dir="ltr" style="margin-right: 6pt; text-align: justify;">Quando voc&ecirc; d&aacute; a si mesmo uma recompensa, voc&ecirc; valoriza o que voc&ecirc; conseguiu. Portanto, n&atilde;o espere que outra pessoa te recompense. Pense em uma recompensa saud&aacute;vel que voc&ecirc; poderia dar a si mesmo quando voc&ecirc; tiver completado uma atividade planejada.</p>\r\n	3	24	\N	t	2016-02-02 13:12:09.885318	2016-05-19 13:15:20.654652
196	Slide 4	<p dir="ltr" style="margin-right: 6pt; text-align: justify;">Por exemplo, a recompensa de limpar a casa poderia ser uma manicure depois. Ou, depois de fazer uma atividade f&iacute;sica, assistir um jogo de futebol com os amigos.</p>\r\n\r\n<div>&nbsp;</div>\r\n	4	24	\N	t	2016-02-02 13:12:39.080327	2016-05-19 13:15:28.796234
199	Slide 4	<p style="text-align: justify;">Veja um exemplo:</p>\r\n\r\n<p style="text-align: justify;">&nbsp;1. Atividade: controlar meu a&ccedil;&uacute;car no sangue</p>\r\n\r\n<p style="text-align: justify;">&nbsp;2. Passos:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li style="text-align: justify;">comer mais verduras</li>\r\n\t<li style="text-align: justify;">consumir menos a&ccedil;&uacute;car</li>\r\n\t<li style="text-align: justify;">fazer caminhadas semanalmente</li>\r\n\t<li style="text-align: justify;">tomar a minha medica&ccedil;&atilde;o corretamente</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;">3.Primeiro passo: Vou come&ccedil;ar tomando os meus rem&eacute;dios corretamente​</p>\r\n\r\n<p style="text-align: justify;">4.Para n&atilde;o me esquecer do rem&eacute;dio, vou tomar sempre junto com o caf&eacute; da manh&atilde;.</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	26	\N	t	2016-02-02 15:02:07.650399	2016-05-19 13:40:44.715818
200	Slide 5	<p dir="ltr" style="text-align: justify;">Lembre-se: depois que voc&ecirc; completou a primeira tarefa, escolha um pr&oacute;ximo passo da lista para concluir, at&eacute; que voc&ecirc; alcance o seu objetivo final!</p>\r\n	5	26	\N	t	2016-02-02 15:02:44.771184	2016-05-19 13:40:55.146289
202	Slide 3	<p dir="ltr" style="text-align: justify;">Lembre-se de todo crescimento que alcan&ccedil;ou at&eacute; aqui e aprecie suas mudan&ccedil;as, mesmo que elas pare&ccedil;am pequenas!</p>\r\n	3	50	\N	t	2016-02-02 15:09:13.922374	2016-05-19 13:42:39.007829
203	Slide 4	<p dir="ltr" style="text-align: justify;">Sabemos que vai demorar algum tempo at&eacute; que essas atividades se tornem parte de sua rotina di&aacute;ria, mas se voc&ecirc; continuar a faz&ecirc;-las, se tornar&aacute; mais natural e f&aacute;cil a cada vez. Se continuar andando na dire&ccedil;&atilde;o certa, voc&ecirc; vai atingir a sua meta.</p>\r\n	4	50	\N	t	2016-02-02 15:09:31.582689	2016-05-19 13:42:48.373322
253	Slide 8 (video)	<p dir="ltr" style="text-align:justify">Algumas sess&otilde;es incluem v&iacute;deos.&nbsp;Afaste dois dedos na tela para aument&aacute;-la.</p>\r\n\r\n<p dir="ltr" style="text-align:justify">Para assistir, pressione a seta (►). Para parar, clique no s&iacute;mbolo de pausa.</p>\r\n\r\n<div style="text-align: justify;">videoSP0</div>\r\n	8	60	\N	t	2016-03-01 14:05:41.046405	2016-05-25 17:59:43.32727
6	Slide 6	<p dir="ltr" style="text-align:justify">Qual(is) objetivo(s) voc&ecirc; gostaria de alcan&ccedil;ar at&eacute; o final deste programa? Escolha uma ou mais op&ccedil;&otilde;es:</p>\r\n\r\n<p style="text-align:justify"><label><input name="personal_goal" type="checkbox" value="Ser mais feliz" />&nbsp; Ser mais feliz</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Me sentir melhor comigo mesmo" />&nbsp; Me sentir melhor comigo mesmo</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Voltar a trabalhar" />&nbsp; Voltar a trabalhar</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Poder cuidar melhor dos meus familiares" />&nbsp; Poder cuidar melhor dos meus familiares</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Ter uma saúde melhor" />&nbsp; Ter uma sa&uacute;de melhor</label><br />\r\n<label><input name="personal_goal" type="checkbox" value="Aproveitar mais a vida" />&nbsp; Aproveitar mais a vida</label></p>\r\n	6	9	\N	t	2014-05-08 04:22:11.972	2016-06-30 17:29:05.074449
250	Slide 3	<p dir="ltr" style="text-align:justify">&Agrave;s vezes CONEMO pedir&aacute; que voc&ecirc; selecione atividades. Para selecion&aacute;-las, clique na seta. Uma nova janela ir&aacute; aparecer com todas as op&ccedil;&otilde;es de atividades. Role a p&aacute;gina para cima e para baixo com o dedo para visualizar todas as op&ccedil;&otilde;es e depois selecione aquela que voc&ecirc; escolheu.</p>\r\n\r\n<div>&nbsp;</div>\r\n	3	60	\N	t	2016-03-01 13:59:04.572621	2016-05-19 12:52:25.102689
252	Slide 7	<p dir="ltr" style="text-align:justify">&Agrave;s vezes CONEMO vai perguntar se voc&ecirc; conseguiu realizar as atividades planejadas. Para responder, clique em SIM ou N&Atilde;O. Em seguida, podem surgir perguntas sobre como voc&ecirc; se sentiu. Para responder, clique na seta para ver todas as op&ccedil;&otilde;es de resposta.</p>\r\n\r\n<div>&nbsp;</div>\r\n	7	60	\N	t	2016-03-01 13:59:49.729038	2016-05-19 12:52:54.441416
254	Slide 9	<p style="text-align:justify">Para voltar &agrave; tela inicial do aplicativo, clique no bot&atilde;o laranja no lado direito na parte inferior.</p>\r\n	9	60	\N	t	2016-03-01 14:06:02.039199	2016-05-19 12:53:10.480496
160	Slide 4	<p style="margin-left:3.8pt">&nbsp;</p>\r\n\r\n<p style="margin-left:3.8pt">Mira la lista en la siguiente p&aacute;gina y elige todas las actividades <strong><em><u>que</u></em></strong><u> <strong><em>antes hac&iacute;as, pero que has dejado de hacer</em></strong></u> o ya no haces tan seguido como antes.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	4	19	\N	t	2014-08-13 17:19:22.646231	2016-05-05 17:20:22.251761
\.


--
-- Name: bit_core_slides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('bit_core_slides_id_seq', 277, true);


--
-- Data for Name: bit_core_slideshows; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY bit_core_slideshows (id, title, created_at, updated_at) FROM stdin;
9	 Bem vindo ao CONEMO!	2014-05-08 04:15:29.566278	2014-05-08 04:15:29.566278
10	Manter-se ativo vai ajudar você a ter uma vida mais saudável. 	2014-05-08 04:16:06.053135	2014-05-08 04:16:06.053135
11	Mudar o que você faz pode mudar a forma como você se sente.	2014-05-08 04:16:21.841056	2014-05-08 04:16:21.841056
12	Sentir-se angustiado ou para baixo pode levar as pessoas a deixarem de realizar as coisas que costumavam fazer.	2014-05-08 04:16:41.768144	2014-05-08 04:16:41.768144
13	Terminar suas tarefas irá fazer você se sentir melhor.	2014-05-08 04:17:07.87788	2014-05-08 04:17:07.87788
14	Cuidar da sua saúde é importante!	2014-05-08 04:17:28.319007	2014-05-08 04:17:28.319007
15	Planejando  as atividades da semana.	2014-05-08 04:17:59.031647	2014-05-08 04:17:59.031647
16	Pode ser  difícil começar	2014-05-08 04:18:15.215884	2014-05-08 04:18:15.215884
17	New lesson	2014-05-08 13:39:41.627347	2014-05-08 13:39:41.627347
18	¡Bienvenido a CONEMO! 	2014-05-15 13:34:14.452733	2014-05-15 13:34:14.452733
19	Estar activo te ayudará a tener una vida más saludable	2014-05-15 13:34:26.83314	2014-05-15 13:34:26.83314
20	Cambiando las cosas que haces puedes cambiar cómo te sientes.	2014-05-15 13:34:40.112782	2014-05-15 13:34:40.112782
21	Al sentirse desanimadas o preocupadas, las personas pueden dejar de hacer cosas importantes o que antes disfrutaban.	2014-05-15 13:34:53.314472	2014-05-15 13:34:53.314472
22	Terminar nuestras tareas nos hace sentir mejor.	2014-05-15 13:35:11.356212	2014-05-15 13:35:11.356212
23	¡Cuidar a tu salud es importante!	2014-05-15 13:35:29.48888	2014-05-15 13:35:29.48888
24	Experimentar é a melhor forma de aprender. 	2014-05-18 22:50:53.392412	2014-05-18 22:50:53.392412
25	Agora é hora de planejar atividades que geram satisfação! 	2014-05-18 22:51:33.280791	2014-05-18 22:51:33.280791
26	Não torne as coisas mais difíceis do que elas realmente são.	2014-05-18 22:51:55.67938	2014-05-18 22:51:55.67938
27	Hábito é  aquilo o que mantem o  seu comportamento!	2014-05-18 22:52:51.928248	2014-05-18 22:52:51.928248
28	Atividades que geram saúde.	2014-05-18 22:53:36.032845	2014-05-18 22:53:36.032845
29	Um passo de cada vez!	2014-05-18 22:54:36.794096	2014-05-18 22:54:36.794096
33	Planeando actividades para la semana.	2014-06-13 19:35:26.475274	2014-06-13 19:35:26.475274
34	Puede ser difícil comenzar	2014-06-13 19:35:42.777362	2014-06-13 19:35:42.777362
35	Encontrando las mejores actividades para ti.	2014-06-13 19:36:04.937675	2014-06-13 19:36:04.937675
37	¡Es momento de planear actividades que al cumplirlas te hacen sentir satisfecho y orgulloso! 	2014-06-13 19:36:55.312853	2014-06-13 19:36:55.312853
38	Haz las cosas a tu propio ritmo 	2014-06-13 19:37:15.11325	2014-06-13 19:37:15.11325
40	La motivación te ayuda a comenzar, pero la costumbre es lo que te hace seguir adelante.	2014-06-13 19:37:47.068179	2014-06-13 19:37:47.068179
42	Actividades que mejoran tu salud	2014-06-13 19:38:37.964357	2014-06-13 19:38:37.964357
43	¡Un paso a la vez!	2014-06-13 19:38:59.81771	2014-06-13 19:38:59.81771
44	¡No te olvides de tu objetivo! 	2014-06-13 19:39:22.795393	2014-06-13 19:39:22.795393
46	¡Los cambios toman tiempo!	2014-06-13 19:39:50.166753	2014-06-13 19:39:50.166753
47	Semana 6 / Día 3 	2014-06-13 19:40:09.212157	2014-06-13 19:40:09.212157
48	Semana 6 / Día 6	2014-06-13 19:40:23.990196	2014-06-13 19:40:23.990196
50	Não se esqueça do seu objetivo!	2014-07-29 04:12:02.270827	2014-07-29 04:12:02.270827
51	Leva um tempo para mudarmos os nossos hábitos.	2014-07-29 04:13:00.889308	2014-07-29 04:13:00.889308
52	Pequenos passos levam a grandes mudanças!  	2014-07-29 04:13:46.619384	2014-07-29 04:13:46.619384
53	Mantenha-se ativo e não desista!	2014-07-29 04:14:20.476584	2014-07-29 04:14:20.476584
54	Lesson Day 2	2014-08-07 13:42:36.813051	2014-08-07 13:42:36.813051
55	Lesson Day 3	2014-08-07 13:47:09.667917	2014-08-07 13:47:09.667917
56	Lesson Day 4	2014-08-07 14:40:22.193547	2014-08-07 14:40:22.193547
57	Lesson Day 5	2014-08-07 14:45:28.939942	2014-08-07 14:45:28.939942
58	First Lesson: Learning About Activities	2014-11-14 16:12:58.163957	2014-11-14 16:12:58.163957
60	Sessão de treinamento	2016-03-01 12:43:22.041674	2016-03-01 12:43:22.041674
61	Sesión de Entrenamiento	2016-03-03 17:25:25.169656	2016-03-03 17:25:25.169656
\.


--
-- Name: bit_core_slideshows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('bit_core_slideshows_id_seq', 64, true);


--
-- Data for Name: bit_core_tools; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY bit_core_tools (id, title, "position", created_at, updated_at) FROM stdin;
\.


--
-- Name: bit_core_tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('bit_core_tools_id_seq', 1, false);


--
-- Data for Name: call_to_schedule_final_appointments; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY call_to_schedule_final_appointments (id, participant_id, contact_at, final_appointment_at, final_appointment_location, created_at, updated_at) FROM stdin;

\.


--
-- Name: call_to_schedule_final_appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('call_to_schedule_final_appointments_id_seq', 673, true);


--
-- Data for Name: content_access_events; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY content_access_events (id, participant_id, accessed_at, created_at, updated_at, lesson_id, day_in_treatment_accessed, lesson_datum_guid, dialogue_datum_guid, uuid, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: content_access_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('content_access_events_id_seq', 34004, true);


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY devices (id, uuid, device_uuid, manufacturer, model, platform, device_version, inserted_at, participant_id, created_at, updated_at, last_seen_at, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('devices_id_seq', 809, true);


--
-- Data for Name: final_appointments; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY final_appointments (id, appointment_at, appointment_location, phone_returned, notes, created_at, updated_at, participant_id) FROM stdin;
\.


--
-- Name: first_appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('first_appointments_id_seq', 1136, true);


--
-- Data for Name: first_contacts; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY first_contacts (id, participant_id, contact_at, first_appointment_at, first_appointment_location, created_at, updated_at) FROM stdin;
\.


--
-- Name: first_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('first_contacts_id_seq', 1234, true);


--
-- Data for Name: help_messages; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY help_messages (id, participant_id, message, staff_message_guid, created_at, updated_at, sent_at, uuid, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: help_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('help_messages_id_seq', 1819, true);


--
-- Data for Name: help_request_calls; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY help_request_calls (id, participant_id, contact_at, explanation, created_at, updated_at) FROM stdin;
\.


--
-- Name: help_request_calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('help_request_calls_id_seq', 760, true);


--
-- Data for Name: lack_of_connectivity_calls; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY lack_of_connectivity_calls (id, participant_id, contact_at, explanation, created_at, updated_at) FROM stdin;
\.


--
-- Name: lack_of_connectivity_calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('lack_of_connectivity_calls_id_seq', 1128, true);


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY lessons (id, title, bit_core_slideshow_id, day_in_treatment, locale, created_at, updated_at, guid, has_activity_planning, pre_planning_content, post_planning_content, non_planning_content, feedback_after_days, planning_response_yes_content, planning_response_no_content, non_planning_response_content, activity_choices) FROM stdin;
60	Sessão de treinamento	60	0	es-PE	2016-03-01 12:43:22.052025	2016-03-01 12:43:31.852881	5112e366-6249-46f9-89d0-55e09aaac5a2	f	\N	\N	\N	\N	\N	\N	\N	\N
58	First Lesson: Learning About Activities	58	12	en	2014-11-14 16:12:58.174443	2014-11-14 16:12:58.174443	8b8f706d-5da8-4924-8c5d-fa6d8f30f263	f	\N	\N	\N	\N	\N	\N	\N	\N
54	Lesson Day 2	54	2	en	2014-08-07 13:42:36.817754	2014-08-07 13:42:36.817754	6e048c42-1673-4de0-b36b-59d30268504a	f	\N	\N	\N	\N	\N	\N	\N	\N
55	Lesson Day 3	55	3	en	2014-08-07 13:47:09.672518	2014-08-07 13:47:09.672518	ee404ca4-939c-49e0-b1e0-8df23074e10f	f	\N	\N	\N	\N	\N	\N	\N	\N
17	Lesson Day 1	17	1	en	2014-05-08 13:39:41.630269	2014-08-07 13:21:25.965729	ee2af651-0165-454f-8ee3-b67b9d556c23	f	\N	\N	\N	\N	\N	\N	\N	\N
56	Lesson Day 4	56	4	en	2014-08-07 14:40:22.198763	2014-08-07 14:40:22.198763	35420b01-eb84-4fff-9b68-0c5ec344f7b2	f	\N	\N	\N	\N	\N	\N	\N	\N
57	Lesson Day 5	57	5	en	2014-08-07 14:45:28.944799	2014-08-07 14:45:28.944799	9b016256-34e3-4362-88b9-05a68cfeeee7	f	\N	\N	\N	\N	\N	\N	\N	\N
51	16. Novos hábitos podem melhorar a sua saúde!	51	36	es-PE	2014-07-29 04:13:00.892909	2016-07-12 14:59:51.100512	9b0a220f-896b-4076-b02d-df97fc48a305	f				\N				
61	Sesión de Entrenamiento	61	0	es-PE	2016-03-03 17:25:25.189986	2016-03-03 17:25:25.189986	3fdf935a-5796-48b5-a47e-d953788057ff	f	\N	\N	\N	\N	\N	\N	\N	\N
35	9. ¡Recompénsate y celebra el éxito!	35	20	es-PE	2014-06-13 19:36:04.941548	2016-03-05 00:21:37.482553	6e5925d2-c9a8-42ab-b67f-52d95d2a6ed3	f	\N	\N	\N	\N	\N	\N	\N	\N
9	1. Bem-vindo ao CONEMO!	9	1	es-PE	2014-05-08 04:15:29.569279	2016-03-10 16:08:43.161041	81858267-b7c1-407c-8a63-c2d554aea567	f				\N				
40	12. ¡Recuerda lo que quieres lograr!	40	27	es-PE	2014-06-13 19:37:47.07182	2016-03-05 00:22:10.585813	fd91e151-2a83-4012-b7b0-0c4bd685432f	f	\N	\N	\N	\N	\N	\N	\N	\N
44	15. ¡Prepárate para los obstáculos y vuelve al camino!	44	34	es-PE	2014-06-13 19:39:22.798854	2016-03-05 00:23:04.550087	40b9d58f-47b8-43a0-a73f-1d76a1033f04	f	\N	\N	\N	\N	\N	\N	\N	\N
52	17. Leva um tempo para mudarmos os nossos hábitos!	52	38	es-PE	2014-07-29 04:13:46.622716	2016-07-12 15:00:06.379395	f755864c-fc35-4aaa-8d60-6fd6cd246eca	f				\N				
53	18. Bem-vindo a última sessão do CONEMO!	53	41	es-PE	2014-07-29 04:14:20.480303	2016-07-12 15:00:16.423068	62f30e6b-0fff-4afb-9220-9b9ab7cad265	f				\N				
18	1. ¡Bienvenido a CONEMO! 	18	1	es-PE	2014-05-15 13:34:14.455635	2016-03-05 00:20:11.011786	f584a39b-c9b2-4a2f-9aff-f177fd44b85b	f	\N	\N	\N	\N	\N	\N	\N	\N
19	2. Sentirte decaído puede causar que dejes de hacer cosas que antes hacías	19	3	es-PE	2014-05-15 13:34:26.835414	2016-03-05 00:20:20.154693	529a2f05-65f8-41f7-ab18-2a673e6eb0f3	f	\N	\N	\N	\N	\N	\N	\N	\N
20	3. ¡Cambiar lo que haces puede cambiar cómo te sientes!	20	6	es-PE	2014-05-15 13:34:40.115039	2016-03-05 00:20:30.198649	2f6ea7cb-a281-4bf7-98ff-02ac557de206	f	\N	\N	\N	\N	\N	\N	\N	\N
22	5. ¡Puede ser difícil empezar!	22	10	es-PE	2014-05-15 13:35:11.358564	2016-03-05 00:20:51.922427	481c9380-d8a7-42c7-b010-7aabfca37e4d	f	\N	\N	\N	\N	\N	\N	\N	\N
33	7. ¡Haz las cosas a tu propio ritmo!	33	15	es-PE	2014-06-13 19:35:26.479358	2016-03-05 00:21:12.694801	f0dc6d45-d678-4806-9e1b-1aa532a6491f	f	\N	\N	\N	\N	\N	\N	\N	\N
12	2. Sentir-se para baixo pode levar a deixar de realizar as coisas que costumava fazer.	12	3	es-PE	2014-05-08 04:16:41.770379	2016-07-12 14:56:02.785177	e7625a9f-2b86-4d3a-9828-3a74b6bc39c1	f				\N				
38	11. ¡Da un paso a la vez!	38	24	es-PE	2014-06-13 19:37:15.116824	2016-03-05 00:21:59.077362	f6f33efc-d66b-4c9f-a22b-cbc77fa1de87	f	\N	\N	\N	\N	\N	\N	\N	\N
43	14. ¡Pequeños pasos llevan a grandes cambios!	43	31	es-PE	2014-06-13 19:38:59.82126	2016-03-05 00:22:35.34746	a8282a46-9b11-45a2-b735-e65fc470b33e	f	\N	\N	\N	\N	\N	\N	\N	\N
46	16. ¡Mejora tu salud creando nuevos hábitos!	46	36	es-PE	2014-06-13 19:39:50.170275	2016-03-05 00:23:20.55337	a5dfac05-c5bd-4749-8f78-1b8dbb08110c	f	\N	\N	\N	\N	\N	\N	\N	\N
47	17. ¡Cambiar nuestros hábitos toma tiempo!	47	38	es-PE	2014-06-13 19:40:09.22183	2016-03-05 00:23:32.939863	94b9b930-f396-4c43-913c-9b8ac12ab14d	f	\N	\N	\N	\N	\N	\N	\N	\N
48	18. ¡Bienvenido a la última sesión de CONEMO!	48	41	es-PE	2014-06-13 19:40:23.993617	2016-03-05 00:23:51.231762	40dd808e-83dd-4218-94d0-1f6ce80c0abf	f	\N	\N	\N	\N	\N	\N	\N	\N
11	3. Mudar o que você faz pode mudar a forma como você se sente.	11	6	es-PE	2014-05-08 04:16:21.843294	2016-07-12 14:56:24.122821	0d934e95-e7fe-4fb9-84fd-e62ea5af5d9d	f				\N				
13	5. Pode ser difícil começar.	13	10	es-PE	2014-05-08 04:17:07.880134	2016-07-12 14:56:53.201067	c3905713-9f96-483c-899e-d9a83650fa6d	f				\N				
15	7. Faça as coisas em seu próprio ritmo!	15	15	es-PE	2014-05-08 04:17:59.033963	2016-07-12 14:57:25.223589	4bc85705-e0c0-47b8-a0ea-45bb8a9669b5	f				\N				
24	9. Dê recompensas a si mesmo e comemore o sucesso!	24	20	es-PE	2014-05-18 22:50:53.416772	2016-07-12 14:58:03.095177	5c897add-e38b-449c-896b-e01e7349c4e9	f				\N				
26	11. Faça um passo de cada vez!	26	24	es-PE	2014-05-18 22:51:55.682725	2016-07-12 14:58:39.449636	6e80f83a-3c40-4d95-a641-a40946a32548	f				\N				
27	12. Lembre-se do seu objetivo!	27	27	es-PE	2014-05-18 22:52:51.931387	2016-07-12 14:58:51.91062	33afd2b5-bee3-482d-bf0c-a90da2490d7b	f				\N				
50	14. Pequenos passos levam a grandes mudanças!	50	31	es-PE	2014-07-29 04:12:02.274992	2016-07-12 14:59:23.506584	62bb2ec6-294e-467c-b3e9-8a8299b8f1a8	f				\N				
29	15. Esteja preparado para recaídas e volte ao caminho certo!	29	34	es-PE	2014-05-18 22:54:36.79721	2016-07-12 14:59:40.028133	a7fdaa0b-2b88-454c-a192-70d89cbf8b8b	f				\N				
16	8. Terminar suas tarefas vai fazer você se sentir melhor.	16	17	es-PE	2014-05-08 04:18:15.218076	2016-07-12 14:57:44.432891	21a15760-403c-424b-8126-cb07dd27dfc9	t	Vamos tentar! Dê uma olhada na lista abaixo e selecione uma tarefa que você poderia fazer hoje ou amanhã (clique na seta para ver todas as opções):	Obrigado por compartilhar isso com a gente! Tente fazer essa tarefa que você selecionou hoje ou amanhã e preste atenção em como se sente depois.	Você ainda não selecionou nada. Por favor, clique na seta e selecione uma opção antes de ir para próxima página.	3	Muito bom, siga em frente!	Lembre-se que uma vez que você tenha feito esta tarefa, você vai se sentir muito satisfeito/a. Se você quiser também pode mudar sua seleção e tentar outra tarefa.	Você ainda não respondeu. Por favor, deixe-nos saber se foi capaz de realizar a atividade ou não. 	Limpar a casa\r\nLavar a louça\r\nPagar uma conta\r\nCuidar de um membro da família\r\nResolver um problema pessoal\r\nLavar roupa\r\nTrocar as roupas de cama\r\nFazer as compras\r\nLavar o cabelo\r\nFazer um favor a alguém
42	13. Planeemos más actividades para mejorar tu salud	42	29	es-PE	2014-06-13 19:38:37.967875	2016-06-15 15:19:58.601669	ee4ca5b6-8ac0-4efd-a0c9-eb912754fe8f	t	¿Qué actividad te gustaría intentar para mejorar tu salud?<br><br>\r\n \r\nMira la lista debajo y selecciona una actividad que NO hayas estado haciendo últimamente pero que puedes hacer durante los próximos días:	¡Muy bien!<br><br>\r\n\r\n\r\nEn unos días te preguntaremos si pudiste hacer esta actividad.	Aún no has hecho tu selección. Por favor, presiona el rectángulo blanco y selecciona una de las opciones de la lista antes de pasar a la siguiente página.	5	¡Felicitaciones!	Recuerda que puedes cambiar tu elección si deseas.<br><br>\r\n\r\n¡Sigue intentando!	Aún no has hecho tu selección. Por favor, presiona el rectángulo blanco y selecciona una de las opciones de la lista antes de pasar a la siguiente página.	Tomar tu medicación regularmente\r\nEmpezar una dieta saludable\r\nIr al gimnasio / hacer ejercicios\r\nHacerte un chequeo médico\r\nPreparar una comida saludable\r\nIr a nadar\r\nJugar deportes como vóley o fútbol\r\nMontar bicicleta en vez de tomar un auto o bus\r\nHacer un diario para anotar tu presión arterial o nivel de glucosa\r\nHacer una caminata larga\r\nIr al podólogo\r\nHacerte tratamiento de acupuntura\r\nHacer yoga o meditar
21	4. ¡Las actividades placenteras te hacen sentir bien!	21	8	es-PE	2014-05-15 13:34:53.316772	2016-06-15 15:20:53.435548	0f7a1cc3-3bb0-4a2c-b1fb-3088ef9bc412	t	¡Intentemos! Por favor revisa la siguiente lista de actividades placenteras y selecciona una que NO hayas estado haciendo últimamente pero te gustaría hacer entre HOY y MAÑANA:\r\n	¡Muy bien! Intenta hacer esta actividad que has seleccionado entre hoy y mañana.<br><br>\r\n \r\n\r\nRecuerda que puedes cambiar tu elección si deseas.<br><br>\r\n \r\n\r\nEn un par de días te preguntaremos cómo te fue.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	2	¡Excelente!	Sabemos que puede ser difícil empezar, ¡pero recuerda que esto te puede ayudar a sentirte mejor!<br><br>\r\nSi deseas, puedes cambiar tu elección e intentar con otra actividad.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	Escuchar música\r\nLlamar a un amigo o familiar\r\nHacer una caminata corta\r\nLeer un libro\r\nCocinar algo\r\nDibujar o pintar\r\nArreglarte\r\nVer una película\r\nCantar\r\nConversar con tu vecino\r\nTejer\r\nHacer jardinería
28	13. Vamos planejar mais atividades para melhorar a sua saúde!	28	29	es-PE	2014-05-18 22:53:36.036019	2016-07-12 14:59:10.458051	e25cd7c4-45da-4137-aa3a-8dbe32d65801	t	Que atividade você gostaria de experimentar para melhorar a sua saúde? Dê uma olhada na lista abaixo e selecione uma atividade que você consegue fazer nos próximos dias (clique na seta para ver todas as opções):	Muito bom! Em alguns dias, vamos perguntar-lhe se conseguiu realizar essa atividade.	Você ainda não selecionou nada. Por favor, clique na seta e selecione uma opção antes de ir para próxima página.	5	Parabéns, isso é otimo!	 Lembre-se que você pode mudar sua seleção se quiser. Continue tentando!	Você ainda não respondeu. Por favor, deixe-nos saber se foi capaz de realizar a atividade ou não. 	Tomar a minha medicação corretamente\r\nComeçar uma dieta saudável\r\nFazer uma comida saudável\r\nIr para academia / fazer atividade física\r\nFazer um check-up de saúde\r\nNadar / fazer hidroginástica\r\nJogar bola ou vôlei\r\nAndar de bicicleta\r\nAnotar os níveis de glicose e/ou a pressão em um diário\r\nFazer uma caminhada longa\r\nIr a um podólogo\r\nFazer um tratamento de acupuntura
14	6. Melhorar a sua saúde física vai melhorar a sua saúde emocional!	14	13	es-PE	2014-05-08 04:17:28.321271	2016-07-12 14:57:11.490246	524df35a-ab2b-4c56-b8a8-748255e9e5f7	t	Dê uma olhada na lista abaixo e selecione uma atividade saudável que você poderia fazer hoje ou amanhã (clique na seta para ver todas as opções):	Obrigado por compartilhar isso com a gente! Em alguns dias, vamos perguntar-lhe se conseguiu realizar essa atividade saudável e como se sentiu depois.	Você ainda não selecionou nada. Por favor, clique na seta e selecione uma opção antes de ir para próxima página.	2	Parabéns! 	Lembre-se, esta é a sua chance de começar uma vida mais saudável e mais feliz!  Lembre-se, que você pode mudar sua seleção se quiser. O importante é que você experimente pelo menos uma das atividades na seleção.	Você ainda não respondeu. Por favor, deixe-nos saber se foi capaz de realizar a atividade ou não. 	Comer uma fruta ou verdura\r\nFazer uma caminhada curta\r\nMeditar\r\nAferir a minha pressão\r\nMedir o meu açúcar no sangue\r\nUsar a escada em vez do elevador\r\nComer menos açúcar e gordura\r\nBeber mais água
10	4. Atividades prazerosas nos fazem sentir bem! 	10	8	es-PE	2014-05-08 04:16:06.055307	2016-07-12 14:56:43.022591	b7cec56a-6354-4626-90e6-e230c16e05b5	t	Vamos tentar! Dê uma olhada na lista abaixo e selecione uma atividade prazerosa que você não tenha feito ultimamente, mas que você poderia fazer hoje ou amanhã (clique na seta para ver todas as opções):	Muito bom! Tente fazer essa atividade que você selecionou hoje ou amanhã. Lembre-se de que você pode mudar sua seleção se quiser. Em alguns dias, vamos lhe  perguntar se conseguiu realizar essa atividade.	Você ainda não selecionou nada. Por favor, clique na seta e selecione uma opção antes de ir para próxima página.	2	Isso é otimo! Continue dessa forma!	Sabemos que pode ser difícil começar, mas lembre-se que isso vai lhe ajudar a se sentir melhor. Se quiser, pode mudar sua seleção e tentar outra atividade. Não desista!	Você ainda não respondeu. Por favor, deixe-nos saber se foi capaz de realizar a atividade ou não. 	Ouvir música\r\nLigar para um amigo ou membro da família\r\nFazer uma caminhada curta\r\nLer um livro\r\nCozinhar\r\nPintar\r\nVestir-se bem\r\nAssistir um filme\r\nCantar\r\nConversar com vizinhos\r\nFazer crochê\r\nCuidar do jardim
25	10. Vamos aumentar o número de atividades que lhe trazem prazer!	25	22	es-PE	2014-05-18 22:51:33.284453	2016-07-12 14:58:11.901321	b979fb00-987c-4e19-a563-153cf6a582cc	t	Selecione uma das seguintes atividades que você consegue fazer nos próximos dias (clique na seta para ver todas as opções):	Ótimo! Tente fazer esta atividade nos próximos dias. Depois, vamos perguntar-lhe se conseguiu realizar essa atividade.\r\nSe você gostou da atividade que você selecionou, tente repeti-la. Se você não gostou, escolha outra e tente novamente.	Você ainda não selecionou nada. Por favor, clique na seta e selecione uma opção antes de ir para próxima página.	5	Muito bom! Você está no caminho certo!	Lembre-se do que você aprendeu na última sessão: Se você escolheu uma atividade difícil de ser concluída, você pode dividí-la em pequenas partes e escolher a mais fácil para começar.	Você ainda não respondeu. Por favor, deixe-nos saber se foi capaz de realizar a atividade ou não. 	Passar tempo com amigos ou a família\r\nParticipar de um grupo da comunidade\r\nSair para almoçar\r\nIr à igreja\r\nFazer um jantar para amigos ou família\r\nIr ao shopping\r\nIr ao cinema\r\nIr ao parque\r\nFazer trabalho voluntário\r\nIr dançar\r\nParticipar de um coral\r\nFazer artesanato\r\nAssistir uma palestra ou curso\r\nIr ao cabeleireiro\r\nFazer um passeio\r\nFazer uma manicure/pedicure\r\nJogar bola ou vôlei com amigos
23	6. ¡Mejorar tu salud física va a mejorar tu salud emocional!	23	13	es-PE	2014-05-15 13:35:29.491223	2016-06-15 15:21:25.067528	bbb5abf3-f8c7-46c2-8bb8-a5296bf00f49	t	Por favor, revisa la siguiente lista de actividades saludables y selecciona una que NO hayas estado haciendo últimamente pero puedas hacer HOY o MAÑANA:\r\n	Gracias por compartir esa información.<br><br>\r\n\r\nEn un par de días te preguntaremos si pudiste realizar esta actividad saludable y cómo te hizo sentir.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	2	¡Eso es genial!	¡Recuerda que esta es tu oportunidad para empezar una vida más saludable y feliz!<br><br>\r\n\r\nPuedes cambiar tu elección si deseas. Lo importante es que intentes al menos una de las actividades de esta lista.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	Comer más frutas o verduras\r\nHacer una caminata corta o algún ejercicio\r\nMedir tu presión arterial\r\nMedir tu azúcar en la sangre o glucosa\r\nUsar las escaleras en vez del ascensor\r\nComer menos azúcar o grasas\r\nTomar más agua
37	10. ¡Aumentemos el número de actividades que nos dan placer!	37	22	es-PE	2014-06-13 19:36:55.316465	2016-06-15 15:22:53.609151	13a2470e-ce38-4357-b37a-10c37d2686f4	t	Selecciona una de las siguientes actividades que NO hayas estado haciendo últimamente pero que puedas hacer durante los próximos días:\r\n	¡Excelente!<br><br>\r\n \r\nAhora intenta hacer esta actividad en los próximos días.<br><br>\r\n \r\nLuego te preguntaremos cómo te fue.<br><br>\r\n\r\nSi realmente disfrutas la actividad que has seleccionado, intenta repetirla.<br><br>\r\n \r\nSi no disfrutas con esta actividad, elige otra e intenta de nuevo.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	5	¡Muy bien!	Recuerda lo que aprendiste en la última sesión:<br><br>\r\n\r\nSi has elegido una actividad difícil, pártela en pasos pequeños y elige el más fácil de ellos para empezar.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	Encontrarte con amigos o familiares\r\nParticipar en actividades de la comunidad\r\nSalir a comer\r\nIr a la iglesia\r\nHacer un almuerzo o una cena para amigos o familia\r\nIr a comprar algo que te guste\r\nIr al cine\r\nIr al parque\r\nHacer un trabajo voluntario\r\nSalir en la noche / bailar\r\nHacer manualidades\r\nAsistir a una charla o curso\r\nIr a la peluquería\r\nHacer un paseo pequeño\r\nHacerte una manicure/pedicure\r\nHacer deportes (vóley/fútbol) con amigos
34	8. ¡Terminar tus tareas te hará sentir mejor!	34	17	es-PE	2014-06-13 19:35:42.780962	2016-06-15 15:22:02.719327	410a6881-dc59-4651-8915-4bb7ddab4dbe	t	Por favor revisa la siguiente lista de tareas y selecciona una que puedas hacer HOY o MAÑANA:\r\n	Gracias por compartir esa información.<br><br>\r\n\r\nIntenta hacer la tarea seleccionada hoy o mañana y presta atención a cómo te sentiste después.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	3	¡Eso está muy bien! 	Recuerda que cuando hayas terminado esta tarea te sentirás más satisfecho/a.<br><br>\r\n\r\nTambién puedes intentar hacer otra tarea. Lo importante es seguir intentando.	Aún no has hecho tu selección. Por favor, vuelve a la página anterior y selecciona una de las opciones de respuesta antes de pasar a la siguiente página.	Limpiar la casa\r\nLavar los platos\r\nPagar una cuenta\r\nCuidar a un(os) familiar(es)\r\nResolver un problema personal\r\nLavar tu ropa\r\nCambiar las sábanas\r\nHacer las compras del hogar\r\nLavarte el pelo\r\nHacerle un favor a alguien
\.


--
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('lessons_id_seq', 64, true);


--
-- Data for Name: logins; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY logins (id, participant_id, logged_in_at, created_at, updated_at, app_login_guid, uuid, app_version, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: logins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('logins_id_seq', 64011, true);


--
-- Data for Name: non_adherence_calls; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY non_adherence_calls (id, participant_id, contact_at, explanation, created_at, updated_at) FROM stdin;
\.


--
-- Name: non_adherence_calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('non_adherence_calls_id_seq', 542, true);


--
-- Data for Name: nurse_tasks; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY nurse_tasks (id, participant_id, type, status, scheduled_at, overdue_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: nurse_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('nurse_tasks_id_seq', 8786, true);


--
-- Data for Name: participant_start_dates; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY participant_start_dates (id, date, uuid, participant_id, created_at, updated_at, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: participant_start_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('participant_start_dates_id_seq', 879, true);


--
-- Data for Name: participants; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY participants (id, nurse_id, first_name, last_name, study_identifier, family_health_unit_name, phone, address, date_of_birth, gender, status, emergency_contact_name, emergency_contact_phone, created_at, updated_at, locale, alternate_phone_1, alternate_phone_2, contact_person_1_name, contact_person_1_relationship, contact_person_1_other_relationship, contact_person_2_name, contact_person_2_relationship, contact_person_2_other_relationship, emergency_contact_relationship, emergency_contact_other_relationship, emergency_contact_address, emergency_contact_cell_phone, cell_phone) FROM stdin;
\.


--
-- Name: participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('participants_id_seq', 1311, true);


--
-- Data for Name: past_device_assignments; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY past_device_assignments (id, uuid, device_uuid, manufacturer, model, platform, device_version, inserted_at, participant_id, last_seen_at, client_created_at, client_updated_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: past_device_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('past_device_assignments_id_seq', 1, false);


--
-- Data for Name: patient_contacts; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY patient_contacts (id, contact_reason, note, contact_at, created_at, updated_at, participant_id, first_contact_id, first_appointment_id, second_contact_id, third_contact_id) FROM stdin;
\.


--
-- Name: patient_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('patient_contacts_id_seq', 706, true);


--
-- Data for Name: planned_activities; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY planned_activities (id, uuid, participant_id, name, is_complete, is_help_wanted, level_of_happiness, how_worthwhile, planned_at, lesson_guid, created_at, updated_at, client_created_at, client_updated_at, follow_up_at) FROM stdin;
\.


--
-- Name: planned_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('planned_activities_id_seq', 4837, true);


--
-- Data for Name: responses; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY responses (id, content_access_event_id, answer, created_at, updated_at) FROM stdin;
\.


--
-- Name: responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('responses_id_seq', 34002, true);


--
-- Data for Name: scheduled_task_cancellations; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY scheduled_task_cancellations (id, nurse_task_id, explanation, created_at, updated_at) FROM stdin;
\.


--
-- Name: scheduled_task_cancellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('scheduled_task_cancellations_id_seq', 117, true);


--
-- Data for Name: scheduled_task_reschedulings; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY scheduled_task_reschedulings (id, nurse_task_id, explanation, old_scheduled_at, scheduled_at, notes, created_at, updated_at) FROM stdin;
\.


--
-- Name: scheduled_task_reschedulings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('scheduled_task_reschedulings_id_seq', 1481, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY schema_migrations (version) FROM stdin;
20140416021706
20140424162324
20140424163917
20140424182611
20140424185639
20140424193516
20140424194431
20140424201300
20140424202815
20140424202816
20140424202817
20140424202818
20140424202819
20140424210521
20140424211702
20140424213855
20140425143844
20140425151223
20140427164030
20140430164700
20140430180404
20140430201617
20140502152701
20140506150628
20140506185617
20140506185838
20140506194017
20140506215541
20140506231251
20140507215950
20140507230042
20140512210210
20140512214744
20140512215025
20140512224657
20140512225347
20140512232559
20140513181504
20140513194422
20140513202345
20140513204959
20140515153755
20140515184349
20140515193223
20140516181818
20140516191848
20140520114433
20140602220726
20140602221129
20140603143621
20140603144848
20140603152834
20140603192434
20140603211508
20140603214615
20140604162226
20140611193829
20140611193957
20140616204708
20140616210215
20140616210251
20140619220524
20140703202610
20140703203810
20140707205241
20140707205444
20140707205748
20140707222249
20140716203843
20140716204111
20140716204317
20140716205129
20140716210037
20140718161516
20140721203517
20140728155408
20140728163216
20140728192818
20140729193032
20140820154910
20140820162507
20141107200247
20150203161614
20150907190444
20151119205224
20151120020050
20151120190501
20151120202451
20151120221012
20151209215415
20151229203555
20151229203556
20151229203557
20160119153539
20160123032657
20160123235537
20160124021330
20160125032724
20160125211836
20160125222644
20160130221549
20160210114124
20160210133358
20160210140726
20160215220006
20160221015036
20160222193458
20160222210733
20160223134739
20160224153018
20160226171655
20160226210850
20160229170917
20160301180238
20160302163951
20160302164402
20160304025744
20160304033310
20160308185012
20160312184639
20160312184640
20160312184641
20160312184642
20160312184643
20160314205152
20160314205153
20160317214640
20160317215126
20160318014633
20160319015301
20160319021013
20160321143128
20160321143728
20160321145358
20160321170246
20160323130301
20160324165024
20160324203410
20160328155643
20160328201806
20160329194614
20160405163650
20160405220144
20160406180946
20160409182747
20160414025438
20160425183000
20160426203216
20160516204520
20160519170327
20160728185345
20160802194003
\.


--
-- Data for Name: second_contacts; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY second_contacts (id, participant_id, contact_at, session_length, notes, created_at, updated_at, difficulties) FROM stdin;
\.


--
-- Name: second_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('second_contacts_id_seq', 871, true);


--
-- Data for Name: session_events; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY session_events (id, participant_id, event_type, occurred_at, lesson_id, created_at, updated_at, uuid, client_created_at, client_updated_at) FROM stdin;
\.


--
-- Name: session_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('session_events_id_seq', 48910, true);


--
-- Data for Name: smartphones; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY smartphones (id, number, participant_id, created_at, updated_at, phone_identifier) FROM stdin;

\.


--
-- Name: smartphones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('smartphones_id_seq', 1097, true);


--
-- Data for Name: supervision_sessions; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY supervision_sessions (id, session_at, session_length, meeting_kind, contact_kind, nurse_id, topics, created_at, updated_at) FROM stdin;
\.


--
-- Name: supervision_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('supervision_sessions_id_seq', 1228, true);


--
-- Data for Name: supervisor_notes; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY supervisor_notes (id, note, created_at, updated_at, nurse_id) FROM stdin;
\.


--
-- Name: supervisor_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('supervisor_notes_id_seq', 105, true);


--
-- Data for Name: supervisor_notifications; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY supervisor_notifications (id, nurse_task_id, status, created_at, updated_at) FROM stdin;

\.


--
-- Name: supervisor_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('supervisor_notifications_id_seq', 100, true);


--
-- Data for Name: third_contacts; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY third_contacts (id, session_length, participant_id, created_at, updated_at, notes, contact_at, q1, q2, q2_notes, q3, q3_notes, q4, q4_notes, q5, q5_notes, difficulties) FROM stdin;
\.


--
-- Name: third_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('third_contacts_id_seq', 784, true);


--
-- Data for Name: token_auth_authentication_tokens; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY token_auth_authentication_tokens (id, entity_id, value, is_enabled, uuid, client_uuid) FROM stdin;

\.


--
-- Name: token_auth_authentication_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('token_auth_authentication_tokens_id_seq', 882, true);


--
-- Data for Name: token_auth_configuration_tokens; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY token_auth_configuration_tokens (id, expires_at, value, entity_id) FROM stdin;

\.


--
-- Name: token_auth_configuration_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('token_auth_configuration_tokens_id_seq', 1400, true);


--
-- Data for Name: token_auth_synchronizable_resources; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY token_auth_synchronizable_resources (id, uuid, entity_id, entity_id_attribute_name, name, class_name, is_pullable, is_pushable, created_at, updated_at) FROM stdin;
\.


--
-- Name: token_auth_synchronizable_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('token_auth_synchronizable_resources_id_seq', 7488, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: CONEMO_user
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, phone, first_name, last_name, locale, timezone, type, nurse_supervisor_id, family_health_unit_name, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email) FROM stdin;
115	pattyoliveira182@gmail.com	$2a$10$HQC7joXKF5ihrDBpZms0rubFpEg78kFCN45G1tHINHE5DXzCffgDa	\N	\N	\N	79	2017-05-22 18:06:05.714408	2017-05-15 16:54:51.294576	143.107.178.85	143.107.178.85	2016-09-22 19:35:06.137765	2018-01-08 13:32:44.134801	nurse	11952152352	Patrícia	Dos Santos Oliveira	es-PE	Brasilia	Nurse	111	Adão Manoel	\N	\N	\N	\N
188	cleidesilva.latinmh@gmail.com	$2a$10$yuoX4XLedGOheNrrpvUEue957fzXEI5qWLZxVtlj/tLmPupQ399UG	\N	\N	\N	21	2017-10-20 12:37:44.461523	2017-10-10 18:41:56.066163	177.197.242.70	189.97.184.153	2017-08-03 19:23:14.603294	2017-10-20 12:37:44.479667	nurse	11992433412	Cleide 	da Silva Moreira	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
151	keti.latinmh@gmail.com	$2a$10$1eI9PUU5ZCc53QQHuzCX5uwpITeHDztFXIHvKOF8STI3cZdQjhFpm	\N	\N	\N	59	2017-11-24 16:31:04.301672	2017-11-17 16:38:05.928374	187.70.53.144	187.27.45.27	2017-03-15 15:10:49.064446	2017-11-24 16:31:04.304909	nurse	995079581	Keti	BEZERRA FERNANDES FERREIRA	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
159	saneli.latinmh@gmail.com	$2a$10$jX5kGpAAsx/Vsl8NQN/rxOZJNR6qzuV8oWXb5A9Ptdfxa605vWgU.	\N	\N	\N	34	2017-07-20 15:06:23.519013	2017-07-14 13:11:33.91313	201.69.236.45	152.252.72.187	2017-03-15 18:51:39.586399	2017-07-20 15:06:23.523327	nurse	995079581	Saneli 	Moraes Arenas	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
119	mfatima.latinmh@gmail.com	$2a$10$BhMyuwgqE7p3/yGyl6At3.2uy4ckLEGMROcsUCtk/NebZfHMbXV2u	\N	\N	\N	45	2017-03-30 17:17:01.847639	2017-03-30 13:30:54.742935	191.210.85.115	191.28.192.217	2016-09-22 19:47:52.341113	2018-01-08 13:33:22.471442	nurse	112567789611973597933	Maria de Fátima	Oliveira Maciel Almeida	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
152	daniela.latinmh@gmail.com	$2a$10$AK5voZGRYnVpghk1lbTCd.FfTmz5QNmbxoOOihQaXDilDOWnjftEi	\N	\N	\N	56	2017-10-20 16:42:21.256861	2017-10-16 15:45:17.699	187.27.58.225	177.58.237.3	2017-03-15 15:17:04.851953	2017-10-20 16:42:21.260088	nurse	995079581	Daniela	Pereira Santos	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
155	cleide.latinmh@gmail.com	$2a$10$PbmrR5n5we8xaN9eG34GiOb33rjqhACvS4lebBLoRrNkEwENrZAjy	\N	\N	\N	82	2017-10-30 12:15:13.078646	2017-10-25 17:59:26.280209	177.58.236.14	189.92.118.23	2017-03-15 17:06:10.704851	2017-10-30 12:15:13.093132	nurse	995079581	Cleide	Silva	es-PE	Brasilia	Nurse	110	Jardim Copa	\N	\N	\N	\N
189	adrianam.latinmh@gmail.com	$2a$10$n87aUwC/dloLkm7xHzSG2uzRd0bxqpkFGMe1Sg7zpiVPKptf6oQwS	\N	\N	\N	21	2017-10-27 12:19:58.16736	2017-10-23 21:37:33.035989	177.113.167.106	191.165.237.59	2017-08-03 19:24:03.323727	2017-10-27 12:19:58.172131	nurse	11992433412	Adriana 	Martins Couto da Silva	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
116	brunosjm@ig.com.br	$2a$10$dInzkvLQzsbraGIU41xhM.NtfLXcvcxsh6TGCmLvsgZ/sa236XQ0a	\N	\N	\N	47	2017-05-03 15:44:53.391353	2017-04-24 14:39:36.510772	179.147.19.71	177.197.198.123	2016-09-22 19:37:55.70227	2018-01-08 13:32:55.373802	nurse	11945724429	Bruno	Jorge da Silva Monteiro	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
156	danielaalmeida.latinmh@gmail.com	$2a$10$uAvHfzNyat80gZSbxMu5hOS9PaRsrD9/ayI4LDtr4x5LnKeV32cB6	\N	\N	\N	60	2017-10-23 13:09:03.83392	2017-10-23 12:14:13.2343	189.92.120.81	189.92.120.81	2017-03-15 17:08:26.409055	2017-10-23 13:09:03.841554	nurse	995079581	Daniela	da Conceição de Almeida	es-PE	Brasilia	Nurse	111	Jardim Copa	\N	\N	\N	\N
146	anamaria.carvalhodantas@yahoo.com.br	$2a$10$DHVQkKtkLJTurTCBFEMTVedIPgQ8dHQnbaG2ucztXX/OIZF59pRCy	\N	\N	\N	38	2017-05-10 17:56:53.388186	2017-05-10 17:49:13.679094	177.58.249.31	177.58.249.31	2017-02-10 14:16:51.911181	2018-01-08 13:52:22.228481	nurse	998803425	Ana Maria	Carvalho Dantas	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
150	valquiria.latinmh@gmail.com	$2a$10$.b0Uz0Kvo6NE6e5I3ub3defrdq2NSOnY1Zmg02WgI87otb8XXxTam	\N	\N	\N	55	2017-11-24 16:26:39.583646	2017-11-17 16:39:53.348252	187.70.53.144	187.27.45.27	2017-03-15 15:05:59.936242	2017-11-24 16:26:39.585135	nurse	995079581	Valquiria Alessandra	Cirino de Souza Cruz	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
187	nurselilianaconemo@gmail.com	$2a$10$MzoxVfbJWp8Dij6ni/d39.DcjRqEDlzNeAOCeg033wmHQd/yx5Kdu	\N	\N	\N	3	2017-07-31 17:48:36.568321	2017-07-24 21:40:30.481132	190.117.193.189	190.117.193.189	2017-07-24 21:39:40.213185	2017-07-31 17:48:36.571109	nurse	964545333	Test	Liliana	es-PE	Lima	Nurse	\N		\N	\N	\N	\N
163	marciaalves.latinmh@gmail.com	$2a$10$2Uip6IDn2z7Nz8o9QdmZ1eW9PDxCsEdMrEzu/06o06m5E6rCrLQ.a	\N	\N	\N	90	2017-09-27 19:08:26.654701	2017-09-21 14:36:54.905612	179.241.213.95	177.58.241.103	2017-03-15 19:10:31.795199	2017-09-27 19:08:26.656062	nurse	995079581	Marcia 	Alves Monteiro	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
149	cristiana.latinmh@gmail.com	$2a$10$2cYhqKyFMqVILmMKKKcztODPzL4llspqvn11s3NfzBjPRlCXryyIW	\N	\N	\N	47	2017-12-01 16:42:20.492504	2017-11-24 16:29:21.547657	191.199.255.13	187.70.53.144	2017-03-15 14:54:50.029919	2017-12-01 16:42:20.496671	nurse	995079581	Cristiana Roseni	Santos	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
164	patricia.latinmh@gmail.com	$2a$10$Oe48NuGxXN5hds2092qdiectobSRg7wRDlucgKIPZ5f3DFQvnagl.	\N	\N	\N	60	2017-09-12 18:54:01.499691	2017-09-12 18:52:10.012465	177.58.237.1	177.58.237.1	2017-03-15 19:12:33.781163	2017-09-12 18:54:01.501012	nurse	995079581	Patricia	Elias Castilho Godoy	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
161	mariagabriela.latinmh@gmail.com	$2a$10$M2ThVaQlNVw5sARs8fpmv.Xza5NWeogorQ7J3b6A2Xz4RWQxBSFQ.	\N	\N	\N	79	2017-11-30 00:39:56.011622	2017-11-16 15:54:37.634244	177.33.84.178	177.113.71.135	2017-03-15 19:05:57.162838	2017-11-30 00:39:56.031724	nurse	995079581	Maria Gabriela 	de Assis Dias Silva	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
158	valeriamaria.latinmh@gmail.com	$2a$10$rZ7mO63V3CfXpahmW25HS.SZScB9dIEMtQuqADp40lF5F0wuxqtXi	\N	\N	\N	25	2017-07-07 14:02:50.769359	2017-07-07 13:33:39.46287	179.89.176.132	179.89.176.132	2017-03-15 18:49:16.80898	2018-01-08 13:58:59.104941	nurse	995079581	Valeria Maria 	de Oliveira	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
123	carlafarias2008@hotmail.com	$2a$10$LuzzEQGV4jk3iBpdvQtWUO5wWOiHKk8bt9wFmqByGHZdQDX52vaaK	\N	\N	\N	68	2017-05-25 17:38:38.585087	2017-04-26 17:23:55.5921	177.58.244.62	179.241.216.113	2016-09-22 19:57:10.553846	2018-01-08 13:40:11.577584	nurse	11965204864	Carla Aparecida	Da Conceição Farias	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
114	marcia_medeiros25@hotmail.com	$2a$10$gzP7EXAxUpAm//Mmmiv8YOYuRKr0WrN4kCZLfT2OFp9eoXysS7TD.	\N	\N	\N	11	2016-10-31 12:07:16.517472	2016-10-27 02:48:10.616934	177.58.228.31	152.249.154.78	2016-09-22 19:32:51.727226	2018-01-08 13:32:31.09923	nurse	1198223178211943277938	Márcia	Medeiros de Jesus	es-PE	Brasilia	Nurse	111	Adão Manoel	\N	\N	\N	\N
160	tatiane.latinmh@gmail.com	$2a$10$MtdOdYEtpSkH6pVCKfLaVupfcGGuE.mr4IEfr.o045Eb/jjO7bXcu	\N	\N	\N	77	2017-09-21 13:12:01.541222	2017-09-19 16:51:32.611957	177.58.246.39	177.58.246.39	2017-03-15 19:03:09.559256	2017-09-21 13:12:01.552984	nurse	995079581	Tatiane	Gonçalves Lima	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
118	maaryysena2013@gmail.com	$2a$10$0zaVA6Tv1BRe39Dgi0kTluSe5kWN8/K/mknZ69le07dSasOkS6Laq	\N	\N	\N	73	2017-03-28 14:24:56.639291	2017-03-27 18:38:21.01724	177.22.145.9	177.22.145.9	2016-09-22 19:44:31.719486	2018-01-08 13:33:08.127936	nurse	112566434411992826955	Maria Aparecida	Da Silva Sena	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
122	ademir_santos74@terra.com.br	$2a$10$ptMlLTikDhRbeHJ2MpRNHuP/tOax0z/CopoyidiGMUerMtKZ6f8ke	\N	\N	\N	82	2017-05-16 14:32:16.693225	2017-05-10 17:23:03.539819	177.58.254.108	189.92.104.102	2016-09-22 19:54:40.922743	2018-01-08 13:39:59.484899	nurse	11992040932	Ademir Alfredo	Dos Santos	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
148	regiane.latinmh@gmail.com	$2a$10$wbOtNUDI1IFsCL8v1lgIMuAvxnyInll6HGhC73nnObyat335EBazG	\N	\N	\N	47	2018-01-09 14:07:34.84805	2017-10-20 17:19:37.416282	143.107.178.85	177.58.235.6	2017-03-15 14:44:26.633887	2018-01-09 14:07:34.849102	nurse	995079581	Regiane Helena	Nery Paiva	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
147	sheilasantos.latinmh@gmail.com	$2a$10$MzVoj8cBms0j3FbpISzKtOVB4UzubMWP2CVq/wyHMKqlIHeDvnt/K	\N	\N	\N	37	2017-07-11 13:55:43.44753	2017-07-07 17:35:15.96809	191.39.14.219	191.39.10.123	2017-03-15 14:24:49.149426	2018-01-08 13:54:25.570099	nurse	995079581	Sheila	Diniz Floriano Santos	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
166	liviane.latinmh@gmail.com	$2a$10$EvL2412EYtEFOYr9votzQelxuMQ3vFi7dSvEV8o4Q4chUebwjfum2	\N	\N	\N	58	2017-10-19 12:16:08.490734	2017-10-19 09:36:41.098939	179.165.41.66	177.24.2.226	2017-03-16 12:30:47.679189	2017-10-19 12:16:08.498798	nurse	998803425	Liviane	Costa Alves	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
44	ericcf+super@gmail.com	$2a$10$vvnwKsup5mTbT35nrouLLuLr3TaQUFvvwGvoUbgUxJfCGku63K7ge	\N	\N	\N	96	2018-03-13 21:41:28.921078	2017-12-14 21:40:21.894356	165.124.167.236	165.124.165.119	2016-03-02 18:23:34.851388	2018-03-13 21:41:28.922722	admin	123	Eric	Super Carty-Fickes	en	Central Time (US & Canada)	Superuser	\N	\N	\N	2016-03-31 02:17:32.893744	\N	\N
110	suzana.latinmh@gmail.com	$2a$10$rh4Z3gEeCYbAi7s9chf09OCRT57RZcjAZSn0F2IUF8mx08rx0Jgfu	a0b4ed181bbfb9c5553be40cebae09562df5a02cbeacecfecb7d0c7f89ba5d87	2017-01-09 16:06:54.133723	\N	887	2018-03-15 19:40:42.091674	2018-03-12 13:35:08.150909	143.107.178.85	143.107.178.85	2016-09-22 18:42:59.187569	2018-03-15 19:40:42.092857	nurse_supervisor	11982721584	Suzana	Aschar	es-PE	Brasilia	NurseSupervisor	\N	\N	\N	\N	\N	\N
145	seirakatherine@gmail.com	$2a$10$h29ma8m0OLArST8BVwJ/je8LoN4QCIph3Kie6S.Q01Cb6HKTRzCHa	\N	\N	\N	728	2017-12-21 15:30:18.37762	2017-12-21 15:19:45.796875	190.117.112.124	190.117.112.124	2016-11-30 15:36:31.046889	2017-12-21 15:30:18.378648	nurse	51984000798	Katherine	Huamán	es-PE	Lima	Nurse	142		\N	\N	\N	\N
96	geo.scotton@gmail.com	$2a$10$zj8JP57Imgp0Lqw0A8YFGeH/dzfG2NCcXtEc9PLs2biHvjTKjGwM6	\N	\N	\N	82	2018-05-11 18:50:29.784906	2018-04-16 17:22:29.924416	143.107.178.85	143.107.178.85	2016-06-28 17:33:27.186536	2018-05-11 18:50:29.786319	statistician	123456	Heloísa	Garcia Claro	pt-BR	Brasilia	Statistician	\N	\N	\N	\N	\N	\N
125	mileche@hotmail.com	$2a$10$4RgflM3K39CQ0AtCTkpgFuYgo6OBvwbDjYTvwW/023D0oxWy46gDe	\N	\N	\N	35	2017-02-09 12:24:59.916619	2017-02-08 12:20:09.416535	177.114.14.64	143.107.178.85	2016-09-22 20:00:11.211692	2018-01-08 13:40:41.219322	nurse	11954592269	Michele	Martins de Araújo	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
132	lopescassy@hotmail.com	$2a$10$b.JVmqOy4H4az7GbPyS3/ulmVa/rTcfNFPGZ9Dtopp6OJib26zpr.	\N	\N	\N	63	2017-05-05 12:56:59.913263	2017-04-27 16:12:30.637867	189.92.117.31	177.58.233.83	2016-09-22 20:11:45.921681	2018-01-08 13:49:47.40746	nurse	11974960057	Cassia Aparecida	Lopes	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
112	crisribeiro.10@hotmail.com	$2a$10$L9V/zJk5KX8XBep6MweKB.VOs2bxZOFxl1uTFGG3qNk1uz.Jw/0Z6	\N	\N	\N	76	2017-04-26 14:13:05.083211	2017-04-26 14:05:25.676297	179.114.239.242	179.114.239.242	2016-09-22 18:48:38.34409	2018-01-08 13:32:08.334166	nurse	11993063270	Cristina	Ribeiro de Mendonça	es-PE	Brasilia	Nurse	110	Adão Manoel	\N	\N	\N	\N
124	nicefofinha1@gmail.com	$2a$10$BpJoBpwXj3scfishVXytPeUMKjjaprGPUHqh0xP3VHT87g1PDvaV2	\N	\N	\N	27	2016-11-17 12:15:52.493071	2016-11-17 11:59:58.01844	179.241.197.126	189.92.100.9	2016-09-22 19:58:53.248819	2018-01-08 13:40:29.268613	nurse	11959146774	Maria Josenice	Alves da Silva	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
179	vanda.latinmh@gmail.com	$2a$10$ifwkJwNDRp8Y5QqDKkoUvOXPlyXJru4QIieqzV3ieJx/hO3hFHR76	\N	\N	\N	108	2017-10-31 11:51:59.392133	2017-10-26 12:50:34.665064	143.107.178.85	177.197.208.135	2017-03-16 19:23:57.151723	2017-10-31 11:51:59.404379	nurse	25618034	Vanda	de Oliveira Cavalcanti	es-PE	Brasilia	Nurse	110	Silva Teles	\N	\N	\N	\N
133	eluni.barros@gmail.com	$2a$10$tmgenuCzzD7USHaEHEXhxuZXXPVhlG6fDcx2Ulp6vxKn0eQ9h0tbG	\N	\N	\N	34	2017-04-13 15:05:43.552279	2017-04-12 12:54:23.593553	191.29.244.83	179.151.74.40	2016-09-22 20:13:33.834928	2018-01-08 13:50:01.266025	nurse	11953970476	Eliene	Barros da Silva	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
129	cidinha5887@gmail.com	$2a$10$e1LDdCC0pD3hyBbTLydOFOzHswmS6hcyr/xE4RjBy9xCeiI/zvvbO	\N	\N	\N	79	2017-05-05 15:02:08.903897	2017-05-05 01:19:01.324537	177.58.247.11	201.69.223.69	2016-09-22 20:07:42.856559	2018-01-08 13:41:37.182078	nurse	112057201211972438035	Maria Aparecida	De Souza	es-PE	Brasilia	Nurse	110	Santo Estevão	\N	\N	\N	\N
157	mariamarcia.latinmh@gmail.com	$2a$10$ub8m6x5FNih0UEOIZx9Di.4.gIObsdZGnhyB8i/qv6We3qFB64f3.	f525be0bb7355eb02cf16000e794b469e5388b900361e96daf52244a52e3f983	2017-08-01 09:33:33.478622	\N	113	2017-10-25 16:59:06.444009	2017-10-25 16:52:30.714684	143.107.178.85	143.107.178.85	2017-03-15 18:46:11.200947	2017-10-25 16:59:06.447509	nurse	995079581	Maria Marcia	de Souza Lima	es-PE	Brasilia	Nurse	111	Profeta Jeremias	\N	\N	\N	\N
134	crisalmeida_oliveira@yahoo.com.br	$2a$10$CHmmlewE6egMN5Vqoq647.KFxEDZBRtSembgiVki/74uId..Jtune	\N	\N	\N	46	2017-03-15 02:09:37.215466	2017-02-23 19:08:53.389822	201.6.230.73	201.6.230.73	2016-09-22 20:15:05.015214	2018-01-08 13:50:15.069558	nurse	112042882911942727989	Maria Cristina	De Almeida Oliveira	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
136	rebecasantos0409@hotmail.com	$2a$10$we1YwkSzCWdXm.0D30JxL.NWPpDCMiB5szgo.fmwoAaJsIZWS4FSq	17b0acd173224081f221dc6754b5cfb064705d5a3d044707414a87984ac81867	2016-10-13 18:14:21.909742	\N	19	2016-10-31 17:04:25.931483	2016-10-31 17:04:24.003599	179.241.213.13	179.241.213.13	2016-09-22 20:19:19.305817	2018-01-08 13:50:52.437617	nurse	114692197911945746831	Marinete	Ferreira Chaves Rodrigues	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
178	nilcemara.latinmh@gmail.com	$2a$10$j.T7KRKaDsMsB/ipHzAk.OWCrJ9o.zuU21fGiEeNd5F1al7sBr7lW	\N	\N	\N	70	2017-10-20 13:23:11.768344	2017-10-18 15:26:18.839164	143.107.178.85	187.27.28.174	2017-03-16 19:18:45.771948	2017-10-20 13:23:11.785317	nurse	25618034	Nilcemara	Mirian de Souza Silva	es-PE	Brasilia	Nurse	110	Silva Teles	\N	\N	\N	\N
130	eteniran40@hotmail.com	$2a$10$IXjBA4jogz/N4M0uTXAIzOYE/NThNOepRYKYzbUy3zFRWtPjJ00xa	\N	\N	\N	103	2017-04-19 13:51:09.778271	2017-04-13 15:04:58.059515	143.107.178.85	191.29.244.83	2016-09-22 20:09:17.31389	2018-01-08 13:41:52.321717	nurse	112254218811980561384	Marinete	Ribeiro da Silva	es-PE	Brasilia	Nurse	110	Santo Estevão	\N	\N	\N	\N
126	monicazaidan70@gmail.com	$2a$10$R/WlkDHQiLFcMfc/fQ4Zq.VVpvN36ymfh5FpYIxiUlgP1nz3B6HJ6	\N	\N	\N	60	2017-04-26 17:10:32.408053	2017-04-12 17:31:14.22455	177.58.164.1	189.92.117.77	2016-09-22 20:01:46.625064	2018-01-08 13:40:51.870147	nurse	11987209505	Mônica 	Zaidan de Paula Pereira	es-PE	Brasilia	Nurse	111	Jardim Rubro II	\N	\N	\N	\N
32	suzanacrismanis@gmail.com	$2a$10$8apO1hlH0caY4CZtYONGgeClQrrL4plJb5/zsI0XzUVPvcLKbg.oO	\N	\N	\N	840	2018-03-12 13:47:54.622367	2018-02-22 17:37:16.377476	143.107.178.85	143.107.178.85	2015-07-15 13:22:25.989013	2018-03-12 13:47:54.623482	admin	5511982721584	Suzana	Aschar	es-PE	Brasilia	Admin	\N	\N	\N	2016-03-31 02:17:32.864865	\N	\N
131	anamariacbrl@gmail.com	$2a$10$6ogGNK0hRoramyPr4Y.qdOKuxWASI6BmunpO5N4aTbZFARUJ.i8Rq	\N	\N	\N	123	2017-04-19 16:32:36.372269	2017-04-18 19:35:57.726572	143.107.178.85	143.107.178.85	2016-09-22 20:10:29.595493	2018-01-08 13:42:08.803095	nurse	11971182231	Ana Maria	Cabral Bezerra	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
128	hozana.latinmh@gmail.com	$2a$10$FKGehgJzfjRUV98A3D4uD.L8TmA0zexds9IKgLJOD1lwAhDEA0/Hq	\N	\N	\N	100	2017-07-12 15:33:30.630168	2017-04-26 16:21:26.110346	179.241.201.153	189.92.121.70	2016-09-22 20:05:26.574341	2018-01-08 13:41:19.746029	nurse	113535325711945207556	Hozana Aparecida	Calça Domingues	es-PE	Brasilia	Nurse	110	Santo Estevão	\N	\N	\N	\N
120	merces.latinmh@gmail.com	$2a$10$K4EYvWaHXpNsFVAwEsmUqe8mRVqoTOxe7wSOdn.oW77Ynb/Y8O/yy	46c7a8ce8ea541b557b1f126028bba07949056074bba6091e1ae73c588b56dc6	2016-11-08 17:16:41.192324	\N	58	2017-08-08 17:01:28.957394	2017-08-08 16:50:52.693188	179.147.45.175	177.114.182.88	2016-09-22 19:50:03.45364	2018-01-08 13:39:06.042339	nurse	11984255511	Merces	Rodrigues Santos Pereira	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
111	thais.latinmh@gmail.com	$2a$10$l7KP3wInJg.sak6cRnnREuf8JRMopj741bDnp1upR8yqiSpvuV9H6	\N	\N	\N	794	2018-04-20 18:31:18.26462	2018-04-20 17:09:00.766577	143.107.178.85	143.107.178.85	2016-09-22 18:43:46.507007	2018-04-20 18:31:18.265637	nurse_supervisor	11992433412	Thais	Ugeda	es-PE	Brasilia	NurseSupervisor	\N	\N	\N	\N	\N	\N
139	janea.latinmh@gmail.com	$2a$10$yV26hYctBGtu29ipBSwLCOcGfEktgA1uzo97Me45KxqgWj41JaD3y	\N	\N	\N	35	2017-04-06 17:44:19.74928	2017-04-03 17:36:01.902429	179.149.225.111	152.251.130.227	2016-10-20 10:56:52.584466	2018-01-08 13:51:19.625905	nurse	5511954310257	Jânea Lúcia	Do Nascimento Oliveira	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
121	arsalete@ig.com.br	$2a$10$WFeVfIdWhcEbJogPMb4MleXnmZqr/2MEqHy9vXMnLmBOscCyxJFUC	b837dc5c3a595525ecd9347b9cb59bb986f74145881f20d39491fafbd9de2edf	2016-10-18 16:13:03.6325	\N	96	2017-05-18 11:12:24.565505	2017-05-03 12:39:00.314836	191.22.162.227	191.28.232.116	2016-09-22 19:52:19.74403	2018-01-08 13:39:22.12529	nurse	11968031212	Salete Aparecida	Ramos	es-PE	Brasilia	Nurse	111	Jardim Campos	\N	\N	\N	\N
183	r-saber@nlaw.northwestern.edu	$2a$10$BrL41jSF1iLxJtLnAgWw8Olm1nA0LRjUZrs7zTg9QrUdRUdAQYZ9u	\N	\N	\N	1	2017-06-06 20:52:51.808603	2017-06-06 20:52:51.808603	10.102.149.252	10.102.149.252	2017-05-24 16:54:57.477369	2017-06-06 20:52:51.809611	admin	123	Rana	Saber	en	Central Time (US & Canada)	Superuser	\N	\N	\N	\N	\N	\N
63	lilihp89@gmail.com	$2a$10$8MqiryZ0OpeCymmoHA8oiOWCCSE2nCUgHxjxIiY76ZZHDZUjB..CC	\N	\N	\N	343	2017-12-21 15:44:04.822531	2017-12-21 15:19:10.858129	190.117.112.124	190.117.112.124	2016-04-08 16:11:51.998766	2017-12-21 15:44:04.823565	admin	964545333	Liliana	Hidalgo	es-PE	Lima	Admin	\N	\N	LEVF6aQZcs6kgj4RXb_m	2016-04-08 16:12:59.233943	2016-04-08 16:11:52.004723	\N
176	alexandra.latinmh@gmail.com	$2a$10$rYdKSlO9j.lx4GnLNZHc9OWXcK5lrOMCjd7MTjzyomCQLi8VcyFtu	\N	\N	\N	63	2017-10-25 17:59:07.165587	2017-10-25 16:58:38.746294	177.58.241.92	187.27.70.233	2017-03-16 19:15:46.732115	2017-10-25 17:59:07.168446	nurse	20523938	Alexandra	Pacheco Bernardo	es-PE	Brasilia	Nurse	110	Silva Teles	\N	\N	\N	\N
113	rmadalena545@gmail.com	$2a$10$5XCzx4W5Dmg3WcB.a6kUqe7648a03S55ryunGJdPsEGsoBmKi3vW.	\N	\N	\N	82	2017-05-22 15:07:41.237372	2017-05-09 22:05:24.717069	143.107.178.85	191.29.146.235	2016-09-22 18:51:00.885561	2018-02-05 17:46:52.446341	nurse	11949818154	Madalena	Ribeiro da Silva Soares	es-PE	Brasilia	Nurse	110	Adão Manoel	\N	\N	\N	\N
127	pedrinhofilhodri@gmail.com	$2a$10$xS2cF81e1kyzB0eRZ7fQEuk8PAaUg/7YYIkTgZ1ydeRJWuCCzzn7i	\N	\N	\N	55	2017-05-30 15:00:41.570568	2017-05-22 18:07:42.123437	177.58.183.99	143.107.178.85	2016-09-22 20:03:09.990513	2018-01-08 13:41:07.928136	nurse	11988337450	Adriana	Batista da Silva	es-PE	Brasilia	Nurse	110	Santo Estevão	\N	\N	\N	\N
143	lisbeth.ampudia@upch.pe	$2a$10$b0ICIXRlSwooORbw0bha4eDH/jho7Erz8OTpFnVEsqkh9i/W81Bbq	\N	\N	\N	698	2017-12-21 14:32:49.339804	2017-12-21 14:30:29.390155	190.117.112.124	190.117.112.124	2016-11-30 15:27:08.216176	2017-12-21 14:32:49.340975	nurse	51943565365	Lisbeth	Ampudia	es-PE	Lima	Nurse	142		\N	\N	\N	\N
180	renata.latinmh@gmail.com	$2a$10$Lzv5EgnBI8x02kT7y2gD3./Q.Ngv7kLWJdVTYx9zvCYplDlLbf.ky	\N	\N	\N	77	2017-09-28 14:49:01.011609	2017-09-22 00:20:38.014337	152.252.33.149	189.92.102.22	2017-04-13 17:18:32.487742	2017-09-28 14:49:01.02137	nurse	981431417	Renata	Dias de Lima	es-PE	Brasilia	Nurse	110	Silva Teles	\N	\N	\N	\N
142	supervisorlilianaconemo@gmail.com	$2a$10$NxC7FI/R0uiyFpwJ00dYwOpv1BeKi96khdBfzxYPEUzmEyK.PoTsC	\N	\N	\N	542	2018-02-12 21:06:24.497886	2018-02-08 21:00:31.254704	190.117.102.100	190.117.102.100	2016-11-30 15:23:40.535733	2018-02-12 21:06:24.498864	nurse_supervisor	51964545333	Liliana	Hidalgo	es-PE	Lima	NurseSupervisor	\N	\N	\N	\N	\N	\N
140	bereandrade77@gmail.com	$2a$10$ecmehS6oSSVbS4HjSe9DYefjEN3TRPKCHMAHM.L5haZPTCTZi2xvu	\N	\N	\N	100	2017-04-11 14:06:48.773344	2017-04-11 12:58:45.436849	177.58.182.10	189.92.118.126	2016-10-28 14:52:20.99054	2018-01-08 13:51:50.888741	nurse	11998710700	Berenice	Campos Andrade	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
177	claudia.latinmh@gmail.com	$2a$10$fjQg15X823D/tILtHI9lx./6YaTT0Xcm/7luLcRBFibxZk/9IlDlm	\N	\N	\N	60	2017-09-14 16:45:21.853747	2017-09-13 21:03:55.601224	152.252.4.124	179.241.216.38	2017-03-16 19:17:27.680388	2017-09-14 16:45:21.857677	nurse	985434584	Cláudia	Alves Silva	es-PE	Brasilia	Nurse	110	Silva Teles	\N	\N	\N	\N
144	yaninasegura1234@gmail.com	$2a$10$KPZoxS.UIpo2X6Y0Y9162./vpPlIwJoCxHNQTmag9Q08aBIiqudgu	\N	\N	\N	1066	2017-12-21 14:38:52.206586	2017-12-21 14:29:46.574676	190.117.112.124	190.117.112.124	2016-11-30 15:34:49.806977	2017-12-21 14:38:52.207508	nurse	51999405494	Yanina	Segura	es-PE	Lima	Nurse	142		\N	\N	\N	\N
135	idelvania-lima@bol.com.br	$2a$10$sMAD90pTARY/i558FTcCMubEy4a7k8IOU7j33PtsUsrRRVXeAGyhG	\N	\N	\N	60	2017-05-05 13:36:11.602473	2017-05-05 13:17:22.802604	177.58.245.21	179.241.212.72	2016-09-22 20:17:00.201046	2018-01-08 13:50:28.665291	nurse	11987011017	Maria Idelvania	Teles de Lima	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
141	ivanete.latinmh@gmail.com	$2a$10$R8m1fdFhM8Czf2CH.N6FcOH6jyunexQwTICUL41jOV14i3iAEPdBO	\N	\N	\N	76	2017-05-03 13:33:14.059952	2017-05-03 13:21:17.510037	177.113.3.246	177.113.3.246	2016-11-18 13:06:53.863352	2018-01-08 13:52:05.37252	nurse	11962194437	Ivanete	de Araujo Tiburcio	es-PE	Brasilia	Nurse	111	Adão Manoel	\N	\N	\N	\N
167	treinamentoconemo1@gmail.com	$2a$10$BusQNtxxQN4rVRxjiwC6se9W0u6dSGqIFx2XxSVoKcbkqY6GMYdsW	\N	\N	\N	9	2018-01-10 17:39:52.353164	2017-04-06 17:29:24.973932	143.107.178.85	179.91.34.215	2017-03-16 14:05:26.841459	2018-01-10 17:39:52.354232	nurse	998803425	Treinamento 	Conemo1	es-PE	Brasilia	Nurse	\N		\N	\N	\N	\N
42	helo.gclaro@gmail.com	$2a$10$ZojvxgkiW2SRCUJjrOfGpON6qVuwfcvhMoZoRsu2lM5biC.iO/bFC	\N	\N	\N	6	2016-07-19 16:28:08.15944	2016-07-15 13:50:12.487528	143.107.178.85	143.107.178.85	2016-02-11 12:08:32.111671	2016-07-19 16:28:08.165773	statistician	5511976929345	Heloisa	Garcia	es-PE	Brasilia	Statistician	\N	\N	\N	2016-03-31 02:17:32.915675	\N	\N
184	ericcf+admin@gmail.com	$2a$10$juCAzfoPXX16.RiHjL3w8u/2Sq2VyZpXO1qCIuy1p7IwzEzOevXvS	\N	\N	\N	2	2017-06-22 12:07:49.679155	2017-06-21 19:26:33.100222	165.124.162.173	165.124.161.46	2017-06-21 19:21:20.015009	2017-06-22 12:07:49.681678	admin	7733143102	Eric	Carty-Fickes	en	Central Time (US & Canada)	Admin	\N	\N	\N	\N	\N	\N
185	testnurse@example.com	$2a$10$gSP.0wFxrXMjOhB4Spyi6eG182q9VZJWOLw1BnGREel9Xp3kkpVc2	\N	\N	\N	0	\N	\N	\N	\N	2017-06-22 12:08:56.54044	2017-06-22 12:08:56.54044	nurse	123456789	Test	Nurse	en	Central Time (US & Canada)	Nurse	\N		\N	\N	\N	\N
181	sheilaelena.latinmh@gmail.com	$2a$10$zmOEZRy/G2b0l6eRAh2da.cQD78eaAjYeEnzO98oiud/pexIO2tpa	\N	\N	\N	72	2017-09-06 22:28:21.569018	2017-09-01 18:52:12.504823	189.121.99.33	177.58.248.54	2017-04-24 19:23:34.246231	2017-09-06 22:28:21.573143	nurse	966769220	Sheila Elena	de Moura Alves Fertoza	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
182	clerismar.latinmh@gmail.com	$2a$10$0exzdlWAhM8bwS0Hp059bOA2udyEZkuxEzdiBhkhi83Lckxqh4Pgi	\N	\N	\N	110	2017-10-23 12:09:57.180394	2017-10-16 12:01:12.757416	177.58.182.115	179.241.208.76	2017-05-05 21:45:49.480934	2017-10-23 12:09:57.18359	nurse	952419865	Clerismar	do Nascimento Ferreira	es-PE	Brasilia	Nurse	110	Jardim Copa	\N	\N	\N	\N
186	eliane.latinmh@gmail.com	$2a$10$2Fg4LATlulaaAk1B3DjoQ.wgWEfmzOiMPZOxdxXdMCakFUWq32OnC	\N	\N	\N	32	2018-01-08 11:50:38.468445	2017-12-11 12:59:28.916484	143.107.178.85	143.107.178.85	2017-07-10 15:20:55.015255	2018-01-08 11:50:38.469538	nurse	11992433412	Eliane Cristina	Fortunato	es-PE	Brasilia	Nurse	111	Celso Daniel	\N	\N	\N	\N
137	ritadecassiaenfermagem2017@gmail.com	$2a$10$VQTjI4DL40wU8YUtrzOMf.KTJYFCoCxK5cZOLP8U34jhEdPbe1QLS	\N	\N	\N	77	2017-05-03 15:16:01.849615	2017-05-03 13:06:40.535573	179.241.221.61	179.241.199.84	2016-09-22 20:20:46.267793	2018-01-08 13:51:07.861642	nurse	1199132741711960618566	Rita de Cassia	Silva	es-PE	Brasilia	Nurse	110	Vila Ramos	\N	\N	\N	\N
162	marcoantonio.latinmh@gmail.com	$2a$10$0uXQM1lWgzNN0j6gdFvgzOIuJ9WO6zM1pSa3shmefLqTnBD1lopKy	587d6fd8c8c3b538320ca2fa22836c7506eec7f4a9400a67cb8e87e72ac7faf4	2017-05-25 13:01:35.286789	\N	82	2017-10-26 12:08:38.172238	2017-10-26 10:03:22.977285	189.98.51.62	179.165.81.32	2017-03-15 19:07:26.194029	2017-10-26 12:08:38.179207	nurse	995079581	Marco Antonio 	Chenk	es-PE	Brasilia	Nurse	110	Dom João Nery	\N	\N	\N	\N
154	elaine.latinmh@gmail.com	$2a$10$rQ7NrpaGWkohNUMF7R7nIOSO1ZsLtp3eZULEnqn1r4f3pS38hcThO	\N	\N	\N	75	2017-11-06 15:32:22.695244	2017-10-25 17:55:02.118434	143.107.178.85	189.92.118.23	2017-03-15 17:03:53.683144	2017-11-06 15:32:22.699567	nurse	995079581	Elaine	 Antunes De Oliveira Mundessani	es-PE	Brasilia	Nurse	110	Jardim Copa	\N	\N	\N	\N
153	lucinaide.latinmh@gmail.com	$2a$10$EKBfl3t3EX4u/Nmb9VO7oula0xmKCTTjZ0Bedmd/UKO5fiCxQmeCm	\N	\N	\N	66	2017-10-16 12:13:44.064108	2017-10-02 13:17:56.209187	177.58.166.24	189.92.101.8	2017-03-15 16:58:23.664193	2017-10-16 12:13:44.065643	nurse	995079581	Lucinaide	LIMA DA SILVA	es-PE	Brasilia	Nurse	111	Jardim Copa	\N	\N	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: CONEMO_user
--

SELECT pg_catalog.setval('users_id_seq', 189, true);


--
-- Name: additional_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY additional_contacts
    ADD CONSTRAINT additional_contacts_pkey PRIMARY KEY (id);


--
-- Name: bit_core_content_module_position; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_content_modules
    ADD CONSTRAINT bit_core_content_module_position UNIQUE (bit_core_tool_id, "position") DEFERRABLE;


--
-- Name: bit_core_content_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_content_modules
    ADD CONSTRAINT bit_core_content_modules_pkey PRIMARY KEY (id);


--
-- Name: bit_core_content_provider_position; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_content_providers
    ADD CONSTRAINT bit_core_content_provider_position UNIQUE (bit_core_content_module_id, "position") DEFERRABLE;


--
-- Name: bit_core_content_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_content_providers
    ADD CONSTRAINT bit_core_content_providers_pkey PRIMARY KEY (id);


--
-- Name: bit_core_slide_position; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_slides
    ADD CONSTRAINT bit_core_slide_position UNIQUE (bit_core_slideshow_id, "position") DEFERRABLE;


--
-- Name: bit_core_slides_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_slides
    ADD CONSTRAINT bit_core_slides_pkey PRIMARY KEY (id);


--
-- Name: bit_core_slideshows_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_slideshows
    ADD CONSTRAINT bit_core_slideshows_pkey PRIMARY KEY (id);


--
-- Name: bit_core_tool_position; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_tools
    ADD CONSTRAINT bit_core_tool_position UNIQUE ("position") DEFERRABLE;


--
-- Name: bit_core_tools_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY bit_core_tools
    ADD CONSTRAINT bit_core_tools_pkey PRIMARY KEY (id);


--
-- Name: call_to_schedule_final_appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY call_to_schedule_final_appointments
    ADD CONSTRAINT call_to_schedule_final_appointments_pkey PRIMARY KEY (id);


--
-- Name: content_access_events_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY content_access_events
    ADD CONSTRAINT content_access_events_pkey PRIMARY KEY (id);


--
-- Name: devices_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: final_appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY final_appointments
    ADD CONSTRAINT final_appointments_pkey PRIMARY KEY (id);


--
-- Name: first_appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY first_appointments
    ADD CONSTRAINT first_appointments_pkey PRIMARY KEY (id);


--
-- Name: first_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY first_contacts
    ADD CONSTRAINT first_contacts_pkey PRIMARY KEY (id);


--
-- Name: help_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY help_messages
    ADD CONSTRAINT help_messages_pkey PRIMARY KEY (id);


--
-- Name: help_request_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY help_request_calls
    ADD CONSTRAINT help_request_calls_pkey PRIMARY KEY (id);


--
-- Name: lack_of_connectivity_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY lack_of_connectivity_calls
    ADD CONSTRAINT lack_of_connectivity_calls_pkey PRIMARY KEY (id);


--
-- Name: lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- Name: logins_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT logins_pkey PRIMARY KEY (id);


--
-- Name: non_adherence_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY non_adherence_calls
    ADD CONSTRAINT non_adherence_calls_pkey PRIMARY KEY (id);


--
-- Name: nurse_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY nurse_tasks
    ADD CONSTRAINT nurse_tasks_pkey PRIMARY KEY (id);


--
-- Name: participant_start_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY participant_start_dates
    ADD CONSTRAINT participant_start_dates_pkey PRIMARY KEY (id);


--
-- Name: participants_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY participants
    ADD CONSTRAINT participants_pkey PRIMARY KEY (id);


--
-- Name: past_device_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY past_device_assignments
    ADD CONSTRAINT past_device_assignments_pkey PRIMARY KEY (id);


--
-- Name: patient_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY patient_contacts
    ADD CONSTRAINT patient_contacts_pkey PRIMARY KEY (id);


--
-- Name: planned_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY planned_activities
    ADD CONSTRAINT planned_activities_pkey PRIMARY KEY (id);


--
-- Name: responses_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY responses
    ADD CONSTRAINT responses_pkey PRIMARY KEY (id);


--
-- Name: scheduled_task_cancellations_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY scheduled_task_cancellations
    ADD CONSTRAINT scheduled_task_cancellations_pkey PRIMARY KEY (id);


--
-- Name: scheduled_task_reschedulings_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY scheduled_task_reschedulings
    ADD CONSTRAINT scheduled_task_reschedulings_pkey PRIMARY KEY (id);


--
-- Name: second_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY second_contacts
    ADD CONSTRAINT second_contacts_pkey PRIMARY KEY (id);


--
-- Name: session_events_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY session_events
    ADD CONSTRAINT session_events_pkey PRIMARY KEY (id);


--
-- Name: smartphones_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY smartphones
    ADD CONSTRAINT smartphones_pkey PRIMARY KEY (id);


--
-- Name: supervision_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY supervision_sessions
    ADD CONSTRAINT supervision_sessions_pkey PRIMARY KEY (id);


--
-- Name: supervisor_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY supervisor_notes
    ADD CONSTRAINT supervisor_notes_pkey PRIMARY KEY (id);


--
-- Name: supervisor_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY supervisor_notifications
    ADD CONSTRAINT supervisor_notifications_pkey PRIMARY KEY (id);


--
-- Name: third_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY third_contacts
    ADD CONSTRAINT third_contacts_pkey PRIMARY KEY (id);


--
-- Name: token_auth_authentication_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY token_auth_authentication_tokens
    ADD CONSTRAINT token_auth_authentication_tokens_pkey PRIMARY KEY (id);


--
-- Name: token_auth_configuration_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY token_auth_configuration_tokens
    ADD CONSTRAINT token_auth_configuration_tokens_pkey PRIMARY KEY (id);


--
-- Name: token_auth_synchronizable_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY token_auth_synchronizable_resources
    ADD CONSTRAINT token_auth_synchronizable_resources_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: CONEMO_user; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_additional_contacts_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_additional_contacts_on_participant_id ON additional_contacts USING btree (participant_id);


--
-- Name: index_call_to_schedule_final_appointments_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_call_to_schedule_final_appointments_on_participant_id ON call_to_schedule_final_appointments USING btree (participant_id);


--
-- Name: index_content_access_events_on_lesson_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_content_access_events_on_lesson_id ON content_access_events USING btree (lesson_id);


--
-- Name: index_content_access_events_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_content_access_events_on_participant_id ON content_access_events USING btree (participant_id);


--
-- Name: index_devices_on_device_uuid_and_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_devices_on_device_uuid_and_participant_id ON devices USING btree (device_uuid, participant_id);


--
-- Name: index_devices_on_uuid; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_devices_on_uuid ON devices USING btree (uuid);


--
-- Name: index_first_appointments_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_first_appointments_on_participant_id ON first_appointments USING btree (participant_id);


--
-- Name: index_first_contacts_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_first_contacts_on_participant_id ON first_contacts USING btree (participant_id);


--
-- Name: index_help_messages_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_help_messages_on_participant_id ON help_messages USING btree (participant_id);


--
-- Name: index_help_request_calls_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_help_request_calls_on_participant_id ON help_request_calls USING btree (participant_id);


--
-- Name: index_lack_of_connectivity_calls_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_lack_of_connectivity_calls_on_participant_id ON lack_of_connectivity_calls USING btree (participant_id);


--
-- Name: index_lessons_on_bit_core_slideshow_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_lessons_on_bit_core_slideshow_id ON lessons USING btree (bit_core_slideshow_id);


--
-- Name: index_logins_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_logins_on_participant_id ON logins USING btree (participant_id);


--
-- Name: index_non_adherence_calls_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_non_adherence_calls_on_participant_id ON non_adherence_calls USING btree (participant_id);


--
-- Name: index_nurse_tasks_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_nurse_tasks_on_participant_id ON nurse_tasks USING btree (participant_id);


--
-- Name: index_participant_start_dates_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_participant_start_dates_on_participant_id ON participant_start_dates USING btree (participant_id);


--
-- Name: index_participants_on_nurse_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_participants_on_nurse_id ON participants USING btree (nurse_id);


--
-- Name: index_patient_contacts_on_first_appointment_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_patient_contacts_on_first_appointment_id ON patient_contacts USING btree (first_appointment_id);


--
-- Name: index_patient_contacts_on_first_contact_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_patient_contacts_on_first_contact_id ON patient_contacts USING btree (first_contact_id);


--
-- Name: index_patient_contacts_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_patient_contacts_on_participant_id ON patient_contacts USING btree (participant_id);


--
-- Name: index_patient_contacts_on_second_contact_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_patient_contacts_on_second_contact_id ON patient_contacts USING btree (second_contact_id);


--
-- Name: index_patient_contacts_on_third_contact_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_patient_contacts_on_third_contact_id ON patient_contacts USING btree (third_contact_id);


--
-- Name: index_responses_on_content_access_event_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_responses_on_content_access_event_id ON responses USING btree (content_access_event_id);


--
-- Name: index_scheduled_task_cancellations_on_nurse_task_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_scheduled_task_cancellations_on_nurse_task_id ON scheduled_task_cancellations USING btree (nurse_task_id);


--
-- Name: index_scheduled_task_reschedulings_on_nurse_task_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_scheduled_task_reschedulings_on_nurse_task_id ON scheduled_task_reschedulings USING btree (nurse_task_id);


--
-- Name: index_second_contacts_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_second_contacts_on_participant_id ON second_contacts USING btree (participant_id);


--
-- Name: index_session_events_on_lesson_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_session_events_on_lesson_id ON session_events USING btree (lesson_id);


--
-- Name: index_session_events_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_session_events_on_participant_id ON session_events USING btree (participant_id);


--
-- Name: index_smartphones_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_smartphones_on_participant_id ON smartphones USING btree (participant_id);


--
-- Name: index_supervision_sessions_on_nurse_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_supervision_sessions_on_nurse_id ON supervision_sessions USING btree (nurse_id);


--
-- Name: index_supervisor_notifications_on_nurse_task_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_supervisor_notifications_on_nurse_task_id ON supervisor_notifications USING btree (nurse_task_id);


--
-- Name: index_third_contacts_on_participant_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE INDEX index_third_contacts_on_participant_id ON third_contacts USING btree (participant_id);


--
-- Name: index_token_auth_authentication_tokens_on_client_uuid; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_token_auth_authentication_tokens_on_client_uuid ON token_auth_authentication_tokens USING btree (client_uuid);


--
-- Name: index_token_auth_authentication_tokens_on_entity_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_token_auth_authentication_tokens_on_entity_id ON token_auth_authentication_tokens USING btree (entity_id);


--
-- Name: index_token_auth_authentication_tokens_on_value; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_token_auth_authentication_tokens_on_value ON token_auth_authentication_tokens USING btree (value);


--
-- Name: index_token_auth_configuration_tokens_on_entity_id; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_token_auth_configuration_tokens_on_entity_id ON token_auth_configuration_tokens USING btree (entity_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: CONEMO_user; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_content_modules_tools; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_content_modules
    ADD CONSTRAINT fk_content_modules_tools FOREIGN KEY (bit_core_tool_id) REFERENCES bit_core_tools(id);


--
-- Name: fk_content_providers_modules; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_content_providers
    ADD CONSTRAINT fk_content_providers_modules FOREIGN KEY (bit_core_content_module_id) REFERENCES bit_core_content_modules(id);


--
-- Name: fk_first_appointments_participants; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY first_appointments
    ADD CONSTRAINT fk_first_appointments_participants FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_first_contacts_participants; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY first_contacts
    ADD CONSTRAINT fk_first_contacts_participants FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_lessons_slideshows; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY lessons
    ADD CONSTRAINT fk_lessons_slideshows FOREIGN KEY (bit_core_slideshow_id) REFERENCES bit_core_slideshows(id);


--
-- Name: fk_participants_nurses; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY participants
    ADD CONSTRAINT fk_participants_nurses FOREIGN KEY (nurse_id) REFERENCES users(id);


--
-- Name: fk_rails_18665e2f9f; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY scheduled_task_reschedulings
    ADD CONSTRAINT fk_rails_18665e2f9f FOREIGN KEY (nurse_task_id) REFERENCES nurse_tasks(id);


--
-- Name: fk_rails_2544458a2c; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY participant_start_dates
    ADD CONSTRAINT fk_rails_2544458a2c FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_4f700d9f78; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY non_adherence_calls
    ADD CONSTRAINT fk_rails_4f700d9f78 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_51f79f4894; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY call_to_schedule_final_appointments
    ADD CONSTRAINT fk_rails_51f79f4894 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_57d1f1a41d; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY content_access_events
    ADD CONSTRAINT fk_rails_57d1f1a41d FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_5fd4eda714; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY nurse_tasks
    ADD CONSTRAINT fk_rails_5fd4eda714 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_705485f5e7; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY additional_contacts
    ADD CONSTRAINT fk_rails_705485f5e7 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_77a33304dc; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY help_request_calls
    ADD CONSTRAINT fk_rails_77a33304dc FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_8174bc7078; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY supervisor_notifications
    ADD CONSTRAINT fk_rails_8174bc7078 FOREIGN KEY (nurse_task_id) REFERENCES nurse_tasks(id);


--
-- Name: fk_rails_899ed6eb43; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY session_events
    ADD CONSTRAINT fk_rails_899ed6eb43 FOREIGN KEY (lesson_id) REFERENCES lessons(id);


--
-- Name: fk_rails_92bbbad8e5; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY scheduled_task_cancellations
    ADD CONSTRAINT fk_rails_92bbbad8e5 FOREIGN KEY (nurse_task_id) REFERENCES nurse_tasks(id);


--
-- Name: fk_rails_a3079014ee; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY session_events
    ADD CONSTRAINT fk_rails_a3079014ee FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_a6931ad799; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY help_messages
    ADD CONSTRAINT fk_rails_a6931ad799 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_c3255fb75a; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY content_access_events
    ADD CONSTRAINT fk_rails_c3255fb75a FOREIGN KEY (lesson_id) REFERENCES lessons(id);


--
-- Name: fk_rails_e4f8c49eab; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY lack_of_connectivity_calls
    ADD CONSTRAINT fk_rails_e4f8c49eab FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_rails_f48fe8df78; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT fk_rails_f48fe8df78 FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_second_contacts_participants; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY second_contacts
    ADD CONSTRAINT fk_second_contacts_participants FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: fk_slideshows_slides; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY bit_core_slides
    ADD CONSTRAINT fk_slideshows_slides FOREIGN KEY (bit_core_slideshow_id) REFERENCES bit_core_slideshows(id);


--
-- Name: fk_smartphones_participants; Type: FK CONSTRAINT; Schema: public; Owner: CONEMO_user
--

ALTER TABLE ONLY smartphones
    ADD CONSTRAINT fk_smartphones_participants FOREIGN KEY (participant_id) REFERENCES participants(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

