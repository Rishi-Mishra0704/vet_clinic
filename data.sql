/* Populate database with sample data. */

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

INSERT INTO owners (full_name, age) VALUES 
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO animals (name, date_of_birth, species_id, owner_id) VALUES
('Agumon', '2015-01-01', 2, 1),
('Gabumon', '2018-02-14', 2, 2),
('Pikachu', '2019-05-05', 1, 2),
('Devimon', '2020-06-21', 2, 3),
('Plantmon', '2016-11-11', 2, 3),
('Charmander', '2017-12-31', 1, 4),
('Squirtle', '2018-06-15', 1, 4),
('Blossom', '2019-09-20', 1, 4),
('Angemon', '2021-01-01', 2, 5),
('Boarmon', '2022-04-01', 2, 5);
