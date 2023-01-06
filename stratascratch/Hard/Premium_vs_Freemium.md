## Interview Question by Microsoft: Premium vs Freemium

Find the total number of downloads for paying and non-paying users by date. 
Include only records where non-paying customers have more downloads than paying customers. 
The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.


**ms_user_dimension**
- user_id: int
- acc_id: int

**ms_acc_dimension**
- acc_id: int
- paying_customer: varchar

**ms_download_facts**
- date: datetime
- user_id: int
- downloads: int

```SQL
select 
    f.date,
    SUM(IF(paying_customer = 'no', f.downloads,0)) as 'non_paying',
    SUM(IF(paying_customer = 'yes', f.downloads,0)) as 'paying'
from ms_user_dimension u
join ms_acc_dimension a
join ms_download_facts f
on u.acc_id = a.acc_id
and u.user_id = f.user_id
group by f.date
having non_paying > paying
order by f.date
```
