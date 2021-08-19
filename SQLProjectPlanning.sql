SELECT p1.start_date, min(p2.end_date) FROM (SELECT start_Date FROM projects WHERE start_Date NOT IN (SELECT end_date FROM projects)) p1, 
(SELECT end_date FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects)) p2
WHERE p2.end_date > p1.start_date group by p1.start_date order by (min(p2.end_date)- p1.start_date),p1.start_date;
