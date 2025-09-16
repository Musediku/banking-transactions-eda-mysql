/*
Mechanics:
This query checks for transactions where either the original balance (`oldbalanceOrg`) 
or the new balance (`newbalanceOrig`) is zero.  

Insight:
It acts as a data quality check to uncover potentially incomplete records, 
dummy accounts, or unusual transaction behavior that may need further validation.
*/
SELECT
  COUNT(*) AS zero_balance_cases
FROM
  banking_transactions_backup
WHERE
  oldbalanceOrg = 0 OR newbalanceOrig = 0;