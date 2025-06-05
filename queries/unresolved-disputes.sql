-- Disputes still open, with related transaction and customer info
SELECT
  d.DisputeID,
  tr.TransactionID,
  tr.TransactionDate,
  a.AccountID,
  c.FullName AS CustomerName,
  d.RaisedDate,
  d.Resolved,
  d.ResolutionNote
FROM disputes AS d
JOIN transactions AS tr
  ON d.TransactionID = tr.TransactionID
JOIN accounts AS a
  ON tr.AccountID = a.AccountID
JOIN customers AS c
  ON a.CustomerID = c.CustomerID
WHERE d.Resolved = 'False';
