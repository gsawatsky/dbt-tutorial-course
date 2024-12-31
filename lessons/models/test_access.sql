{{ config(group = 'sales') }}
SELECT * FROM {{ ref('orders') }}
