/*
This query is the first step in exploratory data analysis (EDA).
It counts the number of occurrences for each transaction type,
providing a high-level overview of the most frequent activities in the dataset.

Insight:
By examining the distribution of transaction types (e.g., PAYMENT, TRANSFER, CASH_OUT, DEBIT),
we can identify which operations dominate the dataset. 
This helps in understanding customer behavior, spotting unusual patterns,
and guiding deeper analysis such as focusing fraud detection efforts 
on the most common or riskiest transaction types.
*/
SELECT
  `type`, -- Specifies the column to group the transactions by.
  COUNT(*) AS `transaction_count` -- Counts the number of transactions in each group and names the new column `transaction_count`.
FROM
  `banking_transactions_backup` -- Specifies the table to retrieve data from.
GROUP BY
  `type` -- Groups rows that have the same value in the `type` column.
ORDER BY
  `transaction_count` DESC; -- Sorts the results in descending order, showing the most frequent transaction types first.
