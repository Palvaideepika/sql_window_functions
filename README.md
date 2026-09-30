# SQL Window Functions

## Project Overview

This project demonstrates the use of SQL Window Functions in MySQL to analyze and compare sales data. It covers `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, and `LAG()` with practical queries.

## Objectives

* Understand SQL Window Functions.
* Assign row numbers to records.
* Rank sales overall and within departments.
* Compare current and previous sales.
* Identify sales increases and decreases.

## Tools & Technologies

* MySQL
* MySQL Workbench
* SQL

## Dataset

A sample sales dataset containing 15 records with the following columns:

* `sale_id` – Unique sale identifier
* `employee` – Employee name
* `department` – Department name
* `sale_date` – Date of sale
* `amount` – Sales amount

## Window Functions Covered

### 1. ROW_NUMBER()

Assigns a unique sequential number to each row based on a specified ordering.

### 2. RANK()

Assigns ranks to rows, giving equal values the same rank and skipping subsequent rank numbers when ties occur.

### 3. DENSE_RANK()

Assigns ranks to rows, giving equal values the same rank without skipping subsequent rank numbers.

### 4. LAG()

Accesses a value from a previous row, allowing comparisons between current and earlier sales.

## Tasks Completed

1. Assign row numbers to all sales.
2. Assign row numbers within departments.
3. Find the highest sale in each department.
4. Select the top three sales in each department.
5. Rank all sales.
6. Rank sales within departments.
7. Find the top three ranks in each department.
8. Compare RANK() and DENSE_RANK().
9. Find each employee's previous sale.
10. Calculate differences from previous sales.
11. Identify sales increases and decreases.
12. Find the previous sale within each department.

## Project Files

* `sql_window_functions.sql` – SQL queries used in this project.
* `README.md` – Project documentation.
* `screenshots/` – Screenshots of query execution and results.

## Key Learnings

* Using window functions for data analysis.
* Applying `PARTITION BY` and `ORDER BY`.
* Understanding ranking and handling ties.
* Comparing records using `LAG()`.
* Analyzing sales trends using SQL.

## Conclusion

This project provided practical experience with SQL Window Functions and demonstrated how they can be used to rank, compare, and analyze sales records.

## Author

**Palvai Deepika**

GitHub: https://github.com/Palvaideepika
