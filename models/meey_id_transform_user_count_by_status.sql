select status, COUNT(_id)
    from meey_id_users
    group by status
