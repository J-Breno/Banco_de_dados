SELECT p.name, pr.name, p.price
FROM products p
INNER JOIN providers pr ON p.id_providers = pr.id
INNER JOIN categories c ON p.id_categories = c.id
WHERE p.price > 1000 AND c.name = 'Super Luxury';