SELECT s.name as service_name, count(distinct r.person_id) as person_count
FROM requests r
join service s on r.service_id = s.id
where r.status = 'одобрена' and extract(year from r.approved_at) = 2025
group by s.name;


select r.id as request_id
from requests r
left join payments p on r.id = p.request_id
where r.status = 'одобрена' and p.id is null;


SELECT date_trunc('month', payment_date) as month, sum(amount) as total_amount
from payments
GROUP BY month
order by month;
