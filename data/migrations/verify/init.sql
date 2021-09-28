-- Verify ogame:init on pg

BEGIN;

SELECT  id,name,theme,author,image,editor,age_minimum,duration,player_minimum,player_maximum,description FROM game WHERE false;


ROLLBACK;
