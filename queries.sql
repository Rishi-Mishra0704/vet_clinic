/*Queries that provide answers to the questions from all projects.*/
SELECT a.name AS animal_name
FROM animals AS a
INNER JOIN visits AS v ON a.id = v.animal_id
INNER JOIN vets AS ve ON v.vet_id = ve.id
WHERE ve.name = 'William Tatcher'
ORDER BY v.visit_date DESC
LIMIT 1;

SELECT COUNT(DISTINCT v.animal_id) AS total_animals
FROM visits AS v
INNER JOIN vets AS ve ON v.vet_id = ve.id
WHERE ve.name = 'Stephanie Mendez';

SELECT ve.name AS vet_name, s.name AS specialty_name
FROM vets AS ve
LEFT JOIN specializations AS sp ON ve.id = sp.vet_id
LEFT JOIN species AS s ON sp.species_id = s.id;

SELECT a.name AS animal_name, v.visit_date
FROM animals AS a
INNER JOIN visits AS v ON a.id = v.animal_id
INNER JOIN vets AS ve ON v.vet_id = ve.id
WHERE ve.name = 'Stephanie Mendez'
AND v.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

SELECT a.name AS animal_name, COUNT(*) AS total_visits
FROM animals AS a
INNER JOIN visits AS v ON a.id = v.animal_id
GROUP BY a.name
ORDER BY total_visits DESC
LIMIT 1;

SELECT a.name AS animal_name, v.visit_date, ve.name AS vet_name
FROM animals AS a
INNER JOIN visits AS v ON a.id = v.animal_id
INNER JOIN vets AS ve ON v.vet_id = ve.id
WHERE ve.name = 'Maisy Smith'
ORDER BY v.visit_date ASC
LIMIT 1;

SELECT a.name AS animal_name, v.visit_date, ve.name AS vet_name
FROM animals AS a
INNER JOIN visits AS v ON a.id = v.animal_id
INNER JOIN vets AS ve ON v.vet_id = ve.id
ORDER BY v.visit_date DESC
LIMIT 1;

SELECT COUNT(*) AS total_visits
FROM visits AS v
INNER JOIN vets AS ve ON v.vet_id = ve.id
INNER JOIN animals AS a ON v.animal_id = a.id
LEFT JOIN specializations AS sp ON ve.id = sp.vet_id AND a.species_id = sp.species_id
WHERE sp.id IS NULL;

SELECT species.name, COUNT(*) as num_visits
FROM visits
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
JOIN species ON animals.species_id = species.id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
ORDER BY num_visits DESC;
