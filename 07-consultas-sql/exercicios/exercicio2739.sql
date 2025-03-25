SELECT 
  name, 
  CAST(EXTRACT(DAY FROM payday) AS INT)
FROM
  loan;