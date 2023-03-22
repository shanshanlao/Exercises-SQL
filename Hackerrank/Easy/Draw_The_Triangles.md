# Draw The Triangle 1
P(R) represents a pattern drawn by Julia in R rows. 
Write a query to print the pattern P(20).

## MS SQL SERVER(T-SQL)
```sql
DECLARE @cnt INT = 22;
DECLARE @stars VARCHAR(50);

WHILE (@cnt > 0)
BEGIN
    -- PRINT @cnt;
    SET @stars = REPLICATE('* ', @cnt);
    PRINT @stars;
    
    SET @cnt = @cnt - 1;
END;
```

# Draw The Triangle 2
P(R) represents a pattern drawn by Julia in R rows. 
Write a query to print the pattern P(20).

## T-SQL

```sql
DECLARE @n INT = -1;

WHILE @n < 21
BEGIN
    PRINT REPLICATE('* ', @n);
    SET @n = @n + 1;
END
```
