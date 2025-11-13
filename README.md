# 📘 Customer Data Integration & Analytics - MySQL

This project demonstrates end-to-end handling of client-provided customer data using MySQL. It includes data review, cleaning, transformation, enrichment, and analytical reporting. The goal is to show clear thinking around data quality, SQL readiness, and how to structure workflows typically required in real operational systems.

The dataset contains the following customer attributes:

- **Customer ID**
- **Full Name**
- **Email**
- **Phone**
- **City**
- **Signup Date**

Additional scenarios include generating insights, preparing enriched fields for operations teams, and building supporting tables like `orders` and `vip_customers`.

---

## ✔️ Task 1: SQL & Data Familiarity

### **1) Data Review Before Import (≤3 lines)**  
- Validate schema: check column names, formats, duplicates, missing values, and enforce types.  
- Standardize fields: clean email/phone, normalize city names, convert date formats (e.g., `DD-MM-YYYY → YYYY-MM-DD` using `STR_TO_DATE`).  
- Apply quality checks: ensure unique IDs, detect invalid dates, verify email patterns before loading into MySQL.

### **2) SQL Execution Tasks**  
You must generate results for:

- All customers from **Delhi**
- **Signups in the last 30 days** (assuming reference date: *16 Apr 2025*)
- **Unique customer cities**
- **Top 3 cities** by signup count
- Customers who have **never placed an order** (using `orders` table)

---

## ✔️ Task 2: Data Transformation & Enrichment

You must implement transformations such as:

- Add a flag identifying whether the email domain is **gmail.com** (Yes/No)
- Extract **first name** from the full name
- Add **signup_month** (January, February, etc.)
- Create a report of **Gmail signups by day of the week**
- Build a `vip_customers` table for customers from **Delhi, Mumbai, Bangalore** who signed up in the last **60 days** relative to *16 Apr 2025*

---

## ✔️ Task 3: Analytics & Reporting

Prepare analytical insights including:

- **Monthly signup count** for the past 6 months  
- **Cities with more than 20 customers**  
- **Date with the highest number of signups**  
- Add a column for **signup day** and find which day has the highest signups  

---
## 🚀 Use Cases of This Project

### **1. Customer Insights Platform**  
Understand signup patterns, active regions, and high-value customer segments.

### **2. CRM Data Cleaning Pipeline**  
Standardizes emails, dates, names, and domains before syncing to CRM tools (HubSpot, Salesforce, Xeno).

### **3. Operations Automation**  
Enriched fields (first name, signup month, Gmail flag) support automated messaging and onboarding workflows.

### **4. Fraud / Anomaly Detection**  
Detect unusual spikes, outliers, or unexpected location trends.

### **5. Marketing Campaign Planning**  
Insights like top signup cities or busiest signup days support campaign strategies.

### **6. VIP Segmentation**  
The `vip_customers` table supports loyalty programs and high-value user targeting.

---


