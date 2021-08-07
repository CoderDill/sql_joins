-- write your queries here

SELECT * FROM owners o JOIN vehicles v ON o.id = v.owner_id;
SELECT o.first_name, o.last_name, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (o.first_name, o.last_name) ORDER BY first_name;
SELECT o.first_name, o.last_name, ROUND(AVG(price)) AS avg_price, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (o.first_name, o.last_name) HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY first_name DESC;