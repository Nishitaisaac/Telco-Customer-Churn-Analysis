/*
Question
Find the main reasons why customers leave the company.
*/


-- Contract Type vs Churn
SELECT
    Contract,
    `Churn Label`,
    COUNT(*) AS Total_Customers
FROM `customer churn ( project - 2 )`
GROUP BY Contract, `Churn Label`;

-- Observation:
-- Month-to-Month customers have the highest churn.


-- Internet Service vs Churn
SELECT
    `Internet Service`,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS Churn_Rate
FROM `customer churn ( project - 2 )`
GROUP BY `Internet Service`
ORDER BY Churn_Rate DESC;

-- Observation:
-- Fiber Optic customers have the highest churn rate.


--  Monthly Charges vs Churn
SELECT
    CASE
        WHEN `Monthly Charges` < 30 THEN 'LOW (0-30)'
        WHEN `Monthly Charges` < 60 THEN 'MEDIUM (30-60)'
        WHEN `Monthly Charges` < 90 THEN 'HIGH (60-90)'
        ELSE 'VERY HIGH (90+)'
    END AS Charge_Group,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned_Customers,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY Charge_Group

ORDER BY Churn_Rate DESC;

-- Observation:
-- Customers with higher monthly charges are more likely to churn.



-- Tenure Months vs Churn
SELECT
    CASE
        WHEN `Tenure Months` < 30 THEN 'LOW (0-30)'
        WHEN `Tenure Months` < 60 THEN 'MEDIUM (30-60)'
        WHEN `Tenure Months` < 90 THEN 'HIGH (60-90)'
        ELSE 'VERY HIGH (90+)'
    END AS Stay_Group,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned_Customers,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY Stay_Group

ORDER BY Churn_Rate DESC;

-- Observation:
-- Customers with low tenure have the highest churn rate.



-- Payment Method vs Churn
SELECT
    `Payment Method`,
    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY `Payment Method`

ORDER BY Churn_Rate DESC;

-- Observation:
-- Electronic Check customers have the highest churn rate.



-- Senior Citizen vs Churn
SELECT
    `Senior Citizen`,
    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY `Senior Citizen`

ORDER BY Churn_Rate DESC;

-- Observation:
-- Senior Citizens have a higher churn rate.



-- Gender vs Churn
SELECT
    Gender,
    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY Gender

ORDER BY Churn_Rate DESC;

-- Observation:
-- Gender has very little impact on churn.



-- Partner vs Churn
SELECT
    Partner,
    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY Partner

ORDER BY Churn_Rate DESC;

-- Observation:
-- Customers without partners have a higher churn rate.



-- Dependents vs Churn
SELECT
    Dependents,
    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
    AS Churned,

    ROUND(
        SUM(CASE WHEN `Churn Label` = 'YES' THEN 1 ELSE 0 END)
        * 100 / COUNT(*),
        2
    ) AS Churn_Rate

FROM `customer churn ( project - 2 )`

GROUP BY Dependents

ORDER BY Churn_Rate DESC;

-- Observation:
-- Customers without dependents have a higher churn rate.


/*
Summary

1. Month-to-Month customers have the highest churn.
2. Fiber Optic customers have the highest churn rate.
3. Higher monthly charges are linked with higher churn.
4. Low tenure customers are more likely to leave.
5. Electronic Check customers have the highest churn rate.
6. Senior Citizens have a higher churn rate.
7. Gender has very little impact on churn.
8. Customers without partners have a higher churn rate.
9. Customers without dependents have a higher churn rate.
*/
