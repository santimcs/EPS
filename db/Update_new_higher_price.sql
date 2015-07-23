UPDATE stocks
SET sell_target =
COALESCE((SELECT max_price FROM prices 
WHERE stock_id = stocks.id
AND max_price > sell_target),sell_target)