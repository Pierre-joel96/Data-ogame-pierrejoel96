-- Deploy ogame:init to pg

BEGIN;

-- on crèe un domaine pint, qui implique la nécessité que la VALUE soit supérieure à 0
CREATE DOMAIN pint AS int CHECK(VALUE > 0);

-- on crèe notre table
CREATE TABLE game (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    theme TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    image TEXT NOT NULL,
    editor TEXT NOT NULL,
    age_minimum pint NOT NULL,
    duration INTERVAL NOT NULL,
    player_minimum pint NOT NULL,
    player_maximum pint NOT NULL,
    description TEXT NOT NULL,
    CHECK (player_maximum>=player_minimum)
);

COMMIT;
