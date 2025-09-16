/*
Mechanics:
This query retrieves all transactions, orders them by amount in ascending order, 
and returns only the 10 smallest transactions. 

Insight:
It helps identify unusually small transactions that could represent 
outliers, errors in data entry, or patterns of very low-value activity 
worth further investigation.
*/
SELECT
  *
FROM
  `banking_transactions_backup`
ORDER BY
  `amount` ASC
LIMIT 10;
