# Banking Transactions Exploratory Analysis With MySQL

## Project Overview
This project focuses on exploring a banking transactions dataset to understand transaction patterns, customer behavior, and potential data quality issues. It demonstrates a structured approach for **data cleaning** and **exploratory data analysis (EDA)** using **MySQL**.

The project is designed to prepare the dataset, generate insights, and provide a foundation for further analyses such as fraud detection or predictive modeling.

---

## Objectives
- Understand the distribution of transaction types such as CASH_OUT, PAYMENT, TRANSFER, CASH_IN, and DEBIT.  
- Identify high-value accounts and unusual transaction patterns.  
- Detect potential data quality issues such as missing, zero, or inconsistent balances.  
- Provide a structured workflow for data cleaning and EDA that can be extended to further analyses.

---
```text
banking-transactions-eda/
│
├── README.md                  # About the project
│
├── data/
│   └── banking_transactions.csv  # Raw CSV dataset
│
├── sql/
│   ├── cleaning/               # Data quality & integrity checks
│   │   ├── Identifies_duplicate.sql
│   │   ├── Identifying_null_values.sql
│   │   └── fix_negative_balances.sql
│   │
│   ├── fraud/                  # Fraud detection & anomaly analysis
│   │   ├── fraud_pattern_transactions.sql
│   │   └── unusual_transaction_behavior.sql
│   │
│   ├── transaction_analysis/   # Transaction amounts & distribution
│   │   ├── transaction_values.sql
│   │   ├── transaction_distribution.sql
│   │   └── flow_of_transactions_over_time.sql
│   │
│   ├── account_activity/       # Account monitoring & performance
│   │   ├── balance_change.sql
│   │   └── most_active_accounts.sql
│   │
│   └── top_transactions/       # Extreme transactions
│       ├── top_transactions.sql
│       └── top_transactions_lowest.sql
│
└── insights/
    └── EDA_Insights.md         # Summarized insights with figures & conclusions
```
---
## Dataset
The dataset includes transaction records with the following key columns:  
- `type`: Transaction type  
- `amount`: Transaction amount  
- `nameOrig` / `nameDest`: Sender and receiver accounts  
- `oldbalanceOrg` / `newbalanceOrig`: Sender balances  
- `isFraud`: Fraud indicator  
- `step`: Time step or unit (e.g., day)  

The raw CSV dataset is stored in the `data/` folder.
`
---



---

## How to Use
1. Import `banking_transactions.csv` into MySQL.  
2. Run the SQL scripts in `sql/cleaning/` to clean and prepare the dataset.  
3. Execute the SQL scripts in `sql/eda/` to perform exploratory analysis.  
4. Review the summarized results and interpretations in `insights/EDA_Insights.md`.

---

## Future Steps
- Extend the analysis with visualizations and charts.  
- Develop predictive models for fraud detection.  
- Investigate unusual patterns or high-value accounts in more depth.
