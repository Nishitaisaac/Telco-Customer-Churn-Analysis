-- Create Database
CREATE DATABASE customer_churn;

-- Select Database
USE customer_churn;

-- Preview Dataset
SELECT *
FROM `customer churn ( project - 2 )`
LIMIT 10;

-- Check Total Rows
SELECT COUNT(*) AS total_rows
FROM `customer churn ( project - 2 )`;

-- Check Table Structure
DESCRIBE `customer churn ( project - 2 )`;

-- Check Duplicate Customer IDs
SELECT
    CustomerID,
    COUNT(*)
FROM `customer churn ( project - 2 )`
GROUP BY CustomerID
HAVING COUNT(*) > 1;

-- Check Missing Values
SELECT
    COUNT(*) - COUNT(CustomerID) AS customerid_null,
    COUNT(*) - COUNT(`Tenure Months`) AS tenure_months_null,
    COUNT(*) - COUNT(`Monthly Charges`) AS monthly_charges_null,
    COUNT(*) - COUNT(`Total Charges`) AS total_charges_null,
    COUNT(*) - COUNT(`Churn Label`) AS churn_label_null
FROM `customer churn ( project - 2 )`;

/*
Data Cleaning Summary

- Checked total rows
- Checked duplicate records
- Checked missing values

Result:
Data is clean and ready for analysis.
*/