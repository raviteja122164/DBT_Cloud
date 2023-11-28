select O.ORDERID, O.ORDERDATE, 
O.SHIPDATE, O.SHIPMODE, C.SEGMENT, C.COUNTRY, C.STATE, P.CATEGORY, P.PRODUCTNAME, P.SUBCATEGORY,
O.ORDERSELLINGPRICE, O.ORDERCOSTPRICE,
(O.ORDERSELLINGPRICE - O.ORDERCOSTPRICE) AS ORDERPROFIT
from {{ref('raw_order')}} as O 
LEFT JOIN {{ ref('raw_customer') }} as C
ON O.CUSTOMERID = C.CUSTOMERID
LEFT JOIN {{ ref('raw_product') }} as P 
ON O.PRODUCTID = P.PRODUCTID