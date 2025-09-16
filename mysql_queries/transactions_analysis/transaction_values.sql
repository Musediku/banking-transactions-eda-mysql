/*
This query is part of the exploratory data analysis (EDA) process.
It provides a summary of transaction activity by type, including:
- the total count,
- the sum of all transaction amounts,
- and the average transaction amount.

Insight:
By comparing both frequency and value, we can identify which transaction types 
contribute most to the overall money flow. For example, PAYMENTS may be the most 
frequent but with smaller amounts, while TRANSFERS or CASH_OUT transactions 
might occur less often but involve much larger sums. 
This helps highlight which transaction types are "high-volume" vs "high-value," 
guiding risk analysis, fraud detection, or business focus.
*/
SELECT
  `type`, -- Specifies the column to group the transactions by.
  COUNT(*) AS `transaction_count`, -- Counts the number of transactions in each group and names the column `transaction_count`.
  SUM(`amount`) AS `total_amount`, -- Calculates the sum of all transaction amounts for each type and names the column `total_amount`.
  AVG(`amount`) AS `average_amount` -- Calculates the average amount for each transaction type and names the column `average_amount`.
FROM
  `banking_transactions_backup` -- Specifies the table to query.
GROUP BY
  `type` -- Groups rows that have the same value in the `type` column.
ORDER BY
  `total_amount` DESC; -- Sorts the results by the total amount in descending order, showing the largest transaction types first.
