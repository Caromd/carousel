--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: interior_colours; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE interior_colours (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: interior_colours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE interior_colours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: interior_colours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE interior_colours_id_seq OWNED BY interior_colours.id;


--
-- Name: makes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE makes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: makes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE makes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: makes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE makes_id_seq OWNED BY makes.id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE models (
    id integer NOT NULL,
    make_id integer,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE models_id_seq OWNED BY models.id;


--
-- Name: paint_colours; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE paint_colours (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: paint_colours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE paint_colours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: paint_colours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE paint_colours_id_seq OWNED BY paint_colours.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE plans (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE plans_id_seq OWNED BY plans.id;


--
-- Name: refile_attachments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE refile_attachments (
    id integer NOT NULL,
    namespace character varying NOT NULL
);


--
-- Name: refile_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE refile_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: refile_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE refile_attachments_id_seq OWNED BY refile_attachments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: vehicles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE vehicles (
    id integer NOT NULL,
    make_id integer,
    model_id integer,
    plan_id integer,
    interior_colour_id integer,
    paint_colour_id integer,
    mileage character varying,
    year character varying,
    fuel character varying,
    transmission character varying,
    price integer,
    stock_number character varying,
    derivative character varying,
    prior_use character varying,
    vehicle_type character varying,
    drive character varying,
    paint_colour character varying,
    interior_colour character varying,
    displacement character varying,
    fuel_type character varying,
    description character varying,
    full_service_history boolean,
    one_owner boolean,
    low_kilometers boolean,
    abs_brakes boolean,
    air_conditioning boolean,
    alarm boolean,
    alloy_wheels boolean,
    central_locking boolean,
    electric_windows boolean,
    immobilizer boolean,
    power_steering boolean,
    airbags boolean,
    radio boolean,
    cd boolean,
    mp3 boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_id character varying
);


--
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE vehicles_id_seq OWNED BY vehicles.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY interior_colours ALTER COLUMN id SET DEFAULT nextval('interior_colours_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY makes ALTER COLUMN id SET DEFAULT nextval('makes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY models ALTER COLUMN id SET DEFAULT nextval('models_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY paint_colours ALTER COLUMN id SET DEFAULT nextval('paint_colours_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY plans ALTER COLUMN id SET DEFAULT nextval('plans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY refile_attachments ALTER COLUMN id SET DEFAULT nextval('refile_attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles ALTER COLUMN id SET DEFAULT nextval('vehicles_id_seq'::regclass);


--
-- Name: interior_colours_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY interior_colours
    ADD CONSTRAINT interior_colours_pkey PRIMARY KEY (id);


--
-- Name: makes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY makes
    ADD CONSTRAINT makes_pkey PRIMARY KEY (id);


--
-- Name: models_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- Name: paint_colours_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY paint_colours
    ADD CONSTRAINT paint_colours_pkey PRIMARY KEY (id);


--
-- Name: plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: refile_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY refile_attachments
    ADD CONSTRAINT refile_attachments_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- Name: index_models_on_make_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_models_on_make_id ON models USING btree (make_id);


--
-- Name: index_refile_attachments_on_namespace; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_refile_attachments_on_namespace ON refile_attachments USING btree (namespace);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_vehicles_on_interior_colour_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_vehicles_on_interior_colour_id ON vehicles USING btree (interior_colour_id);


--
-- Name: index_vehicles_on_make_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_vehicles_on_make_id ON vehicles USING btree (make_id);


--
-- Name: index_vehicles_on_model_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_vehicles_on_model_id ON vehicles USING btree (model_id);


--
-- Name: index_vehicles_on_paint_colour_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_vehicles_on_paint_colour_id ON vehicles USING btree (paint_colour_id);


--
-- Name: index_vehicles_on_plan_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_vehicles_on_plan_id ON vehicles USING btree (plan_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_18cb3f3726; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT fk_rails_18cb3f3726 FOREIGN KEY (plan_id) REFERENCES plans(id);


--
-- Name: fk_rails_8624f977fd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT fk_rails_8624f977fd FOREIGN KEY (interior_colour_id) REFERENCES interior_colours(id);


--
-- Name: fk_rails_90d6448d19; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT fk_rails_90d6448d19 FOREIGN KEY (make_id) REFERENCES makes(id);


--
-- Name: fk_rails_9f0420da42; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT fk_rails_9f0420da42 FOREIGN KEY (model_id) REFERENCES models(id);


--
-- Name: fk_rails_d7d4f87ebe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY models
    ADD CONSTRAINT fk_rails_d7d4f87ebe FOREIGN KEY (make_id) REFERENCES makes(id);


--
-- Name: fk_rails_db0d864a11; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY vehicles
    ADD CONSTRAINT fk_rails_db0d864a11 FOREIGN KEY (paint_colour_id) REFERENCES paint_colours(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20170114103348');

INSERT INTO schema_migrations (version) VALUES ('20170114105740');

INSERT INTO schema_migrations (version) VALUES ('20170114105758');

INSERT INTO schema_migrations (version) VALUES ('20170114105819');

INSERT INTO schema_migrations (version) VALUES ('20170114110205');

INSERT INTO schema_migrations (version) VALUES ('20170114110227');

INSERT INTO schema_migrations (version) VALUES ('20170114110511');

INSERT INTO schema_migrations (version) VALUES ('20170116172316');

INSERT INTO schema_migrations (version) VALUES ('20170204073156');

