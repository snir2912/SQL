-- targil 1
select
  sum(price)
from
  orders;
--   targil 3
SELECT
  *
FROM
  `orders`
WHERE
  date BETWEEN '2021-12-16'
  AND '2021-12-18';
--   targil 2
SELECT
  COUNT(canceld)
FROM
  `orders`
WHERE
  canceld;