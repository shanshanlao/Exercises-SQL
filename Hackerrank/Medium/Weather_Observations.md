## Weather Observation Station 18
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane. 
- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

```SQL
SELECT round(abs(MIN(LAT_N)-MAX(LAT_N)) + abs(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION;
```

## Weather Observation Station 19
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits
```SQL
SELECT ROUND( 
         SQRT( 
             POWER( (MIN(LAT_N)-MAX(LAT_N)), 2) + 
             POWER( (MIN(LONG_W)-MAX(LONG_W)), 2) 
         ),4)
FROM STATION;
```

## Weather Observation Station 20
A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
```SQL
WITH temp AS (
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) as idx
    FROM STATION
)

SELECT ROUND(LAT_N,4)
FROM temp
WHERE idx = (SELECT (COUNT(*)+1)/2 FROM temp)

-- Above Solution only work when the total number of rows is odd number
-- When the total number of rows is an even number, we should calculate the average of the two middle points
-- Below solutions are from HackerRank user @rex0520

SET @N := 0;
SELECT COUNT(*) FROM STATION INTO @TOTAL;
SELECT
    ROUND(AVG(A.LAT_N), 4)
FROM (SELECT @N := @N +1 AS ROW_ID, LAT_N FROM STATION ORDER BY LAT_N) A
WHERE
    CASE WHEN MOD(@TOTAL, 2) = 0 
            THEN A.ROW_ID IN (@TOTAL/2, (@TOTAL/2+1))
            ELSE A.ROW_ID = (@TOTAL+1)/2
    END
;
```


