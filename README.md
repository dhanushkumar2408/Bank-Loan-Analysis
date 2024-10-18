# BANK LOAN ANALYSIS

![images](https://github.com/user-attachments/assets/e3eb7381-8dfc-4d67-89b7-de2190a204a6)


#### 1. **Project Overview**
   - **Title**: Bank Loan Data Analysis
   - **Tools**: MySQL , Power-BI
   - **Description**: 
  Created a bank loan data analysis report using MySQL for data extraction and Power BI for visualization. The report highlights key metrics like loan applications, funded amounts, and received payments, and provides insights into good vs. bad loans, loan statuses, and borrower characteristics. The dashboard also includes interactive filters and slicers to explore trends by state, purpose, loan term, and other dimensions, helping to identify patterns in loan performance and risk factors.

#### 2. **Objectives**:
   - Analyze the total number of loan applications and funded amounts.
   - Calculate month-to-date (MTD) and prior month-to-date (PMTD) metrics.
   - Measure the overall loan performance through good and bad loan percentages.
   - Study loan status by state, term, purpose, and home ownership.
   - Generate insights on interest rates, DTI, and loan statuses.
   - Create a detailed PowerBI Report / Dashboard

#### 3. **SQL Queries Breakdown**:
   - **Total Loan Applications**: Total number of applications received.
   - **Total Funded Amount**: Sum of the loan amounts funded.
   - **Total Amount Collected**: Sum of payments collected on loans.
   - **MTD and PMTD Calculations**: Month-to-date comparisons for key metrics.
   - **Loan Status Analysis**: Breakdown of fully paid, current, and charged-off loans.
   - **Good vs. Bad Loans**: Percentage of successful (good) loans versus charged-off (bad) loans.
   - **State-wise Loan Analysis**: Loan applications, funded amounts, and payments received across different states.
   - **Loan Purpose & Term Analysis**: Analyzing loan trends by purpose (e.g., credit card, car) and term (e.g., 36 or 60 months).
   - **Home Ownership and Employment Length**: Effect of home ownership and employment length on loan performance.

#### 4. **Key Metrics and KPIs**:
   - **Total Loan Applications**: 6,412
   - **Total Funded Amount**: $67.5M
   - **MTD Loan Applications**: 873
   - **MTD Funded Amount**: $10.6M
   - **Average Interest Rate**: 11.4%
   - **Average Debt to Income (DTI)**: 13.8%


#### 5. **Potential Findings from SQL**:
   - **Loan Volume and Funded Amounts**:
     There is a substantial volume of loans, with a significant amount of funds disbursed ($67.5M). MTD growth is promising, with over $10.6M funded this month.
   - **Interest Rate & Debt-to-Income Ratio**:
     The average interest rate stands at 11.4%, with a DTI ratio of 13.8%. Loans with lower DTI and higher grades tend to be associated with better repayment rates.
   - **Good vs. Bad Loans**:
     The percentage of "Good Loans" (fully paid or current) is high, while the percentage of "Bad Loans" (charged off) is relatively low. However, the charged-off loans contribute a notable risk.
   - **State-Wise Performance**:
     Certain states show a higher volume of loan applications and collections, which could indicate regional trends in creditworthiness or loan demand.
   - **Purpose of Loans**:
     Loans for credit cards and mortgages are the most common, indicating a trend in consumer spending habits and refinancing needs.



# Power BI Report

# Page-1

### **Report Overview**
The 1st Page presents a comprehensive summary of bank loan activities, focusing on both good and bad loans issued. It highlights several key performance indicators (KPIs), including total loan applications, amounts funded, and received, alongside metrics like average interest and debt-to-income (DTI) ratio.

---

### **Key Metrics**
1. **Total Loan Applications**: 
   - **6412** applications, which saw an **873** month-over-month (MoM) growth, representing a **15.8%** increase.
   
2. **Total Funded Amount**:
   - **$67.5M** has been funded. For the current month (MTD), **$10.6M** has been funded, reflecting a **47.2%** MoM increase.
   
3. **Total Amount Received**:
   - A total of **$74.4M** has been received. The MTD received amount is **$11.7M**, reflecting a **53.2%** increase MoM.

4. **Average Interest**: 
   - The average interest rate for the loans is **11.4%**, up by **12.2%** MoM.

5. **Average DTI (Debt-to-Income Ratio)**: 
   - The average DTI is **13.8%**, showing a slight increase of **0.7%** MoM.

---

### **Good Loan Issued Section**
- **Good Loan Applications**: 
  - **5749** applications were approved as "good" loans, accounting for **89.7%** of the total loan applications.
  
- **Good Loan Funded Amount**: 
  - The total funded amount for good loans is **$59.6M**.

- **Good Loan Received Amount**: 
  - **$69.6M** has been received from these good loans.

This section also includes a donut chart displaying the percentage of good loans (89.7%) visually compared to bad loans.

---

### **Bad Loan Issued Section**
- **Bad Loan Applications**: 
  - There are **663** bad loan applications, making up **10.3%** of the total.

- **Bad Loan Funded Amount**: 
  - The funded amount for bad loans is **$7.8M**.

- **Bad Loan Received Amount**: 
  - The received amount is **$4.8M** for bad loans.

A donut chart illustrates the smaller share of bad loans, which constitutes 10.3% of total loans.

---

### **Loan Status Table**
The table breaks down loan status into three categories with key metrics:
- **Fully Paid**: 
  - **5682** fully paid loans, with a total funded amount of **$58.9M**.
  - MTD funded amount is **$87.8M**, and the total received amount is **$103.3M**.
  - Average interest: **11.2%**, average DTI: **13.7%**.
  
- **Charged Off**:
  - **663** loans charged off, with a total funded amount of **$7.8M**.
  - MTD funded amount: **$15.7M**, and total received amount: **$10.2M**.
  - Average interest: **13.3%**, average DTI: **14.6%**.
  
- **Current**:
  - **67** loans are currently active, with a total funded amount of **$6.9M**.
  - MTD funded amount: **$82K**, and total received amount: **$3.6M**.
  - Average interest: **13.4%**, average DTI: **14.1%**.

- **Totals**: 
  - **6412** total loan applications, with total funded amount at **$67.4M**.
  - MTD funded amount: **$106.3M**, total received amount: **$117.1M**.
  - Average interest: **11.4%**, average DTI: **13.8%**.

---

### **Slicers (Filters)**
There are several slicers available on the left to filter the data:
1. **State**: Allows filtering by the state where the loan is issued.
2. **Grade**: Likely filters based on the credit grade or quality of the loan applicant.
3. **Purpose**: Allows filtering loans by the purpose (such as home loans, personal loans, etc.).

---

### **Visualization Types**
- **KPIs**: The top section uses KPI cards to display key figures like total loan applications, funded amounts, received amounts, average interest, and average DTI. These KPIs also highlight month-over-month growth percentages.
  
- **Donut Charts**: The good and bad loans sections use donut charts to visually compare the share of good versus bad loans.

- **Table**: The loan status section presents a detailed table breaking down the loan status into categories (Fully Paid, Charged Off, Current) with key metrics for each.

---

### **Analysis Insights**
- **Performance**: The dashboard shows strong performance in loan funding and recovery, with the majority of loans classified as "good" (89.7%). Only 10.3% are considered bad loans.
  
- **MTD Trends**: The month-to-date (MTD) figures are positive, with significant increases in both funded and received amounts, signaling growth in loan activity.
  
- **High DTI for Charged Off Loans**: Charged-off loans have a higher average DTI (14.6%) and average interest (13.3%), indicating riskier loans, which may have contributed to their charge-off status.




# Page - 2


---

### **Report Overview**
The  Details Page report digs deeper into loan details by breaking down loan applications by various dimensions, such as time, geography, employment length, home ownership, and purpose. There is also a slicer (parameter) named **'Select Measures'**, which allows users to toggle between three options: **Total Loan Applications**, **Total Funded Amount**, and **Total Amount Received**.

---

### **Visualizations**

#### 1. **Total Loan Applications by Month (Line Graph)**
- **Insight**: This line chart shows the number of loan applications over the months from January to December. 
  - January starts with **411** applications, gradually increasing throughout the year.
  - A significant spike occurs in November (**669**) and December (**873**), indicating seasonality or campaign effects leading to an influx in applications.
  
#### 2. **Total Loan Applications by Address State (Map)**
- **Insight**: A filled map visualization breaks down the loan applications by state. 
  - Darker shades represent higher loan applications.
  - For example, California and the northeastern states have darker shades, suggesting they have higher loan activity.
  - This map offers a clear geographical view of loan applications, helping target high-demand areas.

#### 3. **Total Loan Applications by Term (Donut Chart)**
- **Insight**: This donut chart shows loan applications based on the loan term (duration):
  - **76.98%** of the loan applications have a term of **60 months**.
  - The remaining **23.02%** have a term of **36 months**.
  - This visualization quickly highlights that longer-term loans are more popular among applicants.

#### 4. **Total Loan Applications by Employment Length (Bar Chart)**
- **Insight**: This horizontal bar chart shows the distribution of loan applications based on employment length.
  - The largest group of applicants has **10+ years** of employment experience (**1412** applications).
  - Other notable categories include those with less than **1 year** of experience (**781**) and **2 years** (**716**).
  - As employment length increases, loan applications generally rise, indicating that more experienced professionals are securing loans.

#### 5. **Total Loan Applications by Home Ownership (Treemap)**
- **Insight**: This treemap breaks down loan applications by homeownership status.
  - **MORTGAGE** is the dominant homeownership status among applicants.
  - **RENT** comes next, while **OWN** is the smallest category.
  - This visualization highlights the reliance on mortgage holders and renters as major loan applicants.

#### 6. **Total Loan Applications by Purpose (Bar Chart)**
- **Insight**: This bar chart breaks down loan applications by their intended purpose.
  - **Credit Card** loans dominate with **4.9K** applications.
  - **Car loans** make up a smaller portion with **1.5K** applications.
  - The visualization provides a clear indication of what the majority of loan applicants are looking for (e.g., debt consolidation via credit card loans).

---

### **Slicers (Filters)**
On the left-hand side, several slicers allow users to filter data in real-time:
1. **State**: Filter loan data based on different U.S. states.
2. **Grade**: Likely represents the credit grade of the applicants (filter by different credit risk categories).
3. **Purpose**: Filter loans based on their purpose, such as credit card, car loans, home loans, etc.

#### **Select Measures Slicer**
A key feature in this dashboard is the **Select Measures** slicer, which toggles between:
- **Total Loan Applications**: Visualizes the number of loan applications.
- **Total Funded Amount**: Shows the total amount of money funded for each of the dimensions (e.g., by state, purpose, or term).
- **Total Amount Received**: Displays the total amount of money received from loans in each category.

---

### **Analysis Insights**
- **Seasonal Patterns**: The sharp increase in loan applications towards the end of the year may suggest a trend driven by holiday spending or end-of-year financing needs.
  
- **Geographical Focus**: States with the highest loan activity should be the focus of marketing or resource allocation.
  
- **Loan Terms**: The vast majority of applicants prefer longer loan terms (60 months), likely due to smaller monthly payments despite higher interest over time.

- **Employment Length**: Applicants with longer employment histories are the most active in seeking loans, indicating that job stability plays a critical role in loan eligibility or preference.

- **Home Ownership**: A significant number of applicants are mortgage holders, suggesting a potential focus on upselling or refinancing opportunities.

---

# Page 3

### **Report Overview**
The  Overview Page report digs deeper into loan details

### 1. **Loan Details (Table)**
The table shows detailed loan records with the following fields:
   - **ID**: Unique identifier for each loan.
   - **Purpose**: The reason for taking out the loan (e.g., credit card, car).
   - **Home Ownership**: The applicant's home ownership status (e.g., Rent, Mortgage, Own).
   - **Grade**: Loan grading for risk assessment (A to E).
   - **Sub Grade**: A more granular classification of the grade (e.g., A2, B5).
   - **Issue Date**: The date the loan was issued.
   - **Funded Amount**: Amount of money funded for each loan.
   - **Interest Rate**: Rate of interest applied to the loan.
   - **Installment**: Monthly installment amount.

#### Table Summary (Totals at the Bottom):
   - **Total Funded Amount**: $6,740,975
   - **Total Interest Rate**: 731.90 (sum across all rows)
   - **Total Installment**: $19,968,897.50 (sum across all rows)

### 2. **Slicers and Filters**
   The slicers allow filtering the data:
   - **Select Measure**: Filters the display by different measures like "Total Loan Applications","Total Funded Amount","Total Amount Received"
   - **State**: Filters data based on state (currently set to "All").
   - **Grade**: Filters loans based on grade (A to E).
   - **Purpose**: Filters data based on loan purposes (credit card, car, etc.).

---

### **DAX MEASURES**

**Same Dax Caluculations are applied to Total Funded Amount , Total Received Amount , Average Interest , Average DTI**

![Screenshot 2024-10-16 131754](https://github.com/user-attachments/assets/50409c4c-1838-429f-ae36-ff0c5a3e4d03)
![Screenshot 2024-10-16 131745](https://github.com/user-attachments/assets/a45d3c16-2e89-442c-89ff-1d75f8b379b7)
![Screenshot 2024-10-16 131732](https://github.com/user-attachments/assets/dfd4b803-9987-4a79-828c-99c697c67fab)
![Screenshot 2024-10-16 131719](https://github.com/user-attachments/assets/cc2fe9a9-e5a5-40d3-98cd-fa3be780229c)
![Screenshot 2024-10-16 131707](https://github.com/user-attachments/assets/8ac6549b-5113-476c-88ee-4aa6ffb31c07)
![Screenshot 2024-10-16 131657](https://github.com/user-attachments/assets/c52248bf-d80b-4ad8-80b9-ed2143c5a3d7)
![Screenshot 2024-10-16 135752](https://github.com/user-attachments/assets/b7e62cc2-7aec-45dd-93e0-04596d810672)

---

**Created a Calendar Table to efficiently plot visualisations , connected 'Date' field to Loan table with 'Issue_date"**

![Screenshot 2024-10-16 134944](https://github.com/user-attachments/assets/eb2caf9b-412f-48bc-804e-f915bc95fc1c)
![Screenshot 2024-10-16 134927](https://github.com/user-attachments/assets/44121def-bc69-49bf-b47d-40f4ab96b008)
