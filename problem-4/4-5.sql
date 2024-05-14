CREATE TABLE public.checkout
(
    checkout_id SERIAL NOT NULL,
    member_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    library_id INTEGER NOT NULL,
    checkout_date DATE NOT NULL,
    creation_date TIMESTAMP with TIME ZONE NOT NULL,
    PRIMARY KEY (checkout_id)
);

ALTER TABLE IF EXISTS public.checkout
    OWNER to postgres;
	
	ALTER TABLE IF EXISTS public.checkout
    ADD CONSTRAINT member_id FOREIGN KEY (member_id)
    REFERENCES public.member (member_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.checkout
    ADD CONSTRAINT book_id FOREIGN KEY (book_id)
    REFERENCES public.book (book_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;