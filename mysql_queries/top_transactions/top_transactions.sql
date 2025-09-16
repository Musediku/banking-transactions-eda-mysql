/*
Mechanics:
This query selects all transactions from the backup table, 
orders them by transaction amount in descending order, 
and returns only the top 10 records. 

Insight:
It highlights the largest transactions in the dataset, 
helping to identify unusually large amounts, potential outliers, 
or high-value customers and activities that may need further investigation.
*/
SELECT
  *
FROM
  `banking_transactions_backup`
ORDER BY
  `amount` DESC
LIMIT 10;
