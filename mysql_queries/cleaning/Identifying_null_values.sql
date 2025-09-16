-- Create a new database named 'banking_project' to store all project tables
CREATE DATABASE banking_project;

SELECT * FROM `banking_transactions`
LIMIT 100; -- This limits the result to the first 10 rows.


CREATE TABLE `banking_transactions_backup` AS
SELECT *
FROM `banking_transactions`;

SELECT * FROM `banking_transactions_backup`
LIMIT 100; -- This limits the result to the first 100 rows.

/*
This query is a data cleaning step.
It is designed to check for the presence of NULL or missing values
in each of the key columns within the `banking_transactions` table.
The result is a single row showing the total count of missing values per column.
*/
SELECT
  SUM(CASE WHEN `step` IS NULL THEN 1 ELSE 0 END) AS `step_missing`, -- Counts missing values in the 'step' column.
  SUM(CASE WHEN `type` IS NULL THEN 1 ELSE 0 END) AS `type_missing`, -- Counts missing values in the 'type' column.
  SUM(CASE WHEN `amount` IS NULL THEN 1 ELSE 0 END) AS `amount_missing`, -- Counts missing values in the 'amount' column.
  SUM(CASE WHEN `nameOrig` IS NULL THEN 1 ELSE 0 END) AS `nameOrig_missing`, -- Counts missing values in the 'nameOrig' column.
  SUM(CASE WHEN `oldbalanceOrg` IS NULL THEN 1 ELSE 0 END) AS `oldbalanceOrg_missing`, -- Counts missing values in the 'oldbalanceOrg' column.
  SUM(CASE WHEN `newbalanceOrig` IS NULL THEN 1 ELSE 0 END) AS `newbalanceOrig_missing`, -- Counts missing values in the 'newbalanceOrig' column.
  SUM(CASE WHEN `nameDest` IS NULL THEN 1 ELSE 0 END) AS `nameDest_missing`, -- Counts missing values in the 'nameDest' column.
  SUM(CASE WHEN `oldbalanceDest` IS NULL THEN 1 ELSE 0 END) AS `oldbalanceDest_missing`, -- Counts missing values in the 'oldbalanceDest' column.
  SUM(CASE WHEN `newbalanceDest` IS NULL THEN 1 ELSE 0 END) AS `newbalanceDest_missing`, -- Counts missing values in the 'newbalanceDest' column.
  SUM(CASE WHEN `isFraud` IS NULL THEN 1 ELSE 0 END) AS `isFraud_missing`, -- Counts missing values in the 'isFraud' column.
  SUM(CASE WHEN `isFlaggedFraud` IS NULL THEN 1 ELSE 0 END) AS `isFlaggedFraud_missing` -- Counts missing values in the 'isFlaggedFraud' column.
FROM
  `banking_transactions_backup`;
  
