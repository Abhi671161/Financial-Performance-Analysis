# Financial-Performance-Analysis
Executive Summary : 
This comprehensive financial performance analysis project was undertaken to transform raw financial data into actionable business intelligence. As a Financial Analytics Consultant, I analyzed five interconnected datasets spanning customers, vendors, employees, budgets, and financial transactions to provide all over view of organizational performance.
The analysis reveals an organization that is highly profitable with exceptional revenue growth, but with concerning patterns in expense management, regional performance disparities, and opportunities for operational optimization. The company has achieved remarkable 87% revenue growth over 24 months, maintaining an impressive 80.5% average profit margin. However, a 60.9% expense overrun ($63.48M above budget) represents a significant concern requiring immediate management attention.
Excel Data Validation
<img width="872" height="432" alt="image" src="https://github.com/user-attachments/assets/1fe74607-17c6-47ad-a9b7-30d742079889" />

Data Sources & Schema Design

I designed a relational database schema to efficiently store and query these datasets. The schema establishes clear relationships between tables:
The data ingestion process was executed using Python with SQLAlchemy:

SQL Analysis & Key Findings
SQL was used for efficient data extraction, joining, and aggregation from the relational database. The following queries were executed to derive key business insights.

Revenue Performance: Actual revenue ($864.61M) exceeds budget ($135.81M) by 536%
Expense Overruns: Expenses exceed budget by $63.48M (60.9% over budget)
Business Unit Ranking: Online leads revenue, Enterprise shows best employee productivity
Customer Concentration: Top 10 customers account for ~4.5% of total revenue
Vendor Concentration: Top 5 vendors show concentrated expense patterns

Python Analysis & Code Implementation
Python was used for comprehensive data wrangling, exploratory data analysis, statistical testing, and advanced analytics. The analysis leveraged pandas, numpy, matplotlib, seaborn, and scipy libraries.
Statistical Hypothesis Testing
ANOVA - Monthly Expenses Across Business Units
T-Test - Revenue Transaction Size by Region
Chi-Square Test - Customer Segment vs Business Unit

Power BI Dashboard
The interactive Power BI dashboard provides executive-level visibility into financial performance with real-time monitoring capabilities, drill-down functionality, and interactive filtering.
<img width="872" height="491" alt="image" src="https://github.com/user-attachments/assets/a153550a-71df-4922-a80c-3eb00e1a4e26" />
<img width="872" height="490" alt="image" src="https://github.com/user-attachments/assets/540a3eb0-a012-4f4b-881d-c4ff6d8f4a49" />
<img width="871" height="488" alt="image" src="https://github.com/user-attachments/assets/87fb23ab-8905-4b11-9f30-e6070b7616cc" />

Key Findings & Insights
Revenue Performance
Key Finding: The company demonstrates exceptional revenue performance with 87% growth over 24 months.
Total Revenue: $864.61M vs. Budget $135.81M (536% over budget)
Monthly Growth: Revenue increased from $28.25M (Jan 2022) to $52.88M (Dec 2023)
Category Balance: Subscription (33.8%), Service (33.4%), Product (32.9%)
Segment Balance: Retail (33.8%), Online (33.6%), Enterprise (32.7%)
Business Implications: The company has achieved remarkable revenue growth with excellent diversification. The balanced distribution across categories and segments reduces risk and indicates effective market positioning.

Expense Management
Key Finding: While revenue growth is strong, expense management requires attention with significant budget overruns.
Total Expenses: $167.74M vs. Budget $104.27M (60.9% over budget)
Top Expense Categories: Rent (48.8%), Payroll (32.8%)
Expense Growth: 32% over 24 months (significantly lower than 87% revenue growth)
Regional Efficiency: West best (19.1% expense ratio), East highest (19.8%)
Business Implications: The lower expense growth rate compared to revenue indicates effective scaling. However, the 60.9% budget overrun suggests budgeting processes need revision. The concentration of expenses in Rent and Payroll (81.6%) limits flexibility.

Profitability Excellence
Key Finding: All business units maintain exceptional profit margins above 79%.
Net Profit: $696.87M (80.5% average margin)
Unit Margins: Online (81.4%), Retail (80.6%), Enterprise (79.7%)
Regional Margins: All regions maintain 80%+ profit margins
Profit Growth: 102% growth over 24 months
Business Implications: The consistent high profitability across all units indicates effective business model replication. The 102% profit growth demonstrates strong operational leverage and market execution.

Operational Efficiency
Key Finding: Significant variation exists in employee productivity across business units.
Employee Productivity (ROI Multiplier):
Enterprise: 4.15x revenue per CTC dollar
Retail: 3.90x revenue per CTC dollar
Online: 3.64x revenue per CTC dollar
Cost per Employee: Enterprise ($1.15M), Retail ($1.11M), Online ($1.09M)
Regional Headcount: North (60), East (50), West (47), South (43)
Business Implications: Enterprise shows the highest ROI (4.15x), suggesting effective resource utilization. The variation across units (3.64x to 4.15x) represents an opportunity for knowledge transfer and process standardization.

Customer & Vendor Insights
Customer Analysis:
Top 10 Customers: Range from $3.59M to $4.24M in revenue
Revenue per Customer: Mean $2.32M, Median $2.30M
Customer Concentration: Low concentration risk
Transaction Frequency: Top customers show 18-28 transactions
Vendor Analysis:
Top 5 Vendors: Exceed $2.4M in expenses each
Vendor Expense: Mean $1.40M, Median $1.54M
Vendor Category Concentration: Supplies and Utilities dominate
Vendor Efficiency: Significant variation across vendors
Business Implications: Low customer concentration reduces revenue risk. However, vendor concentration suggests dependency risk and cost optimization opportunities.

The organization demonstrates exceptional financial health with strong revenue growth (87% over 24 months), excellent profit margins (80.5% average), and balanced revenue streams across all categories and business units. The company has effectively scaled operations, with expense growth (32%) significantly lower than revenue growth, indicating strong operational leverage.

Report prepared by: Gujjewar Abhinetra


