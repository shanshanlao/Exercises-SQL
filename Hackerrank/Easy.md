## Revising the Select Query I
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

``` SQL
SELECT *
FROM CITY
WHERE POPULATION > 100000 AND CountryCode = 'USA';
```

## Revising the Select Query II
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

``` SQL
SELECT NAME
FROM CITY
WHERE POPULATION > 120000 AND CountryCode = 'USA';
```

## Select All
Query all columns (attributes) for every row in the CITY table.

``` SQL
SELECT * 
FROM CITY;
```

## Select By ID
Query all columns for a city in CITY with the ID 1661.

``` SQL
SELECT *
FROM CITY
WHERE ID = 1661;
```

## Japanese Cities' Attributes
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

``` SQL
SELECT *
FROM CITY
WHERE CountryCode = 'JPN';
``` 

## Japanese Cities' Names
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

``` SQL
SELECT NAME
FROM CITY
WHERE CountryCode = 'JPN';
``` 

## Weather Observation Station 1
Query a list of CITY and STATE from the STATION table.

``` SQL
SELECT CITY, STATE
FROM STATION;
``` 

## Weather Observation Station 2
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.

``` SQL
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;
``` 

## Weather Observation Station 3
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2 = 0;
``` 

## Weather Observation Station 4
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
``` SQL
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
``` 

## Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
``` SQL
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;
                 
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;
``` 

## Weather Observation Station 6
Query the list of CITY names starting with vowels (a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou]';
``` 

## Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';
``` 

## Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (a, e, i, o, u) as both their first and last characters. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
``` 

## Weather Observation Station 9
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]';
``` 


## Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '[AEIOU]$';
``` 


## Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU].*[AEIOU]$';
``` 

## Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
``` SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]' 
AND CITY NOT REGEXP '[AEIOU]$';
``` 

## Weather Observation Station 13
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
``` SQL
SELECT ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
``` 

## Weather Observation Station 14
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
``` SQL
SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;
``` 

## Weather Observation Station 15
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
``` SQL
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
``` 

## Weather Observation Station 16
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
``` SQL
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;
``` 

## Weather Observation Station 17
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
``` SQL
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N >38.7780);
``` 

## Higher Then 75 Marks
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
```SQL
SELECT Name
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID;
```

## Employee Names
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
```SQL
SELECT name
FROM Employee
ORDER BY name;
```

## Employee Salaries
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
```SQL
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ;
```


## Type of Triangle
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
- Equilateral: It's a triangle with 3 sides of equal length.
- Isosceles: It's a triangle with 2 sides of equal length.
- Scalene: It's a triangle with 3 sides of differing lengths.
- Not A Triangle: The given values of A, B, and C don't form a triangle.

```SQL
SELECT
CASE WHEN A+B<=C or A+C<=B or B+C<=A THEN 'Not A Triangle'
ELSE
    CASE 
        WHEN A = B and B = C THEN 'Equilateral'
        WHEN A = B or B = C or A = C THEN 'Isosceles'
        WHEN A!=B and A!=C and B!=C THEN 'Scalene' 
    END
END
FROM TRIANGLES;
```

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

## Population Census
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
```SQL
SELECT SUM(c1.POPULATION)
FROM CITY c1
JOIN COUNTRY c2
ON c1.CountryCode = c2.Code
WHERE c2.CONTINENT = 'Asia';
```

## African Cities
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
```SQL
SELECT c1.NAME
FROM CITY c1
JOIN COUNTRY c2
ON c1.CountryCode = c2.Code
WHERE c2.CONTINENT = 'Africa';
```

## Average Population of Each Continent
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
```SQL
SELECT c2.CONTINENT, FLOOR(AVG(c1.POPULATION))
FROM CITY c1
JOIN COUNTRY c2
ON c1.CountryCode = c2.Code
GROUP BY c2.CONTINENT;
```



