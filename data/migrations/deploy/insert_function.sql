-- Deploy ogame:insert_function to pg

BEGIN;

CREATE OR REPLACE FUNCTION insert_game(text,text,text,text,text,pint,interval,pint,pint,text) RETURNS integer AS $$

INSERT INTO public.game(
	name, theme, author, image, editor, age_minimum, duration, player_minimum, player_maximum, description)
	VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
	RETURNING id;

$$ LANGUAGE SQL;

COMMIT;
