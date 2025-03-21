SELECT pr.name, p.name
FROM products pr
INNER JOIN providers p ON pr.id_providers = p.id
WHERE p.name = 'Ajax SA';