SELECT
    date_trunc('month', createddate::timestamp)::date AS month,
	COUNT(_id) AS count
FROM meey_id_users
GROUP BY date_trunc('month', createddate::timestamp)
ORDER BY month
