-- write your queries here

SELECT * FROM owners
FULL OUTER JOIN vehicles
ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
ORDER BY first_name;

SELECT first_name, last_name, AVG(price),COUNT(owner_id)
FROM vehicles
JOIN owners
ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
HAVING COUNT(owner_id) >= 2 AND AVG(price) > 10000
ORDER BY first_name DESC;
