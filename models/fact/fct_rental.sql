{{ config(materialized='table') }}

SELECT
    r.rental_id,
    c.customer_key,
    s.staff_key,
    1 as rental_quantity
FROM
    {{ ref('stg_rental') }} r

    -- join back dim_customer
   LEFT JOIN {{ ref('dim_customer') }} c
        ON r.customer_id = c.customer_id
    
    -- join back dim_staff
    LEFT JOIN {{ ref('dim_staff') }} s
        ON r.staff_id = s.staff_id
        