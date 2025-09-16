/*
Mechanics:
This query filters the dataset to include only fraudulent transactions (`isFraud = 1`), 
groups them by transaction type, and calculates the count, total amount, 
and average amount for each group.  

Insight:
It provides a breakdown of fraud patterns by transaction type, 
helping to identify which types are most vulnerable, 
the scale of fraudulent activity in terms of amount, 
and the typical size of fraudulent transactions.
*/
SELECT
    `type`,
    COUNT(*) AS `fraud_count`,
    SUM(amount) AS `fraud_amount`,
    AVG(amount) AS `avg_fraud_amount`
FROM
    banking_transactions_backup
WHERE
    isFraud = 1 -- Ensures only fraudulent transactions are included.
GROUP BY
    `type`;
