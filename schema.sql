CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT
);

CREATE TABLE vets (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    date_of_graduation DATE NOT NULL
);

CREATE TABLE specializations (
    id BIGSERIAL PRIMARY KEY,
    vet_id BIGINT REFERENCES vets(id),
    species_id BIGINT REFERENCES species(id)
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

CREATE TABLE visits (
    id BIGSERIAL PRIMARY KEY,
    animal_id BIGINT REFERENCES animals(id),
    vet_id BIGINT REFERENCES vets(id),
    visit_date DATE NOT NULL
);
