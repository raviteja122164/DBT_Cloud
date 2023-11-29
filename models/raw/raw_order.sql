{{
    config(
        materialized='table'
    )
}}

select * from {{ source('snowflakemart', 'raw_order') }}