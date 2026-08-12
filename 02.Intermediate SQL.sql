use credit_risk_analytics;

-- Which loan purpose is the most common?
/* SELECT Purpose, count(*) AS Total_customers
FROM Cleaned_credit_data
group by Purpose
order by Total_customers DESC; */

-- How many Good and Bad customers are there for each housing type?
/* SELECT Housing, Risk, count(*) AS total_customers
FROM Cleaned_credit_data
group by Housing, Risk
order by total_customers; */

-- Which loan purposes have more than 100 customers?
/* SELECT Purpose, count(*) AS Customers
FROM Cleaned_credit_data
group by Purpose
HAVING COUNT(*) >100; */

-- Categorize customers based on loan amount.
/*  SELECT 
  CASE 
    WHEN `Credit amount` < 2000 THEN 'Small'
    WHEN `Credit amount` < 5000 THEN 'Medium'
    WHEN `Credit amount` < 10000 THEN 'Large'
    ELSE 'Very Large'
  END AS Loan_Size,
  count(*) AS Total_customers
From Cleaned_credit_data
group by Loan_Size
order by Total_customers DESC; */

-- Which customers borrowed more than the average loan amount?
/* SELECT * FROM Cleaned_credit_data
WHERE `Credit amount` >
(
 SELECT AVG(`Credit amount`)
 FROM Cleaned_credit_data) ;

-- Count Those Customers
SELECT COUNT(*) AS custoers_above_avd
FROM Cleaned_credit_data
WHERE `Credit amount` >
(
 SELECT AVG(`Credit amount`)
 FROM Cleaned_credit_data
 ); */

-- Who received the largest loans?
/* SELECT * FROM Cleaned_credit_data 
ORDER BY `Credit amount` DESC LIMIT 10; */

-- Do Bad Risk customers receive larger loans than Good Risk customers?
/* SELECT Risk, 
     ROUND(AVG(`Credit amount`),2) AS avg_loan
FROM Cleaned_credit_data
GROUP BY Risk; */

-- Which job category takes the largest loans?
/* SELECT Job,
   ROUND(AVG(`Credit amount`),2) AS avg_loan
   FROM Cleaned_credit_data
   group by Job
   order by avg_loan; */

-- How do housing type and risk together affect average loan amount?
/* SELECT Housing, Risk, AVG(`Credit amount`) AS avg_loan
FROM Cleaned_credit_data
group by Housing, Risk; */

-- Which age group has the highest average credit amount?
/* SELECT `Age Group` ,
AVG(`Credit amount`) AS avg_loan
FROM Cleaned_credit_data
GROUP BY `Age Group`
order by avg_loan DESC ; */

-- Which loan purpose has the highest average duration?
/* SELECT Purpose, ROUND(AVG(`Duration`),2) AS avg_duration
FROM Cleaned_credit_data
group by Purpose
order by avg_duration DESC; */

-- How many female customers have Bad Risk?
/* SELECT Sex, Risk, COUNT(*) AS female_bad_risk
FROM Cleaned_credit_data
WHERE Sex = 'Female'
 AND Risk = 'bad'
 group by Sex, Risk; */
 
 -- Which housing type has the highest average loan amount?
/* SELECT Housing, AVG(`Credit amount`) AS avg_loan
FROM Cleaned_credit_data
group by Housing
Order by avg_loan desc; */

-- Which job category has the most Bad Risk customers?
SELECT Job, COUNT(*) AS customers
FROM Cleaned_credit_data
WHERE Risk = 'bad'
group by Job
order by customers;


