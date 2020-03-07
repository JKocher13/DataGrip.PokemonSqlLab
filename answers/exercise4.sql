"""
returns pokemon name, trainer name, trainer level and primary type. then sorts by level because in pokemon the higher the level the better the pokemon. 
could not get function to return seconday value would love to touch on this in class
"""

select p.name AS 'Pokemon Name', t.trainername AS 'Trainer Name', pt.pokelevel 'Level', ty.name AS 'Primary Type'
From pokemons as p, trainers as t , pokemon_trainer as pt , types as ty
where p.id = pt.pokemon_id and t.trainerID = pt.trainerID and ty.id=p.primary_type
ORDER BY pt.pokelevel DESC;
