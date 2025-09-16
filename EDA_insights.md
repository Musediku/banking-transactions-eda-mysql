# Banking Transactions Exploratory Analysis

## Introduction
The goal of this project is to perform **exploratory data analysis (EDA)** on a financial transactions dataset using **MySQL**. The dataset contains transaction records including `CASH_OUT`, `PAYMENT`, `TRANSFER`, `CASH_IN`, and `DEBIT`, along with details such as transaction amounts, account balances, and fraud indicators.

The analysis focuses on understanding transaction behaviors, identifying anomalies, and detecting fraud patterns by examining both the **frequency and value of transactions**, **high-activity accounts**, **time-based trends**, and **data quality issues**.

---

## Key Insights

### 1. Transaction Distribution by Type
- **Most frequent transactions:**  
  - `CASH_OUT`: 1,072 occurrences  
  - `PAYMENT`: 1,019 occurrences  
  - `CASH_IN`: 629 occurrences  
  - `TRANSFER`: 265 occurrences  
  - `DEBIT`: 14 occurrences  

**Insight:** Customers primarily perform withdrawals and payments. High-frequency transactions are key for understanding customer behavior and prioritizing fraud monitoring.

---

### 2. Transaction Value by Type
- `PAYMENT`: Total ₦11,261,078, Average ₦11,051  
- `CASH_OUT`: Total ₦192,468,892, Average ₦179,542  
- `TRANSFER`: Total ₦163,787,602, Average ₦618,066  

**Insight:** High-value transaction types (`CASH_OUT`, `TRANSFER`) pose greater risk and should be closely monitored.

---

### 3. Largest Transactions
- Largest transfers include:  
  - ₦5,489,302 from `C806769154` → `C519182481`  
  - ₦4,022,409 from `C743505070` → `C1234529860`  
  - ₦3,145,323 from `C2116161847` → `C1416048048`  

**Insight:** High-value transfers highlight potential VIP customers or points of interest for fraud monitoring.

---

### 4. Smallest Transactions
- Some low-value transactions include ₦0.50 or ₦233, mostly `PAYMENT` type.  

**Insight:** Micro-payments may indicate test transactions, data anomalies, or very low-value activities requiring validation.

---

### 5. Fraud by Transaction Type
- `CASH_OUT`: 1 fraudulent transaction, Total ₦503,793  
- `TRANSFER`: 2 fraudulent transactions, Total ₦9,511,711, Average ₦4,755,855  

**Insight:** Fraud is concentrated in **high-value transactions**, confirming the need to monitor large withdrawals and transfers.

---

### 6. High-Volume Accounts
**Top senders:**  
- `C806769154`: ₦5,489,302  
- `C743505070`: ₦4,022,409  
- `C2116161847`: ₦3,145,323  

**Top receivers:**  
- `C519182481`: ₦5,489,302  
- `C1234529860`: ₦4,022,409  
- `C1416048048`: ₦3,145,323  

**Insight:** A small set of accounts dominate transaction flow, making them critical for risk assessment and fraud detection.

---

### 7. Transaction Trends Over Time
- Activity fluctuates across steps:  
  - Step 1: 9 transactions, Total ₦861,610  
  - Step 14: 122 transactions, Total ₦24,359,674  
  - Step 19: 157 transactions, Total ₦24,613,523  
  - Step 40: Transactions up to ₦19,444,531  

**Insight:** Peaks in activity may correspond to pay cycles, business events, or potential fraud spikes.

---

### 8. Zero-Balance Transactions
- 1,677 transactions have either **old balance** or **new balance = 0**.  

**Insight:** Could indicate dummy accounts, incomplete data, or unusual patterns. These require validation before predictive modeling.

---

## Conclusion
This EDA reveals:  
- **High-frequency transactions:** `CASH_OUT` and `PAYMENT` dominate.  
- **High-value transactions:** `CASH_OUT` and `TRANSFER` carry the most risk.  
- **Fraud patterns:** Focused on large transfers and withdrawals.  
- **High-volume accounts:** Few accounts dominate money flow (e.g., `C806769154`, `C519182481`).  
- **Data quality issues:** Micro-payments and zero-balance accounts highlight potential anomalies.  

**Overall Insight:** Combining transaction frequency, value, fraud patterns, account activity, and time trends provides a comprehensive understanding of financial behavior and establishes a foundation for fraud detection and risk management.

---

## Recommendations
1. **Monitor high-value transactions** (`CASH_OUT` and `TRANSFER`) more closely for potential fraud.  
2. **Investigate high-volume accounts** to ensure legitimacy.  
3. **Validate zero-balance transactions** and micro-payments before using the dataset for modeling.  
4. **Track trends over time** to identify unusual spikes in activity.  
5. **Implement continuous data quality checks** to ensure reliable financial reporting.

