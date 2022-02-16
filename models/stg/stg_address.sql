{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'address') }}
WHERE _FIVETRAN_DELETED = False

