create database operation_analytics;
use operation_analytics;
create table job_data(
ds date,
job_id int,
actors_id int,
event varchar(255),
language varchar(255),
time_spent int,
org varchar(255)
);
select*from job_data;
insert into job_data(ds,job_id,actors_id,event,language,time_spent,org)
values('2020-11-30',21,1001,'skip','English',15,'A'),
('2020-11-30',22,1006,'transfer','Arabic',25,'B'),
('2020-11-29',23,1003,'decision','Persian',20,'C'),
('2020-11-28',23,1005,'transfer','Persian',22,'D'),
('2020-11-28',25,1002,'decision','Hindi',11,'B'),
('2020-11-27',11,1007,'decision','French',104,'D'),
('2020-11-26',23,1004,'skip','Persian',56,'A'),
('2020-11-25',20,1004,'transfer','Italic',45,'C'),
('2020-11-24',21, 1001, 'skip', 'English', 15, 'A'),
('2020-11-23',22, 1006, 'transfer', 'Arabic', 25, 'B'),
('2020-11-22',24, 1003, 'decision', 'Persian', 20, 'C'),
('2020-11-21',12, 1005,'transfer', 'Persian', 22, 'D'),
('2020-11-20',25, 1002, 'decision', 'Hindi', 11, 'B'),
('2020-11-19',11, 1007, 'decision', 'French', 104, 'D'),
('2020-11-18',23, 1004, 'skip', 'Persian', 56, 'A'),
('2020-11-17',17, 1004, 'transfer', 'Italian', 45, 'C'),
('2020-11-16',21, 1001, 'skip', 'English', 15, 'A'),
('2020-11-15',22, 1006, 'transfer', 'Arabic', 25, 'B'),
('2020-11-14',23, 1003, 'decision', 'Persian', 20, 'C'),
('2020-11-13',24, 1005,'transfer', 'Persian', 22, 'D'),
('2020-11-12',25, 1002, 'decision', 'Hindi', 11, 'B'),
('2020-11-11',11, 1007, 'decision', 'French', 104, 'D'),
('2020-11-10',23, 1004, 'skip', 'Persian', 56, 'A'),
('2020-11-09',24, 1004, 'transfer', 'Italian', 45, 'C'),
('2020-11-08',21, 1001, 'skip', 'English', 15, 'A'),
('2020-11-07',17, 1006, 'transfer', 'Arabic', 25, 'B'),
('2020-11-06',29, 1003, 'decision', 'Persian', 20, 'C'),
('2020-11-05',23, 1005,'transfer', 'Persian', 22, 'D'),
('2020-11-04',24, 1002, 'decision', 'Hindi', 11, 'B'),
('2020-11-03',11, 1007, 'decision', 'French', 104, 'D'),
('2020-11-02',16, 1004, 'skip', 'Persian', 56, 'A'),
('2020-11-01',20, 1004, 'transfer', 'Italian', 45, 'C');

/*calculate the no.of jobs reviewed per hour per day  for november*/
select ds as dates,
round((count(job_id)/sum(time_spent))*3600)as'jobs reviewed per hour'
from job_data
where ds between'2020-11-01'and'2020-11-30'
group by ds;






