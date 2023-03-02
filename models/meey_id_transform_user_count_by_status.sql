with final as (
    select status, COUNT(_id)
    from {{ ref('meey_id_users') }}
    group by status
)

select * from final
