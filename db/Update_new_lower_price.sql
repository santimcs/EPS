UPDATE stocks
SET buy_target =
COALESCE((SELECT min_price FROM prices 
WHERE stock_id = stocks.id
AND min_price < buy_target),buy_target)