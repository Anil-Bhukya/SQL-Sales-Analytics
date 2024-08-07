# SQL Sales Analytics

## Project Overview

This project focuses on performing gross,net sales and supply chain analytics using SQL of an AtliQ Hardware Organisation which distributes hardware products to different countries,region and customer. The primary objective is to understand the sales data, perform necessary transformations, and derive meaningful insights to aid decision-making. The project involves creating various SQL scripts and stored procedures to automate data extraction, transformation, and loading processes.

## Key Concepts Used

1. **Database Design**

   - Fact and dimension tables
   - Normalization and denormalization
   - Importance of primary keys, foreign keys, and indexes

2. **SQL Basics**

   - Overview of SQL syntax
   - Basic SQL commands: `SELECT`, `INSERT`, `UPDATE`, `DELETE`
   - Filtering data using `WHERE` clause
   - Sorting data with `ORDER BY`

3. **Advanced SQL**

   - Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
   - Grouping data using `GROUP BY`
   - Joining tables: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`
   - Subqueries and nested queries
   - validating trigger actions
   - Using Common Table Expressions (CTEs) for intermediate calculations
   - Utilizing temporary tables for session-based data storage

4. **Stored Procedures**

   - Introduction to stored procedures
   - Creating and executing stored procedures for dynamic reporting

5. **Data Analysis Techniques**

   - Calculating gross sales
   - Calculating net sales and other business metrics
   - Handling missing and inconsistent data
   - Data validation and quality checks

6. **Supply Chain Analytics**

   - Forecast Accuracy
   - Net error and Absolute error

## Usage

1. **Setting Up the Environment**

   - Installed a SQL database management system (MySQL)
   - Imported the provided database schema and data [Database.sql](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/blob/main/Database.sql)

2. **Running SQL Scripts**

   - Executed the SQL scripts in the provided order to set up tables, insert data to analyze gross,net sales and supply chain data
   - Used the stored procedures for automated tasks

3. **Generating Reports**
   - Extracted the results of the analysis into reports
   - Visualized the data using Excel
   - Sales Reports: Detailed insights into gross and net sales
     [Task-1](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/tree/main/Reports_and_Results_of_Tasks/Croma_Task-1)
     [Excel-report](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/blob/main/Reports_and_Results_of_Tasks/Croma_Task-1/croma_2021_all_Transactions.xlsx)  
      **gross Sales report**  
     ![croma_2021_transaction_sql_result_of_task_given](https://github.com/user-attachments/assets/0fc02d79-b69e-4713-a7f6-683280bc3277)  
      **report of customers sales by region APAC**-- For more [regions](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/tree/main/Reports_and_Results_of_Tasks/Stored_Procedures)
     ![APAC_region_share_by_customers](https://github.com/user-attachments/assets/09c1456c-f8f2-4db1-a31a-5aee55dffc3b)
     **stored procedure for retrieving market sales by region**-- For more [click here](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/tree/main/Reports_and_Results_of_Tasks/Stored_Procedures)
     ![top_n_market_by_region_gross_sales_storage_procedure](https://github.com/user-attachments/assets/4a9b61ed-44c8-4f73-9c9f-5db3b405c984)
     **top 5 products by net sales** --[more](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/tree/main/Reports_and_Results_of_Tasks/Task-3_stored_procedures)  
      ![top_5_products_by_net_sales](https://github.com/user-attachments/assets/508297a1-2b39-4f15-8828-078cb72afc45)  
     **Supply Chain Reports: Analysis of supply chain performance and metrics**
     ![forecast_accuracy_sql_report](https://github.com/user-attachments/assets/113f1179-c7a8-4a31-85f9-678d51ce28c1)
     For more details [click here](https://github.com/Anil-Bhukya/SQL-Sales-Analytics/tree/main/Reports_and_Results_of_Tasks/Task-4_stored_procedures)
