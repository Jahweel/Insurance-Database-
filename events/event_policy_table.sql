CREATE TABLE event_policy 
(event_policy_number INTEGER PRIMARY KEY 
 ,e_coverage_start_date DATE NOT NULL 
 ,e_coverage_end_date DATE NOT NULL 
 ,event_state VARCHAR(2)
 ,e_insurance_id INTEGER 
 	REFERENCES event_insurance(e_insurance_id)
 ,event_id INTEGER 
 	REFERENCES events(event_id)
 ,customer_id INTEGER 
 	REFERENCES customers(customer_id )
);
