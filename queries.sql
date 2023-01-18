/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth >= '2016-01-01' AND date_of_birth <= '2019-01-01';
SELECT name FROM animals WHERE neutered=true AND escape_attempts < 3;
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE NOT name = 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';


update animals set species='unspecified';
rollback;
select * from animals;

update animals set species='digimon' where name like '%mon';
commit;
update animals set species='pokemon' where species is NULL;
commit;
select * from animals;


begin;
  delete from animals where date_of_birth >= '2022-01-01';
  savepoint pdate;
  update animals set weight_kg = weight_kg * -1;
  rollback to pdate;
  update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
commit;
select * from animals;

select count(*) from animals;

select count(*) from animals where escape_attempts=0;

select avg(weight_kg) from animals;

select avg(escape_attempts) as neutered from animals where neutered=true;
select avg(escape_attempts) as not_neutered from animals where neutered=false;

select max(weight_kg) from animals where neutered=true;
select min(weight_kg) from animals where neutered=true;
select max(weight_kg) from animals where neutered=false;
select min(weight_kg) from animals where neutered=false;

select avg(escape_attempts) as neutered from animals
 where neutered=true and date_of_birth > '1990-01-01' and date_of_birth < '2000-01-01';
select avg(escape_attempts) as not_neutered from animals
 where neutered=false and date_of_birth > '1990-01-01' and date_of_birth < '2000-01-01';
  