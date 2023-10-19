select
    o.product_name
from
    orders o
        inner join customers c on
            o.customer_id = c.id
where
        lower(c."name") = lower(:name);