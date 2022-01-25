--Finding the Avererage deductible cost for each insurance type
SELECT AVG(e.e_deductibles) AS "Average Event Deductibles", AVG(t.t_deductibles) AS "Average Travel Deductible",
AVG(i.i_dedcutibles) AS "Average Item Deductibles" 
FROM travel_insurance t 
CROSS JOIN event_insurance e 
CROSS JOIN item_insurance i; 

-- Looking for trends between event insurance and attendees 
SELECT i.e_insurance_type AS "Insurance", e.e_type AS "Event", e.number_attendees AS "Attendees"
FROM event_insurance i JOIN event_policy p 
ON (i.e_insurance_id=p.e_insurance_id) 
JOIN events e 
ON (e.event_id=p.event_id) 
ORDER BY e.number_attendees DESC; 

-- Finding insurance plans based on dedcutibles 
SELECT i.i_type "Insurance Plan", TRUC(AVG(v.selling_price),2) AS "AVG Item Selling Price", TRUC(AVG(i.i_deductibles),2) AS "AVG deductible"
FROM valuable_items v JOIN item_policy p 
ON (v.item_id=p.item_id) 
JOIN item_insurance i 
ON (i.item_insurance_id=p.item_insurance_id) 
GROUP BY i.i_type 
HAVING AVG(i.i_deductibles)>='&deductible' 

-- Finding customer information based on coverage start and date 
SELECT c.l_name AS "Last Name", c.customer_id AS "Customer ID", c.DOB, c.gender, t.Destination 
FROM customer c LEFT JOIN travel_polciy p 
ON (c.customer_id=p.customer_id) 
LEFT JOIN travel t 
ON (t.zip_code=p.zip_code) 
WHERE p.t_coverage_start_date BETWEEN '&DATE1' AND '&DATE2' 
ORDER BY c.l_name; 