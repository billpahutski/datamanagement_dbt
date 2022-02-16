
{{ config(materialized='table') }}

SELECT *
FROM {{ source('mysql_sakila', 'actor') }}
WHERE _FIVETRAN_DELETED = False

