
-- Use the `ref` function to select from other models

--select *
--from {{ ref('customer') }}
--where id = 1


{{ 
    config(
    materialized='table',
    schema='gold_tpch') 
}}

with source_data as (

SELECT c.c_name,c.c_acctbal, n.n_name AS location
FROM {{ ref('customer') }} AS c
JOIN `samples`.`tpch`.`nation` AS n ON c.c_nationkey = n.n_nationkey
ORDER BY c.c_acctbal 
LIMIT 5

)

select *
from source_data