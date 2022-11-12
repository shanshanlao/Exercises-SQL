Company: Meta/Faceebook

Meta/Facebook has developed a new programing language called Hack.
To measure the popularity of Hack they ran a survey with their employees. 
The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. 
Due to an error <b> location </b> data was not collected, but your supervisor demands a report showing <b> average popularity of Hack by office location.</b> 
Luckily the user IDs of employees completing the surveys were stored.
Based on the above, find the average popularity of the Hack per office location.
Output the location along with the average popularity.


facebook_employees
- id: int
- location: varchar
- age: int
- gender: varchar
- is_senior: bool

facebook_hack_survey
- employee_id: int
- age: int
- gender: varchar
- popularity: int


``` SQL
select e.location as location, avg(popularity) as avg_popularity
from facebook_employees e
join facebook_hack_survey h
on e.id = h.employee_id
group by e.location
order by e.location;

```
