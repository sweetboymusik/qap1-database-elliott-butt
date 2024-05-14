CREATE TABLE public.author
(
    author_id SERIAL NOT NULL,
    first_name VARCHAR(200) NOT NULL,
    middle_names VARCHAR(200),
    last_name VARCHAR(200) NOT NULL,
    age INTEGER,
    creation_date TIMESTAMP with TIME ZONE NOT NULL,
    PRIMARY KEY (author_id)
);

ALTER TABLE IF EXISTS public.author
    OWNER to postgres;