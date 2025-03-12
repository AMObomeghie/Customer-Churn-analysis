-- Gender distribution
SELECT 
	Gender,
    Count(Gender) as TotalCount, 
    Count(Gender)/ (SELECT Count(*) from customer_data) as Percentage
FROM customer_data
GROUP BY Gender;

-- Contract distribution
SELECT 
	Contract,
    Count(Contract) as TotalCount, 
    Count(Contract)/(SELECT Count(*) FROM customer_data) as Percentage
FROM customer_data
GROUP BY Contract
ORDER BY Count(Contract) DESC;

-- Customer Churn Status
SELECT
	Customer_Status, 
    COUNT(Customer_Status) as TotalCount,
    ROUND(SUM(Total_Revenue),2) as TotalRev,
    ROUND(SUM(Total_Revenue)
		/ (SELECT SUM(Total_Revenue)FROM customer_data) *100,2) AS PERCENTAGE
FROM customer_data
GROUP BY Customer_Status;

-- Demographic data exploration 
SELECT 
	State,
	COUNT(State) as TotalCount,
    ROUND(COUNT(State)
		/ (SELECT COUNT(*) FROM customer_data)*100,2) as Percentage
FROM customer_data
GROUP BY State
ORDER BY Percentage DESC;

-- Create vieew
CREATE VIEW vw_ChurnData as
SELECT * 
FROM prod_churn
WHERE Customer_Status in ('Churned','Stayed');

CREATE VIEW vw_JoinData as
SELECT * 
FROM prod_churn
WHERE Customer_Status = 'Joined'

