{# It couldn't find distribution_centers so using products #}
{% snapshot snapshot__products %}

{{
    config(
      target_schema='dbt_snapshots',
      unique_key='id',
      strategy='check',
      check_cols=['cost', 'retail_price', 'category']
    )
}}

SELECT * FROM {{ source('thelook_ecommerce', 'products') }}

{% endsnapshot %}
