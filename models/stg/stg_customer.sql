{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'customer') }}
WHERE _FIVETRAN_DELETED = False


