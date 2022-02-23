{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'rental') }}
WHERE _FIVETRAN_DELETED = False

