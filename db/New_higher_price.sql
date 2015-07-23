SELECT s.name,s.sell_target,p.max_price FROM stocks s
JOIN prices p ON s.id = p.stock_id
WHERE  p.max_price >  s.sell_target
ORDER BY s.name