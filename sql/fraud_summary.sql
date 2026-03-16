CREATE TABLE fraud_summary AS
SELECT 
    COUNT(*) AS total_transactions,
    SUM(Class) AS total_fraud_transactions,
    SUM(Class) * 1.0 / COUNT(*) AS fraud_Rate
FROM raw_transactions