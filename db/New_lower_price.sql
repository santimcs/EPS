SELECT s.name,s.buy_target,p.min_price FROM stocks s
JOIN prices p ON s.id = p.stock_id
WHERE  s.buy_target < p.min_price  