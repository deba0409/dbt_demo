
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ 
    config(
    materialized='view',
    schema='silver_tpch') 
}}

with source_data as (

    SELECT * FROM samples.tpch.customer where c_acctbal > 0

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
