SELECT s.name as service_name, count(distinct r.person_id) as person_count
FROM requests r
join service s on r.service_id = s.id
where r.status = 'одобрена' and extract(year from r.approved_at) = extract(YEAR FROM CURRENT_DATE)
group by s.name;


select r.id as request_id, p.name as person_name, s.name as person_name
from requests r
join person p on r.person_id = p.id
join service s on r.service_id = s.id
left join payments pay on r.id = pay.request_id
group by r.id, p.name, s.name
having sum(pay.amount) is null or sum(pay.amount) < 1000;


SELECT date_trunc('month', r.approved_at) as month, r.service_id, r.person_id, count(*) as service_count
from requests r
where r.status = 'одобрена'
group by date_trunc('month', r.approved_at), r.service_id, r.person_id
order by month, r.service_id, r.person_id;
