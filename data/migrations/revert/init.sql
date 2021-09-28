-- Revert ogame:init from pg

BEGIN;

DROP TABLE IF EXISTS game;

COMMIT;
