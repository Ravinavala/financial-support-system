-- VIP customers with total account balance over 100,000
SELECT
  c.CustomerID,
  c.FullName,
  SUM(a.Balance) AS TotalBalance
FROM customers AS c
JOIN accounts AS a
  ON c.CustomerID = a.CustomerID
WHERE c.IsVIP = 'True'
GROUP BY
  c.CustomerID,
  c.FullName
HAVING
  SUM(a.Balance) > 100000;
