with final as (
    select status, COUNT(_id)
    from {{ ref('raw_orders') }}
    group by status
)

select * from final
