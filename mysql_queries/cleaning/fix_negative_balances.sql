

  /*
This query is a data cleaning step.
It checks for invalid data, specifically transactions with a negative amount.
In a banking dataset, all transaction amounts should be positive, so a negative value indicates invalid data.
*/
SELECT
  * -- Selects all columns from the `banking_transactions_backup` table.
FROM
  `banking_transactions_backup`
WHERE
  `amount` < 0; -- Filters for records where the 'amount' is less than zero (negative).