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



