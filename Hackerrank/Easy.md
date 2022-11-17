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
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
```SQL
SELECT Name
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID;
```





