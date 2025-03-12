CREATE TABLE customerchurn.prod_churn AS
SELECT  
    Customer_ID,
    IFNULL(Gender, '') AS Gender,
    IFNULL(Age, 0) AS Age,
    IFNULL(Married, '') AS Married,
    IFNULL(State, '') AS State,
    IFNULL(Number_of_Referrals, 0) AS Number_of_Referrals,
    IFNULL(Tenure_in_Months, 0) AS Tenure_in_Months,
    IFNULL(Value_Deal, 'None') AS Value_Deal,
    IFNULL(Phone_Service, '') AS Phone_Service,
    IFNULL(Multiple_Lines, 'No') AS Multiple_Lines,
    IFNULL(Internet_Service, '') AS Internet_Service,
    IFNULL(Internet_Type, 'None') AS Internet_Type,
    IFNULL(Online_Security, 'No') AS Online_Security,
    IFNULL(Online_Backup, 'No') AS Online_Backup,
    IFNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    IFNULL(Premium_Support, 'No') AS Premium_Support,
    IFNULL(Streaming_TV, 'No') AS Streaming_TV,
    IFNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    IFNULL(Streaming_Music, 'No') AS Streaming_Music,
    IFNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    IFNULL(Contract, '') AS Contract,
    IFNULL(Paperless_Billing, '') AS Paperless_Billing,
    IFNULL(Payment_Method, '') AS Payment_Method,
    IFNULL(Monthly_Charge, 0) AS Monthly_Charge,
    IFNULL(Total_Charges, 0) AS Total_Charges,
    IFNULL(Total_Refunds, 0) AS Total_Refunds,
    IFNULL(Total_Extra_Data_Charges, 0) AS Total_Extra_Data_Charges,
    IFNULL(Total_Long_Distance_Charges, 0) AS Total_Long_Distance_Charges,
    IFNULL(Total_Revenue, 0) AS Total_Revenue,
    IFNULL(Customer_Status, '') AS Customer_Status,
    IFNULL(Churn_Category, 'Others') AS Churn_Category,
    IFNULL(Churn_Reason, 'Others') AS Churn_Reason
FROM customer_data;

ALTER TABLE customerchurn.prod_churn
ADD PRIMARY KEY (Customer_ID(255))