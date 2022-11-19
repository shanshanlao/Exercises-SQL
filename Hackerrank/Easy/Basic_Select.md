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
