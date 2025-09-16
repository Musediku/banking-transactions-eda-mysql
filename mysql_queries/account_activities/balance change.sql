/*
Mechanics:
This query computes the average, minimum, and maximum balance change 
by subtracting the old balance from the new balance for all transactions.  

Insight:
It provides a quick view of account activity intensity — showing whether accounts 
typically gain or lose money, and highlighting the extremes that may indicate 
outliers, unusual transactions, or errors.
*/
SELECT
  AVG(newbalanceOrig - oldbalanceOrg) AS avg_balance_change,
  MIN(newbalanceOrig - oldbalanceOrg) AS min_change,
  MAX(newbalanceOrig - oldbalanceOrg) AS max_change
FROM
  banking_transactions_backup;


