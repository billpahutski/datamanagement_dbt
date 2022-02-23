{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'country') }}
WHERE _FIVETRAN_DELETED = False
