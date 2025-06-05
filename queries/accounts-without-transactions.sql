-- Accounts created but never used for any transaction
SELECT
  a.AccountID,
  a.CustomerID,
  a.AccountType,
  a.Balance,
  a.Status,
  a.CreatedDate
FROM accounts AS a
LEFT JOIN transactions AS t
  ON a.AccountID = t.AccountID
WHERE t.TransactionID IS NULL;
