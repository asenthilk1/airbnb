{% snapshot scd_raw_listings %}
    {{
        config(
            target_schema='raw',
            unique_key='id',
            strategy='timestamp',
            invalidate_hard_deletes=True,
            updated_at='updated_at'
        )
    }}

    select * from {{ source('airbnb', 'listings') }}
 {% endsnapshot %}