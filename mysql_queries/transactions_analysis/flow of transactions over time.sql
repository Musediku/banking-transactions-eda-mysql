/*
Mechanics:
This query groups transactions by the `step` column (representing a unit of time, 
such as a day or time step), and calculates both the count and total transaction amount 
for each period. Results are ordered chronologically.  

Insight:
It reveals the distribution and flow of transactions over time, 
helping to spot patterns such as peaks in activity, 
gradual growth or decline, or unusual spikes that may signal fraud 
or special events in the dataset.
*/
SELECT
  `step`,
  COUNT(*) AS `num_transactions`,
  SUM(`amount`) AS `total_amount`
FROM
  `banking_transactions_backup`
GROUP BY
  `step`
ORDER BY
  `step`;
