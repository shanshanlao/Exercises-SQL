Company: Meta/Facebook

Find the rate of processed tickets for each type.

**facebook_complaints**
- complaint_id: int
- type: int
- processed: bool

```sql
select 
    type,
    SUM(CASE WHEN processed = 1 then 1 else 0 end)/COUNT(*) as processed_rate
from facebook_complaints
group by type;
```
