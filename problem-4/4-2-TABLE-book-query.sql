CREATE TABLE public.book
(
    book_id SERIAL NOT NULL,
    author_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    genre_id INTEGER,
    release_date DATE,
    creation_date TIMESTAMP WITH TIME ZONE NOT NULL,
    PRIMARY KEY (book_id)
);

ALTER TABLE IF EXISTS public.book
	OWNER to postgres,
    ADD CONSTRAINT author_id FOREIGN KEY (author_id)
    REFERENCES public.author (author_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;