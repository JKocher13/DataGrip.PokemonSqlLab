# Returns to you each pokemons primary type#
select p.name AS name, t.name AS type
from pokemons AS p, types AS t
WHERE p.primary_type=t.id;

#Tells you rufflets seconday type#
select p.name AS name, t.name AS secondary_type
from pokemons AS p, types AS t
where p.secondary_type=t.id AND p.name = "Rufflet";

#returns all the pokemon owned by trainer with the id 303#
select p.name
from pokemons AS p, trainers as t , pokemon_trainer as pt
where p.id = pt.pokemon_id AND t.trainerID = pt.trainerID AND t.trainerID = 303;

#tells you how many pokemon have poision as there seconday type#
select count(p.id)
from pokemons as p, types as t
where p.secondary_type = t.id and t.name="Poison";

#tell you how many pokemon have each of the primary types#
select t.name, count(*)
from pokemons AS p, types AS t
WHERE p.primary_type = t.id
GROUP BY t.name;

#tell you how many 100 level pokemon each trainer who has a 100 level pokemon has#
select trainerid, count(*)
from pokemon_trainer
where pokelevel = 100
GROUP BY trainerid


#tells you how many pokemon belong to only one trainer#
select sum(x) from (select count(pokemon_id) as x
from pokemon_trainer
group by pokemon_id
having x =  1)x