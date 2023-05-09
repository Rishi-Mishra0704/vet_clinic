/* Database schema to keep the structure of entire database. */

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL DEFAULT 0,
    neutered BOOLEAN,
    weight_kg FLOAT,
    species_id BIGINT REFERENCES species(id),
    owner_id BIGINT REFERENCES owners(id)
);
