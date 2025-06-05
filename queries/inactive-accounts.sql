-- Accounts with no transactions in the past 6 months
SELECT
  a.AccountID,
  a.CustomerID,
  a.AccountType,
  a.Balance,
  a.Status,
  MAX(t.TransactionDate) AS LastTransactionDate
FROM accounts AS a
LEFT JOIN transactions AS t
  ON a.AccountID = t.AccountID
GROUP BY
  a.AccountID,
  a.CustomerID,
  a.AccountType,
  a.Balance,
  a.Status
HAVING
  MAX(t.TransactionDate) < DATE('now', '-6 months')
  OR MAX(t.TransactionDate) IS NULL;
