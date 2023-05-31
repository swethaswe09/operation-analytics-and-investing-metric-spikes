SELECT * FROM events.events;
select extract(week from occurred_at)as 'weekly numbers',
count(distinct user_id)as 'weekly active users'
from events.events
where event_type='engagement'
group by 1;

select first as 'week numbers',
sum(case when week_number=0 then 1 else 0 end)as'week 0',
sum(case when week_number=1 then 1 else 0 end)as'week 1',
sum(case when week_number=2 then 1 else 0 end)as'week 2',
sum(case when week_number=3 then 1 else 0 end)as'week 3',
sum(case when week_number=4 then 1 else 0 end)as'week 4',
sum(case when week_number=5 then 1 else 0 end)as'week 5',
sum(case when week_number=6 then 1 else 0 end)as'week 6',
sum(case when week_number=7 then 1 else 0 end)as'week 7',
sum(case when week_number=8 then 1 else 0 end)as'week 8',
sum(case when week_number=9 then 1 else 0 end)as'week 9',
sum(case when week_number=10 then 1 else 0 end)as'week 10',
sum(case when week_number=11 then 1 else 0 end)as'week 11',
sum(case when week_number=12 then 1 else 0 end)as'week 12',
sum(case when week_number=13 then 1 else 0 end)as'week 13',
sum(case when week_number=14 then 1 else 0 end)as'week 14',
sum(case when week_number=15 then 1 else 0 end)as'week 15',
sum(case when week_number=16 then 1 else 0 end)as'week 16',
sum(case when week_number=17 then 1 else 0 end)as'week 17',
sum(case when week_number=18 then 1 else 0 end)as'week 18',

