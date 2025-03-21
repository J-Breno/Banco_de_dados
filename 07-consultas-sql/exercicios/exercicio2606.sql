SELECT p.id, p.name
FROM products p
INNER JOIN categories cat ON p.id_categories = cat.id
WHERE cat.name LIKE 'super%';