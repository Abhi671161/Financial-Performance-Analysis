-- Check row counts
SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL
SELECT 'vendors', COUNT(*) FROM vendors
UNION ALL
SELECT 'headcount', COUNT(*) FROM headcount
UNION ALL
SELECT 'budget', COUNT(*) FROM budget
UNION ALL
SELECT 'financial_transactions', COUNT(*) FROM financial_transactions;

-- Sample data from transactions
SELECT * FROM financial_transactions LIMIT 10;

-- Check date range
SELECT MIN(transaction_date) AS earliest, MAX(transaction_date) AS latest 
FROM financial_transactions;

-- Total Revenue, Expense, and Profit (Overall)
SELECT 
    SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) AS total_revenue,
    SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS total_expense,
    SUM(amount) AS net_profit
FROM financial_transactions;

-- Monthly Revenue vs Expense Trend (For Time Series Charts)
SELECT 
    YEAR(transaction_date) AS year,
    MONTH(transaction_date) AS month,
    SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) AS revenue,
    SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS expense,
    SUM(amount) AS profit
FROM financial_transactions
GROUP BY YEAR(transaction_date), MONTH(transaction_date)
ORDER BY year, month;


 -- Revenue by Business Unit (Who earns the most?)
SELECT 
    business_unit,
    SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) AS total_revenue,
    COUNT(CASE WHEN amount > 0 THEN 1 END) AS transaction_count,
    AVG(CASE WHEN amount > 0 THEN amount END) AS avg_transaction_value
FROM financial_transactions
GROUP BY business_unit
ORDER BY total_revenue DESC;


-- Expense by Category (Where is money going?
SELECT 
    category,
    SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS total_expense,
    COUNT(CASE WHEN amount < 0 THEN 1 END) AS expense_count
FROM financial_transactions
WHERE amount < 0
GROUP BY category
ORDER BY total_expense ASC;  -- Most negative (largest expense) first


--  Top 10 Customers by Revenue (Who are your MVPs?
SELECT 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.region,
    SUM(t.amount) AS total_revenue,
    COUNT(t.transaction_id) AS order_count
FROM financial_transactions t
JOIN customers c ON t.customer_id = c.customer_id
WHERE t.amount > 0
GROUP BY c.customer_id, c.customer_name, c.segment, c.region
ORDER BY total_revenue DESC
LIMIT 10;


-- Top 5 Vendors by Cost (Who is costing the most?
SELECT 
    v.vendor_id,
    v.vendor_name,
    v.category,
    v.region,
    SUM(t.amount) AS total_cost,
    COUNT(t.transaction_id) AS expense_count
FROM financial_transactions t
JOIN vendors v ON t.vendor_id = v.vendor_id
WHERE t.amount < 0
GROUP BY v.vendor_id, v.vendor_name, v.category, v.region
ORDER BY total_cost ASC  -- Most negative (largest cost) first
LIMIT 5;


-- Revenue by Region (Which region performs best?
SELECT 
    region,
    SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) AS total_revenue,
    SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS total_expense,
    SUM(amount) AS net_profit
FROM financial_transactions
GROUP BY region
ORDER BY total_revenue DESC;


-- Headcount and Cost per Employee by Business Unit
SELECT 
    business_unit,
    COUNT(*) AS employee_count,
    SUM(cost_to_company) AS total_ctc,
    AVG(cost_to_company) AS avg_ctc_per_employee
FROM headcount
WHERE status = 'Active'
GROUP BY business_unit
ORDER BY employee_count DESC;


-- Budget vs Actual (Variance Analysis
WITH actuals AS (
    SELECT 
        YEAR(transaction_date) AS year,
        MONTH(transaction_date) AS month,
        business_unit,
        SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) AS actual_revenue,
        SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS actual_expense
    FROM financial_transactions
    GROUP BY YEAR(transaction_date), MONTH(transaction_date), business_unit
)
SELECT 
    a.year,
    a.month,
    a.business_unit,
    a.actual_revenue,
    b.budgeted_revenue,
    (a.actual_revenue - b.budgeted_revenue) AS revenue_variance,
    a.actual_expense,
    b.budgeted_expense,
    (a.actual_expense - b.budgeted_expense) AS expense_variance
FROM actuals a
JOIN budget b ON a.year = b.year AND a.month = b.month AND a.business_unit = b.business_unit
ORDER BY a.year, a.month, a.business_unit;


-- Most Over-Budget Business Units (Expense)
WITH actuals AS (
    SELECT 
        YEAR(transaction_date) AS year,
        MONTH(transaction_date) AS month,
        business_unit,
        SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) AS actual_expense
    FROM financial_transactions
    GROUP BY YEAR(transaction_date), MONTH(transaction_date), business_unit
)
SELECT 
    a.year,
    a.month,
    a.business_unit,
    a.actual_expense,
    b.budgeted_expense,
    (a.actual_expense - b.budgeted_expense) AS expense_variance,
    ROUND(((a.actual_expense - b.budgeted_expense) / b.budgeted_expense) * 100, 2) AS variance_percentage
FROM actuals a
JOIN budget b ON a.year = b.year AND a.month = b.month AND a.business_unit = b.business_unit
WHERE (a.actual_expense - b.budgeted_expense) > 0  -- Only over budget
ORDER BY variance_percentage DESC;


SELECT 
    SUM(CASE
        WHEN account_type = 'Revenue' THEN amount
        ELSE 0
    END) AS total_revenue,
    SUM(CASE
        WHEN account_type = 'Expense' THEN ABS(amount)
        ELSE 0
    END) AS total_expense,
    SUM(CASE
        WHEN account_type = 'Revenue' THEN amount
        ELSE 0
    END) - SUM(CASE
        WHEN account_type = 'Expense' THEN ABS(amount)
        ELSE 0
    END) AS net_profit
FROM financial_transactions;

-- Top 10 customers by revenue
SELECT 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.region,
    SUM(f.amount) AS total_revenue,
    AVG(f.amount) AS avg_transaction,
    COUNT(f.transaction_id) AS transaction_count
FROM
    financial_transactions f
        JOIN
    customers c ON f.customer_id = c.customer_id
WHERE
    f.account_type = 'Revenue'
GROUP BY c.customer_id , c.customer_name , c.segment , c.region
ORDER BY total_revenue DESC
LIMIT 10;
-- Top 10 vendors by expense
SELECT 
    v.vendor_id,
    v.vendor_name,
    v.category,
    v.region,
    SUM(ABS(f.amount)) AS total_expense,
    AVG(ABS(f.amount)) AS avg_transaction,
    COUNT(f.transaction_id) AS transaction_count
FROM
    financial_transactions f
        JOIN
    vendors v ON f.vendor_id = v.vendor_id
WHERE
    f.account_type = 'Expense'
GROUP BY v.vendor_id , v.vendor_name , v.category , v.region
ORDER BY total_expense DESC
LIMIT 10;



