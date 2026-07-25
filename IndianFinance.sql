-- Create database
CREATE DATABASE IndianFinance;

CREATE TABLE Finance (
    ID INT PRIMARY KEY,
    Income DECIMAL(10,2),
    Age INT,
    Dependents INT,
    Occupation VARCHAR(100),
    City_Tier VARCHAR(20),
    Rent DECIMAL(10,2),
    Loan_Repayment DECIMAL(10,2),
    Insurance DECIMAL(10,2),
    Groceries DECIMAL(10,2),
    Transport DECIMAL(10,2),
    Eating_Out DECIMAL(10,2),
    Entertainment DECIMAL(10,2),
    Utilities DECIMAL(10,2),
    Healthcare DECIMAL(10,2),
    Education DECIMAL(10,2),
    Miscellaneous DECIMAL(10,2),
    Desired_Savings_Percentage DECIMAL(5,2),
    Desired_Savings DECIMAL(10,2),
    Disposable_Income DECIMAL(10,2),
    Potential_Savings_Groceries DECIMAL(10,2),
    Potential_Savings_Transport DECIMAL(10,2),
    Potential_Savings_Eating_Out DECIMAL(10,2),
    Potential_Savings_Entertainment DECIMAL(10,2),
    Potential_Savings_Utilities DECIMAL(10,2),
    Potential_Savings_Healthcare DECIMAL(10,2),
    Potential_Savings_Education DECIMAL(10,2),
    Potential_Savings_Miscellaneous DECIMAL(10,2)
);

-- 1. View all records
SELECT * FROM Finance;

-- 2. Total number of individuals
SELECT COUNT(*) AS Total_People
FROM Finance;

-- 3. Display Income and Occupation
SELECT Income, Occupation
FROM Finance;

-- 4. Find unique occupations
SELECT DISTINCT Occupation
FROM Finance;

-- 5. Find unique city tiers
SELECT DISTINCT City_Tier
FROM Finance;

-- 6. People earning more than ₹100,000
SELECT *
FROM Finance
WHERE Income > 100000;

-- 7. Individuals older than 40
SELECT *
FROM Finance
WHERE Age > 40;

-- 8. Individuals with more than 3 dependents
SELECT *
FROM Finance
WHERE Dependents > 3;

-- 9. Sort by highest income
SELECT *
FROM Finance
ORDER BY Income DESC;

-- 10. Lowest disposable income
SELECT *
FROM Finance
ORDER BY Disposable_Income ASC;

-- 11. Top 10 highest income
SELECT *
FROM Finance
ORDER BY Income DESC
LIMIT 10;

-- 12. Bottom 10 income
SELECT *
FROM Finance
ORDER BY Income
LIMIT 10;

-- 13. People living in Tier 1
SELECT *
FROM Finance
WHERE City_Tier='Tier 1';

-- 14. Engineers
SELECT *
FROM Finance
WHERE Occupation='Engineer';

-- 15. People with zero disposable income
SELECT *
FROM Finance
WHERE Disposable_Income<=0;

-- 16. Total Income
SELECT SUM(Income) AS Total_Income
FROM Finance;

-- 17. Average Income
SELECT AVG(Income)
FROM Finance;

-- 18. Maximum Income
SELECT MAX(Income)
FROM Finance;

-- 19. Minimum Income
SELECT MIN(Income)
FROM Finance;

-- 20. Average Disposable Income
SELECT AVG(Disposable_Income)
FROM Finance;

-- 21. Total Rent
SELECT SUM(Rent)
FROM Finance;

-- 22. Average Healthcare Expense
SELECT AVG(Healthcare)
FROM Finance;

-- 23. Maximum Entertainment Expense
SELECT MAX(Entertainment)
FROM Finance;

-- 24. Total Groceries Expense
SELECT SUM(Groceries)
FROM Finance;

-- 25. Average Desired Savings
SELECT AVG(Desired_Savings)
FROM Finance;

-- 26. Total Loan Repayment
SELECT SUM(Loan_Repayment)
FROM Finance;

-- 27. Total Insurance Expense
SELECT SUM(Insurance)
FROM Finance;

-- 28. Average Utilities
SELECT AVG(Utilities)
FROM Finance;

-- 29. Total Education Expense
SELECT SUM(Education)
FROM Finance;

-- 30. Total Miscellaneous Expense
SELECT SUM(Miscellaneous)
FROM Finance;

-- 31. Average Income by Occupation
SELECT Occupation,
AVG(Income) AvgIncome
FROM Finance
GROUP BY Occupation
ORDER BY AvgIncome DESC;

-- 32. Average Income by City Tier
SELECT City_Tier,
AVG(Income)
FROM Finance
GROUP BY City_Tier;

-- 33. Average Disposable Income by Occupation
SELECT Occupation,
AVG(Disposable_Income)
FROM Finance
GROUP BY Occupation;

-- 34. Total Rent by City Tier
SELECT City_Tier,
SUM(Rent)
FROM Finance
GROUP BY City_Tier;

-- 35. Average Groceries by Occupation
SELECT Occupation,
AVG(Groceries)
FROM Finance
GROUP BY Occupation;

-- 36. Total Healthcare by City Tier
SELECT City_Tier,
SUM(Healthcare)
FROM Finance
GROUP BY City_Tier;

-- 37. Average Desired Savings by Occupation
SELECT Occupation,
AVG(Desired_Savings)
FROM Finance
GROUP BY Occupation;

-- 38. Count People by Occupation
SELECT Occupation,
COUNT(*)
FROM Finance
GROUP BY Occupation;

-- 39. Count People by City Tier
SELECT City_Tier,
COUNT(*)
FROM Finance
GROUP BY City_Tier;

