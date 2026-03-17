CREATE TABLE fraud_by_hour AS
SELECT
    CAST(Time / 3600 AS INTEGER) % 24 AS hour_of_day,
    COUNT(*) AS total_transactions,
    SUM(Class) AS total_fraud,
    ROUND(SUM(Class) * 1.0 / COUNT(*), 4) AS fraud_rate
FROM raw_transactions
GROUP BY hour_of_day
ORDER BY hour_of_day;

SELECT * FROM fraud_by_hour;