## Revising Aggregations - The Count Function
Query a count of the number of cities in CITY having a Population larger than 100,000.
```SQL
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;
```

## Revising Aggregation - The Sum Function
Query the total population of all cities in CITY where District is California.
```SQL
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
```

## Revising Aggregation - Averages
Query the average population of all cities in CITY where District is California.
```SQL
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
```

## Average Population
Query the average population for all cities in CITY, rounded down to the nearest integer.
```SQL
SELECT FLOOR(AVG(POPULATION))
FROM CITY;
```

## Japan Population
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
```SQL
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
```

## Population Density Difference
Query the difference between the maximum and minimum populations in CITY.
```SQL
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
```

## The Blunder
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: acutal - miscalculated average monthly salaries), and round it up to the next integer.
```SQL
SELECT CEIL( SUM(Salary)/COUNT(*) - SUM(REPLACE(Salary,'0',''))/COUNT(*) )
FROM EMPLOYEES
```

## Top Earners
We define an employee's total earnings to be their monthly salary * months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.
```SQL
SELECT salary*months as total_earning, COUNT(*)
FROM Employee
WHERE salary*months = 
(   SELECT MAX(salary * months)
    FROM Employee
)
GROUP BY total_earning;
```
