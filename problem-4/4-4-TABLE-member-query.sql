CREATE TABLE public.member
(
    member_id serial NOT NULL,
    card_num character varying(10) NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    library_id integer,
    PRIMARY KEY (member_id)
);

ALTER TABLE IF EXISTS public.member
    OWNER to postgres;