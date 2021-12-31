CREATE TABLE item_policy 
(item_policy_number INTEGER PRIMARY KEY 
 ,i_coverage_start_date DATE NOT NULL
 ,i_coverage_end_date DATE NOT NULL
 ,i_policy_dependents INTEGER 
 ,item_insurance_id INTEGER 
 	REFERENCES item_insurance(item_insurance_id)
 ,item_id INTEGER
 	REFERENCES valuable_items(item_id)
 ,customer_id INTEGER 
 	REFERENCES customers(customer_id)
);  
