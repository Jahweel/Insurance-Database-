CREATE TABLE travel_policy
(policy_number INTEGER PRIMARY KEY 
 ,customer_id INTEGER 
 	REFERENCES customers(customer_id) 
 ,insurance_id INTEGER
 	REFERENCES travel_insurance(insurance_id)
 ,travel_id INTEGER
 	REFERENCES travel(travel_id)
 ,t_coverage_start_date DATE NOT NULL 
 ,t_coverage_end_date DATE NOT NULL
 ,policy_dependents INTEGER 
);  

--changing primary key to be more specific 
ALTER TABLE travel_policy 
RENAME policy_number TO travel_policy_number;
