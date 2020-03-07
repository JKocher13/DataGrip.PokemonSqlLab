use pokemon;

show tables;

describe pokemons;

#shows all files in pokemon table#
select * from pokemons;

#shows distinct types in pokemon table#
select distinct primary_type from pokemons;

#returns the name and id column from the pokemons table for a pokemon wiht the ID 45#
select name, id from pokemons where id = 45;

#tells you how many differnt types of pokemon there are#
select count(id) from pokemons;

#Tell you how many types of pokemon there are for each type#
select DISTINCT primary_type, count(*) from pokemons GROUP BY primary_type;

#tell you many pokemon have a secondary type#
select count(id) from pokemons where secondary_type IS NOT NULL;


