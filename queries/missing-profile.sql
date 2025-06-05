-- Accounts whose CustomerID doesn’t exist in customers
SELECT a.*
FROM accounts AS a
LEFT JOIN customers AS c
  ON a.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

-- Support tickets whose CustomerID doesn’t exist in customers
SELECT t.*
FROM support_tickets AS t
LEFT JOIN customers AS c
  ON t.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;
