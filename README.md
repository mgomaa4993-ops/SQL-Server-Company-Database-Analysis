# SQL Server Company Database Analysis

## 📌 Project Overview

This project demonstrates SQL Server database analysis using a Company Database. It includes analytical queries, aggregation, filtering, and join operations commonly used in Data Analysis and Business Intelligence.

---

## 🎯 Objectives

- Analyze employee and department data.
- Practice SQL querying techniques.
- Perform business-oriented analysis.
- Generate meaningful insights from relational data.

---

## 🛠️ Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL

---

## 📊 SQL Skills Demonstrated

### Data Retrieval
- SELECT
- DISTINCT
- TOP
- ORDER BY

### Filtering
- WHERE
- BETWEEN
- IN
- LIKE
- NULL Handling

### Aggregate Functions
- COUNT
- SUM
- AVG
- MIN
- MAX

### Grouping
- GROUP BY
- HAVING

### SQL Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

---

## 📈 Analysis Performed

- Employee salary analysis
- Employee distribution analysis
- Department performance analysis
- Department employee count
- Average salary by department
- Employee filtering and sorting
- Relational data analysis using joins

---

## 📁 Files Included

- Company.sql
- Company.bak

---
## 📝 Sample Queries

### Top Highest Paid Employees

```sql
SELECT TOP 5 *
FROM Employee
ORDER BY Salary DESC;
```

### Average Salary by Department

```sql
SELECT Dnum, AVG(Salary)
FROM Employee
GROUP BY Dnum;
```

### Employee Count by Department

```sql
SELECT Dnum, COUNT(*)
FROM Employee
GROUP BY Dnum;
```

## 👨‍💻 Author

Mahmoud Gomaa

Aspiring Data Analyst | SQL | Python | Power BI
