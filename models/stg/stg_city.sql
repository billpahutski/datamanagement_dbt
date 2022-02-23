{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'city') }}
WHERE _FIVETRAN_DELETED = False
