SELECT DISTINCT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date
LEFT JOIN person_visits
ON person_visits.visit_date = missing_date AND (person_visits.person_id = '1' OR person_visits.person_id = '2') 
WHERE (person_id IS null)
ORDER BY missing_date
