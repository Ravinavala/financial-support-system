-- Customers who opened more than 3 support tickets
SELECT
  c.CustomerID,
  c.FullName,
  COUNT(t.TicketID) AS TicketCount
FROM customers AS c
JOIN support_tickets AS t
  ON c.CustomerID = t.CustomerID
GROUP BY
  c.CustomerID,
  c.FullName
HAVING
  COUNT(t.TicketID) > 3;
