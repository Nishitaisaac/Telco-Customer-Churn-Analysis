# 📊 Telco Customer Churn Analysis

## 🧩 Project Overview
Analysis of customer churn patterns in a telecom company using **SQL**, **Python**, and **Power BI**.  
The goal is to identify key drivers of churn and provide actionable retention strategies.

---

## 💼 Business Problem
Customer churn is a major challenge for telecom companies.  
Understanding *why* customers leave helps businesses improve services, increase satisfaction, and reduce revenue loss.

---

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| MySQL | Data Cleaning & EDA |
| Python (Pandas, Matplotlib) | Exploratory Data Analysis |
| Power BI | Interactive Dashboard |
| Excel | Raw Dataset |

---

## 🔄 Project Workflow
1. **Data Cleaning** → SQL (checked duplicates, nulls, data types)
2. **Exploratory Data Analysis** → SQL + Python (crosstabs, distributions, trends)
3. **Data Visualization** → Power BI (6-page interactive dashboard)
4. **Business Insights & Recommendations** → Actionable strategies

---

## 📈 Dashboard Pages
| Page | Description |
|------|-------------|
| Executive Summary | Overall churn KPIs and key metrics |
| Customer Profile | Churn by gender, senior citizen, partner, dependents |
| Contract & Tenure | Churn by contract type and tenure months |
| Service Analysis | Churn by internet service, online security, tech support |
| Revenue & Payment | Churn by payment method and monthly charges |
| Recommendations | Top 3 actions to reduce churn |

---

## 📌 Key Metrics (from Dashboard)
- 👥 **Total Customers:** 7,000
- ⚠️ **Churned Customers:** 2000
- 📉 **Churn Rate:** 26.5%
- 💰 **Revenue at Risk:** $2.9M
- 📅 **Avg Tenure:** 32.4 months
- 💳 **Avg Monthly Charges:** $64.8

---

## 🔍 Key Insights
1. **Month-to-Month** customers have the highest churn rate — **42.7%**
2. **Fiber Optic** internet users churn the most — **41.9%**
3. **Electronic Check** payment users have the highest churn — **45.3%**
4. Customers with **tenure < 18 months** are most likely to leave
5. **Higher monthly charges** ($76–$100) are linked to higher churn — **37.3%**
6. **Senior Citizens** churn more than non-senior customers — **41.7% vs 23.6%**
7. Customers **without partners or dependents** show significantly higher churn
8. **Gender** has very little impact on churn

---

## ✅ Recommendations
### 1. 🎯 Target Early Tenure Customers
Focus on keeping new customers happy in their first 18 months and encourage them to switch to longer-term plans.

### 2. 🛡️ Improve Service Experience
Promote online security and tech support add-ons. Fiber Optic users without support show the highest churn.

### 3. 💳 Make Payment Easy
Switch Electronic Check users to autopay and offer small incentives to do so.

---

## 📁 Repository Structure
Telco-Customer-Churn-Analysis/
│
├── Data/
│   └── Telco_customer_churn.xlsx
│
├── SQL/
│   ├── SQL_Data_Cleaning.sql
│   └── SQL_EDA.sql
│
├── Python/
│   └── Project-2-Analysis.py
│
├── PowerBI/
│   └── project2_customer_churn.pbix
│
├── Screenshots/
│   └── (dashboard screenshots)
│
└── README.md
---

## 👩‍💻 Author
**Nishitaisaac**  
📂 [GitHub Profile](https://github.com/Nishitaisaac)  
🔗 Data Analytics Portfolio Project | 2026
