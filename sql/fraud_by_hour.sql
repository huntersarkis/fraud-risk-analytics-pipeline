SELECT
    CAST(Time / 3600 AS INTEGER) % 24 AS hour_of_day,
    COUNT(*) AS total_transactions,
    SUM(Class) AS total_fraud,
    SUM(Class) * 1.0 / COUNT(*) AS fraud_rate
FROM raw_transactions
GROUP BY hour_of_day
ORDER BY hour_of_day;