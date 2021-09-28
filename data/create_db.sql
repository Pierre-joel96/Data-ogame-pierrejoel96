
-- je supprime la BDD si elle existe déjà
DROP DATABASE IF EXISTS ogame;

-- je supprime le rôle s'il existe déjà
DROP ROLE IF EXISTS ogame;


-- on crèe un rôle pour gérer notre BDD spécifique à notre API
CREATE ROLE ogame WITH LOGIN PASSWORD 'ogame';

-- on crèe la BDD de notre API
CREATE DATABASE ogame WITH OWNER ogame;
