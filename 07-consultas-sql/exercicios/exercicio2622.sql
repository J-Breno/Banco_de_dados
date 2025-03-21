SELECT c.name
FROM legal_person l
INNER JOIN customers c ON l.id_customers = c.id
WHERE l.id_customers = c.id;