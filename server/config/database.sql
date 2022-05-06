CREATE DATABASE nanourls;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- for importing uuid_generate_v4 function

CREATE TABLE IF NOT EXISTS public.links
(
    id uuid NOT NULL DEFAULT uuid_generate_v4(),
    url character varying COLLATE pg_catalog."default" NOT NULL,
    url_title character varying COLLATE pg_catalog."default",
    short_url character varying COLLATE pg_catalog."default" NOT NULL,
    total_clicks bigint NOT NULL DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT links_pkey PRIMARY KEY (id)
)