-- This query is designed to identify duplicate records in the `banking_transactions` table.
-- It groups identical rows and returns those that appear more than once.
SELECT
  *, -- Selects all columns from the table.
  COUNT(*) -- Counts the number of occurrences of each row.
FROM
  `banking_transactions_backup`
GROUP BY
  `step`, `type`, `amount`, `nameOrig`, `oldbalanceOrg`, `newbalanceOrig`, `nameDest`, `oldbalanceDest`, `newbalanceDest`, `isFraud`, `isFlaggedFraud`
HAVING
  COUNT(*) > 1; -- Filters the result to only show rows that appear more than once (duplicates).
  