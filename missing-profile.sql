SELECT c.FullName, c.Email
FROM customers c
LEFT JOIN accounts a ON c.CustomerID = a.CustomerID
LEFT JOIN transactions t ON a.AccountID = t.AccountID
WHERE c.IsVIP = 1
  AND (t.TransactionDate IS NULL OR t.TransactionDate < date('now', '-6 months'));