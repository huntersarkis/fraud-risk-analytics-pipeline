CREATE TABLE fraud_by_amount_bucket AS
SELECT
    CASE
        WHEN Amount >= 0 AND Amount <= 50 THEN '0-50'
        WHEN Amount > 50 AND Amount <= 100 THEN '50-100'
        WHEN Amount > 100 AND Amount <= 500 THEN '100-500'
        ELSE '500+'
    END AS amount_bucket,
    COUNT(*) AS total_transactions,
    SUM(Class) AS total_fraud_transactions,
    SUM(Class) * 1.0 / COUNT(*) AS fraud_rate
FROM raw_transactions
GROUP BY amount_bucket
ORDER BY
CASE
    WHEN amount_bucket = '0-50' THEN 1
    WHEN amount_bucket = '50-100' THEN 2
    WHEN amount_bucket = '100-500' THEN 3
    ELSE 4
END;

SELECT * FROM fraud_by_amount_bucket;