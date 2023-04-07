What is each pokemon's primary type?
select pokemons.name, types.name from pokemons left join types on pokemons.primary_type = types.id;


What is Rufflet's secondary type?

select pokemons.name, types.name from pokemons left join types on pokemons.secondary_type = types.id where pokemons.name='rufflet';


What are the names of the pokemon that belong to the trainer with trainerID 303?

select pokemons.name trainerID from pokemon_trainer left join pokemons on pokemon_trainer.pokemon_id = pokemons.id where pokemon_trainer.trainerID = 303;


How many pokemon have a secondary type Poison

select count(secondary_type) from pokemons where secondary_type = 7;


What are all the primary types and how many pokemon have that type?

select count(pokemons.primary_type), types.name from types left join pokemons on pokemons.primary_type=types.id group by types.id


How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

select trainerID, count(*) from pokemon_trainer where pokelevel = 100 group by trainerID;



How many pokemon only belong to one trainer and no other?
Select TrainerID, count(pokemon_id) FROM pokemon_trainer group by trainerID having count(pokemon_id) = 1;
