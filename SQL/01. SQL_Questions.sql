use credit_risk_analytics;
/* SELECT * FROM Cleaned_credit_data LIMIT 10;

-- Total Customers 
/* SELECT COUNT(*) AS total_customers
FROM Cleaned_credit_data; *?

-- Good vs Bad Customers 
/* SELECT Risk, COUNT(*) AS total_customers FROM Cleaned_credit_data
GROUP BY Risk;*/

-- Average Credit Amount
/* SELECT ROUND(AVG(CAST(`Credit amount` AS DECIMAL(10,2))), 2) AS avg_credit_amount
FROM Cleaned_credit_data;*/

/* describe Cleaned_credit_data;
SELECT
    COUNT(*) AS total_rows,
    AVG(Age) AS avg_age,
    ROUND(AVG(Age),2) AS rounded_avg_age
FROM Cleaned_credit_data; */

-- Customers by Gender
/* SELECT Sex, COUNT(*) AS Total FROM Cleaned_credit_data
GROUP BY Sex; */

-- Customers by Housing
/* SELECT Housing, COUNT(*) AS Total FROM Cleaned_credit_data
GROUP BY Housing; */

-- Most Common Loan Purpose
/* SELECT  Purpose, count(*) AS Total FROM Cleaned_credit_data 
group by purpose 
order by Total DESC; */

-- Risk by Housing
/* SELECT Housing, Risk , count(*) AS Customers FROM Cleaned_credit_data
GROUP BY Housing , Risk
order by Customers asc;*/

-- Average Loan by Risk
/* SELECT 
    Risk,
    ROUND(AVG(`Credit amount`), 2) AS avg_Loan
FROM Cleaned_credit_data
GROUP BY Risk; */

-- Top 10 Highest Loans
SELECT * 
FROM Cleaned_credit_data
ORDER BY `Credit amount` DESC
LIMIT 10;
