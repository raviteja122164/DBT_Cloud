select CUSTOMERNAME, SEGMENT, 
COUNTRY, STATE,
sum(orderprofit) as profit
from
{{ ref('stg_order') }}
group by CUSTOMERNAME, SEGMENT, 
COUNTRY, STATE