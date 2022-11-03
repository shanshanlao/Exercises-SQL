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


``` 

## Weather Observation Station 6

``` SQL


``` 

## Weather Observation Station 7

``` SQL


``` 

## Weather Observation Station 8

``` SQL


``` 

## Weather Observation Station 9
``` SQL


``` 


## Weather Observation Station 10

``` SQL


``` 


## Weather Observation Station 11

``` SQL


``` 

## Weather Observation Station 12

``` SQL


``` 

## Weather Observation Station 13

``` SQL


``` 

## Weather Observation Station 14

``` SQL


``` 

## Weather Observation Station 15

``` SQL


``` 

## Weather Observation Station 16

``` SQL


``` 

## Weather Observation Station 17

``` SQL


``` 