-- 40. Average Age by Occupation
SELECT Occupation,
AVG(Age)
FROM Finance
GROUP BY Occupation;

-- 41. Highest Income by Occupation
SELECT Occupation,
MAX(Income)
FROM Finance
GROUP BY Occupation;

-- 42. Lowest Income by Occupation
SELECT Occupation,
MIN(Income)
FROM Finance
GROUP BY Occupation;

-- 43. Average Dependents by Occupation
SELECT Occupation,
AVG(Dependents)
FROM Finance
GROUP BY Occupation;

-- 44. Average Entertainment by City Tier
SELECT City_Tier,
AVG(Entertainment)
FROM Finance
GROUP BY City_Tier;

-- 45. Average Transport Expense
SELECT Occupation,
AVG(Transport)
FROM Finance
GROUP BY Occupation;

-- 46. Total Monthly Expense
SELECT
SUM(
Rent+
Loan_Repayment+
Insurance+
Groceries+
Transport+
Eating_Out+
Entertainment+
Utilities+
Healthcare+
Education+
Miscellaneous
) AS TotalExpense
FROM Finance;

-- 47. Total Expense per Person
SELECT *,
(
Rent+
Loan_Repayment+
Insurance+
Groceries+
Transport+
Eating_Out+
Entertainment+
Utilities+
Healthcare+
Education+
Miscellaneous
) AS TotalExpense
FROM Finance;

-- 48. Expense Ratio
SELECT *,
ROUND(
(
Rent+
Loan_Repayment+
Insurance+
Groceries+
Transport+
Eating_Out+
Entertainment+
Utilities+
Healthcare+
Education+
Miscellaneous
)/Income*100,2)
AS ExpenseRatio
FROM Finance;

--  49. Savings Rate
SELECT *,
ROUND((Disposable_Income/Income)*100,2)
AS SavingsRate
FROM Finance;

-- 50. Essential Expense
SELECT *,
(Rent+Groceries+Healthcare+Utilities+Education)
AS EssentialExpense
FROM Finance;

-- 51. Lifestyle Expense
SELECT *,
(Eating_Out+Entertainment+Transport+Miscellaneous)
AS LifestyleExpense
FROM Finance;

-- 52. Highest Saver
SELECT *
FROM Finance
ORDER BY Disposable_Income DESC
LIMIT 10;

-- 53. Lowest Saver
SELECT *
FROM Finance
ORDER BY Disposable_Income
LIMIT 10;

-- 54. People achieving desired savings
SELECT *
FROM Finance
WHERE Disposable_Income>=Desired_Savings;

-- 55. People not achieving desired savings
SELECT *
FROM Finance
WHERE Disposable_Income<Desired_Savings;

-- 56. Potential Grocery Savings
SELECT SUM(Potential_Savings_Groceries)
FROM Finance;

-- 57. Highest Potential Entertainment Savings
SELECT *
FROM Finance
ORDER BY Potential_Savings_Entertainment DESC
LIMIT 10;

-- 58. Average Potential Savings
SELECT
AVG(
Potential_Savings_Groceries+
Potential_Savings_Transport+
Potential_Savings_Eating_Out+
Potential_Savings_Entertainment+
Potential_Savings_Utilities+
Potential_Savings_Healthcare+
Potential_Savings_Education+
Potential_Savings_Miscellaneous
)
AS AvgPotentialSavings
FROM Finance;

-- 59. Occupation with Highest Savings
SELECT Occupation,
AVG(Disposable_Income) AvgSavings
FROM Finance
GROUP BY Occupation
ORDER BY AvgSavings DESC;

-- 60. City Tier with Highest Savings
SELECT City_Tier,
AVG(Disposable_Income) AvgSavings
FROM Finance
GROUP BY City_Tier
ORDER BY AvgSavings DESC;

-- 61. Rank Individuals by Income
SELECT *,
RANK() OVER(ORDER BY Income DESC) AS IncomeRank
FROM Finance;

-- 62. Dense Rank by Disposable Income
SELECT *,
DENSE_RANK() OVER(ORDER BY Disposable_Income DESC) AS SavingsRank
FROM Finance;

-- 63. Row Number by Occupation
SELECT *,
ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Income DESC) AS RowNum
FROM Finance;

-- 64. NTILE (Income Quartiles)
SELECT *,
NTILE(4) OVER(ORDER BY Income) AS IncomeQuartile
FROM Finance;

-- 65. Running Total of Income
SELECT
ID,
Income,
SUM(Income) OVER(ORDER BY ID) AS RunningIncome
FROM Finance;

-- 66. Running Average Income
SELECT
ID,
Income,
AVG(Income) OVER(ORDER BY ID) AS RunningAverage
FROM Finance;

-- 67. Previous Income (LAG)
SELECT
ID,
Income,
LAG(Income) OVER(ORDER BY ID) AS PreviousIncome
FROM Finance;

-- 68. Next Income (LEAD)
SELECT
ID,
Income,
LEAD(Income) OVER(ORDER BY ID) AS NextIncome
FROM Finance;

-- 69. Highest Income in Each Occupation
SELECT *
FROM (
    SELECT *,
           RANK() OVER(PARTITION BY Occupation ORDER BY Income DESC) AS rnk
    FROM Finance
) t
WHERE rnk = 1;

-- 70. Financial Health Score
SELECT *,
ROUND(
((Disposable_Income/Income)*100)
-
(
(Rent+
Loan_Repayment+
Insurance+
Groceries+
Transport+
Eating_Out+
Entertainment+
Utilities+
Healthcare+
Education+
Miscellaneous)/Income*100
),
2) AS FinancialHealthScore
FROM Finance;

