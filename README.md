# Customer Shopping Behaviour Analysis

**End-to-End Data Analytics Portfolio Project**  
*Python · SQL · Power BI · Exploratory Data Analysis*

---

## Overview

This project performs a comprehensive analysis of customer shopping behavior using a retail dataset of 3,900 transactions. The workflow includes data loading and cleaning in Python, feature engineering, exploratory data analysis (EDA), advanced SQL querying, and the creation of an interactive **Power BI dashboard** for business insights.

The objective is to uncover key patterns in purchasing behavior, identify factors influencing spending, and provide actionable recommendations for marketing, inventory, and customer retention strategies.

**Key Skills Demonstrated:**
- Data cleaning and feature engineering with Pandas
- Exploratory Data Analysis and visualization
- SQL analytics (aggregations, CTEs, window functions)
- Interactive dashboard development in Power BI
- Business storytelling through data

---

## Dataset

**File:** `customer.csv`  
**Rows:** 3,900  
**Columns:** 19  

**Description:**  
Retail transaction data containing customer demographics, purchase details, and behavioral attributes from a clothing and accessories store.

**Key Columns:**
- `customer_id`, `age`, `gender`, `age_group`
- `item_purchased`, `category`, `purchase_amount`
- `location`, `size`, `color`, `season`
- `review_rating`, `subscription_status`
- `shipping_type`, `discount_applied`
- `previous_purchases`, `payment_method`, `frequency_of_purchases`
- `purchase_frequency_days` (engineered)

**Notes:**  
- Minor missing values in `review_rating` were observed during EDA.
- `promo_code_used` column was removed as it was identical to `discount_applied`.

---

## Tools & Technologies

| Category            | Tools Used                                      |
|---------------------|-------------------------------------------------|
| Programming         | Python 3, Pandas, NumPy                         |
| Analysis & EDA      | Jupyter Notebook                                |
| Database            | PostgreSQL / SQL Server (via SQLAlchemy)        |
| Querying            | SQL                                             |
| Visualization       | Microsoft Power BI Desktop                      |
| Version Control     | Git + GitHub                                    |

---

## Project Steps

1. **Data Loading & Inspection**  
   - Loaded CSV into Pandas DataFrame.  
   - Checked data types, summary statistics, and missing values.

2. **Data Cleaning & Feature Engineering**  
   - Standardized column names.  
   - Created `age_group` categorical feature.  
   - Engineered `purchase_frequency_days` from `frequency_of_purchases`.  
   - Removed redundant `promo_code_used` column.  
   - Prepared data for database loading.

3. **Exploratory Data Analysis**  
   - Analyzed demographics, spending patterns, category performance, and subscription impact.  
   - Visualized distributions, correlations, and seasonal trends.

4. **SQL Analysis**  
   - Loaded cleaned data into PostgreSQL/SQL Server.  
   - Executed analytical queries including:
     - Revenue comparison by gender
     - Average purchase amount by shipping type
     - Impact of subscription status on spending
     - Top-rated items and discount usage percentage
     - Customer segmentation based on previous purchases

5. **Power BI Dashboard**  
   - Connected to the dataset (CSV + SQL).  
   - Built an interactive multi-page dashboard with KPIs, charts, and slicers.

6. **Insights & Reporting**  
   - Derived business recommendations from combined Python + SQL analysis.

---

## Dashboard Highlights

The **Customer Shopping Behaviour Dashboard** (`.pbix` file included) features:

- **Overview Page**: Key KPIs (Total Revenue, Avg. Purchase Amount, Total Customers, Subscription Rate)
- **Demographics**: Spending by gender, age group, and location
- **Purchase Analysis**: Category & item performance, seasonal trends, discount impact
- **Customer Behavior**: Subscription vs non-subscription spending, shipping type comparison, review ratings
- **Interactive Filters**: Gender, category, season, subscription status, and location slicers

The dashboard supports cross-filtering and drill-down for deeper exploration.

---

## Key Insights

- **Total Revenue**: $233,081 across 3,900 transactions (Avg. purchase ≈ $59.76)
- **Gender Split**: Males accounted for ~68% of transactions (2,652) vs Females (1,248)
- **Top Category**: Clothing dominates with 1,737 purchases
- **Subscription Impact**: Subscribed customers show different spending behavior compared to non-subscribers (analyzed via SQL)
- **Discount Usage**: Significant portion of purchases involved discounts; analyzed percentage per item
- **Shipping & Ratings**: Comparison of average purchase amounts between Express and Standard shipping

(Full detailed insights and visualizations available in the Power BI dashboard and Jupyter notebook.)

---

## How to Run the Project

### Prerequisites
- Python 3.8+
- Jupyter Notebook
- Power BI Desktop (free)
- PostgreSQL or SQL Server (optional)

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/customer-shopping-behaviour.git
   cd customer-shopping-behaviour
