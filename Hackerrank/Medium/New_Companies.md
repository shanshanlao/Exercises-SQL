Amber's conglomerate corporation just acquired some new companies. 
Each of the companies follows this hierarchy: 

Founder --> Lead Manager --> Senior Manager --> Manager --> Employee

Write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. 

Order your output by ascending company_code.

```sql
SELECT DISTINCT c.company_code, c.founder,  
        COUNT(DISTINCT l.lead_manager_code) as lead_manager,
        COUNT(DISTINCT s.senior_manager_code) as senior_manager,
        COUNT(DISTINCT m.manager_code) as manager,
        COUNT(DISTINCT e.employee_code) as employee
FROM Company c, Lead_Manager l, Senior_Manager s, Manager m, Employee e
WHERE c.company_code = l.company_code
AND c.company_code = s.company_code 
AND c.company_code = m.company_code 
AND c.company_code = e.company_code 
GROUP BY c.company_code, c.founder 
ORDER BY c.company_code;
```
