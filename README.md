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

# 📊 Financial Performance Analysis: From Raw Data to Strategic Insights

**Author:** Gujjewar Abhinetra  
**Role:** Financial Analytics Consultant  
**Tools:** Excel, SQL, Python (Pandas, SciPy, Matplotlib), Power BI

---

## 📌 Project Overview

This project tackles a common business challenge: *"We have thousands of transactions and multiple spreadsheets, but what is the data actually telling us about our financial health?"*

I acted as a Financial Analytics Consultant to analyze **5 interconnected datasets** (Customers, Vendors, Employees, Budgets, and 10,400+ Financial Transactions). The goal was to move beyond basic reporting and deliver **actionable business intelligence**—pinpointing exactly where the company is excelling, where it is leaking money, and how to optimize for the future.

> **The Bottom Line:** The organization achieved an **87% revenue growth** and an **80.5% profit margin**, but a **$63.48M expense overrun** signals that budgeting and operational processes urgently need realignment.

---

## 🛠️ Tech Stack & Methodology

This project follows a modern data analytics pipeline:

| Phase | Technology Used | Purpose |
| :--- | :--- | :--- |
| **1. Data Validation** | **Excel** | Checked for duplicates, missing values, and primary key integrity before analysis. |
| **2. Data Architecture** | **MySQL / SQLAlchemy (Python)** | Designed a relational Star Schema to link all 5 tables efficiently. |
| **3. Data Extraction & Aggregation** | **SQL** | Pulled KPI data (Revenue by Unit, Budget Variance, Top Customers/Vendors). |
| **4. Deep-Dive Analytics** | **Python (Pandas, NumPy)** | Feature engineering, descriptive statistics, and financial KPI calculations. |
| **5. Statistical Rigor** | **Python (SciPy)** | Performed ANOVA, T-Tests, and Chi-Square tests to validate that insights are statistically significant (not random noise). |
| **6. Visualization & Storytelling** | **Power BI** | Built an interactive executive dashboard with drill-down capabilities. |

---

## 🔍 Key Analytical Approach (How I Found the Insights)

1.  **Data Integrity First:** Before running any math, I validated 10,400 transactions in Excel. I found **zero duplicates** (great!) but flagged **~11,000 missing Customer/Vendor IDs**—a critical data governance gap that was documented immediately.
2.  **The "Budget Merge":** Using SQL & Python, I merged `Actual` monthly transactions with the `Budget` table. This single step revealed the massive **$728.79M revenue surplus** and the **$63.48M expense overrun**.
3.  **Statistical Hypothesis Testing:** Instead of relying on "gut feeling" about regional differences, I ran T-Tests and ANOVA. The results (p-values > 0.05) proved that employee costs and transaction sizes are statistically *identical* across regions—meaning performance gaps are purely operational, not structural.
4.  **Visual Translation:** All findings were funneled into an interactive Power BI dashboard, allowing executives to filter by Region, Business Unit, or Time Period instantly.

---

## 🚀 Key Insights & Business Impact

### 💰 1. Revenue & Profitability (The Strength)
- **Total Revenue:** $864.61M (536% *above* budget).
- **Net Profit:** $696.87M with an **80.5% margin**.
- **Diversification:** Revenue is split nearly equally across Product (32.9%), Service (33.4%), and Subscription (33.8%)—reducing risk.

### 📈 2. Expense Management (The Red Flag)
- **The Overrun:** Expenses hit $167.74M vs. a $104.27M budget (**60.9% over**).
- **The "Big Two":** Rent (48.8%) and Payroll (32.8%) make up **81.6%** of all expenses—leaving very little flexibility.
- **The Silver Lining:** Expense growth (32%) is significantly lower than revenue growth (87%), indicating excellent scaling efficiency.

### 👥 3. Employee Productivity (The Opportunity)
- **Productivity Gap:** Enterprise employees generate **4.15x** their cost in revenue, while Online generates only **3.64x**.
- *Crucial Data:* Statistical tests confirmed salaries are the same across units (p=0.69). The gap is caused by *processes*, not pay—meaning we can fix this via "knowledge transfer."

### 🏢 4. Customer & Vendor Concentration
- **Low Risk:** Top 10 customers represent only ~4.5% of revenue.
- **High Opportunity:** Top 5 vendors each exceed **$2.4M** in expenses, presenting a massive opportunity for volume-discount negotiations.

---

## 📊 Dashboard Previews (Power BI)

Here is the interactive executive dashboard built to monitor these KPIs in real-time:

| Page 1: Executive Overview | Page 2: Revenue & Variance | Page 3: Regional & Expense Breakdown |
| :---: | :---: | :---: |
| <img width="872" alt="Overview" src="https://github.com/user-attachments/assets/a153550a-71df-4922-a80c-3eb00e1a4e26" /> | <img width="872" alt="Revenue" src="https://github.com/user-attachments/assets/540a3eb0-a012-4f4b-881d-c4ff6d8f4a49" /> | <img width="871" alt="Expenses" src="https://github.com/user-attachments/assets/87fb23ab-8905-4b11-9f30-e6070b7616cc" /> |

---

## 🧪 Data Validation (Excel)
*Ensuring the data was clean before analysis.*
<img width="872" alt="Excel Validation" src="https://github.com/user-attachments/assets/1fe74607-17c6-47ad-a9b7-30d742079889" />

---

## 🎯 Strategic Recommendations (The "Four Pillars")

Based on the rigorous analysis, I proposed these high-impact actions:

1.  **Revenue Optimization (High Priority):**
    - Expand the **Enterprise** segment (4.15x ROI).
    - Develop the **West** region (currently lowest revenue, but best cost efficiency).
2.  **Expense Management (Critical):**
    - Consolidate vendors to leverage bulk discounts (Target: **10-15% savings**).
    - Recalibrate the budget to reflect the new growth reality.
3.  **Operational Efficiency:**
    - Transfer Enterprise's best practices to Online to close the 20% productivity gap.
4.  **Data Governance:**
    - Fix the missing Customer/Vendor IDs to enable better micro-segmentation in the future.

---

## 📁 Repository Structure

