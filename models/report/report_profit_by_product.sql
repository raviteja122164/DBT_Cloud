select 
    PRODUCTNAME, 
    CATEGORY,  
    SUBCATEGORY,  
    sum(orderprofit) as profit
from
{{ ref('stg_order') }}
group by 
    CATEGORY,
    PRODUCTNAME, 
    SUBCATEGORY