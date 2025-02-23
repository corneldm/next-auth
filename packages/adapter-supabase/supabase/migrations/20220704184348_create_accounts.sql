-- This script was generated by the Schema Diff utility in pgAdmin 4
-- For the circular dependencies, the order in which Schema Diff writes the objects is not very sophisticated
-- and may require manual changes to the script to ensure changes are applied in the correct order.
-- Please report an issue for any failure with the reproduction steps.

CREATE TABLE IF NOT EXISTS public.accounts
(
    id text COLLATE pg_catalog."default" NOT NULL DEFAULT uuid_generate_v4(),
    type text COLLATE pg_catalog."default",
    provider text COLLATE pg_catalog."default",
    "providerAccountId" text COLLATE pg_catalog."default",
    refresh_token text COLLATE pg_catalog."default",
    access_token text COLLATE pg_catalog."default",
    expires_at bigint,
    token_type text COLLATE pg_catalog."default",
    scope text COLLATE pg_catalog."default",
    id_token text COLLATE pg_catalog."default",
    session_state text COLLATE pg_catalog."default",
    oauth_token_secret text COLLATE pg_catalog."default",
    oauth_token text COLLATE pg_catalog."default",
    "userId" text COLLATE pg_catalog."default",
    CONSTRAINT accounts_pkey PRIMARY KEY (id),
    CONSTRAINT "accounts_userId_fkey" FOREIGN KEY ("userId")
        REFERENCES public.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.accounts
    OWNER to postgres;

GRANT ALL ON TABLE public.accounts TO authenticated;

GRANT ALL ON TABLE public.accounts TO postgres;

GRANT ALL ON TABLE public.accounts TO service_role;
