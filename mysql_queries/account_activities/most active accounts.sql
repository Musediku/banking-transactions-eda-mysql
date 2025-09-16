/*
Mechanics:
This analysis identifies the most active accounts in the dataset by calculating 
the top 10 originators (senders) and the top 10 recipients (receivers), 
based on the total amount of money transacted.  

Insight:
It highlights which accounts are moving the largest sums of money. 
These accounts could represent high-value customers, 
key players in the transaction network, or potential points of interest 
for detecting unusual activity such as money laundering or fraud. 
*/

-- Top 10 originators by total amount sent
SELECT
  `nameOrig`,
  COUNT(*) AS `num_sent`,
  SUM(`amount`) AS `total_sent`
FROM
  `banking_transactions_backup`
GROUP BY
  `nameOrig`
ORDER BY
  `total_sent` DESC
LIMIT 10;


-- Top 10 recipients by total amount received
SELECT
  `nameDest`,
  COUNT(*) AS `num_received`,
  SUM(`amount`) AS `total_received`
FROM
  `banking_transactions_backup`
GROUP BY
  `nameDest`
ORDER BY
  `total_received` DESC
LIMIT 10;
