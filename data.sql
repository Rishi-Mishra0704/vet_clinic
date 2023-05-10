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

INSERT INTO vets (name, age, date_of_graduation) VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1), (3, 1), (3, 2), (4, 2);

INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (1, 1, '2020-05-24'),
(1, 3, '2020-07-22'),
(2, 4, '2021-02-02'),
(3, 2, '2020-01-05'),
(3, 2, '2020-03-08'),
(3, 2, '2020-05-14'),
(4, 3, '2021-05-04'),
(5, 4, '2021-02-24'),
(6, 2, '2019-12-21'),
(6, 1, '2020-08-10'),
(6, 2, '2021-04-07'),
(7, 3, '2019-09-29'),
(8, 4, '2020-10-03'),
(8, 4, '2020-11-04'),
(9, 2, '2019-01-24'),
(9, 2, '2019-05-15'),
(9, 2, '2020-02-27'),
(9, 2, '2020-08-03'),
(10, 3, '2020-05-24'),
(10, 1, '2021-01-11');
