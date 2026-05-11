# 🗄️ SQL Data Analysis: Chicago Taxi Database
## 📋 Project Overview

This project focused on querying and analyzing a relational database containing Chicago taxi trip data using SQL.

The objective was to extract operational insights from taxi companies, trip activity, and weather conditions by writing analytical queries using filtering, aggregation, grouping, joins, and conditional logic.

---

## 🎯 Project Impact

**Key Result:** Executed SQL queries to analyze taxi fleet distribution, company activity, trip volume, and weather classifications across Chicago ride data.

---

## ✅ Key Activities
* **Fleet Analysis:** Counted total registered taxi vehicles and analyzed company fleet sizes.
* **Company Performance Analysis:** Identified taxi companies with fewer than **100 active vehicles.**
* **Weather Classification Logic:** Categorized weather conditions into **Good or Bad using conditional SQL logic.**
* **Trip Volume Analysis:** Ranked taxi companies by **total trips** completed during a specified period.
  
---

## 🛠️ Tech Stack

 | Category | Tools / Techniques |
  | :--- | :---: |
  | **Database** | `PostgreSQL` |
  | **SQL Client** | `DBeaver` |
  | **Aggregations** | `COUNT, GROUP BY, HAVING` |
  | **Conditional Logic** | `CASE WHEN` |
  | **Table Joins** | `JOIN` |
  | **Sorting** | `ORDER BY` |
  
---

## 📊 Key SQL Findings


 ### 1. Total Number of Registered Taxis

 ```sql
SELECT COUNT(DISTINCT cab_id)
FROM cabs;


 Result: 5,529 registered taxis identified in the database.

```

### 2. Companies with Fewer Than 100 Vehicles
``` sql
SELECT company_name,
       COUNT(DISTINCT cab_id) AS cnt
FROM cabs
GROUP BY company_name
HAVING COUNT(DISTINCT cab_id) < 100
ORDER BY cnt DESC;

Insight: Identified smaller taxi operators with limited fleet capacity.

```
###  3. Weather Classification Analysis
``` sql
SELECT ts,
       CASE
           WHEN description ILIKE '%rain%'
             OR description ILIKE '%storm%'
           THEN 'Bad'
           ELSE 'Good'
       END AS weather_conditions
FROM weather_records
WHERE ts >= '2017-11-05 00:00:00'
  AND ts < '2017-11-06 00:00:00';

Insight: Built logic to classify operational weather conditions for trip analysis.

```
4. Taxi Companies Ranked by Trip Volume
``` sql
SELECT cabs.company_name,
       COUNT(trips.trip_id) AS trips_amount
FROM trips
JOIN cabs ON trips.cab_id = cabs.cab_id
WHERE trips.start_ts >= '2017-11-15 00:00:00'
  AND trips.start_ts < '2017-11-17 00:00:00'
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;

Finding: Flash Cab recorded the highest trip volume during the selected period.
```
### Key Findings
- Identified **5,529 registered taxis**
- Detected 51 companies with fewer than 100 vehicles
- Classified weather conditions into Good/Bad operational categories
- Ranked taxi companies by trip volume
  
## 📂 Project Resources

* SQL query scripts
* Analysis report
* Database screenshots/results
