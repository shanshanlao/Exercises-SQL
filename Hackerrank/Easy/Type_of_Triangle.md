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
