{{
    config(
        materialized='table'
    )
}}

select * from ANALYTICS.RAW_SCHEMA.CUSTOMERS